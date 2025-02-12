#!/bin/bash

account=""
bucket="terraform-$account"
region="eu-west-2"

aws s3api create-bucket \
    --bucket $bucket \
    --region $region \
    --create-bucket-configuration LocationConstraint=$region
