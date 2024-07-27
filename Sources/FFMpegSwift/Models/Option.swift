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
    
    // Cover picture options
    case extractFrame(at: Double) // Timestamp in seconds
    case resize(width: Int, height: Int)
    case format(String) // e.g., "jpeg", "png"
    case quality(Int) // Quality setting (e.g., 0-100 for JPEG)

    public var option: CommandLiner {
        switch self {
        case let .aqmode(aq):
            return value(for: aq)
        case .fastStart:
            return value(for: Base.fastStart)
        case .override:
            return value(for: Base.override)
        case let .crf(value):
            return Crf(value)
        case let .bufferSize(size):
            return value(for: size)
        case let .frame(frame):
            return value(for: frame)
        case let .h264Option(option):
            return value(for: option)
        case let .lookAhead(amount):
            return value(for: amount)
        case let .maxRate(rate):
            return value(for: rate)
        case let .pixelFormat(format):
            return value(for: format)
        case let .preset(preset):
            return value(for: preset)
        case let .profile(profile):
            return value(for: profile)
        case let .qmin(size):
            return QMin(size)
        case let .qmax(size):
            return QMax(size)
        case let .threads(count):
            return Thread(count)
        case let .tune(option):
            return value(for: option)
        case let .codec(option):
            return value(for: option)
        case let .bitrate(config):
            return value(for: Bitrate(config))
        case let .extractFrame(at):
            return ExtractFrame(at)
        case let .resize(width, height):
            return Resize(width: width, height: height)
        case let .format(format):
            return Format(format)
        case let .quality(quality):
            return Quality(quality)
        }
    }
}

private extension Option {
    private func value(for value: CommandLiner) -> CommandLiner { value }
}
