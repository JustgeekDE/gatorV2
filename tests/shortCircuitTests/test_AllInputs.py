from unittest import TestCase
import itertools

from scoville.signal import GenericSignal

from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT


class AllInputTest(TestCase):
  MAX_CURRENT = 0.1

  def getAllCombinations(self):
    signals = ['A', 'B', 'CARRY_IN', 'INVERT_OUT', 'SUBTRACT', 'LEFT_A', 'RIGHT_A', '_EQUAL_IN', 'S_ID', 'S_AND', 'S_OR', 'S_XOR', 'S_XOR', 'S_SHIFT', 'S_LOAD', 'S_CMP']
    combinations = itertools.product([LOW, HIGH], repeat=len(signals))
    def f((a, b)): return (a,b)
    def g(x): return map(f, zip(signals, x))


    return map(g, combinations)

  def testAllInputCombinations(self):
    allCombinations = self.getAllCombinations()
    for signals in allCombinations:
      self.runConfiguration(signals)

  def runConfiguration(self, signals):
    print('.'),
    circuit = self.getCircuit()
    for (name, value) in signals:
      circuit.setSignal(GenericSignal(name, value))

    circuit.inspectCurrent(self.supplyName)
    circuit.run()

    current = circuit.getMaxCurrent(self.supplyName)
    self.assertLess(current, self.MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, self.MAX_CURRENT))
