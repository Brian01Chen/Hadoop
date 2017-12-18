#!/bin/bash

su - hdp<<EOF
rm -f /home/hdp/.ssh/id_rsa*
ssh-genkey -t rsa -P ""

if [[ $? == 0 ]]; then
  echo "genkey success."
else
  echo "genkey failed!"
EOF
