terraform {
  backend "s3" {
    bucket = "fiap-hackathon-fase-5-terraform-state-bucket"
    key    = "ecr-video-processor/terraform.tfstate"
    region = "us-east-1"
  }
}