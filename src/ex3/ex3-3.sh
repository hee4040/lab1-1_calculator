#!/bin/sh

weight=$1
height=$2

# 신장을 미터 단위로 변환
height_m=$(echo "$height / 100" | bc -l)

# BMI 계산: 체중(kg) / (신장(m) * 신장(m))
bmi=$(echo "$weight / ($height_m * $height_m)" | bc -l)

# BMI 판별
if [ $(echo "$bmi < 18.5" | bc -l) -eq 1 ]
then
  echo "저체중입니다."

elif [ $(echo "$bmi >= 18.5" | bc -l) -eq 1 ] && [ $(echo "$bmi < 23" | bc -l) -eq 1 ]
then
  echo "정상 체중입니다."

else
  echo "과체중입니다."
fi

exit 0
