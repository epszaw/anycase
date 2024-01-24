from sugar import collect
from regex import split, re2, findAll
from strutils import toLowerAscii
from sequtils import map, filterIt

proc splitBySymbols(str: string): seq[string] =
  return split(str, re2"(-|_|\/|\.|\s)").filterIt(it != "")

proc splitByUpperChars(str: string): seq[string] =
  return collect:
    for match in findAll(str, re2"(^[a-z0-9]+|[A-Z0-9][a-z0-9]*)"):
      str[match.boundaries]

proc words*(str: string): seq[string] =
  var parts = splitBySymbols(str)

  if parts.len == 1:
    parts = splitByUpperChars(str)

  return map(parts, toLowerAscii)
