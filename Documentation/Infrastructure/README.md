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
## AWS deployment we use three service from aws
> 1- RDB --> to create database instance
             configure & create RDS on aws console
             rds link: database-1.cgoepocdldxc.us-east-1.rds.amazonaws.com

> 2- Elastic beanstalk --> to deploy backend source code &
                           create base url of app through aws cli and eb cli
                           through these commands
$ aws configure --> to set IAM user credentials
$ eb init --> to create .elasticbeanstalk folder with config.yml 
               && create application on elastic beanstalk
$ eb create --> to create inviroment on elasticbeanstalk
$ eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_PORT=$POSTGRES_PORT POSTGRES_HOST=$POSTGRES_HOST POSTGRES_DB=$POSTGRES_DB JWT_SECRET=$JWT_SECRET --> to set invirement variable
$ npm run build
$ eb deploy
finaly we get api base url ==>  
            udagram-api-production.us-east-1.elasticbeanstalk.com

> 2- S3 bucket --> configure & create S3 bucket on aws console and then run this command to upload front-end code resource
$ aws s3 cp --recursive --acl public-read ./www s3://udagram-frontend-bucket/
finaly we get front-end url ==>  
                       http://udagram-frontend-bucket.s3-website-us-east-1.amazonaws.com/


after these steps done we go forward in  circle ci process and create profile with github acess
then create config.yml in .circleci folder in root app folder

in this folder we can see also:
## AWS architecture diagram
## screen shots of instace create on aws services