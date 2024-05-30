provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      owner       = "prashansa.joshi"
      silo        = "intern2"
      environment = "dev"
      terraform   = "true"
    }
  }
}

