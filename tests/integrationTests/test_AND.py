from unittest import TestCase
from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT, INPUT_RESISTANCE
from scoville.signal import GenericSignal, DelayedSignal
from aluTest import ALUTest

class ANDTests(ALUTest):

  def testLowAndLow(self):
    circuit = self.initCircuit("S_AND")
    circuit.setSignal(GenericSignal("S_AND", HIGH))
    circuit.setSignal(GenericSignal("A", LOW))
    circuit.setSignal(GenericSignal("B", LOW))

    circuit.run()

    self.expectLow(circuit,"RESULT")
    self.checkCurrent(circuit)

