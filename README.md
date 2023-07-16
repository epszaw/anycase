# anycase

[![Build Status](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Flamartire%2Fanycase%2Fbadge&style=flat)](https://actions-badge.atrox.dev/lamartire/anycase/goto)
![MIT License](https://camo.githubusercontent.com/4481c7672053be9c676fbc983c040ca59fddfa19/68747470733a2f2f696d672e736869656c64732e696f2f6e706d2f6c2f6c6f6775782d70726f636573736f722e737667)

> Convert strings to any case

## Usage

```nim
import anycase

camel("any case")   # "anyCase"
cobol("any case")   # "ANY-CASE"
dot("any case")   # "any.case"
kebab("any case")   # "any-case"
pascal("any case")  # "AnyCase"
pascalSnake("any case")  # "Any_Case"
path("any case")    # "any/case"
screamingSnake("any case")  # "ANY_CASE"
snake("any case")   # "any_case"
train("any case")   # "Any-Case"
plain("any-case")   # "any case"
```

## Supported cases

- `camel`
- `cobol`
- `dot`
- `kebab`
- `pascal snake`
- `pascal`
- `path`
- `screaming snake`
- `snake`
- `train`
- `plain`

If you don't see any case – feel free to open issue or pull request.
