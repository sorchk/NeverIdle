#!/bin/bash
export baseDir=$(pwd)
echo "baseDir $baseDir"
echo "Building ..."
rm -rf $baseDir/dist
cd $baseDir/../
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags "-s -w" -o $baseDir/dist/nidle_amd64 main.go
CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build -ldflags "-s -w" -o $baseDir/dist/nidle_arm64 main.go

echo "Done!"
