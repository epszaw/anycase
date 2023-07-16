import unittest
import anycase/snake

suite "snake":
  test "plain -> snake":
    check snake("change my case") == "change_my_case"

  test "path -> snake":
    check snake("change/my/case") == "change_my_case"

  test "kebab -> snake":
    check snake("change-my-case") == "change_my_case"

  test "camel -> snake":
    check snake("changeMyCase") == "change_my_case"

  test "pascal -> snake":
    check snake("ChangeMyCase") == "change_my_case"

  test "snake -> snake":
    check snake("change_my_case") == "change_my_case"

  test "pascalSnake -> snake":
    check snake("Change_My_Case") == "change_my_case"

  test "screamingSnake -> snake":
    check snake("CHANGE_MY_CASE") == "change_my_case"

  test "cobol -> snake":
    check snake("CHANGE-MY-CASE") == "change_my_case"

  test "dot -> snake":
    check snake("change.my.case") == "change_my_case"

  test "train -> snake":
    check snake("Change-My-Case") == "change_my_case"

  test "doesn't cut numbers":
    check snake("change_my_case_2") == "change_my_case_2"

  test "single character tokens":
    check snake("c") == "c"
    check snake("C") == "c"
    check snake("CMC") == "c_m_c"
