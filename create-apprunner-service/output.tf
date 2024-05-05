output "apprunner_service_status" {
  value       = aws_apprunner_service.create[0].status
  description = "Status do serviço criado"
}

output "apprunner_service_url" {
  value       = aws_apprunner_service.create[0].service_url
  description = "URL criada para acesso ao serviço"
}