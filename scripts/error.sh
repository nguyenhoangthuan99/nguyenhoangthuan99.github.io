#!/bin/sh

echo "running test shell check workflow"
sleep 3
var=1
echo 'produce error $var'
exit 1
