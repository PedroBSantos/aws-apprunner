resource "aws_apprunner_deployment" "update" {
  count = data.external.check_service.result.success == "true" ? 1 : 0
  service_arn = data.external.check_service.result.service_arn
}
