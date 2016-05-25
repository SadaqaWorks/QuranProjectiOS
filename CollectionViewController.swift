//
//  CollectionViewController.swift
//  Quran
//
//  Created by Sadman samee on 12/25/15.
//  Copyright © 2015 LoopsLab. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController,UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    var word : [Word]!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    
        word = wordMAIN
        collectionView.reloadData()
        
        //FOR Right to left UI COLLECTION
        var scalingTransform : CGAffineTransform!
        scalingTransform = CGAffineTransformMakeScale(-1, 1);
        collectionView.transform = scalingTransform
        
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return word.count
    }
    
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("collectionCell", forIndexPath: indexPath) as! AyahWordCollectionViewCell
        
        //right to left
        var scalingTransform : CGAffineTransform!
        scalingTransform = CGAffineTransformMakeScale(-1, 1);
        cell.transform = scalingTransform
        
        // let w = word[indexPath.row]
        //cell.atabicLabel.text = w.AyahWord_words_ar
        //cell.transLabel.text = w.AyahWord_translate
        //print(w.AyahWord_translate)
        print("collectionView cell")
        //set ayahWord label on cell class
        cell.setAyahWordLabels(word[indexPath.row])
        
        //cell.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        //cell.sizeToFit()
        return cell
    }

    
    func setWord()
    {
        for(var i = 0; i<7 ; i++)
        {
        let  w: Word = Word()
        w.AyahWord_words_ar = "word"
        w.AyahWord_translate = "Trsnalate"
        word.append(w)
        }
        collectionView.reloadData()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
