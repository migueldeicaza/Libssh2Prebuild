#!/bin/bash
#
# build_xctframework.sh
# Copyright © 2020 Dmitriy Borovikov. All rights reserved.
#

#Functions
fetchSource () {
  local url=$1
  local filename=$2
  local path=$3
  local file=$BUILD/$filename

  mkdir -p "$path"
  echo "Downloading $filename"
  curl -L -S -s "$url" --output "$file"
  local md5=`md5 -q $file`
  echo "MD5: $md5"

  tar -zxkf "$file" -C "$path" --strip-components 1 2>&-
  rm -f $file
}

fetchGitSource () {
  local url=$1
  local ref=$2
  local path=$3

  rm -rf "$path"
  mkdir -p "$(dirname "$path")"

  echo "Cloning $url ($ref)"
  git clone --depth 1 --branch "$ref" "$url" "$path"
}

prepareLibssh2Source () {
  local path=$1
  local libtoolize_bin

  if [[ -x "$path/configure" ]]; then
    return
  fi

  libtoolize_bin=$(command -v glibtoolize || command -v libtoolize || true)
  if [[ -z "$libtoolize_bin" ]]; then
    echo "error: missing glibtoolize/libtoolize required for libssh2 autoreconf" >&2
    exit 1
  fi

  (
    cd "$path"
    LIBTOOLIZE="$libtoolize_bin" autoreconf -fi
  )
}

buildLibrary () {
  export BUILT_PRODUCTS_DIR=$1
  export SDK_PLATFORM=$2
  export PLATFORM=$3
  export EFFECTIVE_PLATFORM_NAME=$4
  export ARCHS=$5
  export MIN_VERSION=$6

  "$ROOT_PATH/script/build-openssl.sh"
  "$ROOT_PATH/script/build-libssh2.sh"

  rm -rf "$TEMPPATH"
}


#====================================================================#

set -e

#Config

export BUILD_THREADS=$(sysctl -n hw.ncpu)
LIBSSH_REMOTE_URL=https://github.com/xibbon/libssh2.git
LIBSSH_BRANCH=xibbon-2026-05-baseline
LIBSSL_TAG=openssl-3.5.6

GIT_REMOTE_URL_UNFINISHED=`git config --get remote.origin.url|sed "s=^ssh://==; s=^https://==; s=:=/=; s/git@//; s/.git$//;"`

export ROOT_PATH=$(cd "$(dirname "$0")/.."; pwd -P)
pushd $ROOT_PATH > /dev/null

export BUILD=$ROOT_PATH/build
export TEMPPATH=$ROOT_PATH/temp

export LIBSSLDIR="$TEMPPATH/openssl"
export LIBSSHDIR="$TEMPPATH/libssh2"
export OPENSSL_SOURCE="$BUILD/openssl/src"
export LIBSSH_SOURCE="$BUILD/libssh2/src"

rm -rf "$BUILD" "$TEMPPATH" "$ROOT_PATH/CSSH.xcframework"
mkdir -p "$BUILD" "$TEMPPATH"

#Download

fetchGitSource "$LIBSSH_REMOTE_URL" "$LIBSSH_BRANCH" "$LIBSSH_SOURCE"
prepareLibssh2Source "$LIBSSH_SOURCE"
fetchSource "https://github.com/openssl/openssl/archive/refs/tags/$LIBSSL_TAG.tar.gz" "openssl.tar.gz" "$OPENSSL_SOURCE"

LIBSSH_VERSION=$(sed -n 's/^#define LIBSSH2_VERSION[[:space:]]*"\(.*\)"/\1/p' "$LIBSSH_SOURCE/include/libssh2.h")
LIBSSH_VERSION_TAG="${LIBSSH_VERSION/_DEV/-dev}"
LIBSSH_COMMIT=$(git -C "$LIBSSH_SOURCE" rev-parse --short=12 HEAD)
OPENSSL_VERSION=${LIBSSL_TAG#openssl-}
TAG="${LIBSSH_VERSION_TAG}.xibbon-2026-05-baseline+g${LIBSSH_COMMIT}.openssl-${OPENSSL_VERSION}"
ZIPNAME=CSSH-$TAG.xcframework.zip
DOWNLOAD_TAG="${TAG//+/%2B}"
DOWNLOAD_ZIPNAME="${ZIPNAME//+/%2B}"
DOWNLOAD_URL="https://$GIT_REMOTE_URL_UNFINISHED/releases/download/$DOWNLOAD_TAG/$DOWNLOAD_ZIPNAME"

rm -f "$ZIPNAME"

#Build

#buildLibrary () {
#export BUILT_PRODUCTS_DIR=$1
#export SDK_PLATFORM=$2
#export PLATFORM=$3
#export EFFECTIVE_PLATFORM_NAME=$4
#export ARCHS=$5
#export MIN_VERSION=$6

buildLibrary "$BUILD/maccatalyst" "macosx" "MacOSX" "-maccatalyst" "x86_64 arm64" "10.15"
buildLibrary "$BUILD/iphoneos" "iphoneos" "iPhoneOS" "" "arm64" "9.0"
buildLibrary "$BUILD/iphonesimulator" "iphonesimulator" "iPhoneSimulator" "" "x86_64 arm64" "9.0"
buildLibrary "$BUILD/macosx" "macosx" "MacOSX" "" "x86_64 arm64" "10.10"
buildLibrary "$BUILD/appletvsimulator" "appletvsimulator" "AppleTVSimulator" "" "x86_64 arm64" "9.0"
buildLibrary "$BUILD/appletvos" "appletvos" "AppleTVOS" "" "arm64" "9.0"
buildLibrary "$BUILD/watchsimulator" "watchsimulator" "WatchSimulator" "" "x86_64 arm64" "2.0"
buildLibrary "$BUILD/watchos" "watchos" "WatchOS" "" "armv7k arm64_32" "2.0"

xcodebuild -create-xcframework \
 -library $BUILD/macosx/lib/libssh2.a \
 -headers $BUILD/macosx/include \
 -library $BUILD/iphoneos/lib/libssh2.a \
 -headers $BUILD/iphoneos/include \
 -library $BUILD/iphonesimulator/lib/libssh2.a \
 -headers $BUILD/iphonesimulator/include \
 -library $BUILD/maccatalyst/lib/libssh2.a \
 -headers $BUILD/maccatalyst/include \
 -library $BUILD/appletvsimulator/lib/libssh2.a \
 -headers $BUILD/appletvsimulator/include \
 -library $BUILD/appletvos/lib/libssh2.a \
 -headers $BUILD/appletvos/include \
 -library $BUILD/watchsimulator/lib/libssh2.a \
 -headers $BUILD/watchsimulator/include \
 -library $BUILD/watchos/lib/libssh2.a \
 -headers $BUILD/watchos/include \
 -output CSSH.xcframework

zip --recurse-paths -X --quiet $ZIPNAME CSSH.xcframework
rm -rf CSSH.xcframework
CHECKSUM=`shasum -a 256 -b $ZIPNAME | awk '{print $1}'`

cat >Package.swift << EOL
// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "$DOWNLOAD_URL",
                      checksum: "$CHECKSUM")
    ]
)
EOL

if [[ $1 == "commit" ]]; then

git add Package.swift
git commit -m "Build $TAG"
git tag $TAG
git push
git push --tags
gh release create "$TAG" $ZIPNAME --title "$TAG" --notes-file $ROOT_PATH/script/release-note.md

fi

popd > /dev/null
