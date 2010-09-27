#!/bin/sh
pth=`pwd`
dasm_exec=${pth}/../../bin/Linux.gnu.Debug/ndisasm
filter_exec=${pth}/../../bin/Linux.gnu.Debug/filter_table

for i in 16 32 64; do
    for j in 16 32 64; do
	oname="t_${i}_${j}"
	nasm -fbin -o ${oname}.bin ${oname}.asm
	${dasm_exec} -b ${j} ${oname}.bin > dasm.temp
	cat dasm.temp | awk '{$1 = ""; print}' | sed -e 's/^ //g' > ${oname}.d
	rm dasm.temp
	${filter_exec} ${oname}.d ${j} > table_${i}_${j}.dasm
	rm ${oname}.d
	rm ${oname}.bin
    done
done

touch temp_table.dasm
for i in 16 32 64; do
    for j in 16 32 64; do
	oname="table_${i}_${j}.dasm"
	cat $oname >> temp_table.dasm
	rm ${oname}
    done
done

${filter_exec} temp_table.dasm > table.dasm
rm temp_table.dasm

cat table.dasm | sed -e 's/^.*)//g' | awk '{print $1}' | sort -u | uniq > inst.txt