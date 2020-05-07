//
//  GameViewController.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 07/03/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import SpriteKit
import GameplayKit
import RxSwift
import RxCocoa
import RxDataSources

final class GameViewController: UIViewController {
    
    private var collection: UICollectionView!
    
    var viewModel: GameViewModel!
    private let sceneManager = SceneManager.shared
    
    private var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sceneManager.setMenuScene(size: self.view.bounds.size)
        
        configureCollectionView()
        bindCollection()
        configureScene()
    }
    
    private func configureScene() {
        view = SKView(frame: view.bounds)
        
        guard let view = view as! SKView? else { return }
        //sceneManager.menuScene?.size = view.frame.size
        //scene.scaleMode = .aspectFill
        if let scene = sceneManager.getMenuScene() {
            view.presentScene(scene)
        }
        
        view.ignoresSiblingOrder = true
        view.showsNodeCount = true
        view.showsFPS = true
        
        
        collection.backgroundColor = .clear
        view.addSubview(collection)
        view.bringSubviewToFront(collection)
    }
    
    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}

//MARK: configure settings UI of graph info
extension GameViewController {
    
    private func configureCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 85,
                                 height: 55)
        layout.sectionInset = UIEdgeInsets(top: 0,
                                           left: 16,
                                           bottom: 0,
                                           right: 16)
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        
        collection = UICollectionView(frame: CGRect(x: 0,
                                                    y: 50,
                                                    width: view.bounds.width,
                                                    height: 55),
                                      collectionViewLayout: layout)
        
        collection.backgroundColor = .clear
        collection.showsHorizontalScrollIndicator = false
        collection.register(cellType: StartCollectionCell.self)
        collection.register(cellType: SimpleCollectionCell.self)
        collection.register(cellType: FinalCollectionCell.self)
    }
    
    private func bindCollection() {
        let dataSource = RxCollectionViewSectionedAnimatedDataSource<GameViewModel.SectionType>(configureCell: { _, table, indexPath, item in
            switch item {
            case .start(let value):
                let cell = table.dequeueReusableCell(for: indexPath) as StartCollectionCell
                cell.configure(with: value)
                return cell
            case .short(let value):
                let cell = table.dequeueReusableCell(for: indexPath) as SimpleCollectionCell
                cell.configure(with: value)
                return cell
            case .final(let value):
                let cell = table.dequeueReusableCell(for: indexPath) as FinalCollectionCell
                cell.configure(with: value)
                return cell
            }
        })
        
        viewModel.output
            .sections
            .drive(collection.rx.items(dataSource: dataSource))
            .disposed(by: disposeBag)
    }
    
}
