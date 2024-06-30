// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FFMpegSwift",
    platforms: [
        .iOS(.v13),
    ], products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FFMpegSwift",
            targets: ["FFMpegSwift", "ffmpegkit", "libavcodec", "libavdevice", "libavfilter", "libavformat", "libavutil", "libswresample", "libswscale"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FFMpegSwift"
        ),
        .binaryTarget(
            name: "ffmpegkit",
            path: "ffmpeg-ios/ffmpegkit.xcframework"
        ),
        .binaryTarget(
            name: "libavcodec",
            path: "ffmpeg-ios/libavcodec.xcframework"
        ),
        .binaryTarget(
            name: "libavdevice",
            path: "ffmpeg-ios/libavdevice.xcframework"
        ),
        .binaryTarget(
            name: "libavfilter",
            path: "ffmpeg-ios/libavfilter.xcframework"
        ),
        .binaryTarget(
            name: "libavformat",
            path: "ffmpeg-ios/libavformat.xcframework"
        ),
        .binaryTarget(
            name: "libavutil",
            path: "ffmpeg-ios/libavutil.xcframework"
        ),
        .binaryTarget(
            name: "libswresample",
            path: "ffmpeg-ios/libswresample.xcframework"
        ),
        .binaryTarget(
            name: "libswscale",
            path: "ffmpeg-ios/libswscale.xcframework"
        ),
        .testTarget(
            name: "FFMpegSwiftTests",
            dependencies: ["FFMpegSwift"]),
    ]
)
