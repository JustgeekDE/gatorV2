from unittest import TestCase
from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT, INPUT_RESISTANCE
from scoville.signal import GenericSignal, DelayedSignal
from aluTest import ALUTest

class XORTests(ALUTest):

  def testLowAndLow(self):
    circuit = self.runCircuit(LOW, LOW)
    self.expectLow(circuit,"RESULT")

  def testLowAndHigh(self):
    circuit = self.runCircuit(LOW, HIGH)
    self.expectHigh(circuit,"RESULT")

  def testHighAndLow(self):
    circuit = self.initCircuit("S_AND")
    circuit = self.runCircuit(HIGH, LOW)
    self.expectHigh(circuit,"RESULT")

  def testHighAndHigh(self):
    circuit = self.runCircuit(HIGH, HIGH)
    self.expectLow(circuit,"RESULT")

  def testLowAndLowInverted(self):
    circuit = self.runCircuit(LOW, LOW, HIGH)
    self.expectHigh(circuit,"RESULT")

  def testLowAndHighInverted(self):
    circuit = self.runCircuit(LOW, HIGH, HIGH)
    self.expectLow(circuit,"RESULT")

  def testHighAndLowInverted(self):
    circuit = self.initCircuit("S_AND")
    circuit = self.runCircuit(HIGH, LOW, HIGH)
    self.expectLow(circuit,"RESULT")

  def testHighAndHighInverted(self):
    circuit = self.runCircuit(HIGH, HIGH, HIGH)
    self.expectHigh(circuit,"RESULT")

  def runCircuit(self, a, b, invert=LOW):
    circuit = self.initCircuit("S_XOR")
    circuit.setSignal(GenericSignal("A", a))
    circuit.setSignal(GenericSignal("B", b))
    circuit.setSignal(GenericSignal("INVERT_OUT", invert))

    circuit.run()

    self.checkCurrent(circuit)
    return circuit
