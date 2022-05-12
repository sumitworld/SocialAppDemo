//
//  OptionCollectionViewCell.swift
//  SocialAppTask
//
//  Created by Techseria on 12/05/22.
//

import UIKit
import QuartzCore

class OptionCollectionViewCell: UICollectionViewCell {
 
    @IBOutlet weak var holderView: UIView!
    @IBOutlet weak var optionLabel: UILabel!
    
    func prepareCellView(row: Int) {
        holderView.layer.cornerRadius = 50
        holderView.clipsToBounds = true
        
        if row == 1 || row == 6 {
            holderView.applyGradient(colours: [UIColor.orange , UIColor.systemPink])
            optionLabel.textColor = .white
        }else{
            optionLabel.textColor = .black
            holderView.applyShadow(colour: UIColor.orange, redius: 10, opacity: 0.2)
        }
        holderView.bringSubviewToFront(optionLabel)
        optionLabel.text = "This is for test the option"
    }
}



