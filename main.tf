provider "aws" {
   region = "ca-central-1"
}


resource "aws_instance" "wassam" {
      instance_type = "t2.micro"
      ami = "ami-055943271915205db"
      
}

resource "aws_s3_bucket" "s3_bucket" {
      bucket = "wasimsam-sam-s3"   # should be unique, name of your s3 bucket
}

resource "aws_dynamodb_table" "terraform_lock" {
        name = "terraform-lock"
        billing_mode = "PAY_PER_REQUEST"
        hash_key = "LockID"
      
       attribute {
         name = "LockID"
         type = "S"

}
      
}
