from unittest import TestCase
from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT, INPUT_RESISTANCE
from scoville.signal import GenericSignal, DelayedSignal
from aluTest import ALUTest

class AdditionTests(ALUTest):

  def testNormalFunctions(self):
    self.addUp(LOW,  LOW,  LOW,  MAX_LOW,  MAX_LOW)
    self.addUp(LOW,  LOW,  HIGH, MIN_HIGH, MAX_LOW)
    self.addUp(LOW,  HIGH, LOW,  MIN_HIGH, MAX_LOW)
    self.addUp(LOW,  HIGH, HIGH, MAX_LOW,  MIN_HIGH)
    self.addUp(HIGH, LOW,  LOW,  MIN_HIGH, MAX_LOW)
    self.addUp(HIGH, LOW,  HIGH, MAX_LOW,  MIN_HIGH)
    self.addUp(HIGH, HIGH, LOW,  MAX_LOW,  MIN_HIGH)
    self.addUp(HIGH, HIGH, HIGH, MIN_HIGH, MIN_HIGH)


  def addUp(self, a, b, carryIn, expectedSum, expectedCarryOut):
    circuit = self.initCircuit()

    circuit.setSignal(GenericSignal("S_ADD", HIGH))
    circuit.setSignal(GenericSignal("A", a))
    circuit.setSignal(GenericSignal("B", b))
    circuit.setSignal(GenericSignal("CARRY_IN", carryIn))

    circuit.inspectVoltage('SUM')
    circuit.run()

    self.expect(circuit,"RESULT", expectedSum)
    self.expect(circuit,"CARRY_OUT", expectedCarryOut)
    self.checkCurrent(circuit)



