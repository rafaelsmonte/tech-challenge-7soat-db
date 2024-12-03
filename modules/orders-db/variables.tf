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
