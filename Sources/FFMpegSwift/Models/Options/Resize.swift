import Foundation

public struct Resize: CommandLiner {
    let width: Int
    let height: Int
    
    public init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    
    public var text: String {
        "-vf scale=\(width):\(height)"
    }
}
