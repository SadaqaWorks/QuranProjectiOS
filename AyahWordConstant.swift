//
//  AyahWordDatabaseHelper.swift
//  WordByWordQuran
//
//  Created by Sadman samee on 12/10/15.
//  Copyright © 2015 LoopsLab. All rights reserved.
//

//import GRDB

class AyahWordConstant {
    static  let AYAHWORD_TABLE_NAME = "bywords";
    static  let AYAHWORD_WORDS_TRANSLATE_EN = "translate_en";
    static  let AYAHWORD_WORDS_TRANSLATE_BN = "translate_bn";
    static  let AYAHWORD_WORDS_TRANSLATE_INDO = "translate_indo";
    static  let AYAHWORD_ID = "_id";
    static  let AYAHWORD_ID_TAG = "ayah_word_id";
    static  let AYAHWORD_SURAH_ID = "surah_id";
    static  let AYAHWORD_VERSE_ID = "verse_id";
    static  let AYAHWORD_WORDS_ID = "words_id";
    static  let AYAHWORD_WORDS_AR = "words_ar";
    
    static  let AYAHWORD_TABLE_NAME_ENGLISH = "bywords";
    static  let AYAHWORD_TABLE_NAME_BANGLA = "bywords";
    static  let AYAHWORD_TABLE_NAME_INDONESIAN = "bywords";
    
    
    static  let QURAN_TABLE = "quran";
    static  let QURAN_ENGLSIH = "english";
    static  let QURAN_BANGLA = "bangla";
    static  let  QURAN_INDO = "indo";
    static  let  QURAN_VERSE_ID = "verse_id";
    static  let  QURAN_ARABIC = "arabic";
    
   /*
    class func getBanglaAyahWordsBySurah(surah_id :Int, ayah_number:Int) -> [AyahWord]
    {
        var tempVerseWord :Int;
        var tempVerseQuran :Int;
        
        var ayahWordList = [AyahWord]()
        
        try dbQueue.inDatabase { db in
            
            ayahWordfetch = Row.fetchAll(db, "SELECT bywords._id,bywords.surah_id,bywords.verse_id,bywords.words_id,bywords.words_ar,bywords.translate_indo FROM bywords where bywords.surah_id = ?",arguments: [surah_id])
        
            quranfetch = Row.fetchAll(db, "SELECT quran.verse_id,quran.arabic,quran.indo from quran WHERE quran.surah_id = ?",arguments: [surah_id])
            
        }
       for var i = 1; i <= ayah_number; i++ {
            
            tempVerseWord = i;
            tempVerseQuran = i;
            var ayahWord : AyahWord = AyahWord()
            var wordArrayList = [Word] ()
        
            var ayahWordtemp = 0
            while (tempVerseWord == i && ayahWordfetch.count > self.ayahWordtemp )
            {
                
            }
            
        
        ayahWord.word = wordArrayList
        ayahWordList.append(ayahWord)
        
        }
        return ayahWordList
    }*/
    
    
}