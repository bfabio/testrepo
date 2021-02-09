#!/bin/sh

set -o pipefail

pcvalidate "$1" | reviewdog -efm="%f:%l:%c: %m" -reporter=github-pr-review -tee
