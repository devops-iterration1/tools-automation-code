variable "tool_name" {}
variable "instance_type" {}
variable "zone_id" {}
variable "iam_policy_rules" {}
variable "dummy_policy" {
  default = ["ec2:DescribeInstanceTypes"]
}