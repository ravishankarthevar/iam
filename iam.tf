###################################################
# Creation of iam_role, policy, policy attachment #
###################################################

resource "aws_iam_role" "iam_role" {
  name               = var.role_name
  description        = var.role_description
  assume_role_policy = var.assume_role_policy
  tags               = var.tags
}

# Attach AWS managed policies if provided
resource "aws_iam_role_policy_attachment" "managed_policies" {
  for_each   = toset(var.managed_policy_arns)

  role       = aws_iam_role.iam_role.name
  policy_arn = each.value
}

# Attach inline policies if provided
resource "aws_iam_role_policy" "inline_policies" {
  for_each = { for idx, policy in var.inline_policies : idx => policy }

  name   = var.inline_policy_names[each.key]
  
  role   = aws_iam_role.iam_role.name
  policy = each.value
}
