data "aws_iam_policy_document" "s3-copy" {
  statement {
    actions = [
      "ecr:GetAuthorizationToken"
    ]
    resources = [
      "*"
    ]
  }

  statement {
    actions = [
      "ecr:Get*",
      "ecr:Describe*",
      "ecr:List*",
      "ecr:BatchCheckLayerAvailability",
      "ecr:BatchGetImage",
    ]

    resources = [
      "arn:aws:ecr:us-east-1:132948732473:repository/s3-copy",
    ]
  }

  statement {
    actions = [
      "s3:*",
    ]

    resources = [
      "arn:aws:s3:::saved-files-7777",
    ]
  }

}

module "s3-copy-iam" {
  source    = "./modules/iam-role"
  role_name = "s3-copy"
  policy    = data.aws_iam_policy_document.s3-copy.json

}
