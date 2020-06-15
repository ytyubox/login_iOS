// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "Backend",
	platforms: [
		.macOS(SupportedPlatform.MacOSVersion.v10_15)
	],
	products: [
		// Products define the executables and libraries produced by a package, and make them visible to other packages.
		.executable(
			name: "Server",
			targets: ["Server"]),
		.library(
			name: "Backend",
			targets: ["Backend"]),
	],
	dependencies: [
		// Dependencies declare other packages that this package depends on.
		.package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
	],
	targets: [
		// Targets are the basic building blocks of a package. A target can define a module or a test suite.
		// Targets can depend on other targets in this package, and on products in packages which this package depends on.
		.target(
			name: "Server",
			dependencies: ["Backend"]),
		.target(
			name: "Backend",
			dependencies: [
				.product(name: "Vapor", package: "vapor")
		]),
		.testTarget(
			name: "BackendTests",
			dependencies: ["Backend"]),
	]
)
