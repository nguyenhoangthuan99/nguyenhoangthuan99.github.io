#!/bin/sh

find . -type f -name "*.md" | xargs proselint
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
