## Run udagram app
in root folder of udagram app 
we can install dependencesies & run app commands
-Install API Dependencies
    npm run api:install
- Front-End Lint
    npm run frontend:lint
-Front-End Build
     npm run frontend:build
- API Build
    npm run api:build
## AWS deployment
> - RDB --> configure & create RDS on aws console
            database-1.cgoepocdldxc.us-east-1.rds.amazonaws.com
> - Elastic beanstalk
$ aws configure --> to set IAM user credentials
$ eb init --> to create .elasticbeanstalk folder with config.yml &&     create application on elastic beanstalk
$ eb create --> to create inviroment on elasticbeanstalk
$ eb setenv POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=12345678 POSTGRES_PORT=5432 POSTGRES_HOST=database-1.cgoepocdldxc.us-east-1.rds.amazonaws.com POSTGRES_DB=postgres AWS_BUCKET="" AWS_REGION=us-east-1 AWS_PROFILE="" JWT_SECRET=mysecretstring URL=http://localhost:4200  --> to set invirement variable
$ npm run build
$ eb deploy
finaly we get api base url ==>  
            udagram-api-production.us-east-1.elasticbeanstalk.com
> - S3 bucket --> configure & create S3 bucket on aws console and then run this command to upload front-end code resource
$ aws s3 cp --recursive --acl public-read ./www s3://udagram-frontend-bucket/
finaly we get front-end url ==>  
                       http://udagram-frontend-bucket.s3-website-us-east-1.amazonaws.com/

in this folder we can see also:
## AWS architecture diagram
## screen shots of instace create on aws services