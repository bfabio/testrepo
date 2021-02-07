#!/bin/sh

env
echo $GITHUB_ACTIONS

pcvalidate "$1" | reviewdog -efm="%f:%l:%c: %m" -reporter=github-pr-review -tee
