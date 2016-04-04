from unittest import TestCase

from scoville.signal import GenericSignal, DelayedSignal

from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT, INPUT_RESISTANCE


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

  def testShouldSwitchBetweenLowAndHighFast(self):
    circuit = self.getCircuit()

    changeTime = 10
    endTime = 20
    maxDelay = 5

    circuit.setSignal(DelayedSignal("SEL", HIGH, delay=changeTime, startValue=LOW, resistance=INPUT_RESISTANCE))
    circuit.setSignal(GenericSignal("A", HIGH))
    circuit.setSignal(GenericSignal("B", LOW))
    circuit.inspectVoltage("OUT")
    circuit.inspectCurrent(self.supplyName)

    circuit.run(endTime, 0.001)
    current = circuit.getMaxCurrent(self.supplyName)
    voltageBefore = circuit.getMaxVoltage("OUT", start=1, end=changeTime)
    voltageAfter = circuit.getMinVoltage("OUT", start=changeTime + maxDelay, end=endTime)

    self.assertLess(voltageBefore, MAX_LOW, "Output should be at most {} (was {})".format(MAX_LOW, voltageBefore))
    self.assertGreater(voltageAfter, MIN_HIGH, "Output should be at least {} (was {})".format(MIN_HIGH, voltageAfter))
    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))

  def testShouldSwitchBetweenHighAndLowFast(self):
    circuit = self.getCircuit()

    changeTime = 10
    endTime = 20
    maxDelay = 5

    circuit.setSignal(DelayedSignal("SEL", LOW, delay=changeTime, startValue=HIGH, resistance=INPUT_RESISTANCE))
    circuit.setSignal(GenericSignal("A", HIGH))
    circuit.setSignal(GenericSignal("B", LOW))
    circuit.inspectVoltage("OUT")
    circuit.inspectCurrent(self.supplyName)

    circuit.run(endTime, 0.001)
    current = circuit.getMaxCurrent(self.supplyName)
    voltageBefore = circuit.getMaxVoltage("OUT", start=1, end=changeTime)
    voltageAfter = circuit.getMaxVoltage("OUT", start=changeTime + maxDelay, end=endTime)

    self.assertGreater(voltageBefore, MIN_HIGH, "Output should be at least {} (was {})".format(MIN_HIGH, voltageBefore))
    self.assertLess(voltageAfter, MAX_LOW, "Output should be at most {} (was {})".format(MAX_LOW, voltageAfter))
    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))


  def testChangesToAInputShouldPropagateFast(self):
    circuit = self.getCircuit()

    changeTime = 10

    circuit.setSignal(GenericSignal("SEL", HIGH))
    circuit.setSignal(DelayedSignal("A", HIGH, delay=changeTime, startValue=LOW, resistance=INPUT_RESISTANCE))
    circuit.setSignal(GenericSignal("B", LOW))

    self.expectChangeToHigh(changeTime, circuit)

  def expectChangeToHigh(self, changeTime, circuit):
    endTime = 20
    maxDelay = 5
    circuit.inspectVoltage("OUT")
    circuit.inspectCurrent(self.supplyName)
    circuit.run(endTime, 0.001)

    current = circuit.getMaxCurrent(self.supplyName)
    voltageBefore = circuit.getMaxVoltage("OUT", start=1, end=changeTime)
    voltageAfter = circuit.getMaxVoltage("OUT", start=changeTime + maxDelay, end=endTime)

    self.assertLess(voltageBefore, MAX_LOW, "Output should be at most {} (was {})".format(MAX_LOW, voltageBefore))
    self.assertGreater(voltageAfter, MIN_HIGH, "Output should be at least {} (was {})".format(MIN_HIGH, voltageAfter))
    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))

  def expectChangeToLow(self, changeTime, circuit):
    endTime = 20
    maxDelay = 5
    circuit.inspectVoltage("OUT")
    circuit.inspectCurrent(self.supplyName)
    circuit.run(endTime, 0.001)

    current = circuit.getMaxCurrent(self.supplyName)
    voltageBefore = circuit.getMaxVoltage("OUT", start=1, end=changeTime)
    voltageAfter = circuit.getMaxVoltage("OUT", start=changeTime + maxDelay, end=endTime)

    self.assertGreater(voltageBefore, MIN_HIGH, "Output should be at least {} (was {})".format(MIN_HIGH, voltageBefore))
    self.assertLess(voltageAfter, MAX_LOW, "Output should be at most {} (was {})".format(MAX_LOW, voltageAfter))
    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))

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

