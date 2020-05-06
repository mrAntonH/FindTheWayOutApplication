//
//  GameViewModel.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 07/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import RxDataSources

final class GameViewModel {
    
    typealias SectionType = AnimatableSectionModel<String, LevelSectionType>
    typealias service = ApiClient
    
    private var disposeBag = DisposeBag()
    
    private let sections = BehaviorRelay<[SectionType]>(value: [])
    
    private let step: BehaviorRelay<GameStep>
    private let event: BehaviorRelay<GameEvent>
    private var currentUserVertex: Int?
    
    private let eventGetWay = PublishRelay<GameEvent>()
    
    struct StepInput {
        let stepCreateGame = PublishRelay<Graph>()
        let stepGetWay = PublishRelay<Int>()
        let clearGame = PublishRelay<Int>()
    }
    
    let stepInput = StepInput()
    
    struct Output {
        let sections: Driver<[SectionType]>
    }
    
    let output: Output
    
    init(step: BehaviorRelay<GameStep>,
         event: BehaviorRelay<GameEvent>) {
        self.step = step
        self.event = event
        output = Output(sections: sections.asDriver(onErrorJustReturn: []))
        
        
        bindSteps()
        bindSelf()
        stepInput.clearGame.accept(0)
    }
    
    private func bindSteps() {
        step
            .asObservable()
            .subscribe(onNext: { [unowned self] item in
                switch item {
                case .startGame(let graph):
                    self.stepInput.stepCreateGame.accept(graph)
                case .readyGetWay(let numberVertex):
                    self.currentUserVertex = numberVertex
                    self.stepInput.stepGetWay.accept(numberVertex)
                case .readyGetFire(_):
                    return
                case .finishGame(let value):
                    self.stepInput.clearGame.accept(value)
                case .expect:
                    return
                }
            })
            .disposed(by: disposeBag)
    }
    
    private func bindSelf() {
        stepInput
            .stepCreateGame
            .flatMapLatest { graph -> Observable<String> in
                return ApiClient.startGame(graphVertexes: graph)
        }
        .materialize()
        .map { event -> GameEvent in
            guard case let .next(value) = event
                else { return GameEvent.gameCretedSuccessful(false) }
            print(value)
            return GameEvent.gameCretedSuccessful(true)
        }
        .bind(to: event)
        .disposed(by: disposeBag)
        
        stepInput
            .stepGetWay
            .flatMapLatest { number -> Observable<[Int]> in
                return ApiClient.checkFire(userNumberLocation: number)
        }
        .materialize()
        .flatMapLatest { numbers -> Observable<Way> in
            guard case let .next(value) = numbers
                else { return Observable.error(CustomAppError.noData) }
            self.event.accept(.comingFire(value))
            if let vertex = self.currentUserVertex {
                return ApiClient.updateWay(userNumberLocation: vertex)
            } else {
                return Observable.error(CustomAppError.noData)
            }
        }
        .materialize()
        .map { way -> GameEvent in
            guard case let .next(value) = way
                else { return GameEvent.comingWay(Way(way: [],
                                                      exit: false,
                                                      blocked: false)) }
            let wayItems = value.way
            var levelSection = [LevelSectionType]()
            if let first = wayItems.first {
                levelSection.append(LevelSectionType.start(first))
            }
            let last = wayItems.last
            
            for item in Array(wayItems.dropFirst().dropLast()) {
                levelSection.append(LevelSectionType.short(item))
            }
            
            if let last = last, wayItems.count > 1 {
                levelSection.append(LevelSectionType.final(last))
            }
            
            self.sections.accept([SectionType(model: "firstSection",
                                              items: levelSection)])
            return .comingWay(value)
        }
        .bind(to: event)
        .disposed(by: disposeBag)
        
        stepInput
            .clearGame
            .flatMapLatest { indexGraph -> Observable<Void> in
                return ApiClient.deleteMap(withId: indexGraph)
        }
        .subscribe(onNext: { _ in
            print("deleted graph")
        })
        .disposed(by: disposeBag)
    }
    
}
