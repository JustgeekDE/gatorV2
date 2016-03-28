from unittest import TestCase
from scoville.signal import GenericSignal, DelayedSignal

INPUT_RESISTANCE = 10

LOW = 0.0
HIGH = 5.0
MAX_CURRENT = 0.01

MAX_LOW_VOLTAGE = 0.5
MIN_HIGH_VOLTAGE = 4.5


class ANDUnitTests(TestCase):
  def testLowLowShouldResultInLow(self):
    circuit = self.getCircuit()

    circuit.setSignal(GenericSignal("A", LOW))
    circuit.setSignal(GenericSignal("B", LOW))
    circuit.inspectVoltage('AND')

    circuit.run()
    self.assertLess(circuit.getVoltage('AND'), MAX_LOW_VOLTAGE)
