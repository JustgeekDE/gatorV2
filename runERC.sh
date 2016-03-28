#!/bin/sh

eagle -C "ERC; run export-error SAVE ercResult.txt; quit" $1

if grep -q "error has not yet been approved" "ercResult.txt"; then
  rc=1
else
  rm ercResult.txt
fi

exit $rc
