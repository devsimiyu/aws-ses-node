provider "aws" {
  profile = lookup(var.credentials, "profile")
  region = lookup(var.credentials, "region")
}