backend "s3" {
    bucket = "roboshop-infra-remotestate-prod"  
    key    = "user-deploy"  
    region = "us-east-1"
    dynamodb_table = "roboshop-infra-remotelock-prod" 
  }