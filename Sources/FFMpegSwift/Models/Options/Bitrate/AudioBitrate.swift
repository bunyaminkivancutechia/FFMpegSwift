//
//  AudioBitrate.swift
//  
//
//  Created by Mahdi BND on 6/15/24.
//

import Foundation

public enum AudioBitrate: String, CommandLiner {
    case low = "128k"
    case medium = "256k"
    case high = "320k"
    
    public var text: String {
        "-b:a \(rawValue)"
    }
}
