provider "aws" {
  region = "us-east-1"  # Change if needed
}

resource "aws_ssm_parameter" "example" {
  name  = "/my/parameter"
  type  = "String"
  value = "HelloFromCodePipeline"
  overwrite = true
}
