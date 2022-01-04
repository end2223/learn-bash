#!/bin/bash

: '
    [[ -z STRING ]]     	    Empty string
    [[ -n STRING ]]     	    Not empty string
    [[ STRING == STRING ]]     	Equal
    [[ STRING != STRING ]]     	Not Equal
    [[ NUM -eq NUM ]]       	Equal
    [[ NUM -ne NUM ]]       	Not equal
    [[ NUM -lt NUM ]]       	Less than
    [[ NUM -le NUM ]]       	Less than or equal
    [[ NUM -gt NUM ]]       	Greater than
    [[ NUM -ge NUM ]]       	Greater than or equal
    [[ STRING =~ STRING ]]      Regexp
    
    (( NUM < NUM ))	            Numeric conditions
    
    More conditions
    [[ -o noclobber ]]      	If OPTIONNAME is enabled
    [[ ! EXPR ]]        	    Not
    [[ X && Y ]]        	    And
    [[ X || Y ]]        	    Or
'

: '
    File conditions
        [[ -e FILE ]]	        Exists
        [[ -x FILE ]]	        Executable
        [[ -r FILE ]]	        Readable
        [[ -w FILE ]]	        Writable
        [[ -f FILE ]]	        File
        [[ -d FILE ]]	        Directory
        [[ -h FILE ]]	        Symlink
        [[ -s FILE ]]	        Size is > 0 bytes
        [[ FILE1 -nt FILE2 ]]	1 is more recent than 2
        [[ FILE1 -ot FILE2 ]]	2 is more recent than 1
        [[ FILE1 -ef FILE2 ]]	Same files
'