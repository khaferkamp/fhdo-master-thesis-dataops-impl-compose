variable "do_token" {}
variable "pvt_key" {}
variable "aws_profile" {}

variable "domain" {
  type        = string
  default     = ""
  description = "The name of the default domain"
}

variable "project" {
  type        = string
  default     = ""
  description = "The name of the DigitalOcean project"
}

variable "region" {
  type        = string
  default     = "fra1"
  description = "The region for the DigitalOcean resources"
}

variable "spaces_endpoint" {
  type        = string
  default     = ""
  description = "The endpoint for the DigitalOcean spaces"
}

variable "spaces_access_key" {
  type        = string
  default     = ""
  description = "The acces key for the DigitalOcean spaces"
}

variable "spaces_secret_key" {
  type        = string
  default     = ""
  description = "The secret key for the DigitalOcean spaces"
}

variable "droplet_aio_size" {
  type        = string
  default     = ""
  description = "Size of the droplet specification for the all-in-one prototype"
}

variable "container_registry_tier" {
  type        = string
  default     = ""
  description = "Size of the droplet specification for the all-in-one prototype"
}