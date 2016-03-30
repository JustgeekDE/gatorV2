from unittest import TestCase
from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT, INPUT_RESISTANCE
from scoville.signal import GenericSignal, DelayedSignal


class TwoInputGateTest(TestCase):

  def assertOutputIsLow(self, a, b, outputName):
    circuit = self.getCircuit()

    circuit.setSignal(GenericSignal("A", a))
    circuit.setSignal(GenericSignal("B", b))
    circuit.inspectVoltage(outputName)
    circuit.inspectCurrent(self.supplyName)

    circuit.run()
    outputVoltage = circuit.getVoltage(outputName)
    current = circuit.getMaxCurrent(self.supplyName)

    self.assertLess(outputVoltage, MAX_LOW, "{0} {1} {2} should be at most {3} (was {4})".format(a, outputName, b, MAX_LOW, outputVoltage))
    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))

  def assertOutputIsHigh(self, a, b, outputName):
    circuit = self.getCircuit()

    circuit.setSignal(GenericSignal("A", a))
    circuit.setSignal(GenericSignal("B", b))
    circuit.inspectVoltage(outputName)
    circuit.inspectCurrent(self.supplyName)

    circuit.run()
    outputVoltage = circuit.getVoltage(outputName)
    current = circuit.getMaxCurrent(self.supplyName)

    self.assertGreater(outputVoltage, MIN_HIGH, "{0} {1} {2} should be at least {3} (was {4})".format(a, outputName, b, MIN_HIGH, outputVoltage))
    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))

  def assertSwitchingOnIsFast(self, initialState, laterState, maxDelay, outputName):
    circuit = self.getCircuit()

    changeTime = 10
    endTime = 20

    (startA,startB) = initialState
    (endA,endB) = laterState

    circuit.setSignal(DelayedSignal("A", endA, delay=changeTime, startValue=startA, resistance=INPUT_RESISTANCE))
    circuit.setSignal(DelayedSignal("B", endB, delay=changeTime, startValue=startB, resistance=INPUT_RESISTANCE))
    circuit.inspectVoltage(outputName)
    circuit.inspectCurrent(self.supplyName)

    circuit.run(endTime, 0.001)
    current = circuit.getMaxCurrent(self.supplyName)
    voltageBefore = circuit.getMaxVoltage(outputName, start=1, end=changeTime)
    voltageAfter = circuit.getMinVoltage(outputName, start=changeTime + maxDelay, end=endTime)

    self.assertLess(voltageBefore, MAX_LOW, "{0} {1} {2} should be at most {3} (was {4})".format(startA, outputName, startB, MAX_LOW, voltageBefore))
    self.assertGreater(voltageAfter, MIN_HIGH, "{0} {1} {2} should be at least {3} (was {4})".format(endA, outputName, endB, MIN_HIGH, voltageAfter))
    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))

  def assertSwitchingOffIsFast(self, initialState, laterState, maxDelay, outputName):
    circuit = self.getCircuit()

    changeTime = 10
    endTime = 20

    (startA,startB) = initialState
    (endA,endB) = laterState

    circuit.setSignal(DelayedSignal("A", endA, delay=changeTime, startValue=startA, resistance=INPUT_RESISTANCE))
    circuit.setSignal(DelayedSignal("B", endB, delay=changeTime, startValue=startB, resistance=INPUT_RESISTANCE))
    circuit.inspectVoltage(outputName)
    circuit.inspectCurrent(self.supplyName)

    circuit.run(endTime, 0.001)
    current = circuit.getMaxCurrent(self.supplyName)
    voltageBefore = circuit.getMaxVoltage(outputName, start=1, end=changeTime)
    voltageAfter = circuit.getMinVoltage(outputName, start=changeTime + maxDelay, end=endTime)

    self.assertGreater(voltageBefore, MIN_HIGH, "{0} {1} {2} should be at least {3} (was {4})".format(startA, outputName, startB, MIN_HIGH, voltageBefore))
    self.assertLess(voltageAfter, MAX_LOW, "{0} {1} {2} should be at most {3} (was {4})".format(endA, outputName, endB, MAX_LOW, voltageAfter))
    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))
