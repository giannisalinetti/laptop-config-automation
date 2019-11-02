#!/bin/bash

RESTIC_BIN=/usr/bin/restic
BACKUP_PATH=/run/media/gbsalinetti/BACKUPS/Lenovo_P51_Fedora/restic_backups/
BACKUP_FILES=$HOME/restic_backup_files
EXCLUDES=$HOME/restic_excludes

exec ${RESTIC_BIN} backup \
--verbose 2 \
-r ${BACKUP_PATH} \
--files-from ${BACKUP_FILES} \
--exclude-file=${EXCLUDES} \
--exclude-caches \
