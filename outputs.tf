#output "iam_role" {
#    value = aws_iam_role.self
#}

output "iam_role_arn" {
    value       = aws_iam_role.iam_role.arn
    description = "The ARN of the created IAM role."
}

output "iam_role_name" {
    value       = aws_iam_role.iam_role.name
    description = "The name of the created IAM role."
}
