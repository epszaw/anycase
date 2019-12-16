import unittest
import anycase/camel

suite "camel":
  test "plain -> camel":
    check camel("change my case") == "changeMyCase"

  test "path -> camel":
    check camel("change/my/case") == "changeMyCase"

  test "kebab -> camel":
    check camel("change-my-case") == "changeMyCase"

  test "camel -> camel":
    check camel("changeMyCase") == "changeMyCase"

  test "pascal -> camel":
    check camel("ChangeMyCase") == "changeMyCase"

  test "snake -> camel":
    check camel("change_my_case") == "changeMyCase"

