#!/bin/bash

echo "Building - Windows amd64"
# Windows amd64 build
env GOOS=windows GOARCH=amd64 go build -o build/certGen-win-amd64.exe .

echo "Building - Linux amd64"
# Linux amd64 build
env GOOS=linux GOARCH=amd64 go build -o build/certGen-linux-amd64 .

echo "Building - Linux arm64"
# Linux arm64 build
env GOOS=linux GOARCH=arm64 go build -o build/certGen-linux-arm64 .

echo "Building - Mac amd64"
# Mac amd64 build
env GOOS=darwin GOARCH=amd64 go build -o build/certGen-mac-amd64 .

echo "Building - Mac arm64"
# Mac arm64 build
env GOOS=darwin GOARCH=arm64 go build -o build/certGen-mac-arm64 .

echo "Completed"
