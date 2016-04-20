from unittest import TestCase
from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT, INPUT_RESISTANCE
from scoville.signal import GenericSignal, DelayedSignal


class AdditionTests(TestCase):

  def testNormalFunctions(self):
    self.addUp(LOW,  LOW,  LOW,  MAX_LOW,  MAX_LOW)
    self.addUp(LOW,  LOW,  HIGH, MIN_HIGH, MAX_LOW)
    self.addUp(LOW,  HIGH, LOW,  MIN_HIGH, MAX_LOW)
    self.addUp(LOW,  HIGH, HIGH, MAX_LOW,  MIN_HIGH)
    self.addUp(HIGH, LOW,  LOW,  MIN_HIGH, MAX_LOW)
    self.addUp(HIGH, LOW,  HIGH, MAX_LOW,  MIN_HIGH)
    self.addUp(HIGH, HIGH, LOW,  MAX_LOW,  MIN_HIGH)
    self.addUp(HIGH, HIGH, HIGH, MIN_HIGH, MIN_HIGH)


  def addUp(self, a, b, carryIn, expectedSum, expectedCarryOut):
    circuit = self.getCircuit()

    circuit.setSignal(GenericSignal("A", a))
    circuit.setSignal(GenericSignal("B", b))
    circuit.setSignal(GenericSignal("CARRY_IN", carryIn))

    circuit.inspectVoltage('SUM')
    circuit.inspectVoltage('CARRY')
    circuit.inspectCurrent(self.supplyName)

    circuit.run()
    actualSum = circuit.getVoltage('SUM')
    actualCarry = circuit.getVoltage('CARRY')
    current = circuit.getMaxCurrent(self.supplyName)

    comparisionFunction = self.assertLess
    if expectedSum == MIN_HIGH:
      comparisionFunction = self.assertGreater
    comparisionFunction(actualSum, expectedSum, "{0} + {1} + {2} should sum to {3} (was {4})".format(a,b,carryIn, expectedSum, actualSum))

    comparisionFunction = self.assertLess
    if expectedCarryOut == MIN_HIGH:
      comparisionFunction = self.assertGreater
    comparisionFunction(actualCarry, expectedCarryOut, "{0} + {1} + {2} should carry to {3} (was {4})".format(a,b,carryIn, expectedCarryOut, actualCarry))

    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))



