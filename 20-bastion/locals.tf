locals {
  bastion_sg_id= "/${var.project}/${var.environment}/bastion_sg_id.value"
  public_subnet_ids = split ("," , data.aws_ssm_parameter.public_subnet_ids.value)[0]
  common_tags={
    Project= var.project
    Environment= var.environment
    Terraform= true
  }
}