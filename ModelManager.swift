//
//  ModelManager.swift
//  Quran
//
//  Created by Sadman samee on 12/12/15.
//  Copyright © 2015 LoopsLab. All rights reserved.
//

import Foundation
import UIKit

let sharedInstance = ModelManager()

class ModelManager : NSObject {
    var database: FMDatabase? = nil
    
    class func getInstance() -> ModelManager
    {
        if(sharedInstance.database == nil)
        {
            sharedInstance.database = FMDatabase(path: Util.getPath(CONSTANT.databaseName))
        }
        return sharedInstance
    }
    
    
    //Surah Name
    func getBanglaSurahName() -> NSMutableArray {
        sharedInstance.database!.open()
        
        let resultSet: FMResultSet! = sharedInstance.database!.executeQuery("SELECT * FROM surah_name", withArgumentsInArray: nil)
        
        let surahNameArray : NSMutableArray = NSMutableArray()
        
        if (resultSet != nil) {
            while resultSet.next() {
                let surah : Surah = Surah()
                surah.surah_id = resultSet.intForColumn(SurahConstant.SURAH_ID) //stringForColumn(SurahConstant.SURAH_ID)
                surah.surah_no = resultSet.intForColumn(SurahConstant.SURAH_NO)
                surah.surah_name_arabic = resultSet.stringForColumn(SurahConstant.SURAH_NAME_ARABIC)
                surah.surah_name_translate = resultSet.stringForColumn(SurahConstant.SURAH_NAME_BANGLA)
                surah.surah_ayah_number = resultSet.intForColumn(SurahConstant.SURAH_AYAH_NUMBER)
                
                surahNameArray.addObject(surah)
            }
        }
        sharedInstance.database!.close()
        return surahNameArray
    }
    
    //Ayah WOrd
    func getBanglaAyahWordsBySurah(surah_id :Int, ayah_number:Int)  -> NSMutableArray
    {
        sharedInstance.database!.open()
         let ayahWordArray : NSMutableArray = NSMutableArray()
        let resultSetAyahWord: FMResultSet! = sharedInstance.database!.executeQuery("SELECT bywords._id,bywords.surah_id,bywords.verse_id,bywords.words_id,bywords.words_ar,bywords.translate_bn FROM bywords where bywords.surah_id = ?", withArgumentsInArray: [surah_id])
        
        let resultSetQuran: FMResultSet! = sharedInstance.database!.executeQuery("SELECT quran.verse_id,quran.arabic,quran.bangla from quran WHERE quran.surah_id = ?", withArgumentsInArray: [surah_id])
        
        var tempVerseWord : Int
        var  tempVerseQuran : Int
        
        for var i  = 1; i <= ayah_number; i++ {
            
            tempVerseWord = i;
            tempVerseQuran = i;
            
            let  ayahWord : AyahWord = AyahWord()
            var wordArrayList : [Word] = [Word] ()
   
                
            while (i == tempVerseWord && resultSetAyahWord.next()) {
                
                tempVerseWord = Int(resultSetAyahWord.intForColumn(AyahWordConstant.AYAHWORD_VERSE_ID));
               
                if (tempVerseWord != i) {
                    continue;
                }
                let word : Word =  Word();
                // word.setAyahWord_id(cursor.getLong(cursor.getColumnIndex(AYAHWORD_ID)));
                //word.setAyahWord_surah_id(cursor.getLong(cursor.getColumnIndex(AYAHWORD_SURAH_ID)));
                word.AyahWord_verse_id = resultSetAyahWord.intForColumn(AyahWordConstant.AYAHWORD_VERSE_ID)
                word.AyahWord_words_id = resultSetAyahWord.intForColumn(AyahWordConstant.AYAHWORD_WORDS_ID)
                word.AyahWord_words_ar = resultSetAyahWord.stringForColumn(AyahWordConstant.AYAHWORD_WORDS_AR)
                word.AyahWord_translate = resultSetAyahWord.stringForColumn(AyahWordConstant.AYAHWORD_WORDS_TRANSLATE_BN)
                
                //print("i: \(i) \(tempVerseWord) \(word.AyahWord_words_id) word: \(word.AyahWord_translate)")
                
                //Log.d("AyahWordDataSource", "currentAyah: " + tempVerseId + " " + cursor.getString(cursor.getColumnIndex(AYAHWORD_WORDS_TRANSLATE_EN)));
                wordArrayList.append(word)
         
            }
            
            while (i == tempVerseQuran && resultSetQuran.next()) {
                
                tempVerseQuran = Int(resultSetQuran.intForColumn(AyahWordConstant.QURAN_VERSE_ID));
               
                if (tempVerseQuran != i) {
                    continue;
                }
                ayahWord.quranVerseId = resultSetQuran.intForColumn(AyahWordConstant.QURAN_VERSE_ID)
                ayahWord.quranArabic = resultSetQuran.stringForColumn(AyahWordConstant.QURAN_ARABIC)
                ayahWord.quranTranslate = resultSetQuran.stringForColumn(AyahWordConstant.QURAN_BANGLA)
                //print("Translate \(i) temp: \(tempVerseQuran) \( ayahWord.quranVerseId) \(ayahWord.quranTranslate)")
                tempVerseQuran = 0
            }
           
            ayahWord.word = wordArrayList
            ayahWordArray.addObject(ayahWord)
        
        }
        sharedInstance.database!.close()
       return ayahWordArray
    }
    
}
