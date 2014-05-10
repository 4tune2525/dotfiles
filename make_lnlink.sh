#!/bin/bash

files=.*

for file in ${files}
do
    filepath="${PWD}/${file}"
    homefile="${HOME}/${file}"

    # ignore  . and .. .git files
    test $file == ".git" && continue
    test $file == "." && continue
    test $file == ".." && continue

    # make symbolic link when there is no .hogehoge
    if [ ! -e "${homefile}" ]; then
	echo "${file} not exist, make symbolic link to ${homefile}"
	ln -s "${filepath}" "${homefile}"
    else
	echo "${file} exist"
    fi
done
