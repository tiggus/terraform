locals {
  jsonfiles = [for f in fileset("${path.module}/${var.directory}/", "*.json") :
    {
      value = f
      path  = "${path.module}/${var.directory}/${f}"
      name  = jsondecode(file("${path.module}/${var.directory}/${f}")).info.title
    }
  ]
}

resource "aws_api_gateway_rest_api" "import" {
  for_each = toset(local.jsonfiles[*].path)
  body     = templatefile(each.value, {})
  name     = jsondecode(file(each.value)).info.title
  endpoint_configuration {
    types = [var.endpoint]
  }
}

resource "aws_api_gateway_deployment" "import" {
  for_each    = aws_api_gateway_rest_api.import
  rest_api_id = each.value.id
  triggers = {
    redeployment = sha1(jsonencode(each.value.body))
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_api_gateway_stage" "import" {
  for_each      = aws_api_gateway_deployment.import
  deployment_id = each.value.id
  rest_api_id   = each.value.rest_api_id
  stage_name    = var.stage
}
