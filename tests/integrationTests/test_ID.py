from unittest import TestCase
from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT, INPUT_RESISTANCE
from scoville.signal import GenericSignal, DelayedSignal
from aluTest import ALUTest

class IdentityTests(ALUTest):

  def testIdentityOfLowShouldBeLow(self):
    circuit = self.runCircuit(LOW)
    self.expectLow(circuit,"RESULT")

  def testIdentityOfHighShouldBeHigh(self):
    circuit = self.runCircuit(HIGH)
    self.expectHigh(circuit,"RESULT")

  def testInvertedIdentityOfLowShouldBeHigh(self):
    circuit = self.runCircuit(LOW, invert=HIGH)
    self.expectHigh(circuit,"RESULT")

  def testInvertedIdentityOfHighShouldBeLow(self):
    circuit = self.runCircuit(HIGH, invert=HIGH)
    self.expectLow(circuit,"RESULT")

  def testInputBShouldNotChangeIdentityFromLow(self):
    circuit = self.runCircuit(LOW, b=HIGH)
    self.expectLow(circuit,"RESULT")

  def testInputBShouldNotChangeIdentityFromHigh(self):
    circuit = self.runCircuit(HIGH, b=HIGH)
    self.expectHigh(circuit,"RESULT")

  def runCircuit(self, a, b=LOW, invert=LOW):
    circuit = self.initCircuit("S_ID")
    circuit.setSignal(GenericSignal('A', a))
    circuit.setSignal(GenericSignal('B', b))
    circuit.setSignal(GenericSignal('INVERT_OUT', invert))
    circuit.run()
    self.checkCurrent(circuit)
    return circuit
