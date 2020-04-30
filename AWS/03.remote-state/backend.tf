terraform {
  backend "s3" {
     bucket = "karimfadl-tf-state"
     key    = "terraform/state" 
  }
}
