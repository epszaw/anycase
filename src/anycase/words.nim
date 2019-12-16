from re import split, re, findAll
from strutils import count, toLowerAscii
from sequtils import map

proc splitByUpperChars*(str: string): seq[string] =
  let parts = findAll(str, re"(^[a-z][a-z]+|[A-Z][a-z]+)")

  return map(parts, toLowerAscii)

proc words*(str: string): seq[string] =
  let parts = split(str, re"(-|_|/|\s)")

  if parts.len == 1:
    return splitByUpperChars(str)

  return parts
