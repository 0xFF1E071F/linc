PHONY: all hard asm list dump linkscript run 

all: 
	gcc -nostdlib startup.s -o minc main.c

hard:
	gcc -Og -o minc -Wl,-Map=main_old.map main_old.c

asm:
	gcc -s -nostdlib -nodefaultlibs -nostartfiles -m32 -static main_asm.s -o minc

list:
	gcc -S -fverbose-asm -masm=intel main.c 
	nm -n main.o > build.log
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
