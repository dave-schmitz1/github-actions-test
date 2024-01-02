#!/bin/sh
echo "::debug::Running release.sh"
echo "Tag Value $1"
echo "Repository $2"
echo "INPUT_TAG_VALUE: $INPUT_TAG_VALUE"
echo "INPUT_REPOSITORY: $INPUT_REPOSITORY"

if gh release view $1 --repo=$2
# if [[ $? -ne 0 ]]
then
    echo "Tag $1 was found in repository $2"
else
    echo "Tag $1 was not found in repository $2"
fi
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
echo "HELLO_TIME=$time" >> $GITHUB_ENV
