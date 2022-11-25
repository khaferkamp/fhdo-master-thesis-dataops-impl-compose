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