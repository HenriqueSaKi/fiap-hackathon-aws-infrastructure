resource "aws_sqs_queue" "sqs_fiap_hackathon" {
  name                      = "SQS-FIAP-Hackathon"
  message_retention_seconds = 600
  fifo_queue = false
  sqs_managed_sse_enabled = false
}
