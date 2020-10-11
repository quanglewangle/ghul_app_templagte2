#!/bin/bash

# If you're running Debian, Ubuntu or another Linux distribution that supports apt-get (including if you're using WSL2), then
# this script will install the dependencies needed to run the compiler and to build applications for .NET
# If you're running a different Linux distribution, you'll need to install these pre-requisites manually
# NOTE: you do not need to do this if you're using the development container as these dependencies are pre-installed in the devcontainer

if [ "`id -u`" != "0" ] ; then
    echo "not root: will use sudo"
    PREFIX=sudo
fi

$PREFIX apt-get clean
$PREFIX apt-get update
$PREFIX apt-get --yes --force-yes install libgc1c2 wget mono-devel
