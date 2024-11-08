#!/bin/sh

# 내부 함수 만들고 리눅스 명령어 실행
myFunction() {
  echo "함수 안으로 들어왔음"
  ls "$@"
  return
}

echo "프로그램을 시작합니다."
myFunction "$@"
echo "프로그램을 종료합니다."

exit 0
