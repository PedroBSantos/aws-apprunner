data "external" "check_repo" {
  program = ["/usr/bin/bash", "${path.module}/scripts/check_if_repo_exists.sh", var.aws_ecr_repository, var.aws_default_region]
}