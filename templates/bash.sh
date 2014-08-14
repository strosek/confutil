#!/usr/bin/bash

#=========================================================================
#         FILE: bash.sh
#
#        USAGE: bash.sh [option] | [other] thing
#
#  DESCRIPTION: Things that the script does.
#
#      OPTIONS: see 'usage' function below
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#
#       AUTHOR: ---
#      COMPANY: ---
#      VERSION: 1.0:
#      CREATED: Aug 13, 2014. 22:37
#     REVISION: 13082014
#=========================================================================


function usage () {
    echo "Usage:"
    echo -e "scriptname.sh [-i in] [-s something] [-b basic]\n"
    echo "Options: "
    echo "-b basic thing"
    echo "-i in an option"
    echo "-s something"
    echo "-h display this help text"
}


declare variable


while getopts "" option
do
    case $option in
    
        \?)
            echo "Invalid option: -$OPTARG" >&2
            exit 1
            ;;
        :)
            echo "Option -$OPTARG requires an argument." >&2
            usage
            exit 1
            ;;
  esac
done
