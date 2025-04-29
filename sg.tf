module "mysql_sg" {
  source = "git::https://github.com/AmbicaPuppala//terraform-aws-securitygroup.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = "mysql"
  sg_description = "created for mysql instance"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = var.common_tags
}
