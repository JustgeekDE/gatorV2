from unittest import TestCase
from scoville.signal import GenericSignal, DelayedSignal

INPUT_RESISTANCE = 10

LOW = 0.0
HIGH = 5.0

MAX_CURRENT = 0.005
MAX_LOW = 1.5
MIN_HIGH = 3.5



class ANDUnitTests(TestCase):

  def testLowLowShouldResultInLow(self):
    circuit = self.getCircuit()
    self.setSignal(circuit, A=LOW, B=LOW)
    circuit.run()
    self.assertLess(circuit.getVoltage('AND'), MAX_LOW)

  def testLowHighShouldResultInLow(self):
    circuit = self.getCircuit()
    self.setSignal(circuit, A=LOW, B=HIGH)
    circuit.run()
    self.assertLess(circuit.getVoltage('AND'), MAX_LOW)

  def testHighLowShouldResultInLow(self):
    circuit = self.getCircuit()
    self.setSignal(circuit, A=HIGH, B=LOW)
    circuit.run()
    self.assertLess(circuit.getVoltage('AND'), MAX_LOW)

  def testHighHighShouldResultInHigh(self):
    circuit = self.getCircuit()
    self.setSignal(circuit, A=HIGH, B=HIGH)
    circuit.run()
    self.assertGreater(circuit.getVoltage('AND'), MIN_HIGH)

  def testShouldNotUseTooMuchCurrent(self):
    circuit = self.getCircuit()

    self.setSignal(circuit, A=HIGH, B=HIGH)
    circuit.inspectCurrent(self.supplyName)

    circuit.run()
    self.assertLess(circuit.getMaxCurrent(self.supplyName), MAX_CURRENT)

    self.setSignal(circuit, A=LOW, B=HIGH)
    circuit.run()
    self.assertLess(circuit.getMaxCurrent(self.supplyName), MAX_CURRENT)

    self.setSignal(circuit, A=LOW, B=LOW)
    circuit.run()
    self.assertLess(circuit.getMaxCurrent(self.supplyName), MAX_CURRENT)

    self.setSignal(circuit, A=HIGH, B=LOW)
    circuit.run()
    self.assertLess(circuit.getMaxCurrent(self.supplyName), MAX_CURRENT)

  def testShouldSwitchOnIn1ns(self):
    circuit = self.getCircuit()

    changeTime = 10
    endTime = 20

    circuit.setSignal(GenericSignal("A", HIGH))
    circuit.setSignal(DelayedSignal("B", HIGH, delay=changeTime, startValue=LOW, resistance=INPUT_RESISTANCE))
    circuit.inspectVoltage('AND')

    circuit.run(endTime, 0.001)
    self.assertLess(circuit.getMaxVoltage('AND', start=1, end=changeTime), MAX_LOW)
    self.assertGreater(circuit.getMinVoltage('AND', start=changeTime + 1, end=endTime), MIN_HIGH)

  def testShouldSwitchOffIn1ns(self):
    circuit = self.getCircuit()

    changeTime = 10
    endTime = 20

    circuit.setSignal(GenericSignal("A", HIGH))
    circuit.setSignal(DelayedSignal("B", value=LOW, delay=changeTime, resistance=INPUT_RESISTANCE, startValue=HIGH))
    circuit.inspectVoltage('AND')

    circuit.run(endTime, 0.001)
    self.assertGreater(circuit.getMinVoltage('AND', start=1, end=changeTime), MIN_HIGH)
    self.assertLess(circuit.getMaxVoltage('AND', start=changeTime + 1, end=endTime), MAX_LOW)

  def setSignal(self, circuit, A, B):
    circuit.setSignal(GenericSignal("A", A))
    circuit.setSignal(GenericSignal("B", B))
    circuit.inspectVoltage('AND')

