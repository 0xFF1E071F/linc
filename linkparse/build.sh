#!/bin/bash


gcc -c main.c > build.log
gcc -o linkparse main.o >> build.log

nm main.o >> build.log
cat build.log

