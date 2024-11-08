#!/bin/bash

# 폴더가 있는지 확인하고 없으면 생성
if [ ! -d "$1" ]
then
    mkdir "$1"
fi

cd "$1"

# 5개의 파일을 만들기
touch file0.txt file1.txt file2.txt file3.txt file4.txt

# 파일 이름대로 하위 폴더들을 생성
for file in file*.txt
do
    dirname="${file%.*}"
    mkdir "$dirname"
    ln -s "../$file" "$dirname/$file"
done

exit 0
