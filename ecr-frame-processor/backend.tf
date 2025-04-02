terraform {
  backend "s3" {
    bucket = "fiap-hackathon-fase-5-terraform-state-bucket"
    key    = "ecr-frame-persistence/terraform.tfstate"
    region = "us-east-1"
  }
}