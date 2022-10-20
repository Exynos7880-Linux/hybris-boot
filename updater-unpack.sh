#! /sbin/sh

IMG_DIR="/data/.stowaways/images"

rm -rf $IMG_DIR
rm -rf /data/.stowaways
mkdir -p $IMG_DIR
mkdir -p /data/.stowaways/sailfishos

mv /data/rootfs.img $IMG_DIR/rootfs.img
e2fsck -fy $IMG_DIR/rootfs.img
resize2fs $IMG_DIR/rootfs.img 8G

EXIT=$?

exit $EXIT
