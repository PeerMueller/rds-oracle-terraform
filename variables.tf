variable "db_identifier" {
  description = "DB identifier"
}

variable "db_engine" {
  description = "DB engine"
  default     = "oracle-se2"
}

variable "db_engine_version" {
  description = "DB engine version"
  default     = "19.0.0.0.ru-2025-01.rur-2025-01.r2"
}

variable "db_allocated_storage" {
  description = "DB storage"
  default = "150"
}

variable "db_backup_retention" {
  description = "DB backup retention"
  default     = "7"
} 

variable "db_license_model" {
  description = "DB license model"
  default     = "license-included"
}

variable "db_instance_class" {
  description = "DB instance size"
  default     = "db.m5.large"
}


variable "db_character_set_name" {
  description = "DB character set"
  default     = ""
}

variable "manage_master_user_password" {
  description = "DB admin user password managed by secrets manager"
  default     = "true"
}

variable "username" {
  description = "DB port"
  default     = "admin"
}

variable "db_password" {
  description = "Password for the master user"
  type        = string
}

variable "db_port" {
  description = "DB port"
  default     = "1521"
}

variable "db_subnet_group" {
  description = "DB subnet group"
  default     = ""
}

variable "db_param_group" {
  description = "DB parameter group"
  default     = ""
}

variable "db_option_group" {
  description = "DB option group"
  default     = ""
}

variable "db_snapshot" {
  description = "db snapshot"
  default     = ""
}


variable "db_storage_type" {
  description = "DB storage type"
  default     = "gp3"
}

variable "copy_tags_to_snapshot" {
  description = "Copy tags to the snapshot"
  default     = "true"
}

variable "db_backup_window" {
  description = "DB backup window"
  default     = "22:00-23:59"
}

variable "db_maintenance_window" {
  description = "DB maintenance window"
  default     = "Thu:00:00-Thu:04:00"
}

variable "db_multi_az" {
  description = "DB multi-az"
  default     = "false"
}


variable "kms_key_id" {
  description = "KMS Key ID"
  default     = ""
}

variable "db_apply_mods_immediate" {
  description = "Apply modifications immediately"
  default     = "true"
}

variable "db_minor_upgrades" {
  description = "DB minor upgardes"
  default     = "false"
}

variable "db_major_upgrades" {
  description = "DB major upgrades"
  default     = "true"
}


variable "db_vpc_security_group" {
  description = "DB VPC group"
  type = list(string)
  default     = [""]
}

variable "skip_final_snapshot" {
  description = "Skip the final snapshot on RDS deletion false to create a final snapshot"
  default     = "true"
}

variable "monitoring_interval" {
  description = "Monitoring interval"
  default     = "0"
}

variable "monitoring_role_arn" {
  description = "Monitoring Role"
  default     = ""
}


variable "performance_insights_enabled" {
  description = "Perfomance insights enabled"
  default     = "true"
}

variable "performance_insights_retention_period" {
  description = "performance_insights_retention_period"
  default     = "7"
}

variable "deletion_protection" {
  description = "deletion_protection"
  default     = "false"
}

variable "max_allocated_storage" {
  description = "Max allocated storage"
  default     = "0"
}

variable "tags" {
  type    = any
  default = {}
}


variable "delete_automated_backups"  {
  description = "Specifies whether to remove automated backups immediately after the DB instance is deleted"
  type        = bool
  default     = "false"
}

