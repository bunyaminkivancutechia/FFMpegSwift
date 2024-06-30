//
//  CodecOption.swift
//
//
//  Created by Mahdi BND on 6/15/24.
//

import Foundation

public enum CodecOption: String, CommandLiner {
    case libx264
    case aac
    
    public var type: TrackType {
        switch self {
        case .libx264:
            return .video
        case .aac:
            return .audio
        }
    }
    
    public var text: String {
        "\(type.rawValue) \(rawValue)"
    }
}
