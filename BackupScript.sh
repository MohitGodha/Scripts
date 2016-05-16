#!/bin/bash
# rsync using variables

SOURCEDIR=/home/user/Documents/backup
DESTDIR=/media/diskid/user_backup/Documents/

rsync -azP $SOURCEDIR user@IP_address:$DESTDIR