provider "aws" {
  alias   = "acm"
  region  = "us-east-1" # Because ACM required to be in Virginia with CloudFront
  profile = var.profile
  version = "~> 2.68"
}
