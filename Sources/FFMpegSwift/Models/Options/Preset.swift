//
//  Preset.swift
//
//
//  Created by Mahdi BND on 6/15/24.
//

import Foundation

public enum Preset: String, CommandLiner {
    case slow, medium, fast, veryfast
    
    public var text: String {
        "-preset \(rawValue)"
    }
}
