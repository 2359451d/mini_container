#!/bin/bash
pass=${1} # password
src=${2} # src file path
dest=${3} # dest ip
echo "current working dir - "$(pwd)
echo "start transfering file - "${src}" to - "${dest}":"$(pwd)'/'${src}
#echo ${pass}
#echo ${src}
#echo ${dest}

sshpass -p ${pass} scp -P 2222 ${src} ${dest}:$(pwd)'/'${src}