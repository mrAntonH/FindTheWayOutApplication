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
    case comingFire(FireCheckingFetchData)
    case expect
    
}

final class GameState {
    
    private var disposeBag = DisposeBag()

    let step: BehaviorRelay<GameStep>
    let event: BehaviorRelay<GameEvent>
    let isProccesingStep = BehaviorRelay<Bool>(value: false)

    init(step: BehaviorRelay<GameStep>,
         event: BehaviorRelay<GameEvent>) {
        self.step = step
        self.event = event
        bindProccesing()
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
    }
}

