resource "aws_s3_bucket" "b" {
    bucket = "karimlabs-c29df1"
    acl = "private"

    tags = {
        Name = "karimlabs-c29df1"
    }
}
