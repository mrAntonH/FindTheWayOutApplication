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
    
    private var topBackground: UIView!
    private var titleLabel: UILabel!
    private var collection: UICollectionView!
    private var infoView: UIView!
    private var infoTextLabel: UILabel!
    
    var viewModel: GameViewModel!
    private let sceneManager = SceneManager.shared
    
    private var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sceneManager.setMenuScene(size: self.view.bounds.size)
        
        configureTopBackground()
        configureCollectionView()
        configureTitleLabel()
        configureInfoView()
        bindCollection()
        bindViewModelUpdate()
        configureScene()
    }
    
    private func configureScene() {
        view = SKView(frame: view.bounds)
        
        guard let view = view as! SKView? else { return }

        if let scene = sceneManager.getMenuScene() {
            view.presentScene(scene)
        }
        
        view.ignoresSiblingOrder = true
        view.showsNodeCount = true
        view.showsFPS = true
        
        view.addSubview(topBackground)
        view.bringSubviewToFront(topBackground)
        view.addSubview(titleLabel)
        view.bringSubviewToFront(titleLabel)
        //collection.backgroundColor = .clear
        view.addSubview(collection)
        view.bringSubviewToFront(collection)
        view.addSubview(infoView)
        view.bringSubviewToFront(infoView)
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
    
    private func bindViewModelUpdate() {
        viewModel
            .output
            .message
            .subscribe(onNext: { [unowned self] message in
                self.infoView.shake()
                self.openInfoView(withMessage: message)
                DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { [weak self] in
                    self?.closeInfoView()
                }
            })
            .disposed(by: disposeBag)
    }
    
    private func configureTopBackground() {
        topBackground = UIView(frame: CGRect(x: 0,
                                             y: 0,
                                             width: view.frame.width - 39,
                                             height: 0))
        topBackground.backgroundColor = .black
        topBackground.alpha = 0.3
        topBackground.layer.cornerRadius = 10
    }
    
    private func openWayView() {
        UIView.animate(withDuration: 0.5, animations: { [weak self] in
            self?.topBackground.frame =  CGRect(x: 0,
                                                y: 0,
                                                width: self?.topBackground.frame.width ?? 0,
                                                height: 160)
        })
    }
    
    private func closeWayView() {
        UIView.animate(withDuration: 1, animations: { [weak self] in
            self?.topBackground.frame =  CGRect(x: 0,
                                                y: 0,
                                                width: self?.topBackground.frame.width ?? 0,
                                                height: 0)
        })
    }
    
    private func configureTitleLabel() {
        titleLabel = UILabel()
        let strokeTextAttributes = [
            NSAttributedString.Key.strokeColor : UIColor.white,
            NSAttributedString.Key.foregroundColor : UIColor(red: 5 / 255,
                                                             green: 175 / 255,
                                                             blue: 195 / 255,
                                                             alpha: 1),
            NSAttributedString.Key.strokeWidth : -4.0]
            as [NSAttributedString.Key : Any]
        
        titleLabel.attributedText = NSMutableAttributedString(string: "Safe way:",
                                                         attributes: strokeTextAttributes)
        titleLabel.font = UIFont(name: StandartFonts.AmericanTypewriterBold.description,
                            size: 40)
        titleLabel.frame = CGRect(x: 20,
                                  y: 10,
                                  width: 200,
                                  height: 100)
        titleLabel.isHidden = true
    }
    
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
                                                    y: 95,
                                                    width: view.bounds.width - 30,
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
            .do(onNext: { [unowned self] sections in
                if (sections.first?.items.count ?? 0) > 0 {
                    self.titleLabel.isHidden = false
                    self.openWayView()
                } else {
                    self.titleLabel.isHidden = true
                    self.closeWayView()
                }
            })
            .drive(collection.rx.items(dataSource: dataSource))
            .disposed(by: disposeBag)
    }
    
    private func configureInfoView() {
        infoView = UIView(frame: CGRect(x: 20,
                                        y: view.frame.height,
                                        width: view.frame.width - 39 - 40,
                                        height: 40))
        infoView.backgroundColor = .white
        infoView.layer.cornerRadius = 10
        infoView.layer.borderWidth = 2
        infoTextLabel = UILabel()
        infoTextLabel.font = UIFont(name: StandartFonts.AmericanTypewriterBold.description,
                            size: 16)
        infoTextLabel.frame = CGRect(x: 10,
                                  y: 5,
                                  width: view.frame.width - 39 - 40 - 20,
                                  height: 30)
        infoTextLabel.textAlignment = .center
        infoView.addSubview(infoTextLabel)
        
    }
    
    private func openInfoView(withMessage: String) {
        UIView.animate(withDuration: 1.5, animations: { [weak self] in
            self?.infoTextLabel.text = withMessage
            self?.infoView.frame = CGRect(x: 20,
                                          y: (self?.view.frame.height ?? 0) - 200,
                                          width: self?.infoView.frame.width ?? 0,
                                          height: self?.infoView.frame.height ?? 0)
        })
    }
    
    private func closeInfoView() {
        UIView.animate(withDuration: 1, animations: { [weak self] in
            self?.infoView.frame = CGRect(x: 20,
                                          y: (self?.view.frame.height ?? 0),
                                          width: self?.infoView.frame.width ?? 0,
                                          height: self?.infoView.frame.height ?? 0)
        })
    }
    
}
