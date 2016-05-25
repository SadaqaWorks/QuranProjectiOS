//
//  Surah.swift
//  WordByWordQuran
//
//  Created by Sadman samee on 12/8/15.
//  Copyright © 2015 LoopsLab. All rights reserved.
//

import Foundation

/*
class Surah: NSObject
{
   static let SURAH_TABLE_NAME = "surah_name";
   static let SURAH_ID = "_id";
  static   let SURAH_ID_TAG = "surah_id";
  static let SURAH_NO = "surah_no";
 static   let SURAH_NAME_ARABIC = "name_arabic";
  static  let SURAH_NAME_ENGLISH = "name_english";
  static   let SURAH_NAME_TRANSLATE = "name_translate";
 static   let SURAH_NAME_BANGLA = "name_bangla";
 static   let SURAH_MEAN_ENGLISH = "surah_mean_english";
   static  let SURAH_ARTI_NAMA = "arti_nama";
  static   let SURAH_AYAH_NUMBER = "ayah_number";
   static  let SURAH_TYPE = "type";
  
    let  surah_id = Expression<Int64>("_id")
    let  surah_no = Expression<Int64>("surah_no")
    let   surah_name_english = Expression<String>("name_english")
    let   surah_name_arabic = Expression<String>("name_english")
    let   surah_name_translate = Expression<String>("name_translate")
    
    let   surah_mean_english = Expression<String>("surah_mean_english")
    let  surah_ayah_number = Expression<Int64>("ayah_number")
    let   surah_type = Expression<String>("type")
    
}*/

class Surah : NSObject
{

    var  surah_id: Int32 = Int32()
    var  surah_no : Int32 = Int32()
    var   surah_name_english : String = String()
    var   surah_name_bangla : String = String()
    var  surah_name_arabic: String = String()
    var  surah_name_translate: String = String()
    var   surah_mean_english : String = String()
    var  surah_ayah_number : Int32 = Int32()
    var   surah_type : String = String()
    var surah_arti_nama: String = String()
    
    /*init(surah_id : Int64? = nil,surah_no :Int64? = nil , surah_name_english : String? = nil , surah_name_arabic : String? = nil , surah_name_bangla: String? = nil ,surah_mean_english: String? = nil,surah_name_translate : String? = nil,surah_ayah_number:Int64? = nil,surah_arti_nama : String? = nil,surah_type : String? = nil)
    {
        self.surah_id = surah_id
        self.surah_no = surah_no
        self.surah_name_english = surah_name_english
        self.surah_name_arabic = surah_name_arabic
        self.surah_name_translate = surah_name_translate
        self.surah_name_bangla = surah_name_bangla
        self.surah_mean_english = surah_mean_english
        self.surah_ayah_number = surah_ayah_number
        self.surah_arti_nama = surah_arti_nama
        self.surah_type = surah_type
       // super.init()
    }
*/
    // MARK: - Record
  /*
    override class func databaseTableName() -> String? {
        return CONSTANT.SURAH_TABLE_NAME
    }
    
    override func updateFromRow(row: Row) {
        if let dbv = row[CONSTANT.SURAH_ID] { surah_id = dbv.value() }
        if let dbv = row[CONSTANT.SURAH_NO] { surah_no = dbv.value() }
        if let dbv = row[CONSTANT.SURAH_NAME_ENGLISH] { surah_name_english = dbv.value() }
        if let dbv = row[CONSTANT.SURAH_NAME_ARABIC] { surah_name_arabic = dbv.value() }
        if let dbv = row[CONSTANT.SURAH_NAME_BANGLA] { surah_name_bangla = dbv.value() }
        if let dbv = row[CONSTANT.SURAH_ARTI_NAMA] { surah_arti_nama = dbv.value() }
        if let dbv = row[CONSTANT.SURAH_MEAN_ENGLISH] { surah_mean_english = dbv.value() }
        if let dbv = row[CONSTANT.SURAH_AYAH_NUMBER] { surah_ayah_number = dbv.value() }
        if let dbv = row[CONSTANT.SURAH_TYPE] { surah_type = dbv.value() }
        super.updateFromRow(row) // Subclasses are required to call super.
    }
  
    override var storedDatabaseDictionary: [String: DatabaseValueConvertible?] {
        return [
                CONSTANT.SURAH_ID : surah_id,
                CONSTANT.SURAH_NO : surah_no,
                CONSTANT.SURAH_NAME_ARABIC : surah_name_arabic,
                CONSTANT.SURAH_NAME_BANGLA : surah_name_bangla,
                CONSTANT.SURAH_NAME_ENGLISH : surah_name_english,
                CONSTANT.SURAH_ARTI_NAMA : surah_arti_nama,
                CONSTANT.SURAH_MEAN_ENGLISH : surah_mean_english,
                CONSTANT.SURAH_AYAH_NUMBER : surah_ayah_number,
                CONSTANT.SURAH_TYPE : surah_type
            ]
    }
    
    required init(row: Row) {
        super.init(row: row)
    }
    */
}
