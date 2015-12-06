//
//  JTMath.swift
//  JunkToolbox
//
//  Created by asakawa on 2015/12/03.
//  Copyright © 2015年 asakawa. All rights reserved.
//

import Foundation

struct JTMath {
    
    static func constrain(x: Float, a: Float, b: Float) -> Float {
        if a <= x && x <= b {
            return x
        }
        return a > x ? a : b
    }

    static func constrain(x: Double, a: Double, b: Double) -> Double {
        if a <= x && x <= b {
            return x
        }
        return a > x ? a : b
    }
    
    static func map(x: Float, inMin: Float, inMax: Float, outMin: Float, outMax: Float) -> Float {
        return floor((x - inMin) * (outMax - outMin) / (inMax - inMin) + outMin)
    }
    
    static func map(x: Double, inMin: Double, inMax: Double, outMin: Double, outMax: Double) -> Double {
        return floor((x - inMin) * (outMax - outMin) / (inMax - inMin) + outMin)
    }
    
    static func format(x: Double, y: Int) -> Double {
        return floor(x * pow(10.0, Double(y))) / pow(10.0, Double(y))
    }
    
    static func format(x: Float, y: Int) -> Float {
        return floor(x * Float(pow(10.0, Double(y)))) / Float(pow(10.0, Double(y)))
    }

}