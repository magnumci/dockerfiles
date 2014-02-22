#!/bin/bash

# Terminate on failures
set -e

# Install dependencies
apt-get install -y sudo python-software-properties curl wget

# Add SCMs repositories
add-apt-repository -y ppa:git-core/ppa
add-apt-repository -y ppa:mercurial-ppa/releases
add-apt-repository -y ppa:svn/ppa
apt-get update -y

# Install SCMs
apt-get install -y git mercurial subversion