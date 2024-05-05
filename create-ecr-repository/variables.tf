variable "aws_ecr_repository" {
  type = string
}

variable "aws_ecr_url" {
  type        = string
  description = "url da imagem docker no ECR"
}

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
