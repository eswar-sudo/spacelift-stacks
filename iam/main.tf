module "iampolicy" {
  source  = "spacelift.io/eswar-sudo/iampolicy/default"
  version = "0.1.0"

  # Required inputs
  policy_document = # string
  policy_name     = # string

  # Optional inputs
  # description = string
}

module "iamrole" {
  source  = "spacelift.io/eswar-sudo/iamrole/default"
  version = "0.1.0"

  # Required inputs
  assume_role_policy = # any
  name               = # string

  # Optional inputs
  # managed_policy_arns = list(string)
  # path                = string
}

module "iampolicy" {
  source  = "spacelift.io/eswar-sudo/iampolicy/default"
  version = "0.1.0"

  # Required inputs
  policy_document = # string
  policy_name     = # string

  # Optional inputs
  # description = string
}

module "iamrole" {
  source  = "spacelift.io/eswar-sudo/iamrole/default"
  version = "0.1.0"

  # Required inputs
  assume_role_policy = # any
  name               = # string

  # Optional inputs
  # managed_policy_arns = list(string)
  # path                = string
}

module "iamrole" {
  source  = "spacelift.io/eswar-sudo/iamrole/default"
  version = "0.1.0"

  # Required inputs
  assume_role_policy = # any
  name               = # string

  # Optional inputs
  # managed_policy_arns = list(string)
  # path                = string
}
