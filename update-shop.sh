#!/bin/sh

VERSION=$1

if [ "$VERSION" = "" ]; then
  echo "You must provide a Shopware version to update to."
  exit 1
fi

if [ "$VERSION" = "5.1.1"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.1.1_3a13dc967015968b087af230a1206486b9be9502.zip"
elif [ "$VERSION" = "5.1.2"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.1.2_5c23f6c9c5c2e39445d6fcbd5553b59162239a7b.zip"
elif [ "$VERSION" = "5.1.3"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.1.3_71339251ae10cadc12e298df9badca97930eb0ce.zip" 
elif [ "$VERSION" = "5.1.4"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.1.4_086575bfae48b17263bf6df20d7d03eba55ca13c.zip"
else
  echo "Unsupported Shopware version for update."
  exit 1
fi

cd /shopware

echo "Start Shopware update download..."
wget -O shop-update.zip  $UPDATE_URL
echo "Shopware update downloaded."

unzip -n -q shop-update.zip
rm shop-update.zip

echo "Shopware update unzipped."

chown -R www-data:www-data /shopware

echo "Starting Shopware update - be patient..."
echo | php recovery/update/index.php

echo "Deleting update-assets..."
rm -rf /shopware/update-assets
chown -R www-data:www-data /shopware

echo "Shopware update finished."
