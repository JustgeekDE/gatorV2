#!/bin/sh

eagle -C "ERC; run export-error SAVE ercResult.txt; quit" $1

if egrep -q '\<error\>(.*)\<error has not yet been approved\>' "ercResult.txt"; then
  cat 'Error in ERC result:'
  cat ercResult.txt
  rc=1
else
  rm ercResult.txt
fi

exit $rc
