import anycase/words
from strutils import join, capitalizeAscii
from sequtils import map

proc train*(str: string): string =
  let parts = words(str)

  return join(map(parts, capitalizeAscii), "-")
