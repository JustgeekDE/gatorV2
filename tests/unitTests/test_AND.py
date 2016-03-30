from unittest import TestCase
from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT, INPUT_RESISTANCE
import twoInputGateTest
from scoville.signal import GenericSignal, DelayedSignal


class ANDUnitTests(twoInputGateTest.TwoInputGateTest):

  def testLowLowShouldResultInLow(self):
    self.assertOutputIsLow(a=LOW, b=LOW, outputName = "AND")

  def testLowHighShouldResultInLow(self):
    self.assertOutputIsLow(a=LOW, b=HIGH, outputName = "AND")

  def testHighLowShouldResultInLow(self):
    self.assertOutputIsLow(a=HIGH, b=LOW, outputName = "AND")

  def testHighHighShouldResultInHigh(self):
    self.assertOutputIsHigh(a=HIGH, b=HIGH, outputName = "AND")

  def testShouldSwitchOnIn5ns(self):
    self.assertSwitchingOnIsFast(initialState=(LOW, HIGH), laterState=(HIGH,HIGH), maxDelay=5, outputName="AND")

  def testShouldSwitchOffIn1ns(self):
    self.assertSwitchingOffIsFast(initialState=(HIGH, HIGH), laterState=(LOW,HIGH), maxDelay=5, outputName="AND")

