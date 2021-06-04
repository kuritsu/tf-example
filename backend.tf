terraform {
  backend "s3" {
    region = "us-west-2"
    bucket = "tf-t328510558004"
    key    = "tf-example"
  }
}
