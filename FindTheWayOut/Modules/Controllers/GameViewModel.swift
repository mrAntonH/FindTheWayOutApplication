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
    
    init(step: BehaviorRelay<GameStep>,
         event: BehaviorRelay<GameEvent>) {
        self.step = step
        self.event = event
    }
    
    private func bindSelf() {
        
    }
    
}
