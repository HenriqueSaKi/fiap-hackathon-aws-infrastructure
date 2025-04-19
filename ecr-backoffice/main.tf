resource "aws_ecr_repository" "ecr_backoffice" {
  name                 = "backoffice"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}