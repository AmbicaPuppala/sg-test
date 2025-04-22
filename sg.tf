module "mysql_sg" {
  source = "../terraform-aws-securitygroup"
  project = var.project
  environment = var.environment
  sg_name = "mysql"
  sg_description = "created for mysql instance"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = var.common_tags
}
