//
//  JTExtension+OSX.swift
//  JunkToolbox (OSX)
//
//  Created by asakawa on 2015/12/06.
//  Copyright © 2015年 asakawa. All rights reserved.
//

import Foundation
import StoreKit

extension SKProduct {
    func priceFormat() -> String {
        let numberFormatter = NSNumberFormatter()
        numberFormatter.formatterBehavior = .Behavior10_4
        numberFormatter.numberStyle = .CurrencyStyle
        numberFormatter.locale = self.priceLocale
        return numberFormatter.stringFromNumber(self.price)!
    }
}