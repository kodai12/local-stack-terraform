resource "aws_kinesis_stream" "local_stream" {
  name             = "local-stream"
  shard_count      = 1
  retention_period = 168
}
