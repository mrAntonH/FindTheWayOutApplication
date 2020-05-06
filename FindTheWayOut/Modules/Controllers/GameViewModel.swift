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
    
    private let step: BehaviorRelay<GameStep>
    private let event: BehaviorRelay<GameEvent>
    private var currentUserVertex: Int?
    
    struct StepInput {
        let stepCreateGame = PublishRelay<Graph>()
        let stepGetWay = PublishRelay<Int>()
        let finishGame = PublishRelay<Int>()
    }
    
    let stepInput = StepInput()
    
    init(step: BehaviorRelay<GameStep>,
         event: BehaviorRelay<GameEvent>) {
        self.step = step
        self.event = event
        
        bindSteps()
        bindSelf()
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
                    self.stepInput.finishGame.accept(value)
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
            return .comingWay(value)
        }
        .bind(to: event)
        .disposed(by: disposeBag)
        
        stepInput
            .finishGame
            .flatMapLatest { indexGraph -> Observable<Void> in
                return ApiClient.deleteMap(withId: indexGraph)
        }
        .subscribe(onNext: { _ in
            print("deleted graph")
        })
        .disposed(by: disposeBag)
        
    }
    
}
