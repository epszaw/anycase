import unittest
import anycase/dot

suite "dot":
  test "plain -> dot":
    check dot("change my case") == "change.my.case"

  test "path -> dot":
    check dot("change/my/case") == "change.my.case"

  test "kebab -> dot":
    check dot("change-my-case") == "change.my.case"

  test "camel -> dot":
    check dot("changeMyCase") == "change.my.case"

  test "pascal -> dot":
    check dot("ChangeMyCase") == "change.my.case"

  test "snake -> dot":
    check dot("change_my_case") == "change.my.case"

  test "pascalSnake -> dot":
    check dot("Change_My_Case") == "change.my.case"

  test "screamingSnake -> dot":
    check dot("CHANGE_MY_CASE") == "change.my.case"

  test "cobol -> dot":
    check dot("CHANGE-MY-CASE") == "change.my.case"

  test "dot -> dot":
    check dot("change.my.case") == "change.my.case"

  test "train -> dot":
    check dot("Change-My-Case") == "change.my.case"

  test "doesn't cut numbers":
    check dot("change/my/case/2") == "change.my.case.2"
