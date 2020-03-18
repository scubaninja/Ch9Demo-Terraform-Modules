application = "tfworkspaces"
environment = "prod"
location    = "westeurope"
capacity    = 3

default_tags = {
  environment = "prod"
  deployed_by = "terraform"
}

address_space = "10.134.0.0/16"
subnet        = "10.134.20.0/24"
