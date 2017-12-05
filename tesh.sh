#!/usr/bin/env bash

STATUS=$(git status)
if [! echo "${STATUS}" | grep -q "up-to-date.*clean"]
then
  echo "Branch is not up-to-date or clean, aborting"
  exit 1
fi