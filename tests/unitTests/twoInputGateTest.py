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
    self.assertLess(circuit.getVoltage(outputName), MAX_LOW, "{0} {1} {2} should be at most {3}".format(a,b,outputName,MAX_LOW))
    self.assertLess(circuit.getMaxCurrent(self.supplyName), MAX_CURRENT, "The gate should use at most {0} ampere".format(MAX_CURRENT))

  def assertOutputIsHigh(self, a, b, outputName):
    circuit = self.getCircuit()

    circuit.setSignal(GenericSignal("A", a))
    circuit.setSignal(GenericSignal("B", b))
    circuit.inspectVoltage(outputName)
    circuit.inspectCurrent(self.supplyName)

    circuit.run()
    self.assertLess(circuit.getVoltage(outputName), MAX_LOW, "{0} {1} {2} should be at least {3}".format(a,b,outputName,MIN_HIGH))
    self.assertLess(circuit.getMaxCurrent(self.supplyName), MAX_CURRENT, "The gate should use at most {0} ampere".format(MAX_CURRENT))

  def assertSwitchingOnIsFast(self, initialState, laterState, maxDelay, outputName):
    circuit = self.getCircuit()

    changeTime = 10
    endTime = 20

    (startA,startB) = initialState
    (endA,endB) = laterState

    circuit.setSignal(DelayedSignal("A", endA, delay=changeTime, startValue=startA, resistance=INPUT_RESISTANCE))
    circuit.setSignal(DelayedSignal("B", endB, delay=changeTime, startValue=startB, resistance=INPUT_RESISTANCE))
    circuit.inspectVoltage(outputName)
    # circuit.inspectCurrent(self.supplyName)

    circuit.run(endTime, 0.001)
    self.assertLess(circuit.getMaxVoltage(outputName, start=1, end=changeTime), MAX_LOW)
    self.assertGreater(circuit.getMinVoltage(outputName, start=changeTime + maxDelay, end=endTime), MIN_HIGH)
    # self.assertLess(circuit.getMaxCurrent(self.supplyName), MAX_CURRENT, "The gate should use at most {0} ampere".format(MAX_CURRENT))

  def assertSwitchingOffIsFast(self, initialState, laterState, maxDelay, outputName):
    circuit = self.getCircuit()

    changeTime = 10
    endTime = 20

    (startA,startB) = initialState
    (endA,endB) = laterState

    circuit.setSignal(DelayedSignal("A", endA, delay=changeTime, startValue=startA, resistance=INPUT_RESISTANCE))
    circuit.setSignal(DelayedSignal("B", endB, delay=changeTime, startValue=startB, resistance=INPUT_RESISTANCE))
    circuit.inspectVoltage(outputName)
    # circuit.inspectCurrent(self.supplyName)

    circuit.run(endTime, 0.001)
    self.assertGreater(circuit.getMinVoltage(outputName, start=1, end=changeTime), MIN_HIGH)
    self.assertLess(circuit.getMaxVoltage(outputName, start=changeTime + maxDelay, end=endTime), MAX_LOW)
    # self.assertLess(circuit.getMaxCurrent(self.supplyName), MAX_CURRENT, "The gate should use at most {0} ampere".format(MAX_CURRENT))
