provider "aws" {
  region = "us-west-2"
}

terraform {


  backend "s3"{
      bucket         = "341433836158-sandbox-terraform-state"
      key            = "sandbox/CircleCI/terraform.tfstate"
      dynamodb_table = "341433836158-sandbox-terraform-lock"
      region         = "us-west-2"  
      }
}
