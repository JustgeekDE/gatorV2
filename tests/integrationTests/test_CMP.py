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

  def testLowAndLowAreEqual(self):
    circuit = self.runCircuit(a = LOW, b = LOW)
    self.expectLow(circuit,"_EQUAL_OUT")

  def testHighAndHighAreEqual(self):
    circuit = self.runCircuit(a = HIGH, b = HIGH)
    self.expectLow(circuit,"_EQUAL_OUT")

  def testHighAndLowAreNotEqual(self):
    circuit = self.runCircuit(a = HIGH, b = LOW)
    self.expectHigh(circuit,"_EQUAL_OUT")

  def testLowAndHighAreNotEqual(self):
    circuit = self.runCircuit(a = LOW, b = HIGH)
    self.expectHigh(circuit,"_EQUAL_OUT")

  def testFailIfPreviousCompareFailed(self):
    circuit = self.runCircuit(a = LOW, b = LOW, equal_in=HIGH)
    self.expectHigh(circuit,"_EQUAL_OUT")

  def runCircuit(self, a, b=LOW, invert=LOW, equal_in = LOW):
    circuit = self.initCircuit("S_ID")
    circuit.setSignal(GenericSignal('SUBTRACT', HIGH))
    circuit.setSignal(GenericSignal('CARRY_IN', HIGH))
    circuit.setSignal(GenericSignal('A', a))
    circuit.setSignal(GenericSignal('B', b))
    circuit.setSignal(GenericSignal('INVERT_OUT', invert))
    circuit.setSignal(GenericSignal('_EQUAL_IN', equal_in))
    circuit.run()
    self.checkCurrent(circuit)
    return circuit
