#! /sbin/sh

IMG_DIR="/data/.stowaways/images"

rm -rf $IMG_DIR
rm -rf /data/.stowaways
mkdir -p $IMG_DIR
mkdir -p /data/.stowaways/sailfishos

mv /data/sfosrootfs.img /data/.stowaways/images/rootfs.img
mv /data/system.img /data/.stowaways/images/
e2fsck -fy /data/.stowaways/images/rootfs.img
resize2fs /data/.stowaways/images/rootfs.img 8G

EXIT=$?

exit $EXIT
