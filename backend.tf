terraform {


   backend "s3" {
     bucket = "wasimsam-sam-s3"  # mention the bucket name 
     key = "wasim/terraform.tfstate" # it'll store the state file in s3 bucket under wasim folder 
     region = "ca-central-1"
     encrypt = true
     dynamodb_table = "terraform-lock" # created dynamodb table name


}




}
