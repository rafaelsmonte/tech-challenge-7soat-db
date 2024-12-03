#============================================================================
# Authors: Thiago, Vitor, Rafael
# Description: Creates Database Infrastructure for Orders Service
#============================================================================

resource "aws_dynamodb_table" "orders_database_table" {
  name                          = var.orders_dynamodb_table_name
  billing_mode                  = var.orders_dynamodb_table_billing_mode 
  deletion_protection_enabled   = var.orders_dynamodb_table_deletion_protection_enabled
  hash_key                      = "id"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "customerId"
    type = "S"
  }

  global_secondary_index {
    name               = "customer_id_index"
    hash_key           = "customerId"
    projection_type    = "KEYS_ONLY"
  }

  tags = {
    Name = var.orders_dynamodb_table_name
  }
}
