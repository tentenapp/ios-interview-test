.PHONY: build
build: # Build everything
	@bazel build --config ios_device //...

.PHONY: test
test: # Run automated tests
	@bazel test --config ios_device //...

.PHONY: xcodeproj
xcodeproj: # Generates an xcodeproj
	@bazel run //:xcodeproj

.DEFAULT_GOAL := help
.PHONY: help
help: # Show this help message
		@grep -E '^[a-zA-Z_-]+:.*?# .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":[^#]*? #| #"}; {printf "%-57s%s\n", $$1 $$3, $$2}'
