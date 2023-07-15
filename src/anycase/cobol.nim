import anycase/words
from strutils import join, toUpperAscii

proc cobol*(str: string): string =
  let parts = words(str)

  return join(parts, "-").toUpperAscii
