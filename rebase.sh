#!/bin/bash

git fetch ${REPO_REMOTE}
git rebase ${REPO_REMOTE}/${REPO_RREV}

