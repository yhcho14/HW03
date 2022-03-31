# 2022-03-31 조용현
# calculator script

#echo ${Pa}
t1=`cat num1.txt`
t2=`cat num2.txt`


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
  sum=$(($t1 + $t2))
fi

if [ $Pa = "sub" ]; then
  sum=$(($t1 - $t2))
fi

if [ $Pa = "div" ]; then
  sum=$(($t1 / $t2))
fi

if [ $Pa = "mul" ]; then
  sum=$(($t1 * $t2))
fi

echo "num1 : $t1"
echo "num2 : $t2"
echo "op : $Pa"
echo "result : $sum"


