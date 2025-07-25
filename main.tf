data "aws_partition" "this" {
  provider = aws.this
}

variable "bucket_name" {
  type = string
}

locals {
  bucket_arn = provider::aws::arn_build(data.aws_partition.this.partition, "s3", "", "", var.bucket_name)
}

terraform {
  required_version = "~> 1.8"
  required_providers {
    # tflint-ignore: terraform_unused_required_providers
    aws = {
      source                = "hashicorp/aws"
      version               = ">= 5.0"
      configuration_aliases = [aws.this]
    }
  }
}
