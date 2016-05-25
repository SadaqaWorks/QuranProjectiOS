//
//  AyahWordUIView.swift
//  Quran
//
//  Created by Sadman samee on 12/12/15.
//  Copyright © 2015 LoopsLab. All rights reserved.
//

import UIKit
import AttributedLabel

class AyahWordUIView: UICollectionViewCell {
    
    var arabicLabel : AttributedLabel!
    var translateLabel : AttributedLabel!
    

    override init(frame:CGRect) {
        super.init(frame:frame)
        setup()
    }
    required init?(coder aDecoder:NSCoder) {
        super.init(coder:aDecoder)
        setup()
    }
    private func setup() {
        
        self.addSubview(arabicLabel)
        self.addSubview(translateLabel)
        // configure the initial layout of your subviews here.
    }
    
}
