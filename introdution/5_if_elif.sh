#!/bin/bash

# string="" #empty
string="Hello everybody!"

if [[ -z "$string" ]]; then
    echo "String is empty!"
elif [[ -n "$string" ]]; then
    echo "String isn't empty!"
    echo "${string}"
fi