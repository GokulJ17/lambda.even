# Output for the Lambda function
output "function_name" {
  value = aws_lambda_function.function.function_name
}

output "arn" {
  value = aws_lambda_function.function.arn
}

# For backward compatibility with EventBridge module
output "stop_function_name" {
  value = var.handler == "stop.lambda_handler" ? aws_lambda_function.function.function_name : null
}

output "stop_arn" {
  value = var.handler == "stop.lambda_handler" ? aws_lambda_function.function.arn : null
}

