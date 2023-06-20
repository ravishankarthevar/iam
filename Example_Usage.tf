#module "iam_role" {
#  source               = "./modules/iam-role"
#  role_name            = "example-role"
#  role_description     = "An example IAM role"
#  assume_role_policy   = data.aws_iam_policy_document.example.json
#  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
#  inline_policy_names  = ["policy1"]
#  inline_policies      = [data.aws_iam_policy_document.policy1.json]
#}
#
#data "aws_iam_policy_document" "example" {
#  statement {
#    actions   = ["sts:AssumeRole"]
#    resources = ["*"]
#  }
#}
#
#data "aws_iam_policy_document" "policy1" {
#  statement {
#    actions   = ["s3:GetObject"]
#    resources = ["arn:aws:s3:::bucket1/*"]
#  }
#}