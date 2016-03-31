from constants import LOW, HIGH, MAX_LOW, MIN_HIGH, MAX_CURRENT, INPUT_RESISTANCE
import twoInputGateTest

class NANDUnitTests(twoInputGateTest.TwoInputGateTest):

  def testLowLowShouldResultInHigh(self):
    self.assertOutputIsHigh(a=LOW, b=LOW, outputName = "NAND")

  def testLowHighShouldResultInHigh(self):
    self.assertOutputIsHigh(a=LOW, b=HIGH, outputName = "NAND")

  def testHighLowShouldResultInHIGH(self):
    self.assertOutputIsHigh(a=HIGH, b=LOW, outputName = "NAND")

  def testHighHighShouldResultInLow(self):
    self.assertOutputIsLow(a=HIGH, b=HIGH, outputName = "NAND")

  def testShouldSwitchOnIn5ns(self):
    self.assertSwitchingOnIsFast(initialState=(HIGH, HIGH), laterState=(LOW,LOW), maxDelay=5, outputName="NAND")

  def testShouldSwitchOffIn1ns(self):
    self.assertSwitchingOffIsFast(initialState=(LOW, HIGH), laterState=(HIGH,HIGH), maxDelay=5, outputName="NAND")

