resource "aws_ecr_repository" "ecr_video_frame" {
  name                 = "video-frame"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}