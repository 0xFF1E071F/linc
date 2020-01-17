PHONY: all list dump linkscript run 

all: 
	#gcc -o minc main_old.c
	gcc -nostdlib startup.s -o minc main.c

list:
	gcc -S -fverbose-asm -masm=intel main.c 
	nm main.o > build.log
	size main.o >> build.log
	@echo "--- elf ---" >> build.log
	nm minc >> build.log
	size minc >> build.log
	readelf -a minc >> build.log

dump:
	objdump -d minc

linkscript:
	gcc main.c -Wl,-verbose >> build.log

run: all
	wc -c minc
	./minc
