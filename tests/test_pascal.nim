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

  test "pascalSnake -> pascal":
    check pascal("Change_My_Case") == "ChangeMyCase"

  test "screamingSnake -> pascal":
    check pascal("CHANGE_MY_CASE") == "ChangeMyCase"

  test "cobol -> pascal":
    check pascal("CHANGE-MY-CASE") == "ChangeMyCase"

  test "dot -> pascal":
    check pascal("change.my.case") == "ChangeMyCase"

  test "train -> pascal":
    check pascal("Change-My-Case") == "ChangeMyCase"

  test "doesn't cut numbers":
    check pascal("ChangeMyCase2") == "ChangeMyCase2"

  test "single character tokens":
    check pascal("c") == "C"
    check pascal("C") == "C"
    check pascal("CMC") == "CMC"
