#!/bin/bash

if [ "$1" == "" ]; then
  echo "No target detected.  Please specify target in the form of user@target-ip."
  exit 0
fi

user=$(echo "$1" | cut -d@ -f1)
target=$(echo "$1" | cut -d@ -f2)

ansible-playbook -e "ansible_user=$user" --ask-pass --ask-become-pass -i $target, site.yml

