//
//  SurahNameDatabaseHelper.swift
//  WordByWordQuran
//
//  Created by Sadman samee on 12/10/15.
//  Copyright © 2015 LoopsLab. All rights reserved.
//

//import GRDB

class SurahConstant
{
    static  let SURAH_TABLE_NAME = "surah_name";
    static let SURAH_ID = "_id";
    static   let SURAH_ID_TAG = "surah_id";
    static let SURAH_NO = "surah_no";
    static   let SURAH_NAME_ARABIC = "name_arabic";
    static  let SURAH_NAME_ENGLISH = "name_english";
    static   let SURAH_NAME_BANGLA = "name_bangla";
    static   let SURAH_MEAN_ENGLISH = "surah_mean_english";
    static  let SURAH_ARTI_NAMA = "arti_nama";
    static   let SURAH_AYAH_NUMBER = "ayah_number";
    static  let SURAH_TYPE = "type";
 
    /*
   class func getBanglaSurahName() -> [Surah]
    {
        var surahList = [Surah]()
        
        try dbQueue.inDatabase { db in
            
            for row in Row.fetch(db, "SELECT * FROM surah_name") {
                
                let surah : Surah!  =  Surah()
                
                surah.surah_id = row.value(named: SURAH_ID)
                surah.surah_no = row.value(named: SURAH_NO)
                surah.surah_name_arabic = row.value(named: SURAH_NAME_ARABIC)
                surah.surah_name_translate = row.value(named: SURAH_NAME_BANGLA)
                surah.surah_ayah_number = row.value(named: SURAH_AYAH_NUMBER)
                
                surahList.append(surah)
                
                //print(surah.surah_id, surah.surah_name_arabic)
            }
        }
    
        print(surahList.count)
        return surahList
    }
    
    
    class func getEnglishSurahName() -> [Surah]
    {
        var surahList = [Surah]()
        
        try dbQueue.inDatabase { db in
            
            for row in Row.fetch(db, "SELECT * FROM surah_name") {
                
                let surah : Surah!  =  Surah()
                
                surah.surah_id = row.value(named: SURAH_ID)
                surah.surah_no = row.value(named: SURAH_NO)
                surah.surah_name_arabic = row.value(named: SURAH_NAME_ARABIC)
                surah.surah_name_translate = row.value(named: SURAH_NAME_ENGLISH)
                surah.surah_ayah_number = row.value(named: SURAH_AYAH_NUMBER)
                
                surahList.append(surah)
                
                print(surah.surah_id, surah.surah_name_arabic)
            }
        }
        
        print(surahList.count)
        return surahList
    }
    
    class func getIndonesianSurahName() -> [Surah]
    {
        var surahList = [Surah]()
        
        try dbQueue.inDatabase { db in
            
            for row in Row.fetch(db, "SELECT * FROM surah_name") {
                
                let surah : Surah!  =  Surah()
                
                surah.surah_id = row.value(named: SURAH_ID)
                surah.surah_no = row.value(named: SURAH_NO)
                surah.surah_name_arabic = row.value(named: SURAH_NAME_ARABIC)
                surah.surah_name_translate = row.value(named: SURAH_ARTI_NAMA)
                surah.surah_ayah_number = row.value(named: SURAH_AYAH_NUMBER)
                
                surahList.append(surah)
                
                print(surah.surah_id, surah.surah_name_arabic)
            }
        }
        
        print(surahList.count)
        return surahList
    }
    */
}
