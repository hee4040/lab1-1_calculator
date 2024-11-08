#!/bin/sh

echo "리눅스가 재미있나요? (yes/no)"
read answer

# 다양한 입력에 대한 방어 코드
case $answer in
  yes|y|Y|Yes|YES)
    echo "yes";;
    
  [nN]*)
    echo "no";;
    
  *)
    echo "yes or no로 입력해 주세요."
    exit 1;;
esac

exit 0
