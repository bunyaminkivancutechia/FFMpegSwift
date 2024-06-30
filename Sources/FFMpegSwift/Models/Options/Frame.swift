//
//  Frame.swift
//  
//
//  Created by Mahdi BND on 6/15/24.
//

import Foundation

public enum Frame: String, CommandLiner {
    case fillColor = "iw*min(720/iw\\,1280/ih):ih*min(720/iw\\,1280/ih),pad=720:1280:(720-iw*min(720/iw\\,1280/ih))/2:(1280-ih*min(720/iw\\,1280/ih))/2"
    
    public var text: String {
        "-vf scale=\(rawValue)"
    }
}
