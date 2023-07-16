import unittest
import anycase/cobol

suite "cobol":
  test "plain -> cobol":
    check cobol("change my case") == "CHANGE-MY-CASE"

  test "path -> cobol":
    check cobol("change/my/case") == "CHANGE-MY-CASE"

  test "kebab -> cobol":
    check cobol("change-my-case") == "CHANGE-MY-CASE"

  test "camel -> cobol":
    check cobol("changeMyCase") == "CHANGE-MY-CASE"

  test "pascal -> cobol":
    check cobol("ChangeMyCase") == "CHANGE-MY-CASE"

  test "snake -> cobol":
    check cobol("change_my_case") == "CHANGE-MY-CASE"

  test "pascalSnake -> cobol":
    check cobol("Change_My_Case") == "CHANGE-MY-CASE"

  test "screamingSnake -> cobol":
    check cobol("CHANGE_MY_CASE") == "CHANGE-MY-CASE"

  test "cobol -> cobol":
    check cobol("CHANGE-MY-CASE") == "CHANGE-MY-CASE"

  test "dot -> cobol":
    check cobol("change.my.case") == "CHANGE-MY-CASE"

  test "train -> cobol":
    check cobol("Change-My-Case") == "CHANGE-MY-CASE"

  test "doesn't cut numbers":
    check cobol("change_my_case_2") == "CHANGE-MY-CASE-2"

  test "single character tokens":
    check cobol("c") == "C"
    check cobol("C") == "C"
    check cobol("CMC") == "C-M-C"
