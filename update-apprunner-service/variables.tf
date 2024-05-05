variable "aws_access_key" {
  type      = string
  sensitive = true
}

variable "aws_secret_access_key" {
  type      = string
  sensitive = true
}

variable "aws_default_region" {
  type = string
}

variable "aws_apprunner_service_name" {
  type = string
}