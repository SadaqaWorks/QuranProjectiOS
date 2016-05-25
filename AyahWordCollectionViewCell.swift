//
//  AyahWordCollectionViewCell.swift
//  Quran
//
//  Created by Sadman samee on 12/14/15.
//  Copyright © 2015 LoopsLab. All rights reserved.
//

import UIKit

class AyahWordCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var atabicLabel: UILabel!
    
    @IBOutlet weak var transLabel: UILabel!
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Make the view stretch with containing view
         self.contentView.frame = self.bounds;
        self.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        //self.setNeedsLayout()
        //self.layoutIfNeeded()
       print("AyahWordCollectionViewCell awakeFromNib")
    }
    
    func setAyahWordLabels(word: Word)
    {
        print(word.AyahWord_translate)
        atabicLabel.text = word.AyahWord_words_ar
        transLabel.text = word.AyahWord_translate
        //atabicLabel.optimalHeight
        //transLabel.optimalHeight
    }
    
}
