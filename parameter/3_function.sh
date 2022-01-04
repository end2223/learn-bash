#!/bin/bash

# Defining function
# myfunc() {
#     echo "Hello $1"
# } 

function myfunc() {
    echo "Hello $1"
}
myfunc "Cao Ngoc Son"

# Return value
result="$(myfunc "CNS")"
echo $result

myfunc_2() {
  return 1
}
if myfunc_2; then
  echo "success"
else
  echo "failure"
fi

argument() {
    echo $#     # total argument
    echo $*     # all value as a single word
    echo $@     # all value as separate string
    echo $_     # value of last argument
}

argument 11 22 33 44