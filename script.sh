#!/bin/sh
set -euxo pipefail

xcodebuild test -project Tribulus.xcodeproj -scheme Tribulus -destination 'platform=iOS Simulator,OS=10.3.1,name=iPhone 7'
