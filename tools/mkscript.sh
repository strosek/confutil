#!/bin/bash

# Generate script template.

if [ $# -lt 1 ]; then
    echo "$0: file name not specified"
fi

scriptname=$1

if [ -f $scriptname ]; then
    echo "$0: file already exists."
fi

echo "#!$(which bash)" > $scriptname
echo "" >> $scriptname

echo -n "#===================================" >> $scriptname
echo -n "======================================
#         FILE: $scriptname
#
#        USAGE: $scriptname [cgname] | [other] thing
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
#      CREATED: " >> $scriptname
date +%h\ %d,\ %Y.\ %H:%M >> $scriptname
echo -n "#     REVISION: " >> $scriptname
date +%d%m%Y >> $scriptname
echo -n "#=====================================" >> $scriptname
echo -e "====================================\n\n" >> $scriptname

echo 'function usage () {
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
done' >> $scriptname

chmod +x $scriptname

