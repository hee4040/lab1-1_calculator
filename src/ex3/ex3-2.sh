#!/bin/sh

# 두 숫자 입력받기
a=$1
b=$3

# 연사자를 입력받아 계산
if [ "$2" = "+" ]
then
  echo `expr $a + $b`
  
elif [ "$2" = "-" ]
then
  echo `expr $a - $b`
  
else
  echo "+나- 중에서 입력해주세요."
fi

exit 0
