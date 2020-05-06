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

final class GameViewController: UIViewController, UICollectionViewDelegate {
    
//    @IBOutlet private weak var levelView: LevelCollection! {
//        didSet {
//            levelView.isHidden = true
//        }
//    }
    
    @IBOutlet private weak var levelViewConstraunt: NSLayoutConstraint! {
        didSet {
            levelViewConstraunt.constant = 0//-110
        }
    }
    
    private var collection: UICollectionView!
    
    var viewModel: GameViewModel!
    private let sceneManager = SceneManager.shared
    
    private var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sceneManager.setMenuScene(size: self.view.bounds.size)
        //levelView.configure(sections: viewModel.output.sections)
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0,
                                           left: 16,
                                           bottom: 0,
                                           right: 16)
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        
        collection = UICollectionView(frame: CGRect(x: 0,
                                                    y: 50,
                                                    width: self.view.bounds.width,
                                                    height: 55),
                                      collectionViewLayout: layout)
        
//        collection.collectionViewLayout = layout
        collection.delegate = self
        collection.backgroundColor = .clear
        collection.showsHorizontalScrollIndicator = false
        collection.register(cellType: StartCollectionCell.self)
        collection.register(cellType: SimpleCollectionCell.self)
        collection.register(cellType: FinalCollectionCell.self)
        bindCollection()
        
        
        configureScene()
        
        
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

extension GameViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        if let cell = collectionView.cellForItem(at: indexPath) {
            if cell.isKind(of: StartCollectionCell.self) {
                return CGSize(width: 70, height: 55)
            }
            if cell.isKind(of: SimpleCollectionCell.self) {
                return CGSize(width: 85, height: 55)
            }
            if cell.isKind(of: FinalCollectionCell.self) {
                return CGSize(width: 70, height: 55)
            }
        }
        return CGSize(width: 70, height: 55)
    }
}
