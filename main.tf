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

module "orders-db" {
  source = "./modules/orders-db"

  orders_dynamodb_table_name         = var.orders_dynamodb_table_name
  orders_dynamodb_table_billing_mode = var.orders_dynamodb_table_billing_mode
  orders_dynamodb_table_hash_key     = var.orders_dynamodb_table_hash_key
  orders_dynamodb_table_deletion_protection_enabled = var.orders_dynamodb_table_deletion_protection_enabled
}

module "products-catalog-db" {
  source = "./modules/products-catalog-db"
  aws_vpc_id = var.aws_vpc_id
  aws_secrets_name = var.aws_secrets_name
  products_catalog_database_security_group_name = var.products_catalog_database_security_group_name
  products_catalog_database_security_group_description = var.products_catalog_database_security_group_description
  products_catalog_database_name = var.products_catalog_database_name
  products_catalog_database_engine = var.products_catalog_database_engine
  products_catalog_database_engine_version = var.products_catalog_database_engine_version
  products_catalog_database_instance_class = var.products_catalog_database_instance_class
  products_catalog_database_allocated_storage = var.products_catalog_database_allocated_storage
  products_catalog_database_storage_type = var.products_catalog_database_storage_type
  products_catalog_subnet_group_name = var.products_catalog_subnet_group_name
  products_catalog_subnet_group_subnetIDs = var.products_catalog_subnet_group_subnetIDs
  products_catalog_database_primary = var.products_catalog_database_primary
  products_catalog_database_multi_az = var.products_catalog_database_multi_az
  products_catalog_database_skip_final_snapshot = var.products_catalog_database_skip_final_snapshot
  products_catalog_database_publicly_accessible = var.products_catalog_database_publicly_accessible
  products_catalog_database_backup_retention_period = var.products_catalog_database_backup_retention_period
  products_catalog_database_apply_immediately = var.products_catalog_database_apply_immediately
  products_catalog_database_security_group_ingress_eks_sgids = var.products_catalog_database_security_group_ingress_eks_sgids
}

module "payments-db" {
  source = "./modules/payments-db"
  aws_vpc_id = var.aws_vpc_id
  aws_secrets_name = var.aws_secrets_name
  payments_database_security_group_name = var.payments_database_security_group_name
  payments_database_security_group_description = var.payments_database_security_group_description
  payments_database_name = var.payments_database_name
  payments_database_engine = var.payments_database_engine
  payments_database_engine_version = var.payments_database_engine_version
  payments_database_instance_class = var.payments_database_instance_class
  payments_database_allocated_storage = var.payments_database_allocated_storage
  payments_database_storage_type = var.payments_database_storage_type
  payments_subnet_group_name = var.payments_subnet_group_name
  payments_subnet_group_subnetIDs = var.payments_subnet_group_subnetIDs
  payments_database_primary = var.payments_database_primary
  payments_database_multi_az = var.payments_database_multi_az
  payments_database_skip_final_snapshot = var.payments_database_skip_final_snapshot
  payments_database_publicly_accessible = var.payments_database_publicly_accessible
  payments_database_backup_retention_period = var.payments_database_backup_retention_period
  payments_database_apply_immediately = var.payments_database_apply_immediately
}