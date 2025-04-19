terraform {
  backend "s3" {
    bucket = "fiap-hackathon-terraform-state-bucket"
    key    = "ecr-video-api/terraform.tfstate"
    region = "us-east-1"
  }
}