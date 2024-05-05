# resource "aws_apprunner_auto_scaling_configuration_version" "create" {
#   auto_scaling_configuration_name = "apprunner-autoscaling"
#   max_concurrency                 = 80
#   max_size                        = 2
#   min_size                        = 1
# }

# resource "aws_apprunner_observability_configuration" "create" {
#   observability_configuration_name = "apprunner-observability"
#   trace_configuration {
#     vendor = "AWSXRAY"
#   }
# }

resource "aws_apprunner_service" "create" {
  count = data.external.check_service.result.success == "true" ? 0 : 1
  service_name = var.aws_apprunner_service_name

  source_configuration {
    image_repository {
      image_configuration {
        port = var.aws_apprunner_port
      }
      image_identifier      = "${var.aws_ecr_url}/${var.aws_ecr_repository}:latest"
      image_repository_type = "ECR"
    }
    auto_deployments_enabled = false
    authentication_configuration {
      access_role_arn = var.aws_iam_role
    }
  }

  instance_configuration {
    cpu    = var.aws_apprunner_vcpu
    memory = var.aws_apprunner_memory
  }

  network_configuration {
    ingress_configuration {
      is_publicly_accessible = true
    }
    egress_configuration {
      egress_type = "DEFAULT"
    }
    ip_address_type = "IPV4"
  }

  observability_configuration {
    observability_enabled = false
  }
}