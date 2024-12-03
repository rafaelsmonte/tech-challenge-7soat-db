#============================================================================
# Authors: Thiago, Vitor, Rafael
# Description: payments-db module variables
#============================================================================
variable "payments_database_security_group_name" {
  description = "The name of the security group for the payments database"
  type        = string
}

variable "payments_database_security_group_description" {
  description = "The description for the payments database security group"
  type        = string
}

variable "aws_vpc_id" {
  description = "The VPC ID where the resources will be deployed"
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

variable "aws_secrets_name" {
  description = "The name of the secret in AWS Secrets Manager"
  type        = string
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
