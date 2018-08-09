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
elif [ "$VERSION" = "5.2.14"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.14_756d715c8869042f4b49e8ddeac14a86aee49cc3.zip"
elif [ "$VERSION" = "5.2.15"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.15_e575a5d04bcd03a464415c0c668a810f59e186f5.zip"
elif [ "$VERSION" = "5.2.16"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.16_3e40e36e97afff8cbecd5e66e2ba2dcdd6c65694.zip"
elif [ "$VERSION" = "5.2.17"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.17_8e44dab5cc36c5d2c5cdbcaed56312bffb03bfa7.zip"
elif [ "$VERSION" = "5.2.18"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.18_daada215d53268a18a903c7952093f57504fa7bc.zip"
elif [ "$VERSION" = "5.2.19"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.19_0ab52107471cf41f4293339e1c51bb2c58c962fb.zip"
elif [ "$VERSION" = "5.2.20"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.20_855b7ee83ad40c85322872fd45e63bc66d786028.zip"
elif [ "$VERSION" = "5.2.21"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.21_20e2cd7b78288a9fc400235a0c39b538fbe12abc.zip" 
elif [ "$VERSION" = "5.2.22"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.22_92cca7dbeeb7c158bf544bd930bc6521f3b90d40.zip" 
elif [ "$VERSION" = "5.2.23"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.23_60406d489f204a1e07ec564c2bc1132c0460dee6.zip" 
elif [ "$VERSION" = "5.2.24"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.24_c894f6a4b179bd50422cd3bf353a962582e40be7.zip" 
elif [ "$VERSION" = "5.3.0.RC1"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.3.0_RC1_31e40f25af6f625ba041c7214d0b514799baef4f.zip" 
elif [ "$VERSION" = "5.2.25"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.25_057e5d318c2c985fc6e64c06bec8ae08b4ce848c.zip" 
elif [ "$VERSION" = "5.2.26"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.26_fffb486ccb1ae5b022bbf8cbeb6156ddc2916ed8.zip" 
elif [ "$VERSION" = "5.2.27"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.2.27_4a06ae67eac39eff42466854a4b4a100a2b53b69.zip" 
elif [ "$VERSION" = "5.3.0"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.3.0_7f901eddb3bf3bdd73e4c2571ff55e4dc9ae9548.zip" 
elif [ "$VERSION" = "5.3.1"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.3.1_2a5fb8f6bb97f6cb359dca41450e7b572ba3ca33.zip" 
elif [ "$VERSION" = "5.3.2"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.3.2_f65325078ee558d7e77b9371568aea1e2a4eaf00.zip"
elif [ "$VERSION" = "5.3.3"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.3.3_a11bf25cb8a969e39ac2784b9ec0716a69b7668f.zip"
elif [ "$VERSION" = "5.3.4"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.3.4_c605797fb87b3fad716fff4f89af129f76f9adbe.zip"
elif [ "$VERSION" = "5.3.5"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.3.5_f57102711f39ae8c81e8e6ede3fbd6bbd34d886c.zip"
elif [ "$VERSION" = "5.3.6"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.3.6_33fa133bfdd17d9a444f272faeca44db9c7c4b26.zip"
elif [ "$VERSION" = "5.3.7"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.3.7_6212ab81baa1f5ea1c93ae27868a617b9fe7659d.zip"
elif [ "$VERSION" = "5.4.0"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.4.0_be0d61415835f7b648a2766745abef4cc2aa808d.zip"
elif [ "$VERSION" = "5.4.1"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.4.1_16602dd33d04a61d6c7b7ee6b8ddddecc87e8cd8.zip"
elif [ "$VERSION" = "5.4.2"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.4.2_925ddf66900694b7fd1efc8303660d6a6d108593.zip"
elif [ "$VERSION" = "5.4.3"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.4.3_fb1eba48d8edf948b1100d617b9f27766ac5b050.zip"
elif [ "$VERSION" = "5.4.4"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.4.4_c197ad85f825da938e9b1d49b3b5fd0823c5b49f.zip"
elif [ "$VERSION" = "5.4.5"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.4.5_292ff3803f72e6d6876b406ad0ac838cf3cc7a83.zip"
elif [ "$VERSION" = "5.4.6"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.4.6_b37ead916e0c850f54dbd80bf94fac21f7b1aa10.zip"
elif [ "$VERSION" = "5.5.0.RC1"  ]; then
  UPDATE_URL="http://releases.s3.shopware.com.s3.amazonaws.com/update_5.5.0_RC1_8d3fe75f95b4b52273fa012881bee4189ba0e2c7.zip"
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
