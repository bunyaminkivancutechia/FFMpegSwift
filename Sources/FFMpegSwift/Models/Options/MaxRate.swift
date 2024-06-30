//
//  MaxRate.swift
//  
//
//  Created by Mahdi BND on 6/15/24.
//

import Foundation

public enum MaxRate: String, CommandLiner {
    case `default` = "1M"
    
    public var text: String {
        "-maxrate \(rawValue)"
    }
}
