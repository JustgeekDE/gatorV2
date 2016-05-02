import os
import sys
import unittest

from pkg_resources import resource_string

from scoville.circuit import Circuit
from scoville.eagleSchematic import EagleSchematic
from shortCircuitTests import test_AllInputs

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

  success = success and runTests(test_AllInputs.AllInputTest)

  sys.exit(not success)
