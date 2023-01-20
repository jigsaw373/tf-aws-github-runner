locals {
  environment = "${terraform.workspace}"
  aws_region  = "ca-central-1"
}
resource "aws_resourcegroups_group" "resourcegroups_group" {
  name = "${local.environment}-group"
  resource_query {
    query = templatefile("${path.module}/templates/resource-group.json", {
      example = local.environment
    })
  }
}
