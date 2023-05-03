variable "location" {
  description = "Variable that indicates where the resources will be created"
  type        = string
  default     = "East US"
}

variable "aws_pub_key" {
  description = "Public key para VM na AWS"
  type        = string
}

variable "azure_pub_key" {
  description = "Public key para VM na Azure"
  type        = string
}