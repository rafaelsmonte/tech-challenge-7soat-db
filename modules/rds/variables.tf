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
