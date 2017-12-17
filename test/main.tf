module "es" {
  source          = "../"
  name            = "es-svc"
  environment     = "testing"
  organization    = ""
  #attributes      = ["role", "policy", "use", ""]
  #tags            = "${map("Key", "Value")}"
  #enabled         = false
}
