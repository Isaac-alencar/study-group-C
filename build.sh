#! /usr/bin/bash

# read file name
echo "Digite o nome do arquivo"
read output_name

# finding the exercis to compile
ROOT_PATH="$(pwd)"
EXERCISES_PATH="/exercises/${output_name}"
FILE_NAME="${output_name}.c"
FILE_PATH="${ROOT_PATH}${EXERCISES_PATH}/${FILE_NAME}"
BUILD_PATH="${ROOT_PATH}${EXERCISES_PATH}/${output_name}"

gcc $FILE_PATH -o $BUILD_PATH

chmod a+x $BUILD_PATH
echo "##################################"
echo "##### Running your program   #####"
echo "##################################"

"$BUILD_PATH"
