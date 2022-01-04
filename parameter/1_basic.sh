#!/bin/bash

# ======================================
# Learn

# length=2
# echo ${name:0:length}  #=> "Jo"

#===Substring
# ${FOO:0:3}	Substring (position, length)
# ${FOO:(-3):3}	Substring from the right

#===Lengh of variable
# ${#VAR}

#===Default value
# ${FOO:-val}	$FOO, or val if unset (or null)
# ${FOO:=val}	Set $FOO to val if unset (or null)
# ${FOO:+val}	val if $FOO is set (and not null)
# ${FOO:?message}	Show error message and exit if $FOO is unset (or nul

#===Manipulation/ thao tac
# STR="HELLO WORLD!"
# echo ${STR,}   #=> "hELLO WORLD!" (lowercase 1st letter)
# echo ${STR,,}  #=> "hello world!" (all lowercase)

# STR="hello world!"
# echo ${STR^}   #=> "Hello world!" (uppercase 1st letter)
# echo ${STR^^}  #=> "HELLO WORLD!" (all uppercase)

#===Subsititution
# ${FOO%suffix}	    Remove suffix
# ${FOO#prefix}	    Remove prefix
# ${FOO%%suffix}	Remove long suffix
# ${FOO##prefix}	Remove long prefix ~ reverse
# ${FOO/from/to}	Replace first match
# ${FOO//from/to}	Replace all
# ${FOO/%from/to}	Replace suffix
# ${FOO/#from/to}	Replace prefix

#===Comment
: '
    This is a
    multi line
    comment
'
# ======================================


# Example
# name="John"
# echo ${name}
# echo ${name/J/j}    #=> "john" (substitution)
# echo ${name:0:2}    #=> "Jo" (slicing)
# echo ${name::2}     #=> "Jo" (slicing)
# echo ${name::-1}    #=> "Joh" (slicing)
# echo ${name:(-1)}   #=> "n" (slicing from right)
# echo ${name:(-2):1} #=> "h" (slicing from right 1 character)
# echo ${food:-Cake}  #=> $food or "Cake"



STR="/path/to/foo.cpp"
# Remove suffix
echo ${STR%.cpp}     
echo ${STR%.cpp}.o
echo ${STR%/*}
# Remove preffix
echo ${STR#*.}
echo ${STR##*.}
echo ${STR#*oo}
echo ${STR##*/}
echo ${STR#*/}      # path/to/foo.cpp

BASE=${STR##*/}   #=> "foo.cpp" (basepath)
DIR=${STR%$BASE}  #=> "/path/to/" (dirpath)
echo "$DIR - $BASE"

# Replace
echo ${STR/foo/bar} # /path/to/bar.cpp
#Cut
echo ${STR:6:5}     # from 6+1 increament 5 characters
echo ${STR: -5:5}   # from -5
