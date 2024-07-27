import Foundation

public struct ExtractFrame: CommandLiner {
    let timestamp: Double
    
    public init(_ timestamp: Double) {
        self.timestamp = timestamp
    }
    
    public var text: String {
        "-ss \(timestamp)"
    }
}
