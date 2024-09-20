## Serverless Lambda Function with Rust, Docker, and Terraform.

### Starting the Project:
```
$ cargo new lambda-hello && cd lambda-hello
```

### How to Build the image:
```
$ docker build -t lambda-hello .
```

### How to Build the image on a Mac:
```
$ docker buildx build --platform=linux/amd64 -t lambda-hello .
```

### How to Upload the image:
```
$ aws ecr create-repository --repository-name lambda-hello
$ aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <YOUR-ACCOUNT-ID>.dkr.ecr.us-east-1.amazonaws.com

$ docker tag lambda-hello:latest <YOUR-ACCOUNT-ID>.dkr.ecr.us-east-1.amazonaws.com/lambda-hello:latest
$ docker push <YOUR-ACCOUNT-ID>.dkr.ecr.us-east-1.amazonaws.com/lambda-hello:latest
```

### Deploy the infrastructure:
```
$ terraform init
$ terraform apply
```

### Invoke the Function with AWS CLI:
```
$ aws lambda invoke --function-name rust_hello --cli-binary-format raw-in-base64-out --payload '{"firstName":"Rod"}' response.json

$ cat response.json
{"message":"Hello, Rod!"}
```