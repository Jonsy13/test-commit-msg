#!/bin/bash

export RELEASE_BRANCH="1.22.x"

git commit --allow-empty -m "Set version branch release/${RELEASE_BRANCH}"
git push origin main

SHA=`git rev-parse HEAD`
git checkout ${SHA}
git checkout -b release/${RELEASE_BRANCH}

git push origin release/${RELEASE_BRANCH}