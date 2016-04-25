from unittest import TestCase
from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT, INPUT_RESISTANCE
from scoville.signal import GenericSignal, DelayedSignal
from aluTest import ALUTest

class LoadTests(ALUTest):

  def testLoadingLowShouldBeLow(self):
    circuit = self.runCircuit(LOW, LOW)
    self.expectLow(circuit,"RESULT")

  def testLoadingHighShouldBeHigh(self):
    circuit = self.runCircuit(LOW, HIGH)
    self.expectHigh(circuit,"RESULT")

  def testInputAShouldNotChangeLoadedValue(self):
    circuit = self.runCircuit(HIGH, LOW)
    self.expectLow(circuit,"RESULT")
    circuit = self.runCircuit(HIGH, HIGH)
    self.expectHigh(circuit,"RESULT")

  def runCircuit(self, a, b=LOW, invert=LOW):
    circuit = self.initCircuit("S_LOAD")
    circuit.setSignal(GenericSignal('A', a))
    circuit.setSignal(GenericSignal('B', b))
    circuit.setSignal(GenericSignal('INVERT_OUT', invert))
    circuit.run()
    self.checkCurrent(circuit)
    return circuit
