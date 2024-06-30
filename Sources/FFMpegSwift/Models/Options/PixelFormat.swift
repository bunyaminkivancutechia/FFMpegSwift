//
//  PixelFormat.swift
//
//
//  Created by Mahdi BND on 6/15/24.
//

import Foundation

public enum PixelFormat: String, CommandLiner {
    case yuv420p
    
    public var text: String {
        "-pix_fmt \(rawValue)"
    }
}
