terraform {
  backend "s3" {
    bucket = "demo-k8-state-bucket"
    key    = "tfstate"
    region = "us-east-2"
  }
}
