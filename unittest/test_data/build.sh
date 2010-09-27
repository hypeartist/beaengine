#!/bin/sh
pth=`pwd`
dasm_exec=${pth}/../../bin/Linux.gnu.Debug/ndisasm
filter_exec=${pth}/../../bin/Linux.gnu.Debug/filter_table
for i in 16 32 64; do
    for j in 16 32 64; do
	oname="t_${i}_${j}"
	nasm -fbin -o ${oname}.bin ${oname}.asm
	${dasm_exec} -b ${j} ${oname}.bin > dasm.temp
	cat dasm.temp | awk '{$1 = ""; $2 = ""; print}' | sed -e 's/^ //g' > ${oname}.i
	cat dasm.temp | awk '{$1 = ""; print}' | sed -e 's/^ //g' > ${oname}.d
	rm dasm.temp
	${filter_exec} ${oname}.d ${j} > table_${i}_${j}.dasm
	rm ${oname}.d
	rm ${oname}.i
	rm ${oname}.bin
    done
done