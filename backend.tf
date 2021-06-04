terraform {
  backend "s3" {
    region = "us-west-2"
    bucket = "tf-702640455637"
    key    = "tf-example"
  }
}
