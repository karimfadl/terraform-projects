variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "us-east-2"
}
variable "AMIS" {
  type = map
  default = {
   us-east-2 = "ami-07c1207a9d40bc3bd"
   us-west-2 = "ami-003634241a8fcdec0"
   eu-west-1 = "ami-0701e7be9b2a77600"
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "./keys/mykey"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "./keys/mykey.pub"
}
variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}
variable "INSTANCE_DEVICE_NAME" {
  default = "/dev/xvdh"
}
variable "JENKINS_VERSION" {
  default = "2.73.2"
}
variable "ECS_INSTANCE_TYPE" {
  default = "t2.micro"
}
variable "ECS_AMIS" {
  type = map
  default = {
    us-east-2 = "ami-008c5ba1857e0fdec"
    us-east-1 = "ami-09edd32d9b0990d49"
    us-west-1 = "ami-02649d71054b25d22"
  }
}
# Full List: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html

