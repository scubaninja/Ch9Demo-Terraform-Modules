application = "tfworkspaces"
environment = "workspaces"
location    = "westeurope"
capacity    = 5

default_tags = {
  environment = "workspaces"
  deployed_by = "terraform"
}

address_space = "10.134.0.0/16"
subnet        = "10.134.20.0/24"
