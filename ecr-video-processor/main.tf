resource "aws_ecr_repository" "ecr_video_processor" {
  name                 = "video-processor"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}