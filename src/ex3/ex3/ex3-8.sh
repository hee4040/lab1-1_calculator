#!/bin/sh

# DB 파일 이름 정의
db_file="DB.txt"

name=$1
phone=$2

# DB 파일이 없으면 생성
if [ ! -f "$db_file" ]; then
  touch $db_file
fi

# 이름과 전화번호가 모두 입력되지 않았을 경우  
if [ -z "$name" ] || [ -z "$phone" ]; then
  echo "이름과 정보를 입력해주세요."
  exit 1
fi

# DB.txt 파일에 입력된 이름과 전화번호 추가
echo "$name $phone" >> $db_file

exit 0
