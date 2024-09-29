terraform {
  backend "s3" {
    bucket = "tech-challenge-7soat-infra-terraform-state"
    key    = "rds/terraform.tfstate"
    region = "us-east-1"
    profile = "default"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "rds" {
  source = "./modules/rds"
  aws_vpc_id = var.aws_vpc_id
  aws_secrets_name = var.aws_secrets_name
  rds_database_security_group_name              = var.rds_database_security_group_name
  rds_database_security_group_description       = var.rds_database_security_group_description
  rds_database_security_group_ingress_eks_sgids = var.rds_database_security_group_ingress_eks_sgids
  rds_subnet_group_name                         = var.rds_subnet_group_name
  rds_subnet_group_subnetIDs                    = var.rds_subnet_group_subnetIDs
  rds_database_primary                          = var.rds_database_primary
  rds_database_engine                           = var.rds_database_engine
  rds_database_engine_version                   = var.rds_database_engine_version
  rds_database_instance_class                   = var.rds_database_instance_class
  rds_database_allocated_storage                = var.rds_database_allocated_storage
  rds_database_storage_type                     = var.rds_database_storage_type
  rds_database_multi_az                         = var.rds_database_multi_az
  rds_database_skip_final_snapshot              = var.rds_database_skip_final_snapshot
  rds_database_publicly_accessible              = var.rds_database_publicly_accessible
  rds_database_backup_retention_period          = var.rds_database_backup_retention_period
  rds_database_apply_immediately                = var.rds_database_apply_immediately
  rds_database_name                             = var.rds_database_name
  rds_database_replica                          = var.rds_database_replica
}
