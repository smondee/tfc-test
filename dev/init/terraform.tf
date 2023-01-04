#AWS account alias
resource "aws_iam_account_alias" "alias" {
  account_alias = "${local.resource_prefix}-alias"
}

resource "aws_iam_group" "dev" {
  name = "test-kanri-ope"
  path = "/"
}

resource "aws_iam_account_password_policy" "strict" {
  minimum_password_length        = 8
  require_lowercase_characters   = true
  require_numbers                = true
  require_uppercase_characters   = true
  require_symbols                = true
  allow_users_to_change_password = true
}


