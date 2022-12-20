load(
    "@//build-system/apple-utils:plist_fragment.bzl",
    "plist_fragment",
)

plist_fragment(
    name = "ResourceBundleInfoPlist",
    extension = "plist",
    template =
        """
    <key>CFBundleIdentifier</key>
    <string>$(PRODUCT_BUNDLE_IDENTIFIER)</string>
    <key>CFBundleDevelopmentRegion</key>
    <string>en</string>
    """,
    visibility = ["//visibility:public"],
)
