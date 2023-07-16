import unittest
import anycase/kebab

suite "kebab":
  test "plain -> kebab":
    check kebab("change my case") == "change-my-case"

  test "path -> kebab":
    check kebab("change/my/case") == "change-my-case"

  test "kebab -> kebab":
    check kebab("change-my-case") == "change-my-case"

  test "camel -> kebab":
    check kebab("changeMyCase") == "change-my-case"

  test "pascal -> kebab":
    check kebab("ChangeMyCase") == "change-my-case"

  test "snake -> kebab":
    check kebab("change_my_case") == "change-my-case"

  test "pascalSnake -> kebab":
    check kebab("Change_My_Case") == "change-my-case"

  test "screamingSnake -> kebab":
    check kebab("CHANGE_MY_CASE") == "change-my-case"

  test "cobol -> kebab":
    check kebab("CHANGE-MY-CASE") == "change-my-case"

  test "dot -> kebab":
    check kebab("change.my.case") == "change-my-case"

  test "train -> kebab":
    check kebab("Change-My-Case") == "change-my-case"

  test "doesn't cut numbers":
    check kebab("change-my-case-2") == "change-my-case-2"

  test "single character tokens":
    check kebab("c") == "c"
    check kebab("C") == "c"
    check kebab("CMC") == "c-m-c"
