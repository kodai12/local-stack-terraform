resource "aws_lambda_event_source_mapping" "local_mapping" {
  event_source_arn                   = var.kinesis_stream_arn
  function_name                      = aws_lambda_function.local_lambda.arn
  starting_position                  = "LATEST"
  maximum_retry_attempts             = 1
  batch_size                         = 100
  maximum_batching_window_in_seconds = 5
}

resource "aws_lambda_function" "local_lambda" {
  filename      = "/lambda/upload/lambda.zip"
  function_name = "local-lambda"
  role          = var.iam_role_arn
  handler       = "lambda"
  runtime       = "go1.x"
}
