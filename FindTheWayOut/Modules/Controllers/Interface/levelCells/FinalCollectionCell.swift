//
//  FinalCollectionCell.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 05.05.2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import UIKit
import Reusable

class FinalCollectionCell: UICollectionViewCell, NibReusable {
    
    @IBOutlet private weak var imageView: UIImageView! {
        didSet {
            imageView.image = R.image.rightLevelShape()
        }
    }

    @IBOutlet private weak var numberLabel: UILabel! {
        didSet {
            numberLabel.font = UIFont(name: StandartFonts.AmericanTypewriterBold.description,
                                      size: 16)
            numberLabel.textColor = .white
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        numberLabel.text = nil
    }
    
    func configure(with number: Int) {
        numberLabel.text = String(number)
    }

}
