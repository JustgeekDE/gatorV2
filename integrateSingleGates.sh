#!/bin/sh

virtualenv buildEnv
source buildEnv/bin/activate
pip install -r requirements.txt

echo "\n\nReplacing gates:\n"
python "integrateSingleGates.py"

rm -rf buildEnv

exit $rc

