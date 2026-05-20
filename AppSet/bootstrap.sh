#!/bin/sh -ex

helm template . \
    --set applicationProject=<project> \
    --set name=<name> \
    --set namespace=<namespace> \
    --set path=<<path> \
    --set repoURL=<repoURL> \
    --set revision=main \
  | kubectl apply -f -
