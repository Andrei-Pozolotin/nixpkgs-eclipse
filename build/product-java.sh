#! /usr/bin/env bash

set -e

source ${BASH_SOURCE%/*}/any.sh

#nix_verify eclipse.product.java-473a
nix_verify eclipse.product.java-411
