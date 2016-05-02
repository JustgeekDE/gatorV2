#!/bin/sh

echo "\n\nStarting unit tests:"
python "tests/unitTestsSimulation.py"
if [ $? -ne 0 ]; then exit $?; fi
echo "\nDone"

echo "\n\nIntegrating gates:"
python "integrateSingleGates.py"
if [ $? -ne 0 ]; then exit $?; fi
echo "\nDone"

echo "\n\nRun ERC:"
./runERC.sh "build/alu_slice.sch"
if [ $? -ne 0 ]; then exit $?; fi
echo "\nDone"

echo "\n\nStarting integration tests:"
python "tests/integrationTestsSimulation.py"
exit $?
