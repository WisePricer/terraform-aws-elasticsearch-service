

output "arn" {
  description = "ARN of Elasticsearch Domain"
  value       = "${aws_elasticsearch_domain.this.arn}"
}
output "availability_zones" {
  description = "Availability Zones of Elasticsearch Domain"
  value       = "${aws_elasticsearch_domain.this.vpc_options.0.availability_zones}"
}
output "endpoint" {
  description = "Endpoint of Elasticsearch Domain"
  value       = "${aws_elasticsearch_domain.this.endpoint}"
}
output "domain_id" {
  description = "ID of Elasticsearch Domain"
  value       = "${aws_elasticsearch_domain.this.domain_id}"
}
output "domain_name" {
  description = "Name of Elasticsearch Domain"
  value       = "${aws_elasticsearch_domain.this.domain_name}"
}
output "vpc_id" {
  description = "VPC ID of Elasticsearch Domain"
  value       = "${aws_elasticsearch_domain.this.vpc_options.0.vpc_id}"
}
