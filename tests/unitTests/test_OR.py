from unittest import TestCase
from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT, INPUT_RESISTANCE
from scoville.signal import GenericSignal, DelayedSignal


class ORUnitTests(TestCase):

  def testLowLowShouldResultInLow(self):
    circuit = self.getCircuit()
    self.setSignal(circuit, A=LOW, B=LOW)
    circuit.run()
    self.assertLess(circuit.getVoltage('OR'), MAX_LOW)

  def testLowHighShouldResultInHIGH(self):
    circuit = self.getCircuit()
    self.setSignal(circuit, A=LOW, B=HIGH)
    circuit.run()
    self.assertGreater(circuit.getVoltage('OR'), MIN_HIGH)

  def testHighLowShouldResultInHIGH(self):
    circuit = self.getCircuit()
    self.setSignal(circuit, A=HIGH, B=LOW)
    circuit.run()
    self.assertGreater(circuit.getVoltage('OR'), MIN_HIGH)

  def testHighHighShouldResultInHigh(self):
    circuit = self.getCircuit()
    self.setSignal(circuit, A=HIGH, B=HIGH)
    circuit.run()
    self.assertGreater(circuit.getVoltage('OR'), MIN_HIGH)

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

    circuit.setSignal(GenericSignal("A", LOW))
    circuit.setSignal(DelayedSignal("B", HIGH, delay=changeTime, startValue=LOW, resistance=INPUT_RESISTANCE))
    circuit.inspectVoltage('OR')

    circuit.run(endTime, 0.001)
    self.assertLess(circuit.getMaxVoltage('OR', start=1, end=changeTime), MAX_LOW)
    self.assertGreater(circuit.getMinVoltage('OR', start=changeTime + 1, end=endTime), MIN_HIGH)

  def testShouldSwitchOffIn1ns(self):
    circuit = self.getCircuit()

    changeTime = 10
    endTime = 20

    circuit.setSignal(GenericSignal("A", LOW))
    circuit.setSignal(DelayedSignal("B", value=LOW, delay=changeTime, resistance=INPUT_RESISTANCE, startValue=HIGH))
    circuit.inspectVoltage('OR')

    circuit.run(endTime, 0.001)
    self.assertGreater(circuit.getMinVoltage('OR', start=1, end=changeTime), MIN_HIGH)
    self.assertLess(circuit.getMaxVoltage('OR', start=changeTime + 1, end=endTime), MAX_LOW)

  def setSignal(self, circuit, A, B):
    circuit.setSignal(GenericSignal("A", A))
    circuit.setSignal(GenericSignal("B", B))
    circuit.inspectVoltage('OR')

