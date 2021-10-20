#!/usr/bin/env bash

branch=$(git branch --all | fzf | tr -d ‘[:space:]’)
git checkout $branch

