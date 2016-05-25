//
//  AyahWordTableViewCell.swift
//  Quran
//
//  Created by Sadman samee on 12/12/15.
//  Copyright © 2015 LoopsLab. All rights reserved.
//

import UIKit

class AyahWordTableViewCell: UITableViewCell,UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    //@IBOutlet weak var quranArabicLabel: UILabel!
    
   // @IBOutlet weak var quranTranslateLabel: UILabel!
    var flowLayout: UICollectionViewFlowLayout!
    
    @IBOutlet  weak var ayahWordCollection: UICollectionView!
    
    var word : [Word] = [Word]() {

        didSet {
            //print("word didset called \(word[0].AyahWord_translate)")
           
            //ayahWordCollection.reloadData()
        }
    }
  
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
         super.init(style: style, reuseIdentifier: reuseIdentifier)
         print("AyahWordTableViewCell init")
      
        
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        print("AyahWordTableViewCell init")
        ayahWordCollection.delegate = self
        ayahWordCollection.dataSource = self
        
        //flow Layout
        self.flowLayout = UICollectionViewFlowLayout()
        //self.flowLayout.itemSize = CGSizeMake(220, 160)
        self.flowLayout.estimatedItemSize = CGSizeMake(200, 140)
        //self.ayahWordCollection.sizeToFit()// = CGSize(width: 220, height: 100)
        //self.flowLayout.scrollDirection = .Horizontal
        self.flowLayout.minimumInteritemSpacing = 0.0
        self.ayahWordCollection.collectionViewLayout = self.flowLayout
        self.ayahWordCollection.bounces = true
        //self.ayahWordCollection.showsHorizontalScrollIndicator = false
        //self.ayahWordCollection.showsVerticalScrollIndicator = false
        //self.ayahWordCollection.translatesAutoresizingMaskIntoConstraints = false
        
        self.contentView.frame = self.bounds;
        self.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
       // self.setNeedsLayout()
       // self.layoutIfNeeded()
        
        //in viewDidLoad
        var scalingTransform : CGAffineTransform!
        scalingTransform = CGAffineTransformMakeScale(-1, 1);
        //self.ayahWordCollection.transform = scalingTransform
    }
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
   
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("numberOfItemsInSection: \(word.count)")
        return word.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        print("collectionView cell")
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("collectionCell", forIndexPath: indexPath) as! AyahWordCollectionViewCell
        
        //right to left
        var scalingTransform : CGAffineTransform!
        scalingTransform = CGAffineTransformMakeScale(-1, 1);
        //cell.transform = scalingTransform
        
        print("collectionView cell")
        //set ayahWord label on cell class
        cell.setAyahWordLabels(word[indexPath.row])
        
        
        //cell.contentView.frame = cell.bounds;
        //cell.contentView.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
       
        return cell
        
    }
    
  
    
    /*
    //test
    // MARK: - UICollectionViewFlowLayout Delegate
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
    // Set up desired width
    let targetWidth: CGFloat = (collectionView.bounds.width - 3 * kHorizontalInsets) / 2
    
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier("collectionCell", forIndexPath: indexPath) as! AyahWordCollectionViewCell
    
    cell.setAyahWordLabels(word[indexPath.row])
    
    // Config cell and let system determine size
    //cell!.configCell(titleData[indexPath.item] as! String, content: contentData[indexPath.item] as! String, titleFont: fontArray[indexPath.item] as! String, contentFont: fontArray[indexPath.item] as! String)
    
    // Cell's size is determined in nib file, need to set it's width (in this case), and inside, use this cell's width to set label's preferredMaxLayoutWidth, thus, height can be determined, this size will be returned for real cell initialization
    cell.bounds = CGRectMake(0, 0, targetWidth, cell.bounds.height)
    cell.contentView.bounds = cell.bounds
    
    // Layout subviews, this will let labels on this cell to set preferredMaxLayoutWidth
    cell.setNeedsLayout()
    cell.layoutIfNeeded()
    
    var size = cell.contentView.systemLayoutSizeFittingSize(UILayoutFittingCompressedSize)
    // Still need to force the width, since width can be smalled due to break mode of labels
    size.width = targetWidth
    return size
    }
    
    */
    // MARK: -
    // MARK: - UICollectionViewFlowLayout //for resizing test
    
    //test
   /* func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
         let cell = collectionView.dequeueReusableCellWithReuseIdentifier("collectionCell", forIndexPath: indexPath) as! AyahWordCollectionViewCell
        return cell.intrinsicContentSize()
    }*/
    
    /*
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
    let picDimension = ayahWordCollection.frame.size.width / 4.0
    return CGSizeMake(picDimension, picDimension)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
    let leftRightInset = ayahWordCollection.frame.size.width / 14.0
    return UIEdgeInsetsMake(0, leftRightInset, 0, leftRightInset)
    }
    */
    
    
}
