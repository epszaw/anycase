import unittest
import anycase/train

suite "train":
  test "plain -> train":
    check train("change my case") == "Change-My-Case"

  test "path -> train":
    check train("change/my/case") == "Change-My-Case"

  test "kebab -> train":
    check train("change-my-case") == "Change-My-Case"

  test "camel -> train":
    check train("changeMyCase") == "Change-My-Case"

  test "pascal -> train":
    check train("ChangeMyCase") == "Change-My-Case"

  test "snake -> train":
    check train("change_my_case") == "Change-My-Case"

  test "pascalSnake -> train":
    check train("Change_My_Case") == "Change-My-Case"

  test "screamingSnake -> train":
    check train("CHANGE_MY_CASE") == "Change-My-Case"

  test "cobol -> train":
    check train("CHANGE-MY-CASE") == "Change-My-Case"

  test "dot -> train":
    check train("change.my.case") == "Change-My-Case"

  test "train -> train":
    check train("Change-My-Case") == "Change-My-Case"

  test "doesn't cut numbers":
    check train("change_my_case_2") == "Change-My-Case-2"
