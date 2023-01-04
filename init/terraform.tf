#AWS account alias
resource "aws_iam_account_alias" "alias" {
  account_alias = "${local.resource_prefix}-alias"
}

resource "aws_iam_group" "dev" {
  name = "test-kanri-ope"
  path = "/users/"
}

