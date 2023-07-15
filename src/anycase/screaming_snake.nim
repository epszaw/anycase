import anycase/words
from strutils import join, toUpperAscii

proc screamingSnake*(str: string): string =
  let parts = words(str)

  return join(parts, "_").toUpperAscii
