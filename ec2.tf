provider "aws" {
      region = "us-east-2"
}
resource "aws_instance" "app" {
    ami           = "ami-0beaa649c482330f7"
    instance_type = "t3.micro"
    key_name      =  "kops"
    tags = {
        Name = " tomcat-CI"
        Environment = "dev"
  }  
}
