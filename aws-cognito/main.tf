resource "aws_cognito_user_pool" "userpool" {
  name = "fiap-userpool"

  schema {
    name = "Email"
    attribute_data_type = "String"
    mutable = true
    developer_only_attribute = false
  }

  email_configuration {
    email_sending_account = "COGNITO_DEFAULT"
  }

  auto_verified_attributes = ["email"]

  password_policy {
    minimum_length = 6
    require_lowercase = true
    require_numbers = true
    require_symbols = true
    require_uppercase = true
  }

  username_attributes = ["email"]
  username_configuration {
    case_sensitive = true
  }

  account_recovery_setting {
    recovery_mechanism {
      name = "verified_email"
      priority = 1
    }
  }

}

resource "aws_cognito_user_pool_client" "userpool_client" {
  name = "fiap-userpool-client"
  user_pool_id = aws_cognito_user_pool.userpool.id
  supported_identity_providers = ["COGNITO"]
  explicit_auth_flows = ["ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_PASSWORD_AUTH"]
  generate_secret = true
  prevent_user_existence_errors = "LEGACY"
  refresh_token_validity = 1
  access_token_validity = 1
  id_token_validity = 1

  allowed_oauth_flows_user_pool_client = true
  allowed_oauth_flows                  = ["code"]
  allowed_oauth_scopes                 = ["openid", "email", "profile"]

  callback_urls = [
    "https://oauth.pstmn.io/v1/callback"
  ]
  
  token_validity_units {
    access_token = "hours"
    id_token = "hours"
    refresh_token = "hours"    
  }
}

resource "aws_cognito_user_pool_domain" "userpool_domain" {
  domain       = "fiap-userpool-domain" # must be unique in AWS region
  user_pool_id = aws_cognito_user_pool.userpool.id
}