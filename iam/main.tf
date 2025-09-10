module "iam-policy-external-dns" {
  source  = "spacelift.io/eswar-sudo/iampolicy/default"
  version = "0.1.0"

  # Required inputs
  policy_document = file("external_dns_policy.json")
  policy_name     = "external-dns-policy-test"

  # Optional inputs
  # description = string
}

module "iam-role-external-dns" {
  source  = "spacelift.io/eswar-sudo/iamrole/default"
  version = "0.1.0"

  # Required inputs
  assume_role_policy = jsondecode(file("external_dns_assume_role_policy.json"))
  name               = "external-dns-irsa-test"
  managed_policy_arns = [module.iam-policy-external-dns.arn]

  # Optional inputs
  # path                = string
}

module "iam-policy-alb-controller" {
  source  = "spacelift.io/eswar-sudo/iampolicy/default"
  version = "0.1.0"

  # Required inputs
  policy_document = file("alb_controller_policy.json")
  policy_name     = "dcli-alb-controller-policy-test"

  # Optional inputs
  # description = string
}

module "iam-role-alb-controller" {
  source  = "spacelift.io/eswar-sudo/iamrole/default"
  version = "0.1.0"

  # Required inputs
  assume_role_policy = jsondecode(file("alb_controller_assume_role_policy.json"))
  name               = "alb-controller-role-test"
  managed_policy_arns = [module.iam-policy-alb-controller.arn]

  # Optional inputs
  # path                = string
}

module "iam-role-kafka" {
  source  = "spacelift.io/eswar-sudo/iamrole/default"
  version = "0.1.0"

  # Required inputs
  assume_role_policy = jsondecode(file("kafka_assume_role_policy.json"))
  name               = "dcli-kafka-role-test"

  # Optional inputs
  managed_policy_arns = ["arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"]
  # path                = string
}
