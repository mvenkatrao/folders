#!/bin/bash
x=5
y=89
((sum=x+y))
echo $sum
result="$(echo 5.4 + 5.4 | bc)"
echo $result
