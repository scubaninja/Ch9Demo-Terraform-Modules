application = "c9demo"
environment = "dev"
location    = "westeurope"
capacity    = 2

default_tags = {
  application = "c9demo"
  environment = "Dev"
  deployed_by = "terraform"
}

address_space = "10.135.0.0/16"
subnet        = "10.135.20.0/24"
