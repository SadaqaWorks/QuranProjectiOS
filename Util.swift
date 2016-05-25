//
//  Util.swift
//  WordByWordQuran
//
//  Created by Sadman samee on 12/8/15.
//  Copyright © 2015 LoopsLab. All rights reserved.
//

import Foundation
import UIKit

class Util : NSObject
{
    class func getPath(fileName: String) -> String {
        let documentsURL = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)[0]
        let fileURL = documentsURL.URLByAppendingPathComponent(fileName)
        return fileURL.path!
    }
    
    class func copyFile(fileName: NSString) {
        print("copyFile")
        let dbPath: String = getPath(fileName as String)
        let fileManager = NSFileManager.defaultManager()
        if !fileManager.fileExistsAtPath(dbPath) {
            
            let documentsURL = NSBundle.mainBundle().resourceURL
            let fromPath = documentsURL!.URLByAppendingPathComponent(fileName as String)
            
            var error : NSError?
            do {
                try fileManager.copyItemAtPath(fromPath.path!, toPath: dbPath)
                print("File Copied")
            } catch let error1 as NSError {
                error = error1
            }
            let alert: UIAlertController = UIAlertController()
            if (error != nil) {
                 print("Error Occured")
                alert.title = "Error Occured"
                alert.message = error?.localizedDescription
            } else {
                 print("Successfully Copy")
                alert.title = "Successfully Copy"
                alert.message = "Your database copy successfully"
            }
          
        }
    }
    
    class func invokeAlertMethod(strTitle: NSString, strBody: NSString, delegate: AnyObject?)
    {
        let alert: UIAlertController = UIAlertController()
        alert.message = strBody as String
        alert.title = strTitle as String
        
    }
    
}

extension UILabel
{
    var optimalHeight : CGFloat
        {
        get
        {
            let label = UILabel(frame: CGRectMake(0, 0, self.frame.width, CGFloat.max))
            label.numberOfLines = 0
            label.lineBreakMode = self.lineBreakMode
            label.font = self.font
            label.text = self.text
            
            label.sizeToFit()
            
            return label.frame.height
        }
    }
}

//for auto size
extension UITableView {
    
    public func autoSizeContent() {
        setNeedsLayout()
        layoutIfNeeded()
        reloadData()
    }
}


