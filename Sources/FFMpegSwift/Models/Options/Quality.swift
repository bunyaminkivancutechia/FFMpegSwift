import Foundation

public struct Quality: CommandLiner {
    let quality: Int
    
    public init(_ quality: Int) {
        self.quality = quality
    }
    
    public var text: String {
        "-q:v \(quality)"
    }
}
