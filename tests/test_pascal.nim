import unittest
import anycase/pascal

suite "pascal":
  test "plain -> pascal":
    check pascal("change my case") == "ChangeMyCase"

  test "path -> pascal":
    check pascal("change/my/case") == "ChangeMyCase"

  test "kebab -> pascal":
    check pascal("change-my-case") == "ChangeMyCase"

  test "camel -> pascal":
    check pascal("changeMyCase") == "ChangeMyCase"

  test "pascal -> pascal":
    check pascal("ChangeMyCase") == "ChangeMyCase"

  test "snake -> pascal":
    check pascal("change_my_case") == "ChangeMyCase"

  test "doesn't cut numbers":
    check pascal("ChangeMyCase2") == "ChangeMyCase2"
