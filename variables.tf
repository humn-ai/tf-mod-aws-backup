# -----------------------------------------------------------------------------
# Variables: Common AWS Provider - Autoloaded from Terragrunt
# -----------------------------------------------------------------------------

variable "aws_region" {
  description = "The AWS region (e.g. ap-southeast-2). Autoloaded from region.tfvars."
  type        = string
  default     = ""
}

variable "aws_account_id" {
  description = "The AWS account id of the provider being deployed to (e.g. 12345678). Autoloaded from account.tfvars"
  type        = string
  default     = ""
}

variable "aws_assume_role_arn" {
  description = "(Optional) - ARN of the IAM role when optionally connecting to AWS via assumed role. Autoloaded from account.tfvars."
  type        = string
  default     = ""
}

# -----------------------------------------------------------------------------
# Variables: TF-MOD-AWS-BACKUP 
# -----------------------------------------------------------------------------

variable "kms_key_arn" {
  type        = string
  description = "The server-side encryption key that is used to protect your backups"
  default     = null
}

variable "schedule" {
  type        = string
  description = "A CRON expression specifying when AWS Backup initiates a backup job"
  default     = null
}

variable "start_window" {
  type        = number
  description = "The amount of time in minutes before beginning a backup. Minimum value is 60 minutes"
  default     = null
}

variable "completion_window" {
  type        = number
  description = "The amount of time AWS Backup attempts a backup before canceling the job and returning an error. Must be at least 60 minutes greater than `start_window`"
  default     = null
}

variable "cold_storage_after" {
  type        = number
  description = "Specifies the number of days after creation that a recovery point is moved to cold storage"
  default     = null
}

variable "delete_after" {
  type        = number
  description = "Specifies the number of days after creation that a recovery point is deleted. Must be 90 days greater than `cold_storage_after`"
  default     = null
}

variable "backup_resources" {
  type        = list(string)
  description = "An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to assign to a backup plan"
  default = []
}

variable "dynamodb_resources" {
  type        = list(string)
  description = "An array of strings that contains the name of the DynamoDB table without the environment prefix to assign to a backup plan"
  default = [
    "ActionsAppConfig",
    "CarPicture",
    "Driver",
    "EventSeverityConfig",
    "Fleet",
    "FleetOperator",
    "FollowUpAction",
    "FuelCost",
    "Lease",
    "LeaseMileage",
    "Policy",
    "PolicyType",
    "RfrAndComments",
    "Score",
    "ScoreFactors",
    "Trip",
    "TripEvent",
    "TripScore",
    "TripSummary",
    "Vehicle",
    "VehicleMOT",
    "Vin2IMEIMapping"
  ]
}

variable "destination_vault_arn" {
  type        = string
  description = "An Amazon Resource Name (ARN) that uniquely identifies the destination backup vault for the copied backup"
  default     = null
}

variable "copy_action_cold_storage_after" {
  type        = number
  description = "For copy operation, specifies the number of days after creation that a recovery point is moved to cold storage"
  default     = null
}

variable "copy_action_delete_after" {
  type        = number
  description = "For copy operation, specifies the number of days after creation that a recovery point is deleted. Must be 90 days greater than `copy_action_cold_storage_after`"
  default     = null
}
