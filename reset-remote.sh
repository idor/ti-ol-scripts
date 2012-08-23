#!/bin/bash

git fetch ${REPO_REMOTE}
git reset --hard ${REPO_REMOTE}/${REPO_RREV}

