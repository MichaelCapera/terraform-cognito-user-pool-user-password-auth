resource "aws_cognito_user_pool_client" "client1" {
  name = "client1"

  user_pool_id = aws_cognito_user_pool.pool1.id

  explicit_auth_flows = ["USER_PASSWORD_AUTH"]
}

resource "aws_cognito_user_pool" "pool1" {
  name = "pool1"
}