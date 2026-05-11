data "aws-region" "current " {}

resource "aws_apigatewayv2_api" "http_api"{
        name = "${local.componf_name} -api"
        protocolo_type = var.type_http

    cors_configuration {
    # allow_credentials cannot be true when allow_origins contains "*"
     allow_credentials = local.cors_allow_credentials
     allow_headers     = var.cors_allow_headers
     allow_methods     = var.cors_allow_methods
     allow_origins     = var.cors_allow_origins
     expose_headers    = var.cors_expose_headers
     max_age           = var.cors_max_age
  }

  tags = var.tags
}

resource "aws_apprunner_vpc_connector" "connector" {
  vpc_connector_name = "name"
  subnets            = ["subnet1", "subnet2"]
  security_groups    = ["sg1", "sg2"]
}



