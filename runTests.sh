#!/bin/sh

virtualenv $1
source $1/bin/activate
pip install -r requirements.txt

echo "\n\nStarting tests:\n"
python "tests/$1.py"
rc=$?;

deactivate
rm -rf $1

exit $rc

