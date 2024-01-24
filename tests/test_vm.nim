import unittest
import anycase/camel

suite "vm":
  test "plain -> camel":
    check compiles static camel("change my case")

  test "path -> camel":
    check compiles static camel("change/my/case")

  test "kebab -> camel":
    check compiles static camel("change-my-case")

  test "camel -> camel":
    check compiles static camel("changeMyCase")

  test "pascal -> camel":
    check compiles static camel("ChangeMyCase")

  test "snake -> camel":
    check compiles static camel("change_my_case")

  test "pascalSnake -> camel":
    check compiles static camel("Change_My_Case")

  test "screamingSnake -> camel":
    check compiles static camel("CHANGE_MY_CASE")

  test "cobol -> camel":
    check compiles static camel("CHANGE-MY-CASE")

  test "dot -> camel":
    check compiles static camel("change.my.case")

  test "train -> camel":
    check compiles static camel("Change-My-Case")

  test "doesn't cut numbers":
    check compiles static camel("changeMyCase2")

  test "single character tokens":
    check compiles static camel("c")
    check compiles static camel("C")
    check compiles static camel("CMC")
