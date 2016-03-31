import os
import sys
import unittest

from pkg_resources import resource_string

from scoville.circuit import Circuit
from scoville.eagleSchematic import EagleSchematic
from scoville.parts import GenericVoltageSource
from unitTests import test_AND, test_OR, test_NAND, test_NOT, test_XOR


def getCircuitFunction(schematicFileName, supplyName):
  def getCircuit(self):
    schematicSource = resource_string('hw', schematicFileName)
    schematic = EagleSchematic(schematicSource)
    circuit = Circuit(schematic.getSpiceData())
    circuit.setSignal(GenericVoltageSource(supplyName, '_VP', '_VN', 5.0))
    return circuit

  return getCircuit


def runTests(schematicFileName, testClass):
  testClass.supplyName = 'Vsupply'
  testClass.getCircuit = getCircuitFunction(schematicFileName, 'supply')
  tests = unittest.TestLoader().loadTestsFromTestCase(testClass)
  return unittest.TextTestRunner(verbosity=2).run(tests).wasSuccessful()


if __name__ == '__main__':
  sys.path.insert(0, os.getcwd())

  success = True


  success = success and runTests('singleGates/AND.sch', test_AND.ANDUnitTests)
  success = success and runTests('singleGates/OR.sch', test_OR.ORUnitTests)
  success = success and runTests('singleGates/NAND.sch', test_NAND.NANDUnitTests)
  success = success and runTests('singleGates/NOT-A.sch', test_NOT.NOTUnitTests)
  success = success and runTests('singleGates/NOT-B.sch', test_NOT.NOTUnitTests)
  success = success and runTests('singleGates/XOR.sch', test_XOR.XORUnitTests)

  sys.exit(not success)
