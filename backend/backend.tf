resource "aws_s3_bucket" "caryak-s3-tf-state" {
  bucket = "caryak-s3-tf-state"
  tags = {
    "Name" = "caryak-s3-tf-state"
  }
}

resource "aws_dynamodb_table" "caryak-ddb-tf-lock" {
  depends_on = [aws_s3_bucket.caryak-s3-tf-state]
  name = "caryak-ddb-tf-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    "Name" = "caryak-ddb-tf-lock"
  }
}