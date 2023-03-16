load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:versioning.bzl", "apple_bundle_version")
load(
    "@//build-system/apple-utils:plist_fragment.bzl",
    "plist_fragment",
)

swift_library(
    name = "ios-interview-test-lib",
    module_name = "iOSInterviewTest",
    srcs = glob(["**/*.swift"]),
    deps = [
        "//Sources/ConnectionIndicator",
        "//Sources/ExecutionQueue",
        "//Sources/FriendList",
        "//Sources/Settings",
        "//Submodules/TinyComponentsKit"
    ]
)

ios_application(
    name = "ios-interview-test",
    bundle_id = "com.tenten.technical-test",
    families = ["iphone"],
    infoplists = [":Info"],
    minimum_os_version = "15.4",
    version = ":Version",
    deps = [":ios-interview-test-lib"],
    visibility = ["//visibility:public"],
)

apple_bundle_version(
    name = "Version",
    build_version = "1",
    short_version_string = "0.0.1",
)

INFO_PLIST_TEMPLATE = """
	<key>UIStatusBarStyle</key>
	<string>UIStatusBarStyleLightContent</string>
	<key>CADisableMinimumFrameDurationOnPhone</key>
	<true/>
	<key>CFBundleAllowMixedLocalizations</key>
	<true/>
	<key>CFBundleDevelopmentRegion</key>
	<string>$(DEVELOPMENT_LANGUAGE)</string>
	<key>CFBundleExecutable</key>
	<string>$(EXECUTABLE_NAME)</string>
	<key>CFBundleIdentifier</key>
	<string>$(PRODUCT_BUNDLE_IDENTIFIER)</string>
	<key>CFBundleInfoDictionaryVersion</key>
	<string>6.0</string>
	<key>CFBundleName</key>
	<string>$(PRODUCT_NAME)</string>
	<key>CFBundlePackageType</key>
	<string>$(PRODUCT_BUNDLE_PACKAGE_TYPE)</string>
	<key>ITSAppUsesNonExemptEncryption</key>
	<false/>
	<key>LSRequiresIPhoneOS</key>
	<true/>
	<key>UIApplicationSceneManifest</key>
	<dict>
		<key>UIApplicationSupportsMultipleScenes</key>
		<false/>
	</dict>
	<key>UIApplicationSupportsIndirectInputEvents</key>
	<true/>
	<key>UILaunchStoryboardName</key>
	<string>Launch Screen</string>
	<key>UIRequiredDeviceCapabilities</key>
	<array>
		<string>arm64</string>
	</array>
	<key>UISupportedInterfaceOrientations</key>
	<array>
		<string>UIInterfaceOrientationPortrait</string>
	</array>
	<key>UIViewControllerBasedStatusBarAppearance</key>
	<false/>
"""

plist_fragment(
    name = "Info",
    extension = "plist",
    template = INFO_PLIST_TEMPLATE,
)