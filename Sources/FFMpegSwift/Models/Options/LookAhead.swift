//
//  LookAhead.swift
//
//
//  Created by Mahdi BND on 6/15/24.
//

import Foundation

public enum LookAhead: Int, CommandLiner {
    case `default` = 60
    
    public var text: String {
        "-rc-lookahead \(rawValue)"
    }
}
