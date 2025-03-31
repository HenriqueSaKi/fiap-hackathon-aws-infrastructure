resource "aws_dynamodb_table" "table_video_status" {
  name           = "FIAP-Hackathon-Video-Status"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "idProcessamento"

  attribute {
    name = "idProcessamento"
    type = "S"
  }

  tags = {
    Environment = "development"
    Project     = "FIAP-Hackathon-Video-Processor"
  }
}