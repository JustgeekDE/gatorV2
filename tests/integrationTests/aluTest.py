from unittest import TestCase

from scoville.signal import GenericSignal

from constants import MAX_LOW, MIN_HIGH, LOW, HIGH


class ALUTest(TestCase):
  MAX_CURRENT = 0.1

  def initCircuit(self, selector):
    circuit = self.getCircuit()

    circuit.setSignal(GenericSignal("A", LOW))
    circuit.setSignal(GenericSignal("B", LOW))
    circuit.setSignal(GenericSignal("CARRY_IN", LOW))
    circuit.setSignal(GenericSignal("INVERT_OUT", LOW))

    circuit.setSignal(GenericSignal("S_ID", LOW))
    circuit.setSignal(GenericSignal("S_AND", LOW))
    circuit.setSignal(GenericSignal("S_OR", LOW))
    circuit.setSignal(GenericSignal("S_XOR", LOW))
    circuit.setSignal(GenericSignal("S_ADD", LOW))
    circuit.setSignal(GenericSignal("S_SHIFT", LOW))
    circuit.setSignal(GenericSignal("S_CMP", LOW))
    circuit.setSignal(GenericSignal("S_LOAD", LOW))

    circuit.setSignal(GenericSignal(selector, HIGH))

    circuit.inspectVoltage('RESULT')
    circuit.inspectVoltage('CARRY_OUT')
    circuit.inspectCurrent(self.supplyName)

    return circuit

  def expect(self, circuit, signalName, expectedValue):
    if expectedValue == MAX_LOW:
      self.expectLow(circuit,signalName)
    else:
      self.expectHigh(circuit,signalName)


  def expectLow(self, circuit, signalName):
    signalValue = circuit.getVoltage(signalName)
    self.assertLess(signalValue, MAX_LOW)

  def expectHigh(self, circuit, signalName):
    signalValue = circuit.getVoltage(signalName)
    self.assertGreater(signalValue, MIN_HIGH)

  def checkCurrent(self, circuit):
    current = circuit.getMaxCurrent(self.supplyName)
    self.assertLess(current, self.MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, self.MAX_CURRENT))
