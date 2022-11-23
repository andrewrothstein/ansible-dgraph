#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://github.com/dgraph-io/dgraph/releases/download

dl()
{
    local ver=$1
    local app=$2
    local os=$3
    local arch=$4
    local archive_type=${5:-tar.gz}
    local platform="${os}-${arch}"
    local url=$MIRROR/$ver/${app}-${platform}.${archive_type}
    local lfile=$DIR/${app}-${platform}-${ver}.${archive_type}
    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi
    printf "      # %s\n" $url
    printf "      %s: sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  %s:\n" $ver
    printf "    dgraph:\n"
    dl $ver dgraph linux amd64
    printf "    badger:\n"
    dl $ver badger linux amd64
}

dl_ver ${1:-v22.0.1}
