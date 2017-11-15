

output "es_domain_arn" {
  description = "ARN of Elasticsearch Domain"
  value       = "${aws_elasticsearch_domain.this.arn}"
}
output "es_domain_availability_zones" {
  description = "Availability Zones of Elasticsearch Domain"
  value       = "${aws_elasticsearch_domain.this.vpc_options.0.availability_zones}"
}
output "es_domain_endpoint" {
  description = "Endpoint of Elasticsearch Domain"
  value       = "${aws_elasticsearch_domain.this.endpoint}"
}
output "es_domain_id" {
  description = "ID of Elasticsearch Domain"
  value       = "${aws_elasticsearch_domain.this.domain_id}"
}
output "es_domain_name" {
  description = "Name of Elasticsearch Domain"
  value       = "${aws_elasticsearch_domain.this.domain_name}"
}
output "es_domain_vpc_id" {
  description = "VPC ID of Elasticsearch Domain"
  value       = "${aws_elasticsearch_domain.this.vpc_options.0.vpc_id}"
}
