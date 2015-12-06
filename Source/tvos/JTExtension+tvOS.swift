//
//  JTExtension+tvOS.swift
//  JunkToolbox (tvOS)
//
//  Created by asakawa on 2015/12/06.
//  Copyright © 2015年 asakawa. All rights reserved.
//

import Foundation
import UIKit
import StoreKit

extension UIColor {
    class func colorCode(code: String, alpha: CGFloat) -> UIColor {
        let scanner = NSScanner(string: code)
        var color:UInt32 = 0
        scanner.scanHexInt(&color)
        let r = (color & 0xFF0000) >> 16
        let g = (color & 0x00FF00) >> 8
        let b = (color & 0x0000FF)
        
        return UIColor(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: alpha)
    }
}

extension SKProduct {
    func priceFormat() -> String {
        let numberFormatter = NSNumberFormatter()
        numberFormatter.formatterBehavior = .Behavior10_4
        numberFormatter.numberStyle = .CurrencyStyle
        numberFormatter.locale = self.priceLocale
        return numberFormatter.stringFromNumber(self.price)!
    }
}