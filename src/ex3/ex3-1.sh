#!/bin/sh

n=$1 

# 숫자가 입력되지 않았을 경우
if [ -z "$n" ]
then
  count=0
  while [ $count -lt 10 ]
  do
    echo "hello world"
    count=$((count + 1))
  done
  
else
  # 숫자가 입력된 경우 해당 숫자만큼 출력
  i=1
  while [ $i -le $n ]  
  do
    echo "hello world"
    i=$((i + 1)) 
  done
fi

exit 0
