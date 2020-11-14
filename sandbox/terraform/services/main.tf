terraform {
  backend "local" {}
}

provider "aws" {
  region = "ap-northeast-1"

  access_key = "mock_access_key"
  secret_key = "mock_secret_key"

  s3_force_path_style         = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    iam     = "http://host.docker.internal:4566"
    kinesis = "http://host.docker.internal:4566"
    lambda  = "http://host.docker.internal:4566"
    s3      = "http://host.docker.internal:4566"
  }
}

module "iam" {
  source = "./iam"
}

module "kinesis" {
  source = "./kinesis"
}

module "lambda" {
  source             = "./lambda"
  kinesis_stream_arn = module.kinesis.kinesis_stream_arn
  iam_role_arn       = module.iam.iam_role_arn
}

module "s3" {
  source = "./s3"
}