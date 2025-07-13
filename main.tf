terraform {
  backend "s3" {
    bucket = "terraform-state-santosh2244"   # your S3 bucket name
    key    = "ssm/terraform.tfstate"         # path for the state file inside the bucket
    region = "us-east-1"                      # your bucket region
  }
}


provider "aws" {
  region = "us-east-1"  # Change if needed
}

resource "aws_ssm_parameter" "example" {
  name  = "/my/parameter"
  type  = "String"
  value = "UpdatedByTerraform"
}
