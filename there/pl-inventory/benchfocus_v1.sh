#!/bin/bash
NIMGS_EXPECTED=10
INV_URL=http://inventory.planet-labs.com/inventory/api/test-result/edit

HWID=$1
TTYPE=$2
TRID=$3
if [ -z $TRID ]; then
  echo Specify HWID, test type, test result id, like
  echo "  $0 0701 123 456"
  exit 1
fi

CURL_PARAMS="$INV_URL -F id=$TRID -F test_type=$TTYPE"

echo "Working with HWID $HWID; URL = $CURL_PARAMS"
DATE=$(date +%Y%m%d_%H%M%S)
DIR=~/focus/"$HWID"_$DATE
export DISPLAY=localhost:0.0
mkdir -p $DIR
cd $DIR
xfx2cam -e 1.2 -g 0 -n -1 &> xfx2cam.txt
NIMGS=$(( $(ls -1 image* | wc -l) / 2 ))

ZIPFILE=sbf$HWID.zip
zip $ZIPFILE *

if [ $NIMGS -eq 0 ]; then
    curl $CURL_PARAMS -F result_type="F" -F text_result=\<xfx2cam.txt
elif [ $NIMGS -lt $NIMGS_EXPECTED ]; then
    RESULT="Expected at least $NIMGS_EXPECTED images, only got $NIMGS."
    curl $CURL_PARAMS -F result_type="W" -F text_result="$RESULT" -F file_result=@$ZIPFILE
else
    RESULT="Captured $NIMGS images."
    curl $CURL_PARAMS -F result_type="P" -F text_result="$RESULT" -F file_result=@$ZIPFILE
fi
