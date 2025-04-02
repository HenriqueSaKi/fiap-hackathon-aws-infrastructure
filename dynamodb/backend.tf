terraform {
  backend "s3" {
    bucket         = "fiap-hackathon-fase-5-terraform-state-bucket"
    key            = "dynamodb/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
