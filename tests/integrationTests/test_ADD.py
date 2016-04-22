from unittest import TestCase
from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT, INPUT_RESISTANCE
from scoville.signal import GenericSignal, DelayedSignal
from aluTest import ALUTest

class AdditionTests(ALUTest):

  def testAddition(self):
    self.addUp(LOW,  LOW,  LOW,  MAX_LOW,  MAX_LOW)
    self.addUp(LOW,  LOW,  HIGH, MIN_HIGH, MAX_LOW)
    self.addUp(LOW,  HIGH, LOW,  MIN_HIGH, MAX_LOW)
    self.addUp(LOW,  HIGH, HIGH, MAX_LOW,  MIN_HIGH)
    self.addUp(HIGH, LOW,  LOW,  MIN_HIGH, MAX_LOW)
    self.addUp(HIGH, LOW,  HIGH, MAX_LOW,  MIN_HIGH)
    self.addUp(HIGH, HIGH, LOW,  MAX_LOW,  MIN_HIGH)
    self.addUp(HIGH, HIGH, HIGH, MIN_HIGH, MIN_HIGH)

  def testSubtracion(self):
    self.addUp(LOW,  LOW,  LOW,  MIN_HIGH, MAX_LOW,  HIGH)
    self.addUp(LOW,  LOW,  HIGH, MAX_LOW,  MIN_HIGH, HIGH)
    self.addUp(LOW,  HIGH, LOW,  MAX_LOW,  MAX_LOW,  HIGH)
    self.addUp(LOW,  HIGH, HIGH, MIN_HIGH, MAX_LOW,  HIGH)
    self.addUp(HIGH, LOW,  LOW,  MAX_LOW,  MIN_HIGH, HIGH)
    self.addUp(HIGH, LOW,  HIGH, MIN_HIGH, MIN_HIGH, HIGH)
    self.addUp(HIGH, HIGH, LOW,  MIN_HIGH, MAX_LOW,  HIGH)
    self.addUp(HIGH, HIGH, HIGH, MAX_LOW,  MIN_HIGH, HIGH)


  def addUp(self, a, b, carryIn, expectedSum, expectedCarryOut, subtract = LOW):
    circuit = self.initCircuit("S_ADD")

    circuit.setSignal(GenericSignal("A", a))
    circuit.setSignal(GenericSignal("B", b))
    circuit.setSignal(GenericSignal("CARRY_IN", carryIn))
    circuit.setSignal(GenericSignal("SUBTRACT", subtract))

    circuit.run()

    self.expect(circuit,"RESULT", expectedSum)
    self.expect(circuit,"CARRY_OUT", expectedCarryOut)
    self.checkCurrent(circuit)



