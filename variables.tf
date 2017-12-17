
// Variables specific to module label
variable "attributes" {
  description = "Suffix name with additional attributes (policy, role, etc.)"
  type        = "list"
  default     = []
}
variable "delimiter" {
  description = "Delimiter to be used between `name`, `namespaces`, `attributes`, etc."
  type        = "string"
  default     = "-"
}
variable "environment" {
  description = "Environment (ex: dev, qa, stage, prod)"
  type        = "string"
}
variable "name" {
  description = "Base name for resource"
  type        = "string"
}
variable "namespace-env" {
  description = "Prefix name with the environment"
  default     = true
}
variable "namespace-org" {
  description = "Prefix name with the organization. If both env and org namespaces are used, format will be <org>-<env>-<name>"
  default     = false
}
variable "organization" {
  description = "Organization name"
  type        = "string"
  default     = ""
}
variable "tags" {
  description = "A map of additional tags to add"
  type        = "map"
  default     = {}
}

// Module specific Variables
variable "enabled" {
  description = "Set to false to prevent the module from creating anything"
  default     = true
}
variable "version" {
  description = "Elasticsearch Version"
  default     = "5.5"
}
variable "instance_type" {
  description = "Instance type for Elastic Search cluster data nodes"
  default     = "r3.large.elasticsearch"
}
