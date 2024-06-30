//
//  File.swift
//  
//
//  Created by Mahdi BND on 6/15/24.
//

import Foundation

public struct Bitrate: CommandLiner {
    let config: BitrateConfig
    
    public init(_ config: BitrateConfig) {
        self.config = config
    }
    
    public var text: String {
        var result = ""
        
        if let audio = config.audio {
            result = audio.text
        }
        
        if let video = config.video {
            result += " \(video.text)"
        }
        
        return result
    }
}

public struct BitrateConfig {
    let audio: AudioBitrate?
    let video: VideoBitrate?
    
    public init(audio: AudioBitrate? = nil, video: VideoBitrate? = nil) {
        self.audio = audio
        self.video = video
    }
    
    public static let `default` = BitrateConfig(audio: .low, video: .default)
}
