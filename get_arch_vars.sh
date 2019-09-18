#!/bin/sh

set -a

if test "${TARGETPLATFORM}" = "linux/amd64" ; then
  MUSL_ARCH=x86_64
  RUST_TARGET=x86_64-unknown-linux-musl
  MUSL_INCLUDE_DIR=x86_64-linux-musl
  GNU_INCLUDE_DIR=x86_64-linux-gnu
  SSL_ARCH=linux-x86_64
elif test "${TARGETPLATFORM}" = "linux/arm" -o "${TARGETPLATFORM}" = "linux/arm/v7" ; then
  MUSL_ARCH=armhf
  RUST_TARGET=armv7-unknown-linux-musleabihf
  MUSL_INCLUDE_DIR=arm-linux-musleabihf
  GNU_INCLUDE_DIR=arm-linux-gnueabihf
  SSL_ARCH=linux-generic32
elif test "${TARGETPLATFORM}" = "linux/arm64" ; then
  MUSL_ARCH=aarch64
  RUST_TARGET=aarch64-unknown-linux-musl
  MUSL_INCLUDE_DIR=aarch64-linux-musl
  GNU_INCLUDE_DIR=aarch64-linux-gnu
  SSL_ARCH=linux-aarch64
else
  MUSL_ARCH=x86_64
  RUST_TARGET=x86_64-unknown-linux-musl
  MUSL_INCLUDE_DIR=x86_64-linux-musl
  GNU_INCLUDE_DIR=x86_64-linux-gnu
  SSL_ARCH=linux-x86_64
fi

set +a
