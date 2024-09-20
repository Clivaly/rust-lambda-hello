variable "ACCOUNT_ID" {
  type        = string
  default     = "000000000000"
  description = "Use a valid AWS account ID"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "image_uri" {
  type        = string
  default     = "<YOUR-ACCOUNT-ID>.dkr.ecr.us-east-1.amazonaws.com/lambda-hello:latest"
  description = "Use a valid AWS account ID"
}