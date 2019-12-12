FROM node:alpine

ENV AWSCDK_VERSION latest
RUN apk update && apk upgrade
RUN apk update && apk add bash
RUN apk update && apk add groff
RUN apk add curl
RUN apk add --no-cache --update python3 python3-dev git

RUN pip3 install --upgrade pip
RUN pip install boto3 json-spec yamllint

RUN pip install awscli --upgrade

RUN npm i -g aws-cdk@${AWSCDK_VERSION} \
  @aws-cdk/core@${AWSCDK_VERSION} \
  @aws-cdk/assets@${AWSCDK_VERSION} \
  @aws-cdk/aws-apigateway@${AWSCDK_VERSION} \
  @aws-cdk/aws-iam@${AWSCDK_VERSION} \
  @aws-cdk/aws-s3@${AWSCDK_VERSION} \
  @aws-cdk/aws-lambda@${AWSCDK_VERSION} \
  @aws-cdk/aws-cognito@${AWSCDK_VERSION} \
  @aws-cdk/aws-appsync@${AWSCDK_VERSION} \
  @aws-cdk/aws-s3-deployment@${AWSCDK_VERSION} \
  @aws-cdk/cx-api@${AWSCDK_VERSION} \
  @aws-cdk/region-info@${AWSCDK_VERSION} \
  @aws-cdk/aws-cloudwatch@${AWSCDK_VERSION} \
  @aws-cdk/aws-ec2@${AWSCDK_VERSION} \
  @aws-cdk/aws-events@${AWSCDK_VERSION} \
  @aws-cdk/aws-logs@${AWSCDK_VERSION} \
  @aws-cdk/aws-s3-assets@${AWSCDK_VERSION} \
  @aws-cdk/aws-sqs@${AWSCDK_VERSION} \
  @aws-cdk/cx-api@${AWSCDK_VERSION} \
  @aws-cdk/aws-cloudformation@${AWSCDK_VERSION} \
  @aws-cdk/aws-cloudfront@${AWSCDK_VERSION} \
  @aws-cdk/aws-s3-assets@${AWSCDK_VERSION} \
  @aws-cdk/aws-events@${AWSCDK_VERSION} \
  @aws-cdk/aws-kms@${AWSCDK_VERSION} \
  @aws-cdk/aws-certificatemanager@${AWSCDK_VERSION} \
  @aws-cdk/aws-elasticloadbalancingv2@${AWSCDK_VERSION} \
  @aws-cdk/aws-sns@${AWSCDK_VERSION} \
  @aws-cdk/aws-ssm@${AWSCDK_VERSION} \
  @aws-cdk/aws-route53@${AWSCDK_VERSION} \
  typescript@latest \
  @types/node@latest
WORKDIR /data
