terraform {
  backend "s3" {
    bucket = "fiap-hackathon-fase-5-terraform-state-bucket"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}