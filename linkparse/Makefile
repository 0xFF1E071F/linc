.PHONY: all list
all: 
	gcc -c main.c
	gcc -o main main.o

list: 
	gcc -S -fverbose-asm -masm=intel main.c 
	nm main.o > build.log
	size main.o >> build.log
	@echo "--- elf ---" >> build.log
	nm linkparse >> build.log
	size linkparse >> build.log
	readelf -a linkparse >> build.log
	gcc main.c -Wl,-verbose >> build.log
