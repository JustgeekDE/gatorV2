from constants import LOW, HIGH
import twoInputGateTest

class XORUnitTests(twoInputGateTest.TwoInputGateTest):

  def testLowLow(self):
    self.assertOutputIsHigh(a=LOW, b=LOW, outputName = "NOR")
    self.assertOutputIsLow(a=LOW, b=LOW, outputName = "AND")
    self.assertOutputIsLow(a=LOW, b=LOW, outputName = "XOR")


  def testLowHigh(self):
    self.assertOutputIsLow(a=LOW, b=HIGH, outputName = "NOR")
    self.assertOutputIsLow(a=LOW, b=HIGH, outputName = "AND")
    self.assertOutputIsHigh(a=LOW, b=HIGH, outputName = "XOR")

  def testHighLow(self):
    self.assertOutputIsLow(a=HIGH, b=LOW, outputName = "NOR")
    self.assertOutputIsLow(a=HIGH, b=LOW, outputName = "AND")
    self.assertOutputIsHigh(a=HIGH, b=LOW, outputName = "XOR")

  def testHighHigh(self):
    self.assertOutputIsLow(a=HIGH, b=HIGH, outputName = "NOR")
    self.assertOutputIsHigh(a=HIGH, b=HIGH, outputName = "AND")
    self.assertOutputIsLow(a=HIGH, b=HIGH, outputName = "XOR")


  def testShouldSwitchOnIn5ns(self):
    self.assertSwitchingOnIsFast(initialState=(LOW, LOW), laterState=(LOW,HIGH), maxDelay=10, outputName="XOR")

  def testShouldSwitchOffIn1ns(self):
    self.assertSwitchingOffIsFast(initialState=(HIGH, LOW), laterState=(HIGH,HIGH), maxDelay=10, outputName="XOR")

