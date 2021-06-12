#!/bin/sh -l

OWNER="wpcodefactory"
REPO="test-plugin"
TOKEN=$INPUT_TOKEN


#JSON_URL=https://api.github.com/repos/$OWNER/$REPO/releases/latest
#echo $JSON_URL
#/usr/bin/curl -u $TOKEN:x-oauth-basic $JSON_URL > latest.json
#cat latest.json
#echo '!!'
#ID=`cat latest.json | jq '.assets[0].id' | tr -d '"'`
#echo "ID --> " $ID
#URL=https://$TOKEN@api.github.com/repos/$OWNER/$REPO/releases/assets/$ID
#/usr/bin/curl -L -H "Accept:application/octet-stream" $URL | tar -xzv --strip-components=1
#rm -rf latest.json

TAG=1.0.0

CURL="curl -H 'Authorization: token $TOKEN' \
      https://api.github.com/repos/$OWNER/$REPO/releases"; \
ASSET_ID=$(eval "$CURL/tags/$TAG" | jq .id); \

#LATEST=$(eval "$CURL/latest"); \
#ASSET_ID=$(eval "$CURL/latest" | jq .id); \

TESTE=$(eval "curl -vLJO -H 'Authorization: token $TOKEN' 'https://github.com/wpcodefactory/test-plugin/archive/refs/tags/1.0.0.zip'")

#echo $LATEST;
echo $TESTE;

ls

#TESTE=$(eval "curl -H 'Authorization: token $TOKEN' \
#     -H 'Accept:application/octet-stream' \
#     -i $DOWNLOAD_URL")






#DOWNLOAD_URL=$(eval "$CURL/tags/$TAG" | jq .zipball_url); \

#echo $DOWNLOAD_URL;

#TESTE=$(eval "curl -H 'Authorization: token $TOKEN' \
#     -H 'Accept:application/octet-stream' \
#     -i $DOWNLOAD_URL")

#echo $TESTE




#eval "$CURL/assets/$ASSET_ID -LJOH 'Accept: application/octet-stream' --output test.zip"


#curl -vLJO -H 'Authorization: token $INPUT_TOKEN' 'https://api.github.com/repos/$OWNER/$REPO/releases/assets/$ASSET_ID'
#ls