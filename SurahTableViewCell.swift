//
//  SurahTableViewCell.swift
//  WordByWordQuran
//
//  Created by Sadman samee on 12/8/15.
//  Copyright © 2015 LoopsLab. All rights reserved.
//

import UIKit

class SurahTableViewCell: UITableViewCell {
    
    @IBOutlet weak var surahName: UILabel!
    @IBOutlet weak var surahNameArabic: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
