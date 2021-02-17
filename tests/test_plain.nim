import unittest
import anycase/plain

suite "plain":
  test "plain -> plain":
    check plain("change my case") == "change my case"

  test "path -> plain":
    check plain("change/my/case") == "change my case"

  test "kebab -> plain":
    check plain("change-my-case") == "change my case"

  test "camel -> plain":
    check plain("changeMyCase") == "change my case"

  test "pascal -> plain":
    check plain("ChangeMyCase") == "change my case"

  test "snake -> plain":
    check plain("change_my_case") == "change my case"

  test "doesn't cut numbers":
    check plain("change my case 2") == "change my case 2"
