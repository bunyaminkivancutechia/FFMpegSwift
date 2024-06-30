//
//  Option.swift
//
//
//  Created by Mahdi BND on 6/15/24.
//

import Foundation

public enum Option {
    case aqmode(AdaptiveQuantization)
    case fastStart, override
    case crf(Int = 25)
    case bufferSize(BufferSize)
    case frame(Frame)
    case h264Option(H264Option)
    case lookAhead(LookAhead)
    case maxRate(MaxRate)
    case pixelFormat(PixelFormat)
    case preset(Preset)
    case profile(Profile)
    case qmin(Int = 16)
    case qmax(Int = 51)
    case threads(Int = 6)
    case tune(Tune)
    case codec(CodecOption)
    case bitrate(BitrateConfig)
    
    public var option: CommandLiner {
        return switch self {
        case let .aqmode(aq):
            value(for: aq)
        case .fastStart: 
            value(for: Base.fastStart)
        case .override: 
            value(for: Base.override)
        case let .crf(value): 
            Crf(value)
        case let .bufferSize(size):
            value(for: size)
        case let .frame(frame): 
            value(for: frame)
        case let .h264Option(option): 
            value(for: option)
        case let .lookAhead(amount):
            value(for: amount)
        case let .maxRate(rate):
            value(for: rate)
        case let .pixelFormat(format):
            value(for: format)
        case let .preset(preset):
            value(for: preset)
        case let .profile(profile):
            value(for: profile)
        case let .qmin(size):
            QMin(size)
        case let .qmax(size):
            QMax(size)
        case let .threads(count):
            Thread(count)
        case let .tune(option):
            value(for: option)
        case let .codec(option):
            value(for: option)
        case let .bitrate(config):
            value(for: Bitrate(config))
        }
    }
}

private extension Option {
    private func value(for value: CommandLiner) -> CommandLiner { value }
}
