#!/bin/bash

# Fix npm so it will correctly install without EXDEV errors
# see https://github.com/npm/npm/issues/9863,
# https://github.com/npm/npm/issues/9863#issuecomment-152342020, and
# https://github.com/abernix/meteord/blob/1d9047539e1bd487d0eff2aa5c994b5472e5b9aa/base/scripts/lib/build_app.sh#L4
# for more info
echo "copying app to avoid trixsy EXDEV issues"
cp -R $INITIAL_SRC_DIR $APP_DIR
rm -rf $INITIAL_SRC_DIR

# Install production NPM dependencies
cd $APP_DIR

if [ -f package.json ]; then
  echo "Installing NPM dependencies. . ."
  npm install --production
fi
