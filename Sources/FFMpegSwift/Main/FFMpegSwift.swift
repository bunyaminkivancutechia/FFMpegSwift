// The Swift Programming Language
// https://docs.swift.org/swift-book

import ffmpegkit

public class FFmpeg {
    var command: String!
    
    public var inputURL: URL?
    public var outputURL: URL?
    
    public init() { }
    
    public func execute(options: [Option]) async -> Bool {
        guard let inputURL, let outputURL else { return false }
        
        let optionsString = options.getString()
        
        self.command = "-i \(inputURL) \(optionsString) \(outputURL)"
        
        return await self.run()
    }
    
    func run() async -> Bool {
        let session = await _execute()
        let returnCode = session?.getReturnCode()
        
        if let output = session?.getOutput() {
            print("output: ", output)
        }
        
        return ReturnCode.isSuccess(returnCode)
    }
    
    private func _execute() async -> FFmpegSession? {
        return await withCheckedContinuation { (continuation: CheckedContinuation<FFmpegSession?, Never>) in
            let _ = FFmpegKit.executeAsync(command) { session in
                continuation.resume(returning: session)
            }
        }
    }
}

//"-c:v libx264 -c:a aac -preset slow -crf 25 -vf scale=iw*min(720/iw\\,1280/ih):ih*min(720/iw\\,1280/ih),pad=720:1280:(720-iw*min(720/iw\\,1280/ih))/2:(1280-ih*min(720/iw\\,1280/ih))/2 -b:a 128k -pix_fmt yuv420p -profile:v high -tune film -movflags +faststart -x264opts keyint=48:min-keyint=48:no-scenecut -b:v 1M -maxrate 1M -bufsize 2M -aq-mode 2 -qmin 10 -qmax 51 -rc-lookahead 60 -threads 6"
