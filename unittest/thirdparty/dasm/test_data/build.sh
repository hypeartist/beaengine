\ls -1 *.asm | sed -e 's/\.asm//g' | awk '{print "nasm -w-all -O0 -fbin -o" $1 ".bin " $1 ".asm"}' | sh

