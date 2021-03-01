# must use ROOT Account to demostrate the following
aws configure --profile root-mfa-delete

# enable mfa delete
aws s3api put-bucket-versioning --bucket mfa-demo-sami-2021 --versioning-configuration status=Enabled,MFADelete=Enables
 --mfa "arn-of-mfa-device mfa-code" --profile root-mfa-delete

# disable mfa delete
aws s3api put-bucket-versioning --bucket mfa-demo-sami-2021 --versioning-configuration status=Enabled,MFADelete=Disabled
 --mfa "arn-of-mfa-device mfa-code" --profile root-mfa-delete
