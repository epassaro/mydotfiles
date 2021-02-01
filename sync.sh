#! /bin/bash
#
# rsync flags:
#
#    -a    archive mode
#    -v    verbose
#    -R    relative path
#
# The extra dot in source path is for removing part
# of the relative path (`/home/user/) on target.

mkdir -p "$HOSTNAME"

DIST=$(echo $(lsb_release -ds) | xargs)
TARGET="$HOSTNAME"/"$DIST"

rsync -avR ~/./.config/pulse/default.pa "$TARGET"
rsync -avR ~/./.asoundrc "$TARGET"
rsync -avR ~/./.bashrc "$TARGET"
rsync -avR ~/./.condarc "$TARGET"
rsync -avR ~/./.genrc "$TARGET"
rsync -avR ~/./.zshrc "$TARGET"
