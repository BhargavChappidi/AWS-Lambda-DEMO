resource "aws_lambda_function" "this" {
  function_name    = var.project_name
  description      = "A simple Terraform-managed AWS Lambda function"
  role             = aws_iam_role.lambda.arn
  runtime          = var.lambda_runtime
  handler          = "lambda_function.lambda_handler"
  filename         = data.archive_file.lambda_package.output_path
  source_code_hash = data.archive_file.lambda_package.output_base64sha256
  timeout          = var.lambda_timeout

  depends_on = [aws_iam_role_policy_attachment.lambda_basic_execution]
}
