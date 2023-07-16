from re import split, re, findAll
from strutils import toLowerAscii
from sequtils import map, filterIt

proc splitBySymbols(str: string): seq[string] =
  return split(str, re"(-|_|\/|\.|\s)").filterIt(it != "")

proc splitByUpperChars(str: string): seq[string] =
  return findAll(str, re"(^[a-z0-9]+|[A-Z0-9][a-z0-9]*)")

proc words*(str: string): seq[string] =
  var parts = splitBySymbols(str)

  if parts.len == 1:
    parts = splitByUpperChars(str)

  return map(parts, toLowerAscii)
