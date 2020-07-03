# -----------------------------------------------------------------------------
# Variables: AWS/General
# -----------------------------------------------------------------------------

variable "profile" {
  description = "AWS Profile used for this deployment"
}

variable "namespace" {
  description = "AWS resource namespace/prefix"
}

variable "region" {
  description = "AWS region"
}

variable "app_name" {
  description = "Resource name for billing purposes"
}

# -----------------------------------------------------------------------------
# Variables: CodePipeline
# -----------------------------------------------------------------------------
variable "github_token" {
  type        = string
  description = "Github OAuth token"
}

variable "github_owner" {
  type        = string
  description = "Github username"
}

variable "github_repo" {
  type        = string
  description = "Github repository name"
}

variable "github_branch" {
  type        = string
  description = "Github branch"
}

variable "poll_source_changes" {
  type        = string
  default     = "false"
  description = "Periodically check the location of your source content and run the pipeline if changes are detected"
}

variable "zone_id" {
  description = "The ID of the hosted zone to contain this record. Not required if you don't activate Route53"
}

# -----------------------------------------------------------------------------
# Variables: Cloudfront
# -----------------------------------------------------------------------------
variable "domain" {
  description = "The domain to be used."
}

variable "subdomain" {
  description = "The subdomain to be used."
}
