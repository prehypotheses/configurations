#!/bin/bash

: << 'comment'
This script creates an Amazon S3 (Simple Storage Service) bucket
comment

aws s3api create-bucket --cli-input-json file://.iac/create-bucket.json --region "$1"
