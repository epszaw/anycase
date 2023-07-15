import unittest
import anycase/words

suite "words":
  test "plain -> words":
    check words("change my case") == @["change", "my", "case"]

  test "path -> words":
    check words("change/my/case") == @["change", "my", "case"]

  test "kebab -> words":
    check words("change-my-case") == @["change", "my", "case"]

  test "camel -> words":
    check words("changeMyCase") == @["change", "my", "case"]

  test "pascal -> words":
    check words("ChangeMyCase") == @["change", "my", "case"]

  test "snake -> words":
    check words("change_my_case") == @["change", "my", "case"]

  test "pascalSnake -> words":
    check words("Change_My_Case") == @["change", "my", "case"]

  test "screamingSnake -> words":
    check words("CHANGE_MY_CASE") == @["change", "my", "case"]

  test "cobol -> words":
    check words("CHANGE-MY-CASE") == @["change", "my", "case"]

  test "dot -> words":
    check words("change.my.case") == @["change", "my", "case"]

  test "train -> words":
    check words("Change-My-Case") == @["change", "my", "case"]

  test "doesn't cut numbers":
    check words("change my case 2") == @["change", "my", "case", "2"]
