#!/bin/sh

# 
# http://superuser.com/questions/647674/is-there-a-way-to-edit-files-inside-of-a-zip-file-without-explicitly-extracting
#

# Edit a file inside a zip archive
zipedit(){
    echo "Usage: zipedit archive.zip file.txt"
    unzip "$1" "$2" -d /tmp 
    vi /tmp/$2 && zip -j --update "$1"  "/tmp/$2" 
}