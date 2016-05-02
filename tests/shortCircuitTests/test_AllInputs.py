from unittest import TestCase
import itertools, time, datetime

from scoville.signal import GenericSignal

from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT


class AllInputTest(TestCase):
  MAX_CURRENT = 0.1

  def getAllCombinations(self):
    inputs = ['A', 'B', 'LEFT_A', 'RIGHT_A', '_EQUAL_IN', 'CARRY_IN']
    modifiers = [ 'INVERT_OUT', 'SUBTRACT']
    operations = ['S_ID', 'S_AND', 'S_OR', 'S_XOR', 'S_XOR', 'S_SHIFT', 'S_LOAD']

    signals = inputs + modifiers + operations
    combinations = itertools.product([LOW, HIGH], repeat=len(signals))
    def f((a, b)): return (a,b)
    def g(x): return map(f, zip(signals, x))


    return map(g, combinations)

  def testAllInputCombinations(self):
    allCombinations = self.getAllCombinations()

    total = len(allCombinations)
    i = 0
    startTime = time.time()
    overallMaxCurrent = 0
    sessionMaxCurrent = 0
    print("\n {:>6} / {} : ".format(i, total)),
    for signals in allCombinations:
      i += 1
      if i % 32 == 0:
        print(self.getTimeForecast(i, total, startTime)),
        print(" {0:.2f} mA / {0:.2f} mA ".format(overallMaxCurrent*1000, sessionMaxCurrent*1000)),
        print("\n {:>6} / {} : ".format(i, total)),
        sessionMaxCurrent = 0
      current = self.runConfiguration(signals)
      if current > overallMaxCurrent:
        overallMaxCurrent = current
      if current > sessionMaxCurrent:
        sessionMaxCurrent = current

  def runConfiguration(self, signals):
    print('.'),
    circuit = self.getCircuit()
    for (name, value) in signals:
      circuit.setSignal(GenericSignal(name, value))

    circuit.inspectCurrent(self.supplyName)
    circuit.run()

    current = circuit.getMaxCurrent(self.supplyName)
    self.assertLess(current, self.MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, self.MAX_CURRENT))
    return current

  def getTimeForecast(self, currentCount, total, startTime):
    elapsed = time.time() - startTime
    remaining = (total / currentCount) * elapsed
    timeString = " {} / {}".format(datetime.timedelta(seconds=int(elapsed)), datetime.timedelta(seconds=int(remaining)))
    return timeString
