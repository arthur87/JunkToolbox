//
//  JTExtension.swift
//  JunkToolbox
//
//  Created by asakawa on 2015/12/01.
//  Copyright © 2015年 asakawa. All rights reserved.
//

import Foundation

extension Array {
    mutating func remove<T: Equatable>(obj: T) -> Array {
        self = self.filter({$0 as? T != obj})
        return self;
    }
}

extension String {
    func substring(beginIndex: Int, endIndex: Int) -> String {
        return self.substringWithRange(Range(start: self.startIndex.advancedBy(beginIndex), end: self.startIndex.advancedBy(endIndex)))
    }
    
    func substring(beginIndex: Int, length: Int) -> String {
        return self.substringWithRange(Range(start: self.startIndex.advancedBy(beginIndex), end: self.startIndex.advancedBy(beginIndex + length)))
    }
    
    func numberFormat() -> String {
        let formatter = NSNumberFormatter()
        formatter.numberStyle =  NSNumberFormatterStyle.DecimalStyle
        formatter.groupingSeparator = ","
        formatter.groupingSize = 3
        return formatter.stringFromNumber(NSNumber(double: Double(self)!))!
    }
}