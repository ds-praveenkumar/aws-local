# Local aws

# Objective 
Setup a aws s3 server using 
- docker 
- [minio](https://docs.min.io/docs/minio-docker-quickstart-guide.html)
- terraform 

# Instructions
```
git pull https://github.com/ds-praveenkumar/aws-local.git
cd aws-local
mkdir data

```
Docker
```
docker build minio:latest

docker run -p 9000:9000 \
  -v ${PWD}/data:/data \
  -e "MINIO_ROOT_USER=user" \
  -e "MINIO_ROOT_PASSWORD=testapp123" \
  minio:latest server /data
```

Terraform
```
cd IAC/
terraform init
terraform apply
```

Test 
```
https://localhost:4566/

```

# Test setup
`terraform apply`</br>

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

   aws_s3_bucket.b will be created
  + resource "aws_s3_bucket" "b" {
      + acceleration_status         = (known after apply)
      + acl                         = "public-read-write"
      + arn                         = (known after apply)
      + bucket                      = "demo-bucket-terraform"
      + bucket_domain_name          = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags_all                    = (known after apply)
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + versioning {
          + enabled    = (known after apply)
          + mfa_delete = (known after apply)
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_s3_bucket.b: Creating...
aws_s3_bucket.b: Still creating... [10s elapsed]
