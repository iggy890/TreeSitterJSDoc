// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterJSDoc",
    platforms: [.macOS(.v10_13), .iOS(.v11)],
    products: [
        .library(name: "TreeSitterJSDoc", targets: ["TreeSitterJSDoc"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TreeSitterJSDoc",
                path: ".",
                exclude: [
                    "binding.gyp",
                    "bindings",
                    "Cargo.toml",
                    "corpus",
                    "examples",
                    "grammar.js",
                    "LICENSE",
                    "Makefile",
                    "package.json",
                    "README.md",
                    "src/grammar.json",
                    "src/node-types.json",
                    // any additional files to exclude 
                ],
                sources: [
                    "src/parser.c",
                ],
                resources: [
                    .copy("queries")
                ],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")])
    ]
)
