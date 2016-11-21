require "refile/s3"
require "refile/simple_form"

aws = {
  access_key_id: Rails.application.secrets.aws_access_key,
  secret_access_key: Rails.application.secrets.aws_secret_key,
  region: "us-east-1",
  bucket: Rails.application.secrets.aws_s3_bucket
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)

