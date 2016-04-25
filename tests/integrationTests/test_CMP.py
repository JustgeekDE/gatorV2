from unittest import TestCase
from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT, INPUT_RESISTANCE
from scoville.signal import GenericSignal, DelayedSignal
from aluTest import ALUTest

class ComparisionTests(ALUTest):

  def testLowInputShouldRemainUnchanged(self):
    circuit = self.runCircuit(LOW)
    self.expectLow(circuit,"RESULT")

  def testHighInputShouldRemainUnchanged(self):
    circuit = self.runCircuit(HIGH)
    self.expectHigh(circuit,"RESULT")

  def testInputBShouldNotChangeIdentityFromLow(self):
    circuit = self.runCircuit(LOW, b=HIGH)
    self.expectLow(circuit,"RESULT")

  def testInputBShouldNotChangeIdentityFromHigh(self):
    circuit = self.runCircuit(HIGH, b=HIGH)
    self.expectHigh(circuit,"RESULT")

  def runCircuit(self, a, b=LOW, invert=LOW):
    circuit = self.initCircuit("S_CMP")
    circuit.setSignal(GenericSignal('A', a))
    circuit.setSignal(GenericSignal('B', b))
    circuit.setSignal(GenericSignal('INVERT_OUT', invert))
    circuit.run()
    self.checkCurrent(circuit)
    return circuit
