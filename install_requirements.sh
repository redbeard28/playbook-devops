#!/bin/bash
### Name         : install_requirements.sh
### Version      : 1.0
### Date         : 01/01/2018
### Author       : Jeremie CUADRADO
### Purpose      : This script aims to retrieve needed Ansible roles from common bitbucket repository before deploying project
###
### Updates ( version, author, date, comments )
###
###
#

set -o nounset
set -o errexit
export http_proxy=""
export https_proxy=$http_proxy

ansible-galaxy install --role-file requirements.yml --roles-path ./roles --force
