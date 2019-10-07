application = "c9demo"
environment = "prod"
location    = "uksouth"
capacity    = 5

default_tags = {
  application = "c9demo"
  environment = "Prod"
  deployed_by = "terraform"
}

address_space = "10.134.0.0/16"
subnet        = "10.134.20.0/24"
