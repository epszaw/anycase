import unittest
import anycase/path

suite "path":
  test "plain -> path":
    check path("change my case") == "change/my/case"

  test "path -> path":
    check path("change/my/case") == "change/my/case"

  test "kebab -> path":
    check path("change-my-case") == "change/my/case"

  test "camel -> path":
    check path("changeMyCase") == "change/my/case"

  test "pascal -> path":
    check path("ChangeMyCase") == "change/my/case"

  test "snake -> path":
    check path("change_my_case") == "change/my/case"

  test "pascalSnake -> path":
    check path("Change_My_Case") == "change/my/case"

  test "screamingSnake -> path":
    check path("CHANGE_MY_CASE") == "change/my/case"

  test "cobol -> path":
    check path("CHANGE-MY-CASE") == "change/my/case"

  test "dot -> path":
    check path("change.my.case") == "change/my/case"

  test "train -> path":
    check path("Change-My-Case") == "change/my/case"

  test "doesn't cut numbers":
    check path("change/my/case/2") == "change/my/case/2"

  test "single character tokens":
    check path("c") == "c"
    check path("C") == "c"
    check path("CMC") == "c/m/c"
