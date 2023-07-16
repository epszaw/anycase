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

  test "pascalSnake -> camel":
    check camel("Change_My_Case") == "changeMyCase"

  test "screamingSnake -> camel":
    check camel("CHANGE_MY_CASE") == "changeMyCase"

  test "cobol -> camel":
    check camel("CHANGE-MY-CASE") == "changeMyCase"

  test "dot -> camel":
    check camel("change.my.case") == "changeMyCase"

  test "train -> camel":
    check camel("Change-My-Case") == "changeMyCase"

  test "doesn't cut numbers":
    check camel("changeMyCase2") == "changeMyCase2"

  test "single character tokens":
    check camel("c") == "c"
    check camel("C") == "c"
    check camel("CMC") == "cMC"
