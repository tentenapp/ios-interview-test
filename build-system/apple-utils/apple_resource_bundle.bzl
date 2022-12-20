load(
    "@build_bazel_rules_apple//apple:resources.bzl",
    _apple_resource_bundle_impl = "apple_resource_bundle",
)

# A custom macro that automatically generates the correct plist and Bundle identifier
# – according to the Bundle name.
#
# Also generates a Bundle+Module.swift file to use to access the bundle's content.
def apple_resource_bundle(
        name,
        bundle_name,
        resources,
        **kwargs):
    _apple_resource_bundle_impl(
        name = name,
        bundle_name = bundle_name,
        bundle_id = "com.tenten.interview.{}".format(bundle_name),
        infoplists = [
            "@//build-system/apple-utils:ResourceBundleInfoPlist",
        ],
        resources = resources,
        **kwargs
    )
