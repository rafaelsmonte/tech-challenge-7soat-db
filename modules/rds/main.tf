#============================================================================
# Authors: Thiago, Vitor, Rafael
# Description: Creates Database Infrastructure on RDS
#============================================================================
resource "aws_security_group" "rds_database_security_group" {
  name        = var.rds_database_security_group_name
  description = var.rds_database_security_group_description
  vpc_id      = var.aws_vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    security_groups = var.rds_database_security_group_ingress_eks_sgids
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.rds_database_security_group_name
  }
}

resource "aws_db_subnet_group" "rds_subnet_group_tech_challenge_7soat" {
  name       = var.rds_subnet_group_name
  subnet_ids = var.rds_subnet_group_subnetIDs
  tags = {
    Name = var.rds_subnet_group_name
  }
}

data "aws_secretsmanager_secret" "secretsmanager_secret_tech_challenge_7soat" {
  name = var.aws_secrets_name
}

data "aws_secretsmanager_secret_version" "secretsmanager_secret_version_7soat" {
  secret_id = data.aws_secretsmanager_secret.secretsmanager_secret_tech_challenge_7soat.id
}

locals {
  secret_values = jsondecode(data.aws_secretsmanager_secret_version.secretsmanager_secret_version_7soat.secret_string)
}

resource "aws_db_instance" "tech_challenge_7soat_db_primary" {
  identifier             = var.rds_database_primary
  engine                 = var.rds_database_engine
  engine_version         = var.rds_database_engine_version
  instance_class         = var.rds_database_instance_class
  allocated_storage      = var.rds_database_allocated_storage
  storage_type           = var.rds_database_storage_type
  username               = local.secret_values.POSTGRES_USER
  password               = local.secret_values.POSTGRES_PASSWORD
  db_name                = var.rds_database_name
  db_subnet_group_name   = var.rds_subnet_group_name
  vpc_security_group_ids = [aws_security_group.rds_database_security_group.id]
  multi_az               = var.rds_database_multi_az
  skip_final_snapshot    = var.rds_database_skip_final_snapshot
  publicly_accessible    = var.rds_database_publicly_accessible
  backup_retention_period = var.rds_database_backup_retention_period
  apply_immediately   = var.rds_database_apply_immediately

  tags = {
    Name = var.rds_database_primary
  }

  depends_on = [aws_db_subnet_group.rds_subnet_group_tech_challenge_7soat]
}
