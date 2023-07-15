import anycase/words
from strutils import join

proc dot*(str: string): string =
  let parts = words(str)

  return join(parts, ".")
