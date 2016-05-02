from unittest import TestCase
import itertools

from scoville.signal import GenericSignal

from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT


class ThreeBitSelectUnitTests(TestCase):

  def testNoInput(self):
    allLows = list(itertools.repeat(LOW, 8))
    self.expectLowOutput(allLows, allLows)

  def testShortCircuitLow(self):
    allLows = list(itertools.repeat(LOW, 8))
    allHighs = list(itertools.repeat(HIGH, 8))
    circuit = self.initCircuit(allLows, allHighs)

    current = circuit.getMinCurrent(self.supplyName)

    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))

  def testShortCircuitHigh(self):
    allHighs = list(itertools.repeat(HIGH, 8))
    circuit = self.initCircuit(allHighs, allHighs)

    current = circuit.getMinCurrent(self.supplyName)

    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))

  def NormalMode(self):
    for i in range(0, 8):
      print("\n\tTesting selector: " + str(i)),
      self.tryAllValueCombinations(i)

  def tryAllValueCombinations(self, index):
    selector = list(itertools.repeat(LOW, 8))
    selector[index] = HIGH

    inputCombinations = list(itertools.product([LOW,HIGH], repeat = 7))
    for input in inputCombinations:
      input = list(input)
      input.insert(index, LOW)
      self.expectLowOutput(input, selector)

      input[index] = HIGH
      self.expectHighOutput(input, selector)

  def expectHighOutput(self, values, selector):
    circuit = self.initCircuit(values, selector)

    outputVoltage = circuit.getVoltage("OUT")
    current = circuit.getMinCurrent(self.supplyName)

    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))
    self.assertGreater(outputVoltage, MIN_HIGH,
                    "Output should be at least {} for Input: {}, Selector: {}, but is: {}".format(MIN_HIGH, values, selector, outputVoltage))

  def expectLowOutput(self, values, selector):
    circuit = self.initCircuit(values, selector)

    outputVoltage = circuit.getVoltage("OUT")
    current = circuit.getMinCurrent(self.supplyName)

    self.assertLess(current, MAX_CURRENT, "The gate used {0} ampere (max {1}).".format(current, MAX_CURRENT))
    self.assertLess(outputVoltage, MAX_LOW,
                    "Output should be at least {} for Input: {}, Selector: {}, but is: {}".format(MIN_HIGH, values, selector, outputVoltage))

  def initCircuit(self, values, selector):
    circuit = self.getCircuit()

    for i in range(0, 8):
      signalName = "I"+str(i+1)
      selectorName = "S"+str(i+1)
      circuit.setSignal(GenericSignal(signalName, values[i]))
      circuit.setSignal(GenericSignal(selectorName, selector[i]))

    circuit.inspectVoltage("OUT")
    circuit.inspectCurrent(self.supplyName)
    circuit.run()
    return circuit

