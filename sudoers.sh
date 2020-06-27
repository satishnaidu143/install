#!/bin/bash

while [[ -n $1 ]]; do
    echo "$1    ALL=(ALL:ALL) ALL" >> /etc/sudoers;
    shift # shift all parameters;
done
