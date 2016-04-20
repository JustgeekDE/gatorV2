import os, sys

from pkg_resources import resource_string

from scoville.eagleSchematic import EagleSchematic
from scoville.eagleBoard import EagleBoard

def getSchematic(schematicFilename):
  schematicSource = resource_string('hw', schematicFilename + ".sch")
  return EagleSchematic(schematicSource)

def getBoard(boardFilename):
  boardSource = resource_string('hw', boardFilename + ".brd")
  return EagleBoard(boardSource)

def saveResult(data, filename):
  file = open(filename, "w")
  file.write(data.toString())
  file.close()


partReplacements = {
  ("XOR", "XOR"): "XOR",
  ("OR", "OR"): "OR",
  ("AND", "AND"): "AND",
  ("NAND", "NAND"): "NAND",
  ("NOT", "NOT-VERTICAL"): "NOT-A",
  ("NOT", "NOT-HORIZONTAL"): "NOT-B",
  ("1_BIT_SELECT", "SELECTOR-2-LANE-NOMUX"): "1-BitSelect",
  ("8_BIT_SELECT", "SELECTOR-8_BIT-NOMUX"): "3-BitSelect",
}

if __name__ == '__main__':
  sys.path.insert(0, os.getcwd())

  schematic = getSchematic('composites/alu_slice')
  board = getBoard('composites/alu_slice')

  for key in partReplacements.keys():
    (deviceSet, packageName) = key
    filename = partReplacements[key]

    replacementSchematic = getSchematic('singleGates/' + filename)
    replacementBoard = getBoard('singleGates/' + filename)

    schematic.replace(deviceSet, replacementSchematic)
    board.replaceByPackage(packageName, replacementBoard)

  saveResult(schematic, "build/alu_slice.sch")
  saveResult(board, "build/alu_slice.brd")
