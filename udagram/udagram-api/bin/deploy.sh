

# aws configure --profile ${AWS_PROFILE} set aws_access_key_id ${AWS_ACCESS_KEY_ID}
# aws configure --profile ${AWS_PROFILE} set aws_secret_access_key ${AWS_SECRET_ACCESS_KEY}
# aws configure --profile staging set region eu-west-2
# eb setenv POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=12345678 POSTGRES_PORT=5432 POSTGRES_HOST=database-1.cgoepocdldxc.us-east-1.rds.amazonaws.com POSTGRES_DB=postgres AWS_BUCKET=http://udagram-production.us-east-1.elasticbeanstalk.com/ AWS_REGION=us-east-1 AWS_PROFILE=eb-cli JWT_SECRET=mysecretstring URL=http://localhost:4200
# eb list
# eb use ${ENV_NAME}
# eb deploy ${ENV_NAME}

aws configure --profile eb-cli set aws_access_key_id AKIAQFIZL2NQHNXX3RQT
aws configure --profile eb-cli set aws_secret_access_key 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
aws configure --profile eb-cli set region us-east-1
echo Hello from udagram backend app
# eb init udagram-api --region us-east-1 --platform node.js
# eb create udagram-api-dev
eb list
eb use udagram-api-dev
eb setenv POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=12345678 POSTGRES_PORT=5432 POSTGRES_HOST=database-1.cgoepocdldxc.us-east-1.rds.amazonaws.com POSTGRES_DB=postgres AWS_BUCKET="" AWS_REGION=us-east-1 AWS_PROFILE="" JWT_SECRET=mysecretstring URL=http://localhost:4200
eb deploy udagram-api-dev