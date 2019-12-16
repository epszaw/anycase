# anycase

[![Build Status](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Flamartire%2Fanycase%2Fbadge&style=flat)](https://actions-badge.atrox.dev/lamartire/anycase/goto)
![MIT License](https://camo.githubusercontent.com/4481c7672053be9c676fbc983c040ca59fddfa19/68747470733a2f2f696d672e736869656c64732e696f2f6e706d2f6c2f6c6f6775782d70726f636573736f722e737667)

> Convert strings to any case

## Usage

```nim
import anycase

camel("any case")   # "anyCase"
kebab("any case")   # "any-case"
pascal("any case")  # "AnyCase"
path("any case")    # "any/case"
snake("any case")   # "any_case"
plain("any-case")   # "any case"
```

## Supported cases

- `camel`
- `kebab`
- `pascal`
- `path`
- `snake`
- `plain`

If you don't see any case – feel free to open issue or pull request.
