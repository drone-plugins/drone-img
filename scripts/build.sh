#!/bin/sh

# force go modules
export GOPATH=""

# disable cgo
export CGO_ENABLED=0

set -e
set -x

# linux
GOOS=linux GOARCH=amd64 go build -o release/linux/amd64/drone-gcr    ./cmd/drone-gcr
GOOS=linux GOARCH=amd64 go build -o release/linux/amd64/drone-ecr    ./cmd/drone-ecr
GOOS=linux GOARCH=amd64 go build -o release/linux/amd64/drone-docker ./cmd/drone-docker
GOOS=linux GOARCH=amd64 go build -o release/linux/amd64/drone-acr    ./cmd/drone-acr
GOOS=linux GOARCH=amd64 go build -o release/linux/amd64/drone-heroku   ./cmd/drone-heroku