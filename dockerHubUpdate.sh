#!/bin/env bash

function fail {
    printf 'FAIL [%s]\n' "$1" >&2 
    exit "${2-1}"
}

export IMAGE="mrnetops/fastly-exporter"

echo "
#
# Remove all current tags for ${IMAGE}
#
"

docker images --no-trunc \
	| grep -P "^${IMAGE}\s+" \
	| awk '{print $3;}' \
	| sort -u \
	| xargs -r docker rmi -f 

echo "
#
# Initial docker build
#
"

docker build . -t ${IMAGE}:latest \
	|| fail "docker build"

echo "
#
# Major, minor and patch tags from the application version string
# 
"

output=`docker run ${IMAGE}:latest -version` \
	|| fail "docker run"
version=`echo $output | grep -oP '(?!=v)\d+\.\d+\.\d+'` \
	|| fail "version"
tag_patch=${version%-*%-*} \
	|| fail "tag_patch"
tag_minor=${tag_patch%.*} \
	|| fail "tag_minor"
tag_major=${tag_minor%.*} \
	|| fail "tag_major"

docker build . \
	-t ${IMAGE}:latest \
	-t ${IMAGE}:${tag_major} \
	-t ${IMAGE}:${tag_minor} \
	-t ${IMAGE}:${tag_patch} \

echo "
#
# Push to dockerhub
#
"

docker push --all-tags ${IMAGE}
