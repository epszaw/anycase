import anycase/words
from strutils import join, capitalizeAscii
from sequtils import map

proc pascalSnake*(str: string): string =
  let parts = words(str)

  return join(map(parts, capitalizeAscii), "_")
