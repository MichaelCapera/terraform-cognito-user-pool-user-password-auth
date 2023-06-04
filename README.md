# Commands

# Configurations

# Create AWS account env vars in windows 

$env:AWS_ACCESS_KEY_ID="id"
$env:AWS_SECRET_ACCESS_KEY="key"

# Get env vars

Get-ChildItem Env:

# Initialize terraform in the project

terraform init

# Validate terraform file syntax

terraform validate

# Validate terraform plan 

terraform plan

# Deploy instance

terraform apply

# Plan with vars

terraform plan -var-file dev.tfvars

# Apply with vars

terraform apply -var-file dev.tfvars -auto-approve

# Create cognito user with AWS CLI

aws cognito-idp sign-up \
 --client-id ${CLIENT_ID} \
 --username ${USER_NAME} \
 --password ${PASSWORD} \
 --user-attributes Name=name,Value=${NAME} Name=email,Value=${EMAIL}

aws cognito-idp sign-up 
--client-id ""  
--username "" 
--password ""
--user-attributes Name=name,Value="" Name=email,Value=""

 # Activate user without email verification with AWS CLI

 aws cognito-idp admin-confirm-sign-up  \
  --user-pool-id ${USER_POOL_ID} \
  --username ${USER_NAME}

aws cognito-idp admin-confirm-sign-up 
--user-pool-id "" 
--username "" 

# Verify user status with AWS CLI

aws cognito-idp admin-get-user \
  --user-pool-id ${USER_POOL_ID} \
  --username ${USER_NAME}