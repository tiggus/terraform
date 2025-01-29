resource "aws_dynamodb_table" "tf-state-lock" {
  name           = "terraform-state-lock"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
  tags = merge(
    var.default_tags,
    {
      owner = "terraform-backend"
    }
  )
}
