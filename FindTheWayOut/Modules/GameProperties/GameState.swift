//
//  GameState.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 09/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import SpriteKit
import RxSwift
import RxCocoa

enum GameStep {
    case startGame(Graph)
    case readyGetWay(Int)
    case readyGetFire(Int)
    case finishGame(Int)
    case expect
}

enum GameEvent {
    case gameCretedSuccessful(Bool)
    case gameFinishSuccessful(Bool)
    case comingWay(Way)
    case comingFire([Int])
    case expect
    
}

final class GameState {
    
    private var disposeBag = DisposeBag()

    let step: BehaviorRelay<GameStep>
    let event: BehaviorRelay<GameEvent>
    let isProccesingStep = BehaviorRelay<Bool>(value: false)
    let isSelectWayAvailable = BehaviorRelay<Bool>(value: false)
    
    struct EventInput {
        let gameCreted = PublishRelay<Bool>()
        let fireVertexes = PublishRelay<[Int]>()
        let configureWay = PublishRelay<Way>()
    }
    
    let eventInput = EventInput()

    init(step: BehaviorRelay<GameStep>,
         event: BehaviorRelay<GameEvent>) {
        self.step = step
        self.event = event
        bindProccesing()
        bindEvents()
    }
    
    private func bindProccesing() {
        step
            .asObservable()
            .map { _ in true }
            .bind(to: isProccesingStep)
            .disposed(by: disposeBag)
        
        event
            .asObservable()
            .map { _ in false }
            .bind(to: isProccesingStep)
            .disposed(by: disposeBag)
        
        isProccesingStep.accept(false)
    }
    
    private func bindEvents() {
        event
            .asObservable()
            .subscribe(onNext: { [unowned self] event in
                switch event {
                case .gameCretedSuccessful(let value):
                    self.eventInput.gameCreted.accept(value)
                case .gameFinishSuccessful(_):
                    return
                case .comingWay(let way):
                    self.eventInput.configureWay.accept(way)
                    self.isSelectWayAvailable.accept(true)
                case .comingFire(let fireVertexes):
                    self.eventInput.fireVertexes.accept(fireVertexes)
                case .expect:
                    return
                }
            })
            .disposed(by: disposeBag)
        
        eventInput
            .gameCreted
            .bind(to: isSelectWayAvailable)
            .disposed(by: disposeBag)
    }
}

