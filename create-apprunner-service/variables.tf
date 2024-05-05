variable "aws_ecr_repository" {
  type = string
}

variable "aws_apprunner_vcpu" {
  type        = string
  description = "quantidade de vcpu usado no app runner"
}

variable "aws_apprunner_memory" {
  type        = string
  description = "quantidade de memória usada no app runner"
}

variable "aws_apprunner_service_name" {
  type        = string
  description = "nome do serviço no app runner"
}

variable "aws_ecr_url" {
  type        = string
  description = "url da imagem docker no ECR"
}

variable "aws_iam_role" {
  type        = string
  description = "role do IAM para executar o deploy"
}

variable "aws_apprunner_port" {
  type        = string
  description = "porta exposta pelo app runner"
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

variable "aws_apprunner_auto_scaling" {
  type        = string
  description = "configuração de auto scaling para o serviço no apprunner"
}
