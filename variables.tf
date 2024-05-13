variable "tools" {
  default = {
    prometheus = {
      instance_type = "t3.small"
      iam_policy_rules = ["ec2:DescribeInstances"]
    }
    grafana = {
      instance_type = "t3.small"
      iam_policy_rules = []
    }
    vault = {
      instance_type = "t3.small"
      iam_policy_rules = []
    }
    elk = {
      instance_type = "r7i.large"
      iam_policy_rules = []
    }
  }
}

variable "zone_id" {
  default = "Z05016193JAPZUY12R8OR"
}