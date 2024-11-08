#!/bin/sh

db_file="DB.txt"

# 검색어 입력
search_term=$1

# 검색어가 입력되지 않았을 경우 메시지 출력
if [ -z "$search_term" ]
then
  echo "검색어를 입력해주세요."
  exit 1
fi

# DB.txt에서 입력한 검색어와 부분 일치하는 줄을 출력
grep "$search_term" "$db_file"

# 검색 결과가 없을 경우 메시지 출력
if [ $? -ne 0 ]
then
  echo "일치하는 정보를 찾을 수 없습니다."
fi

exit 0
