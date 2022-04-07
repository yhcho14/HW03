#!/bin/bash
# 2022-03-31 조용현
# main script

echo "...create temp directory..."
mkdir temp

echo "...copy files to temp directory..."
cp num1.txt ./temp
cp num2.txt ./temp
cp cal.sh ./temp

echo "1) add"
echo "2) sub"
echo "3) div"
echo "4) mul"
echo -n "select menu : "
read menu
Pa=0


if [ ${menu} -eq 1 ]; then
    echo "...add selected..."
    Pa=add
fi

if [ ${menu} -eq 2 ]; then
    echo "...sub selected..."
    Pa="sub"
fi

if [ ${menu} -eq 3 ]; then
    echo "...div selected..."
    Pa="div"
fi

if [ ${menu} -eq 4 ]; then
    echo "...mul selected..."
    Pa="mul"
fi

echo "...run calculator..."
export Pa
./temp/cal.sh

