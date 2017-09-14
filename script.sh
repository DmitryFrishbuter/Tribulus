#!/bin/sh
set -euxo pipefail

xctool -workspace Tribulus.xcworkspace -scheme Tribulus.xcscheme build test
