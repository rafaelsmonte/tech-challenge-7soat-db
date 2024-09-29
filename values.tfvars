aws_vpc_id = "vpc-935824e9"
aws_secrets_name = "7Soat"

rds_database_security_group_name= "tech-challenge-7soat-db-sg"
rds_database_security_group_description = "Security group for 7 soat tech challenge database"
rds_database_security_group_ingress_eks_sgids = ["sg-0f9a8f1622c0e55aa","sg-0b60838921e123654"]
rds_subnet_group_name = "tech_challenge_7soat_subnet_group_db"
rds_subnet_group_subnetIDs = ["subnet-0628055b427ab2fe6", "subnet-0d501603dbb6981a0"]
rds_database_primary = "tech-challenge-7soat-db-primary"
rds_database_engine = "postgres"
rds_database_engine_version = "16.4"
rds_database_instance_class = "db.t3.small"
rds_database_allocated_storage = 20
rds_database_storage_type = "gp2"
rds_database_multi_az = false
rds_database_skip_final_snapshot = true
rds_database_publicly_accessible = true
rds_database_backup_retention_period = 7
rds_database_apply_immediately = true
rds_database_name = "tech_challenge_7soat_db"
rds_database_replica = "tech-challenge-7soat-db-replica"