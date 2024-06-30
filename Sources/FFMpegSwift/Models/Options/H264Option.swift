//
//  H264Option.swift
//  
//
//  Created by Mahdi BND on 6/15/24.
//

import Foundation

public enum H264Option: String, CommandLiner {
    case noCut = "keyint=48:min-keyint=48:no-scenecut"
    
    public var text: String {
        "-x264opts \(rawValue)"
    }
}
