#!/bin/sh -l
export CO_REPOSITORY_KEY="$1"
echo git --version
echo "Adding directory $GITHUB_WORKSPACE to GIT's safe directories list"
git config --global --add safe.directory "$GITHUB_WORKSPACE"
/client/entrypoint.sh