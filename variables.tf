// Standard Variables

variable "name" {
  description = "Name for the Elasticsearch cluster"
}
variable "environment" {
  description = "Environment (ex: dev, qa, stage, prod)"
}
variable "namespaced" {
  description = "Namespace all resources (prefixed with the environment)?"
  default     = true
}
variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}

// Module specific Variables
variable "version" {
  description = "Elasticsearch Version"
  default     = "5.5"
}
variable "instance_type" {
  description = "Instance type for Elastic Search cluster data nodes"
  default     = "r3.large.elasticsearch"
}
