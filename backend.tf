terraform {
  backend "s3" {
    region = "us-west-2"
    bucket = "tf-925404979403"
    key    = "tf-example"
  }
}
