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
elif [ "$VERSION" = "5.1.5"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.1.5_3daa3156230dae9d653d84d9410e74b45a3b68b1.zip"
elif [ "$VERSION" = "5.1.6"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.1.6_ab640c84dd51a7d8da59ba1bce909615fb66f24e.zip"
elif [ "$VERSION" = "5.2.0"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.0_467fad5e582955bb6995237afdd9faa6072c04bf.zip"
elif [ "$VERSION" = "5.2.1"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.1_d0cadd3c1fb1348e15061ee082bd5b1fe48d7df2.zip"
elif [ "$VERSION" = "5.2.2"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.2_d631d82cffb774c8a0816d509f753f5d7a6068bf.zip"
elif [ "$VERSION" = "5.2.3"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.3_b4dbb8c61bc628dd9ddc710be357c0b85bd25a36.zip"
elif [ "$VERSION" = "5.2.4"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.4_ec74baeab8cde6c964adb00593866289d8d96fb9.zip"
elif [ "$VERSION" = "5.2.5"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.5_3575ac334a26644a3178736c894a1d8609af37b2.zip"
elif [ "$VERSION" = "5.2.6"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.6_eccc277ef644c38523d56ba745bc06d8cc5cd3e9.zip"
elif [ "$VERSION" = "5.2.7"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.7_50fa4a669839505578488f1d516cb3b7f6db3aa5.zip"
elif [ "$VERSION" = "5.2.8"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.8_82d619e7b91165fa30f8a00810ea904615cf150a.zip"
elif [ "$VERSION" = "5.2.9"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.9_e9b9cb9cf54d4c83855d42e30be03f4968000b1d.zip"
elif [ "$VERSION" = "5.2.10"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.10_1193c8a6b7bae14baaf016fad73c1928cae0617d.zip"
elif [ "$VERSION" = "5.2.11"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.11_45a90cd8a6adaafbb1bc329587884512229ea6e6.zip"
elif [ "$VERSION" = "5.2.12"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.12_7d08ac622c6d7db60effa7d02470749534e3cc42.zip"
elif [ "$VERSION" = "5.2.13"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.13_2bc68fae1029cf614ac0c05afc45ddb0c05e1d41.zip"
else
  echo "Unsupported Shopware version for update."
  exit 1
fi

cd /shopware

echo "Start Shopware update download..."
wget -O shop-update.zip  $UPDATE_URL
echo "Shopware update downloaded."

unzip -o -q shop-update.zip
rm shop-update.zip

echo "Shopware update unzipped."

chown -R www-data:www-data /shopware

echo "Starting Shopware update - be patient..."
echo | php recovery/update/index.php

echo "Deleting update-assets..."
rm -rf /shopware/update-assets
chown -R www-data:www-data /shopware

echo "Shopware update finished."
