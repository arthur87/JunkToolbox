//
//  JTReachability.swift
//  JunkToolbox (iOS)
//
//  Created by asakawa on 2015/12/06.
//  Copyright © 2015年 asakawa. All rights reserved.
//

import Foundation
import SystemConfiguration

struct JTReachability {
    enum JTReachabilityStatus {
        case Offline
        case OnlineWWAN
        case OnlineWiFi
        case Unknown
    }
    
    static func reachabilityStatus() -> JTReachabilityStatus {
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(sizeofValue(zeroAddress))
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        guard let route = withUnsafePointer(&zeroAddress, {
            SCNetworkReachabilityCreateWithAddress(nil, UnsafePointer($0))
        }) else {
            return .Unknown
        }
        
        var flags: SCNetworkReachabilityFlags = []
        if !SCNetworkReachabilityGetFlags(route, &flags) {
            return .Unknown
        }
        
        let connectionRequired = flags.contains(.ConnectionRequired)
        let isReachable = flags.contains(.Reachable)
        let isWWAN = flags.contains(.IsWWAN)
        
        if !connectionRequired && isReachable {
            return isWWAN ? .OnlineWWAN : .OnlineWiFi
        } else {
            return .Offline
        }
    }
}