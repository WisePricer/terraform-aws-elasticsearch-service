Terraform module for AWS Elastic search service
===

```hcl
module "es" {
  source          = "devops-workflow/elasticsearch-service/aws"
  name            = "es-svc"
  environment     = "testing"
}
```
