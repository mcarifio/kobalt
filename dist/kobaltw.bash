#!/usr/bin/env bash

me=$(readlink -e ${BASH_SOURCE})
here=${me%/*}
jar=${here}/../kobalt/wrapper/kobalt-wrapper.jar
if [[ -r ${jar} ]] ; then
    java -jar ${jar} $*
else
    printf "${me}: '${jar}' not found" > /dev/stderr
    exit 1
fi
