resource "aws_ecr_repository" "ecr_video_api" {
  name                 = "video-api"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}