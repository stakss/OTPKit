import PackageDescription

let package = Package(
    name: "OTPKit",
    platforms: [
        .macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)
    ],
    products: [
        .library(name: "OTPKit", targets: ["OTPKit"])
    ],
    dependencies: [
      .Package(url: "https://github.com/stakss/CryptoKit.git", majorVersion: 0)
    ],
    targets: [
        .target(name: "OTPKit", dependencies: ["CryptoKit"], path: "OTPKit/")
    ]
)
