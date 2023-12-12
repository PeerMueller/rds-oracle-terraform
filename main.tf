resource "aws_db_instance" "rds" {
  identifier                            = var.db_identifier
  engine                                = var.db_engine
  engine_version                        = var.db_engine_version
  allocated_storage                     = var.db_allocated_storage
  license_model                         = var.db_license_model
  instance_class                        = var.db_instance_class
  port                                  = var.db_port
  username                              = var.username
  manage_master_user_password           = var.manage_master_user_password 
  character_set_name                    = var.db_character_set_name
  db_subnet_group_name                  = var.db_subnet_group
  parameter_group_name                  = var.db_param_group
  option_group_name                     = var.db_option_group
  storage_type                          = var.db_storage_type
  copy_tags_to_snapshot                 = var.copy_tags_to_snapshot
  backup_retention_period               = var.db_backup_retention
  backup_window                         = var.db_backup_window
  maintenance_window                    = var.db_maintenance_window
  multi_az                              = var.db_multi_az
  kms_key_id                            = var.kms_key_id
  apply_immediately                     = var.db_apply_mods_immediate
  auto_minor_version_upgrade            = var.db_minor_upgrades
  allow_major_version_upgrade           = var.db_major_upgrades
  snapshot_identifier                   = var.db_snapshot
  vpc_security_group_ids                = var.db_vpc_security_group
  skip_final_snapshot                   = var.skip_final_snapshot
  monitoring_interval                   = var.monitoring_interval
  monitoring_role_arn                   = var.monitoring_role_arn
  performance_insights_enabled          = var.performance_insights_enabled
  performance_insights_retention_period = var.performance_insights_retention_period
  deletion_protection                   = var.deletion_protection
  max_allocated_storage                 = var.max_allocated_storage
  tags = var.tags
  delete_automated_backups              = var.delete_automated_backups
}


