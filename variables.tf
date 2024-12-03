variable "aws_vpc_id" {
  description = "The AWS VPC ID"
  type        = string
}

variable "aws_secrets_name" {
  type        = string
  description = "The name of the AWS Secrets Manager secret."
}

variable "rds_database_security_group_name" {
  description = "The name of the RDS database security group"
  type        = string
}

variable "rds_database_security_group_description" {
  description = "The description for the RDS database security group"
  type        = string
}

variable "rds_database_security_group_ingress_eks_sgids" {
  description = "List of EKS security group IDs for ingress rules"
  type        = list(string)
}

variable "rds_subnet_group_name" {
  description = "The name of the RDS subnet group"
  type        = string
}

variable "rds_subnet_group_subnetIDs" {
  description = "List of subnet IDs for the RDS subnet group"
  type        = list(string)
}

variable "rds_database_primary" {
  description = "The identifier for the primary RDS database instance"
  type        = string
}

variable "rds_database_engine" {
  description = "The engine for the RDS database"
  type        = string
}

variable "rds_database_engine_version" {
  description = "The version of the RDS database engine"
  type        = string
}

variable "rds_database_instance_class" {
  description = "The instance class for the RDS database"
  type        = string
}

variable "rds_database_allocated_storage" {
  description = "The allocated storage size for the RDS database (in GB)"
  type        = number
}

variable "rds_database_storage_type" {
  description = "The storage type for the RDS database"
  type        = string
}

variable "rds_database_multi_az" {
  description = "Whether to enable Multi-AZ for the RDS database"
  type        = bool
}

variable "rds_database_skip_final_snapshot" {
  description = "Whether to skip the final snapshot when deleting the RDS database"
  type        = bool
}

variable "rds_database_publicly_accessible" {
  description = "Whether the RDS database should be publicly accessible"
  type        = bool
}

variable "rds_database_backup_retention_period" {
  description = "The number of days to retain backups"
  type        = number
}

variable "rds_database_apply_immediately" {
  description = "Whether to apply changes immediately to the RDS database"
  type        = bool
}

variable "rds_database_name" {
  description = "The name of the RDS database"
  type        = string
}

variable "rds_database_replica" {
  description = "The identifier for the RDS database replica"
  type        = string
}

variable "products_catalog_database_security_group_name" {
  description = "The name of the security group for the products catalog database"
  type        = string
}

variable "products_catalog_database_security_group_description" {
  description = "The description for the products catalog database security group"
  type        = string
}

variable "products_catalog_database_name" {
  description = "The name of the products catalog database"
  type        = string
}

variable "products_catalog_database_engine" {
  description = "The database engine for the products catalog database (e.g., mysql, postgres)"
  type        = string
}

variable "products_catalog_database_engine_version" {
  description = "The version of the database engine"
  type        = string
}

variable "products_catalog_database_instance_class" {
  description = "The instance class for the products catalog database"
  type        = string
}

variable "products_catalog_database_allocated_storage" {
  description = "The allocated storage in GB for the products catalog database"
  type        = number
}

variable "products_catalog_database_storage_type" {
  description = "The storage type for the products catalog database (e.g., gp2, io1)"
  type        = string
}

variable "products_catalog_subnet_group_name" {
  description = "The name of the subnet group for the products catalog database"
  type        = string
}

variable "products_catalog_subnet_group_subnetIDs" {
  description = "The subnet IDs for the products catalog database subnet group"
  type        = list(string)
}

variable "products_catalog_database_primary" {
  description = "The primary identifier for the products catalog database"
  type        = string
}

variable "products_catalog_database_multi_az" {
  description = "Whether to create a multi-AZ database instance"
  type        = bool
}

variable "products_catalog_database_skip_final_snapshot" {
  description = "Whether to skip the final snapshot when deleting the database"
  type        = bool
}

variable "products_catalog_database_publicly_accessible" {
  description = "Whether the products catalog database is publicly accessible"
  type        = bool
}

variable "products_catalog_database_backup_retention_period" {
  description = "The backup retention period for the products catalog database"
  type        = number
}

variable "products_catalog_database_apply_immediately" {
  description = "Whether to apply changes immediately to the products catalog database"
  type        = bool
}

variable "products_catalog_database_security_group_ingress_eks_sgids" {
  description = "Security group IDs to allow ingress traffic from EKS security groups (if enabled)"
  type        = list(string)
  default     = []
}

variable "payments_database_security_group_name" {
  description = "The name of the security group for the payments database"
  type        = string
}

variable "payments_database_security_group_description" {
  description = "The description for the payments database security group"
  type        = string
}

variable "payments_database_name" {
  description = "The name of the payments database"
  type        = string
}

variable "payments_database_engine" {
  description = "The database engine for the payments database (e.g., mysql, postgres)"
  type        = string
}

variable "payments_database_engine_version" {
  description = "The version of the database engine"
  type        = string
}

variable "payments_database_instance_class" {
  description = "The instance class for the payments database"
  type        = string
}

variable "payments_database_allocated_storage" {
  description = "The allocated storage in GB for the payments database"
  type        = number
}

variable "payments_database_storage_type" {
  description = "The storage type for the payments database (e.g., gp2, io1)"
  type        = string
}

variable "payments_subnet_group_name" {
  description = "The name of the subnet group for the payments database"
  type        = string
}

variable "payments_subnet_group_subnetIDs" {
  description = "The subnet IDs for the payments database subnet group"
  type        = list(string)
}

variable "payments_database_primary" {
  description = "The primary identifier for the payments database"
  type        = string
}

variable "payments_database_multi_az" {
  description = "Whether to create a multi-AZ database instance"
  type        = bool
}

variable "payments_database_skip_final_snapshot" {
  description = "Whether to skip the final snapshot when deleting the database"
  type        = bool
}

variable "payments_database_publicly_accessible" {
  description = "Whether the payments database is publicly accessible"
  type        = bool
}

variable "payments_database_backup_retention_period" {
  description = "The backup retention period for the payments database"
  type        = number
}

variable "payments_database_apply_immediately" {
  description = "Whether to apply changes immediately to the payments database"
  type        = bool
}

variable "payments_database_security_group_ingress_eks_sgids" {
  description = "Security group IDs to allow ingress traffic from EKS security groups (if enabled)"
  type        = list(string)
  default     = []
}

variable "orders_dynamodb_table_name" {
  description = "The name of the DynamoDB table for storing orders."
  type        = string
}

variable "orders_dynamodb_table_billing_mode" {
  description = "The billing mode for the DynamoDB table. Options: PAY_PER_REQUEST or PROVISIONED."
  type        = string
}

variable "orders_dynamodb_table_hash_key" {
  description = "The primary hash key for the DynamoDB table."
  type        = string
}

variable "orders_dynamodb_table_deletion_protection_enabled" {
  description = "Whether or not enable deletion protection for the DynamoDB table."
  type        = string
}