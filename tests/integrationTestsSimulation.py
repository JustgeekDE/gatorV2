import os
import sys
import unittest

from pkg_resources import resource_string

from scoville.circuit import Circuit
from scoville.eagleSchematic import EagleSchematic
from integrationTests import test_ADD, test_ID, test_AND, test_OR, test_XOR, test_SHIFT, test_CMP, test_LD

def getCircuitFunction():
  def getCircuit(self):
    schematicSource = resource_string('build', 'alu_slice.sch')
    schematic = EagleSchematic(schematicSource)
    circuit = Circuit(schematic.getSpiceData())
    return circuit

  return getCircuit


def runTests(testClass):
  testClass.supplyName = 'VP5V'
  testClass.getCircuit = getCircuitFunction()
  tests = unittest.TestLoader().loadTestsFromTestCase(testClass)
  return unittest.TextTestRunner(verbosity=2).run(tests).wasSuccessful()


if __name__ == '__main__':
  sys.path.insert(0, os.getcwd())
  success = True

  success = success and runTests(test_ADD.AdditionTests)
  success = success and runTests(test_ID.IdentityTests)
  success = success and runTests(test_AND.ANDTests)
  success = success and runTests(test_OR.ORTests)
  success = success and runTests(test_XOR.XORTests)
  success = success and runTests(test_SHIFT.ShiftTests)
  success = success and runTests(test_CMP.ComparisionTests)
  success = success and runTests(test_LD.LoadTests)

  sys.exit(not success)
