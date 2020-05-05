//
//  LevelColecction.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 05.05.2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import Foundation
import Reusable
import RxSwift
import RxCocoa
import RxDataSources

final class LevelCollection: UIView, NibOwnerLoadable {
    
    @IBOutlet private weak var collection: UICollectionView!
    
    private var disposeBag = DisposeBag()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.loadNibContent()
    }
    
    func configure(sections: Driver<[GameViewModel.SectionType]>) {
        configureCollection()
        bindDataSource(sections: sections)
    }
    
    private func configureCollection() {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0,
                                           left: 16,
                                           bottom: 0,
                                           right: 16)
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        collection.collectionViewLayout = layout
        collection.backgroundColor = .clear
        collection.showsHorizontalScrollIndicator = false
        collection.register(cellType: StartCollectionCell.self)
        collection.register(cellType: SimpleCollectionCell.self)
        collection.register(cellType: FinalCollectionCell.self)
    }
    
    private func bindDataSource(sections: Driver<[GameViewModel.SectionType]>) {
        let dataSource = RxCollectionViewSectionedAnimatedDataSource<GameViewModel.SectionType>(configureCell: { _, table, indexPath, item in
            switch item {
            case .start(let value):
                let cell = table.dequeueReusableCell(for: indexPath) as StartCollectionCell
                cell.configure(with: value)
                cell.frame = CGRect(x: 0, y: 0, width: 70, height: 55)
                return cell
            case .short(let value):
                let cell = table.dequeueReusableCell(for: indexPath) as SimpleCollectionCell
                cell.configure(with: value)
                cell.frame = CGRect(x: 0, y: 0, width: 85, height: 55)
                return cell
            case .final(let value):
                let cell = table.dequeueReusableCell(for: indexPath) as FinalCollectionCell
                cell.configure(with: value)
                cell.frame = CGRect(x: 0, y: 0, width: 70, height: 55)
                return cell
            }
        })
        
        sections
            .drive(collection.rx.items(dataSource: dataSource))
            .disposed(by: disposeBag)
    }
}
