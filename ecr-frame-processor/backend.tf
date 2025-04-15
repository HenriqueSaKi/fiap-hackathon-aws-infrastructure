terraform {
  backend "s3" {
    bucket = "fiap-hackathon-terraform-state-bucket"
    key    = "ecr-frame-persistence/terraform.tfstate"
    region = "us-east-1"
  }
}