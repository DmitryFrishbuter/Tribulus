#!/bin/sh
set -o pipefail

xcodebuild \
  -project "$PROJECT" \
  -scheme "$IOS_FRAMEWORK_SCHEME" \
  -destination "$DESTINATION" \
  -enableCodeCoverage YES \
  build test | xcpretty -c --test --color
