mock_provider "aws" {
  alias = "mock"
}

# This test is pretty useless because mocking aws_iam_policy_document data source defeats the purpose.
run "default" {
  providers = {
    aws.this = aws.mock
  }

  variables {
    bucket_name = "foo"
  }
}
