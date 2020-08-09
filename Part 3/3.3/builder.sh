#!/bin/sh
repo=$1

image=${repo##*/}

dir=$(mktemp -d)

git clone $repo "${dir}/repo"

name="urohit011/${image}"

docker build -t "${name}" "${dir}/repo"

docker push "${name}"
