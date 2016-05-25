//
//  AyahWordViewController.swift
//  Quran
//
//  Created by Sadman samee on 12/12/15.
//  Copyright © 2015 LoopsLab. All rights reserved.
//

import UIKit

var ayahWordList : NSMutableArray!

class AyahWordViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    var surah_id : Int!
    var ayah_number : Int!
    var storedOffsets = [Int: CGFloat]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewWillAppear(animated: Bool) {
        
        //get surah list from databasehelper
       
        
        /*  ayahWordList = AyahWordDatabaseHelper.getBanglaAyahWordsBySurah(1,ayah_number: 7)
        for ayahWord in ayahWordList
        {
        print(ayahWord.quranVerseId)
        
        }
        print("Size  \(ayahWordList.count)")*/
        
        //tableView.reloadData()
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.getAyahWord(surah_id,ayahNumber: ayah_number)
        
        //for Auto Size Cell
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 160.0
        // Make the view stretch with containing view
         //self.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //TableView
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return ayahWordList.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "ayahWordCell"
        
        let ayahWord : AyahWord = ayahWordList.objectAtIndex(indexPath.row) as! AyahWord
        let word : [Word] = ayahWord.word //set the data source for AyahwordUICollectionVIEW
      

        // Configure the cell...
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! AyahWordTableViewCell
        
        cell.word = word
        
        //cell.quranArabicLabel.text = ayahWord.quranArabic
        //cell.quranTranslateLabel.text = ayahWord.quranTranslate
       
        print("row: \(indexPath.row)  : \(ayahWord.quranTranslate)")
        
        wordMAIN = word
        
     //   for w in word
     //   {
            
            //   print(" verseid: \(w.AyahWord_words_id) translate:  \(w.AyahWord_translate)")
            
            //let  ayahWordUIView : AyahWordView = AyahWordView()
            //  ayahWordUIView.arabicLabel.text = w.AyahWord_words_ar
            //   ayahWordUIView.translateLabel.text = w.AyahWord_translate
            
            //cell.ayahWordContainer.addSubview(ayahWordUIView)
            //cell.contentView.addSubview(ayahWordUIView)
            
       // }
        //  cell.surahName.text = surah.surah_name_translate
        // cell.surahNameArabic.text = surah.surah_name_arabic
        
        //cell.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        //cell.sizeToFit()
        return cell
    }
   
    //test for dynamic cell height
   /* func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }*/
    
    func getAyahWord(surah_id : Int,ayahNumber : Int)
    {
        //get ayah word from database
        print("getting AyahWord")
        
        ayahWordList = NSMutableArray()
        ayahWordList = ModelManager.getInstance().getBanglaAyahWordsBySurah(surah_id, ayah_number: ayahNumber)
       
       
        
         tableView.reloadData()
        //tableView.autoSizeContent()
        
        /*  for var i  = 0; i < ayahWordList.count; i++ {
        let ayahWord :  AyahWord = ayahWordList.objectAtIndex(i) as! AyahWord
        print("Ayah \(ayahWord.quranTranslate)")
        }
        */
        print("size:  \(ayahWordList.count)")
    }
    
    
    
    
    // MARK: - Navigation
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    if segue.identifier == SegueIdentifiers.AnimalEditorSegue.rawValue {
    let destination = segue.destinationViewController as! AnimalEditorViewController
    destination.context = self.context
    }
    }*/
    
    
}


