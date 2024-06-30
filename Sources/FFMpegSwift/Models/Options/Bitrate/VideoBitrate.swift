//
//  VideoBitrate.swift
//  
//
//  Created by Mahdi BND on 6/15/24.
//

import Foundation

public enum VideoBitrate: String, CommandLiner {
    case `default` = "1M"
    
    public var text: String {
        "-b:v \(rawValue)"
    }
}
