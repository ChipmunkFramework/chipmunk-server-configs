terraform {
    required_version = ">= 0.8, < 0.11"
}

resource "aws_lambda_function" "transcode-video" {
    function_name = "demo_lambda"
    handler = "index.handler"
    runtime = "nodejs4.3"
    filename = "function.zip"
    source_code_hash = "${base64sha256(file("function.zip"))}"
}