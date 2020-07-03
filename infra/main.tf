provider "aws" {
  region  = var.region
  profile = var.profile
  version = "~> 2.68"
}

module "site" {
  source         = "./modules/site"
  region         = var.region
  domain         = var.domain
  zone_id        = var.zone_id
  subdomain      = var.subdomain
  s3_bucket_name = "${var.namespace}-${var.app_name}"
  profile        = var.profile
}

module "pipeline" {
  source                     = "./modules/pipeline"
  region                     = var.region
  bucket_name                = module.site.bucket_name
  cloudfront_distribution_id = module.site.cloudfront_distribution_id
  app_name                   = var.app_name
  git_repository_owner       = var.github_owner
  git_repository_name        = var.github_repo
  git_repository_branch      = var.github_branch
  github_token               = var.github_token
  profile                    = var.profile
}
