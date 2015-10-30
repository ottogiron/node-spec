#!/bin/bash
APP_PATH="/app"

rm -rf $APP_PATH

if [ "$1" = 'test' ]; then
  if [ -z ${GIT_REPO+x} ]; then echo "GIT_REPO is unset";
  else
    git clone  $GIT_REPO $APP_PATH
    if [ ! -z ${GIT_COMMIT+x} ]; then
      git checkout $GIT_COMMIT
    fi
    cd $APP_PATH
    npm install --development
    npm test
  fi
else
  echo "Available commands are:"
  echo "  test"
fi
