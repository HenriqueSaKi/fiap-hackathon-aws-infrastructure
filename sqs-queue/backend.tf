terraform {
  backend "s3" {
    region         = "us-east-1"
    bucket         = "fiap-hackathon-terraform-state-bucket"
    key            = "sqs/terraform.tfstate"
    encrypt        = true
  }
}
