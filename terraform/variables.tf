variable "env" {
  description = "Environment of deployment"
  type        = string
  default     = "test"
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
  default     = "saved-files-7777"
}

variable "service_name" {
  description = "Service name"
  type        = string
  default     = "copy_life_to_s3"
}
