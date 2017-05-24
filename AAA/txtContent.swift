//
//  textContent.swift
//  AAA
//
//  Created by Mac on 2017/5/19.
//  Copyright © 2017年 MAP_First. All rights reserved.
//

import Foundation

struct txtContent{
    
    static func getFilePath(fileName :String,fileType :String) -> String{
        return Bundle.main.path(forResource: fileName, ofType: fileType)!

    }
    static func getTextData() ->[String]{
        return (NSArray(contentsOfFile: getFilePath(fileName: "text",fileType: "plist")))! as! [String]
    }
    

}

