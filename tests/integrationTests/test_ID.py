from unittest import TestCase
from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT, INPUT_RESISTANCE
from scoville.signal import GenericSignal, DelayedSignal
from aluTest import ALUTest

class IdentityTests(ALUTest):

  def testIdentityOfLowShouldBeLow(self):
    circuit = self.initCircuit("S_ID")

    circuit.setSignal(GenericSignal("A", LOW))

    circuit.run()

    self.expectLow(circuit,"RESULT")
    self.checkCurrent(circuit)

  def testIdentityOfHighShouldBeHigh(self):
    circuit = self.initCircuit("S_ID")

    circuit.setSignal(GenericSignal("A", HIGH))

    circuit.run()

    self.expectHigh(circuit,"RESULT")
    self.checkCurrent(circuit)

  def testInputBShouldNotChangeIdentityFromLow(self):
    circuit = self.initCircuit("S_ID")

    circuit.setSignal(GenericSignal("A", LOW))
    circuit.setSignal(GenericSignal("B", HIGH))

    circuit.run()

    self.expectLow(circuit,"RESULT")
    self.checkCurrent(circuit)

  def testInputBShouldNotChangeIdentityFromHigh(self):
    circuit = self.initCircuit("S_ID")

    circuit.setSignal(GenericSignal("A", HIGH))
    circuit.setSignal(GenericSignal("B", HIGH))

    circuit.run()

    self.expectHigh(circuit,"RESULT")
    self.checkCurrent(circuit)

