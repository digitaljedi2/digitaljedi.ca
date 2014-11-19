#!/bin/bash
commit=$1

deployment_id=`aws --profile digitaljedi deploy create-deployment --application-name website --deployment-group-name production --github-location commitId=$commit,repository=digitaljedi2/digitaljedi.ca | jq .deploymentId`

echo "Deployment $deployment_id created"
