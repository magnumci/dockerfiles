#!/bin/bash

# Terminate on failures
set -e

# Add SCMs repositories
add-apt-repository -y ppa:git-core/ppa
add-apt-repository -y ppa:mercurial-ppa/releases
add-apt-repository -y ppa:svn/ppa
apt-get update

# Install SCMs
apt-get install -y git mercurial subversion