## Run udagram app

## AWS deployment
> - RDB
## database-1.cgoepocdldxc.us-east-1.rds.amazonaws.com
> - Elastic beanstalk
$ aws configure --> to set IAM user credentials
$ eb init --> to create .elasticbeanstalk folder with config.yml && create application on elastic beanstalk
$ eb create --> to create inviroment on elasticbeanstalk
$ eb setenv POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=12345678 POSTGRES_PORT=5432 POSTGRES_HOST=database-1.cgoepocdldxc.us-east-1.rds.amazonaws.com POSTGRES_DB=postgres AWS_BUCKET="" AWS_REGION=us-east-1 AWS_PROFILE="" JWT_SECRET=mysecretstring URL=http://localhost:4200  --> to set invirement variable
$ npm run build
$ eb deploy
eb init udagram-api --region us-east-1 --platform node.js
<!-- sg-05f531b8657617a16 -->
## udagram-api-production.us-east-1.elasticbeanstalk.com
> - S3 bucket
aws s3 cp --recursive --acl public-read ./www s3://udagram-frontend-bucket/

## http://udagram-frontend-bucket.s3-website-us-east-1.amazonaws.com/home

## AWS architecture diagram
## screen shots of instace create on aws services