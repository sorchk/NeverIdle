#!/bin/bash
name=nidle
ver=$1
# 在代码中搜索 my-version，修改版本号
build_date=$(date +"%Y%m%d")
if [ -z "${ver}" ]; then
  ver=1.0.0
fi
echo ${ver}_${build_date}
export DOCKER_CLI_EXPERIMENTAL=enabled
echo ${DOCKER_HUB_KEY} | docker login --username ${DOCKER_HUB_USER} --password-stdin
docker buildx build \
  --platform linux/amd64,linux/arm64 \
  --build-arg VER=${ver} \
  --build-arg BUILD_DATE=${build_date} \
  --push \
  --tag sorc/${name}:${ver}_${build_date} \
  --tag sorc/${name}:${ver} \
  --tag sorc/${name}:latest .