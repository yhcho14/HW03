#!/bin/bash
# 2022-03-31 조용현
# calculator script
echo "project management in github"


declare -a t
t=(0 1)
t[0]=`cat num1.txt`
t[1]=`cat num2.txt`


if [ -z ${Pa} ]; then
    echo "...none operator parameter..."
    echo "1) add"
    echo "2) sub"
    echo "3) div"
    echo "4) mul"
    echo -n "select menu : "
    read menu
    if [ ${menu} -eq 1 ]; then
      Pa="add"
    fi

    if [ ${menu} -eq 2 ]; then
      Pa="sub"
    fi

    if [ ${menu} -eq 3 ]; then
      Pa="div"
    fi

    if [ ${menu} -eq 4 ]; then
      Pa="mul"
    fi
fi

sum=0

if [ $Pa = "add" ]; then
  sum=$((${t[0]} + ${t[1]}))
fi

if [ $Pa = "sub" ]; then
  sum=$((${t[0]} - ${t[1]}))
fi

if [ $Pa = "div" ]; then
  sum=$((${t[0]} / ${t[1]}))
fi

if [ $Pa = "mul" ]; then
  sum=$((${t[0]} * ${t[1]}))
fi

echo "num1 : ${t[0]}"
echo "num2 : ${t[1]}"
echo "op : $Pa"
echo "result : $sum"


