from unittest import TestCase

from scoville.signal import GenericSignal, DelayedSignal

from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT, INPUT_RESISTANCE


class NOTUnitTests(TestCase):

  def testLowShouldResultInHigh(self):
    circuit = self.getCircuit()

    circuit.setSignal(GenericSignal("A", LOW))
    circuit.inspectVoltage("NOT")
    circuit.inspectCurrent(self.supplyName)

    circuit.run()
    outputVoltage = circuit.getVoltage("NOT")
    current = circuit.getMinCurrent(self.supplyName)

    self.assertGreater(outputVoltage, MIN_HIGH, "NOT {0} should be at least {1} (was {2})".format(MAX_LOW, MIN_HIGH, outputVoltage))
    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))

  def testHighShouldResultInLow(self):
    circuit = self.getCircuit()

    circuit.setSignal(GenericSignal("A", HIGH))
    circuit.inspectVoltage("NOT")
    circuit.inspectCurrent(self.supplyName)

    circuit.run()
    outputVoltage = circuit.getVoltage("NOT")
    current = circuit.getMaxCurrent(self.supplyName)

    self.assertLess(outputVoltage, MAX_LOW, "NOT {0} should be at most {1} (was {2})".format(MIN_HIGH, MAX_LOW, outputVoltage))
    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))

  def testShouldSwitchOnFast(self):
    circuit = self.getCircuit()

    changeTime = 10
    endTime = 20
    maxDelay = 5

    circuit.setSignal(DelayedSignal("A", LOW, delay=changeTime, startValue=HIGH, resistance=INPUT_RESISTANCE))
    circuit.inspectVoltage("NOT")
    circuit.inspectCurrent(self.supplyName)

    circuit.run(endTime, 0.001)
    current = circuit.getMaxCurrent(self.supplyName)
    voltageBefore = circuit.getMaxVoltage("NOT", start=1, end=changeTime)
    voltageAfter = circuit.getMinVoltage("NOT", start=changeTime + maxDelay, end=endTime)

    self.assertLess(voltageBefore, MAX_LOW, "NOT {0} should be at most {1} (was {2})".format(HIGH, MAX_LOW, voltageBefore))
    self.assertGreater(voltageAfter, MIN_HIGH, "NOT {0} should be at most {1} (was {2})".format(LOW, MIN_HIGH, voltageAfter))
    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))

  def testShouldSwitchOffFast(self):
    circuit = self.getCircuit()

    changeTime = 10
    endTime = 20
    maxDelay = 5

    circuit.setSignal(DelayedSignal("A", HIGH, delay=changeTime, startValue=LOW, resistance=INPUT_RESISTANCE))
    circuit.inspectVoltage("NOT")
    circuit.inspectCurrent(self.supplyName)

    circuit.run(endTime, 0.001)
    current = circuit.getMaxCurrent(self.supplyName)
    voltageBefore = circuit.getMinVoltage("NOT", start=1, end=changeTime)
    voltageAfter = circuit.getMaxVoltage("NOT", start=changeTime + maxDelay, end=endTime)

    self.assertGreater(voltageBefore, MIN_HIGH, "NOT {0} should be at least {1} (was {2})".format(HIGH, MAX_LOW, voltageBefore))
    self.assertLess(voltageAfter, MAX_LOW, "NOT {0} should be at most {1} (was {2})".format(LOW, MIN_HIGH, voltageAfter))
    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))
