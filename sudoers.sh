#!/bin/bash

while [[ -n $1 ]]; do
    echo "$1    ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers;
    shift # shift all parameters;
done