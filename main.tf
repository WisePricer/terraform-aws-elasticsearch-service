#
# Setup AWS Elasticsearch service
#
# https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain.html
# https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain_policy.html

resource "aws_elasticsearch_domain" "this" {
  domain_name = "${var.namespaced ? format("%s-%s", var.environment, var.name) : format("%s", var.name)}"
  elasticsearch_version = "${var.version}"
  cluster_config {
    instance_type = "${var.instance_type}"
    # instance_count, dedicated_master_enabled, dedicated_master_type,
    # dedicated_master_count, zone_awareness_enabled
  }

  advanced_options {
    "rest.action.multi.allow_explicit_index" = "true"
  }
  # ebs_options
  #   ebs_enabled, volume_type, volume_size, iops
  # vpc_options
  #   security_group_ids, subnet_ids

  snapshot_options {
    automated_snapshot_start_hour = 23
  }

  tags = "${ merge(
    var.tags,
    map("Name", var.namespaced ?
     format("%s-%s", var.environment, var.name) :
     format("%s", var.name) ),
    map("Environment", var.environment),
    map("Terraform", "true") )}"
}

/*
# Define or retrieve IAM Policy?
resource "aws_iam_policy" "" {
  name        = ""
  path        = ""
  description = ""
  policy  = ""
}
# return: id, arn, description, name, path, policy
#access_policies = "${aws_iam_policy..policy}"

data "aws_iam_policy_document" "es_management_access" {
}
*/
resource "aws_elasticsearch_domain_policy" "this" {
  domain_name = "${aws_elasticsearch_domain.this.domain_name}"
  #access_policies = "${data.aws_iam_policy_document.es_management_access.json}"

  access_policies = <<POLICIES
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "es:*",
            "Principal": "*",
            "Effect": "Allow",
            "Condition": {
                "IpAddress": {"aws:SourceIp": "127.0.0.1/32"}
            },
            "Resource": "${aws_elasticsearch_domain.this.arn}"
        }
    ]
}
POLICIES
}
