data "external" "check_service" {
  program = ["/usr/bin/bash", "${path.module}/scripts/check_if_service_exists.sh", var.aws_apprunner_service_name, var.aws_default_region]
}