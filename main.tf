module "tool" {
  source = "./module"

  for_each = var.tools
  tool_name = each.key
  instance_type = each.value["instance_type"]
  iam_policy_rules = each.value["iam_policy_rules"]

  zone_id = var.zone_id

}