#!/bin/sh

env
echo $GITHUB_ACTIONS

echo Executing pcvalidate
pcvalidate "$1"

pcvalidate "$1" | reviewdog -efm="$1:%f:%l:%c: %m" -reporter=github-pr-review -tee
