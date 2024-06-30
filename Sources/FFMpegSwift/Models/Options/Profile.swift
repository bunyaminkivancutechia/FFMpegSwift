//
//  Profile.swift
//  
//
//  Created by Mahdi BND on 6/15/24.
//

import Foundation

public enum Profile: String, CommandLiner {
    case high
    
    public var text: String {
        "-profile:v \(rawValue)"
    }
}
