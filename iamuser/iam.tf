resource "aws_iam_user" "newuser" {
  name = "new_testing_user"
}

resource "aws_iam_group" "developers" {
  name = "developers"
}