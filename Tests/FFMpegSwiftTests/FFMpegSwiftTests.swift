import XCTest
@testable import FFMpegSwift

// Video URL in simulator
fileprivate let devices = "file:///Users/mahdibnd/Library/Developer/CoreSimulator/Devices"
fileprivate let video = "/999D8B7C-5ECA-4654-919C-B9ED5C39EB31/data/Media/DCIM/100APPLE/IMG_0016.MP4"

final class FFMpegSwiftTests: XCTestCase {
    private let file = devices + video
    private let tmpDir = URL(fileURLWithPath: NSTemporaryDirectory())
    
    func testExample() async throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest
        
        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
    }
    
    func execute(options: [Option]) async -> Bool {
        let input = URL(string: file)!
        let output = tmpDir.appendingPathComponent("test.mp4")
        
        
        let service = FFmpeg()
        service.inputURL = input
        service.outputURL = output
        
        return await service.execute(options: options)
    }
    
    func testNewSyntax() async {
        let options: [Option] = [
            .override,
            .crf(),
            .aqmode(.complexity),
            .fastStart,
            .bufferSize(.default),
            .threads(),
            .qmin(),
            .codec(.aac),
            .bitrate(.default)
        ]
        
        let result = await execute(options: options)
        
        XCTAssertTrue(result)
    }
}
