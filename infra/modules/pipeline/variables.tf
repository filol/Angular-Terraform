# -----------------------------------------------------------------------------
# Variables: AWS/General
# -----------------------------------------------------------------------------

variable "profile" {
  description = "AWS Profile used for this deployment"
}

variable "app_name" {
  description = "Website project name"
}

variable "region" {}

# -----------------------------------------------------------------------------
# Variables: Github
# -----------------------------------------------------------------------------

variable "git_repository_owner" {
  description = "Github Repository Owner"
}

variable "git_repository_name" {
  description = "Project name on Github"
}

variable "git_repository_branch" {
  description = "Github Project Branch"
}

variable "github_token" {
  type        = string
  description = "Github OAuth token"
}

# -----------------------------------------------------------------------------
# Variables: CloudFront
# -----------------------------------------------------------------------------

variable "cloudfront_distribution_id" {
  description = "id of your cloudfront distribution"
}

# -----------------------------------------------------------------------------
# Variables: S3
# -----------------------------------------------------------------------------

variable "bucket_name" {
  description = "Name of your deploy bucket"
}

# -----------------------------------------------------------------------------
# Variables: CodeBuild
# -----------------------------------------------------------------------------

variable "sub_build_folder" {
  type        = string
  description = "Name of the sub folder inside the build folder"
  default     = "angular-app"
}
