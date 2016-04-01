from unittest import TestCase
from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT, INPUT_RESISTANCE
from scoville.signal import GenericSignal, DelayedSignal


class OneBitSelectUnitTests(TestCase):

  def testASelectedAndLow(self):
    self.expectLowOutput(a=LOW, b=LOW, sel=HIGH)
    self.expectLowOutput(a=LOW, b=HIGH, sel=HIGH)

  def testASelectedAndHigh(self):
    self.expectHighOutput(a=HIGH, b=LOW, sel=HIGH)
    self.expectHighOutput(a=HIGH, b=HIGH, sel=HIGH)

  def testBSelectedAndLow(self):
    self.expectLowOutput(a=LOW, b=LOW, sel=LOW)
    self.expectLowOutput(a=HIGH, b=LOW, sel=LOW)

  def testBSelectedAndHigh(self):
    self.expectHighOutput(a=LOW, b=HIGH, sel=LOW)
    self.expectHighOutput(a=HIGH, b=HIGH, sel=LOW)

  def expectHighOutput(self, a, b, sel):
    circuit = self.initCircuit(a, b, sel)

    outputVoltage = circuit.getVoltage("OUT")
    current = circuit.getMinCurrent(self.supplyName)

    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))
    self.assertGreater(outputVoltage, MIN_HIGH,
                    "Output should be at least {} for A: {}, B: {}, SEL: {}, but is: {}".format(MIN_HIGH, a, b, sel, outputVoltage))

  def expectLowOutput(self, a, b, sel):
    circuit = self.initCircuit(a, b, sel)

    outputVoltage = circuit.getVoltage("OUT")
    current = circuit.getMinCurrent(self.supplyName)

    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))
    self.assertLess(outputVoltage, MAX_LOW,
                    "Output should be at most {} for A: {}, B: {}, SEL: {}, but is: {}".format(MAX_LOW, a, b, sel, outputVoltage))

  def initCircuit(self, a, b, sel):
    circuit = self.getCircuit()
    circuit.setSignal(GenericSignal("A", a))
    circuit.setSignal(GenericSignal("SEL", sel))
    circuit.setSignal(GenericSignal("B", b))
    circuit.inspectVoltage("OUT")
    circuit.inspectCurrent(self.supplyName)
    circuit.run()
    return circuit

