#!/bin/bash

# 폴더가 있는지 확인하고 없으면 생성
if [ ! -d "$1" ]
then
    mkdir "$1"
fi

cd "$1"

# 5개의 파일을 만들기
touch file0.txt file1.txt file2.txt file3.txt file4.txt

# 압축
tar -cvf files.tar file0.txt file1.txt file2.txt file3.txt file4.txt

# 새로운 폴더를 만들어 압축을 해제
mkdir files

# 압축 파일을 새 파일에 해제
tar -xvf files.tar -C files

rm files.tar
cd files
tar -cvf files.tar file0.txt file1.txt file2.txt file3.txt file4.txt

exit 0
