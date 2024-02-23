#!/bin/sh
old_IFS="$IFS"
IFS=:
echo "Please input some data separated by colons(:) ..."
read x y z
IFS=$old_IFS
echo "x is $x y is $y z is $z"
