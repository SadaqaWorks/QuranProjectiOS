//
//  ViewController.swift
//  WordByWordQuran
//
//  Created by Sadman samee on 12/8/15.
//  Copyright © 2015 LoopsLab. All rights reserved.
//

import UIKit



class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var surahList : NSMutableArray!
   
   
    @IBOutlet weak var tableView: UITableView!
   
    override func viewWillAppear(animated: Bool) {
      
        //get surah list from databasehelper
    self.getSurahName()
        
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
        // Do any additional setup after loading the view, typically from a nib.
                
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //TableView
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
    
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return surahList.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "surahCell"
         // Configure the cell...
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! SurahTableViewCell

        let surah : Surah = surahList.objectAtIndex(indexPath.row) as! Surah
        

        cell.surahName.text = surah.surah_name_translate
        cell.surahNameArabic.text = surah.surah_name_arabic


        return cell
    }

   func getSurahName()
    {
        print("getting surah Name")
        surahList = NSMutableArray()
        surahList = ModelManager.getInstance().getBanglaSurahName()
        tableView.reloadData()
        
        /*ayahWordList = NSMutableArray()
        ayahWordList = ModelManager.getInstance().getBanglaAyahWordsBySurah(1, ayah_number: 7)
        
         for var i  = 0; i < ayahWordList.count; i++ {
            let ayahWord :  AyahWord = ayahWordList.objectAtIndex(i) as! AyahWord
            print("Ayah \(ayahWord.quranTranslate)")
        }
        
        print("size:  \(ayahWordList.count)")*/
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == SegueIdentifiers.ShowAyahWordSegue.rawValue {
            let nav = segue.destinationViewController as! UINavigationController
            
           if let destination =   nav.topViewController as? AyahWordViewController
                {
                    if let cell = sender as? UITableViewCell, let indexPath = tableView.indexPathForCell(cell)
                    {
                        let surah = surahList[indexPath.row] as! Surah
                        destination.surah_id = Int(surah.surah_id)
                        destination.ayah_number = Int(surah.surah_ayah_number)
                    }
                }
            //destination.surah_id = self.context
            }
        }
}

