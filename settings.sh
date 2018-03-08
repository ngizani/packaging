#!/usr/bin/env bash -ve

export BASE=git@github.com:kernsuite-debian/
export PACKAGES=`cat packages | grep -v ^#`
export DIST=bionic  # ubuntu 18.04

export DEBEMAIL="packaging@kernsuite.info"
export DEBFULLNAME="KERN packaging"

export DEB_BUILD_OPTIONS="parallel=15"

export ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export BUILD=${ROOT}/build

export RESULTS=${ROOT}/packages
