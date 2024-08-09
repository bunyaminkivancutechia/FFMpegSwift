import Foundation

public struct Format: CommandLiner {
    let format: String
    
    public init(_ format: String) {
        self.format = format
    }
    
    public var text: String {
        "-f \(format)"
    }
}
