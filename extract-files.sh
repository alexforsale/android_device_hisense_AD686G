#!/bin/sh

VENDOR=hisense
DEVICE=AD686G
COMMON=msm7x27a-common	

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

mkdir -p ../../../vendor/$VENDOR/$DEVICE

# Get common files
(cd ../$COMMON && ./extract-files.sh)

echo "Pulling device files..."
    adb root
for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    adb pull $FILE $BASE/$FILE
done

./setup-makefiles.sh
