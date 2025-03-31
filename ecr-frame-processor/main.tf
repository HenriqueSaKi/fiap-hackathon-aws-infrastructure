resource "aws_ecr_repository" "ecr_frame_persistence" {
  name                 = "frame-persistence"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}