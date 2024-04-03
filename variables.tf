variable "tools" {
  default = {
    prometheus = {
      instance_type = "t3.small"
      iam_policy_rules = ["ec2:DescribeInstances"]
    }
  }
}

variable "zone_id" {
  default = "Z0889503O7N4KMNPP3DP"
}