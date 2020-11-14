locals {
  env            = get_env("TF_VAR_env", "development")
  is_development = local.env == "development"
  is_staging     = local.env == "staging"
  is_production  = local.env == "production"

  default_region = get_env("AWS_DEFAULT_REGION", "ap-northeast-1")
}

remote_state {
  backend = "local"
  config = {}
}

terraform {
  before_hook "before_plan_or_apply" {
    commands = ["plan", "apply"]
    execute  = ["terragrunt", "init", "-reconfigure"]
  }
}

inputs = {
  env              = local.env
  short_syntax_env = local.is_development ? "dev" : (local.is_staging ? "stg" : "prod")
  default_region = local.default_region
  is_development   = local.is_development
  is_staging       = local.is_staging
  is_production    = local.is_production
}