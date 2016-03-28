from unittest import TestCase
from scoville.signal import GenericSignal, DelayedSignal

INPUT_RESISTANCE = 10

LOW = 0.0
HIGH = 5.0
MAX_CURRENT = 0.01

MAX_LOW_VOLTAGE = 0.5
MIN_HIGH_VOLTAGE = 4.5



class ANDUnitTests(TestCase):
  def testLowLowShouldResultInLow(self):
    circuit = self.getCircuit()

    circuit.setSignal(GenericSignal("A", LOW))
    circuit.setSignal(GenericSignal("B", LOW))
    circuit.inspectVoltage('AND')

    circuit.run()
    self.assertLess(circuit.getVoltage('AND'), MAX_LOW_VOLTAGE)

  def testLowHighShouldResultInLow(self):
    circuit = self.getCircuit()

    circuit.setSignal(GenericSignal("A", LOW))
    circuit.setSignal(GenericSignal("B", HIGH))
    circuit.inspectVoltage('AND')

    circuit.run()
    self.assertLess(circuit.getVoltage('AND'), MAX_LOW_VOLTAGE)

  def testHighLowShouldResultInLow(self):
    circuit = self.getCircuit()

    circuit.setSignal(GenericSignal("A", HIGH))
    circuit.setSignal(GenericSignal("B", LOW))
    circuit.inspectVoltage('AND')

    circuit.run()
    self.assertLess(circuit.getVoltage('AND'), MAX_LOW_VOLTAGE)

  def testHighHighShouldResultInHigh(self):
    circuit = self.getCircuit()

    circuit.setSignal(GenericSignal("A", HIGH))
    circuit.setSignal(GenericSignal("B", HIGH))
    circuit.inspectVoltage('AND')

    circuit.run()
    self.assertGreater(circuit.getVoltage('AND'), MIN_HIGH_VOLTAGE)

  def testShouldNotUseTooMuchCurrent(self):
    circuit = self.getCircuit()

    circuit.setSignal(GenericSignal("A", HIGH))
    circuit.setSignal(GenericSignal("B", HIGH))
    circuit.inspectCurrent('VP5V')

    circuit.run()
    self.assertLess(circuit.getMaxCurrent('VP5V'), MAX_CURRENT)

    circuit.setSignal(GenericSignal("A", LOW))
    circuit.run()
    self.assertLess(circuit.getMaxCurrent('VP5V'), MAX_CURRENT)

    circuit.setSignal(GenericSignal("B", LOW))
    circuit.run()
    self.assertLess(circuit.getMaxCurrent('VP5V'), MAX_CURRENT)

    circuit.setSignal(GenericSignal("A", HIGH))
    circuit.run()
    self.assertLess(circuit.getMaxCurrent('VP5V'), MAX_CURRENT)

  def testShouldSwitchOnIn1ns(self):
    circuit = self.getCircuit()

    changeTime = 10
    endTime = 20

    circuit.setSignal(GenericSignal("A", HIGH))
    circuit.setSignal(DelayedSignal("B", HIGH, delay=changeTime, startValue=LOW, resistance=INPUT_RESISTANCE))
    circuit.inspectVoltage('AND')

    circuit.run(endTime, 0.001)
    self.assertLess(circuit.getMaxVoltage('AND', start=1, end=changeTime), MAX_LOW_VOLTAGE)
    self.assertGreater(circuit.getMinVoltage('AND', start=changeTime + 1, end=endTime), MIN_HIGH_VOLTAGE)

  def testShouldSwitchOffIn1ns(self):
    circuit = self.getCircuit()

    changeTime = 10
    endTime = 20

    circuit.setSignal(GenericSignal("A", HIGH))
    circuit.setSignal(DelayedSignal("B", value=LOW, delay=changeTime, resistance=INPUT_RESISTANCE, startValue=HIGH))
    circuit.inspectVoltage('AND')

    circuit.run(endTime, 0.001)
    self.assertGreater(circuit.getMinVoltage('AND', start=1, end=changeTime), MIN_HIGH_VOLTAGE)
    self.assertLess(circuit.getMaxVoltage('AND', start=changeTime + 1, end=endTime), MAX_LOW_VOLTAGE)
