#!/bin/sh
echo "::debug::Running release.sh"
echo "::debug::Tag Value $1"
echo "::debug::Repository $2"

if gh release view $1 --repo=$2
then
    echo "Release with tag $1 already exists in repository $2"
    exit 0
else
    echo "Tag $1 was not found in repository $2"
fi

echo "End of script"
