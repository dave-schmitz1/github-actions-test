#!/bin/sh
echo "::debug::Running release.sh"
echo "Tag Value $1"
echo "Repository $2"
echo "INPUT_TAG_VALUE: $INPUT_TAG_VALUE"
echo "INPUT_REPOSITORY: $INPUT_REPOSITORY"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
echo "HELLO_TIME=$time" >> $GITHUB_ENV
