import unittest
import anycase/pascal_snake

suite "pascalSnake":
  test "plain -> pascalSnake":
    check pascalSnake("change my case") == "Change_My_Case"

  test "path -> pascalSnake":
    check pascalSnake("change/my/case") == "Change_My_Case"

  test "kebab -> pascalSnake":
    check pascalSnake("change-my-case") == "Change_My_Case"

  test "camel -> pascalSnake":
    check pascalSnake("changeMyCase") == "Change_My_Case"

  test "pascal -> pascalSnake":
    check pascalSnake("ChangeMyCase") == "Change_My_Case"

  test "snake -> pascalSnake":
    check pascalSnake("change_my_case") == "Change_My_Case"

  test "pascalSnake -> pascalSnake":
    check pascalSnake("Change_My_Case") == "Change_My_Case"

  test "screamingSnake -> pascalSnake":
    check pascalSnake("CHANGE_MY_CASE") == "Change_My_Case"

  test "cobol -> pascalSnake":
    check pascalSnake("CHANGE-MY-CASE") == "Change_My_Case"

  test "dot -> pascalSnake":
    check pascalSnake("change.my.case") == "Change_My_Case"

  test "train -> pascalSnake":
    check pascalSnake("Change-My-Case") == "Change_My_Case"

  test "doesn't cut numbers":
    check pascalSnake("change_my_case_2") == "Change_My_Case_2"
