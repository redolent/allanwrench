#!/bin/bash


TERM="$1"
shift
FILES=( "$@" ) # create array


### TEST CODE ###
 #echo "${FILES[@]}"
 #ls   "${FILES[@]}"
 #exit
### === ###


if [ "$TERM" == "" ]; then
      echo "$0" "<term>" "[<path>]" 1>&2
      exit 1
fi


if [ "$FILES" == "" ]; then

  ## search all hidden and non-hidden files
  IFS=$'\n' FILES=( $( ls -A ) )

fi




find  "${FILES[@]}"  -type f  |  grep -E --color "$TERM"



