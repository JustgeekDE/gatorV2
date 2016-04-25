from unittest import TestCase
from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT, INPUT_RESISTANCE
from scoville.signal import GenericSignal, DelayedSignal
from aluTest import ALUTest

class ShiftTests(ALUTest):

  def testLeftShiftShouldTakeLeftInput(self):
    self.runShiftCombinations(LOW, LOW, LOW, MAX_LOW)
    self.runShiftCombinations(HIGH, LOW, LOW, MIN_HIGH)

  def testRightShiftShouldTakeRightInput(self):
    self.runShiftCombinations(LOW, LOW, HIGH, MAX_LOW)
    self.runShiftCombinations(LOW, HIGH, HIGH, MIN_HIGH)

  def testShiftShouldIgnoreOtherInput(self):
    self.runShiftCombinations(LOW, HIGH, LOW, MAX_LOW)
    self.runShiftCombinations(HIGH, LOW, HIGH, MAX_LOW)

  def runShiftCombinations(self, leftIn, rightIn, shiftDirection, expectedResult):
    for a in [LOW, HIGH]:
      for b in  [LOW, HIGH]:
        circuit = self.initCircuit("S_SHIFT")

        circuit.setSignal(GenericSignal('A', a))
        circuit.setSignal(GenericSignal('B', b))

        circuit.setSignal(GenericSignal('SUBTRACT', shiftDirection))
        circuit.setSignal(GenericSignal('LEFT_A', leftIn))
        circuit.setSignal(GenericSignal('RIGHT_A', rightIn))

        circuit.run()
        self.checkCurrent(circuit)
        self.expect(circuit,"RESULT", expectedResult)
