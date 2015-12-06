//
//  JTConfiguration.swift
//  JunkToolbox
//
//  Created by asakawa on 2015/12/02.
//  Copyright © 2015年 asakawa. All rights reserved.
//

import Foundation
    
struct JTConfiguration {
    static func version() -> String {
        return NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleShortVersionString") as! String
    }
    
    static func build() -> String {
        return NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleVersion") as! String
    }
}