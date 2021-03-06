data "template_file" "prod_buildspec" {
  template = "${file("${path.module}/templates/buildspec.yml")}"

  vars = {
    app_name         = "${var.app_name}"
    stage            = "${var.git_repository_branch}"
    bucket_name      = "${var.bucket_name}"
    distribution_id  = "${var.cloudfront_distribution_id}"
    sub_build_folder = "${var.sub_build_folder}"
  }
}

resource "aws_codebuild_project" "prod_app_build" {

  name          = "${var.app_name}-${var.git_repository_branch}-codebuild"
  build_timeout = "80"
  service_role  = aws_iam_role.codebuild_role.arn

  artifacts {
    type = "CODEPIPELINE"
  }

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    // https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-available.html
    image           = "aws/codebuild/amazonlinux2-x86_64-standard:3.0"
    type            = "LINUX_CONTAINER"
    privileged_mode = true
  }

  source {
    type      = "CODEPIPELINE"
    buildspec = data.template_file.prod_buildspec.rendered
  }

  cache {
    type  = "LOCAL"
    modes = ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE"]
  }
}

resource "aws_s3_bucket" "source" {
  bucket        = "${var.app_name}-${var.git_repository_branch}-pipeline"
  acl           = "private"
  force_destroy = true
}
