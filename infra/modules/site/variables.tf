# -----------------------------------------------------------------------------
# Variables: Global
# -----------------------------------------------------------------------------

variable "region" {}

variable "zone_id" {}

variable "profile" {
  description = "AWS Profile used for this deployment"
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

variable "cache_default_ttl" {
  description = "Cloudfront's cache default time to live."
  default     = 3600
}

variable "cache_max_ttl" {
  description = "Cloudfront's cache maximun time to live."
  default     = 86400
}

# -----------------------------------------------------------------------------
# Variables: Route 53
# -----------------------------------------------------------------------------

variable "enable_route53" {
  type        = bool
  description = "If True a route53 will be created"
  default     = false
}

# -----------------------------------------------------------------------------
# Variables: S3
# -----------------------------------------------------------------------------

variable "s3_bucket_name" {
  description = "The AWS S3 bucket name."
}
