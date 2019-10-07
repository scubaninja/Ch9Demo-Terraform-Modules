application = "c9demo"
environment = "test"
location    = "westeurope"
capacity    = 3

default_tags = {
  application = "c9demo"
  environment = "Test"
  deployed_by = "terraform"
}

address_space = "10.136.0.0/16"
subnet        = "10.136.20.0/24"
