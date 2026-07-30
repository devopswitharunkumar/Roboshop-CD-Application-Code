module "user" {
#   source = "../terraform-roboshop-app-module"
  source = "git::https://github.com/devopswitharunkumar/terraform-roboshop-infra-dev.git//terraform-roboshop-app-module?ref=main"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  component_sg_id = data.aws_ssm_parameter.user_sg_id.value
  private_subnet_id = split(",", data.aws_ssm_parameter.private_subnet_id.value)
  iam_instance_profile = var.iam_instance_profile
  Project_Name = var.Project_Name
  Environment = var.Environment
  common_tags = var.common_tags
  tags = var.tags
  zone_name = var.zone_name
  app_alb_listner_arn = data.aws_ssm_parameter.app_alb_listner_rule.value
  alb_listner_rule_priority = var.alb_listner_rule_priority
  app_version = var.app_version
}