import twoInputGateTest
from constants import LOW, HIGH


class ORUnitTests(twoInputGateTest.TwoInputGateTest):

  def testLowLowShouldResultInLow(self):
    self.assertOutputIsLow(a=LOW, b=LOW, outputName = "OR")

  def testLowHighShouldResultInHigh(self):
    self.assertOutputIsHigh(a=LOW, b=HIGH, outputName = "OR")

  def testHighLowShouldResultInHIGH(self):
    self.assertOutputIsHigh(a=HIGH, b=LOW, outputName = "OR")

  def testHighHighShouldResultInHigh(self):
    self.assertOutputIsHigh(a=HIGH, b=HIGH, outputName = "OR")

  def testShouldSwitchOnIn5ns(self):
    self.assertSwitchingOnIsFast(initialState=(LOW, LOW), laterState=(LOW,HIGH), maxDelay=5, outputName="OR")

  def testShouldSwitchOffIn1ns(self):
    self.assertSwitchingOffIsFast(initialState=(HIGH, HIGH), laterState=(LOW,LOW), maxDelay=5, outputName="OR")

