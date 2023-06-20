#############
# Variables #
#############

#variable "region" {
#    type = string
#    default = ""
#}
#
#variable "role_name" {
#  description = "region to create resources"
#  type        = string
#  default     = ""
#}
#
#variable "policy_name" {
#  description = "region to create resources"
#  type        = string
#  default     = ""
#}
#
#variable "policy" {
#  description = "region to create resources"
#  type        = string
#  default     = ""
#}
#variable "assume_role_policy" {
#  description = "region to create resources"
#  type        = string
#  default     = ""
#}

variable "role_name" {
  description = "The name of the IAM role."
  type        = string
}

variable "role_description" {
  description = "A description for the IAM role."
  type        = string
}

variable "assume_role_policy" {
  description = "The IAM policy document that defines who can assume the role."
  type        = string
}

variable "managed_policy_arns" {
  description = "A list of ARNs of managed policies to attach to the IAM role."
  type        = list(string)
  default     = []
}

variable "inline_policy_names" {
  description = "A list of names for the inline policies."
  type        = list(string)
  default     = []
}

variable "inline_policies" {
  description = "A list of inline policy documents to attach to the IAM role."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Custom tags which can be passed on to the AWS resources. They should be key value pairs having distinct keys"
  type        = map(string)
  default     = {}
}
