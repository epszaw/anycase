import unittest
import anycase/screaming_snake

suite "screamingSnake":
  test "plain -> screamingSnake":
    check screamingSnake("change my case") == "CHANGE_MY_CASE"

  test "path -> screamingSnake":
    check screamingSnake("change/my/case") == "CHANGE_MY_CASE"

  test "kebab -> screamingSnake":
    check screamingSnake("change-my-case") == "CHANGE_MY_CASE"

  test "camel -> screamingSnake":
    check screamingSnake("changeMyCase") == "CHANGE_MY_CASE"

  test "pascal -> screamingSnake":
    check screamingSnake("ChangeMyCase") == "CHANGE_MY_CASE"

  test "snake -> screamingSnake":
    check screamingSnake("change_my_case") == "CHANGE_MY_CASE"

  test "pascalSnake -> screamingSnake":
    check screamingSnake("Change_My_Case") == "CHANGE_MY_CASE"

  test "screamingSnake -> screamingSnake":
    check screamingSnake("CHANGE_MY_CASE") == "CHANGE_MY_CASE"

  test "cobol -> screamingSnake":
    check screamingSnake("CHANGE-MY-CASE") == "CHANGE_MY_CASE"

  test "dot -> screamingSnake":
    check screamingSnake("change.my.case") == "CHANGE_MY_CASE"

  test "train -> screamingSnake":
    check screamingSnake("Change-My-Case") == "CHANGE_MY_CASE"

  test "doesn't cut numbers":
    check screamingSnake("change_my_case_2") == "CHANGE_MY_CASE_2"
