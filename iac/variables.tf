variable "credentials" {
  type = map(string)
  default = {
    profile = "leverage"
    region = "us-east-1"
  }
}

variable "email_identity_from" {
  type = string
  default = "rodgers.wanyonyi@thejitu.com"
}

variable "email_identity_to" {
  type = string
  default = "rodgersimiyu@outlook.com"
}