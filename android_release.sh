#!/usr/bin/env bash
cd fluffychat
cd android
echo $FDROID_KEY | base64 --decode --ignore-garbag > key.jks
echo "storePassword=${FDROID_KEY_PASS}" >> key.properties
echo "keyPassword=${FDROID_KEY_PASS}" >> key.properties
echo "keyAlias=key" >> key.properties
echo "storeFile=../key.jks" >> key.properties
#echo $PLAYSTORE_DEPLOY_KEY >> keys.json
