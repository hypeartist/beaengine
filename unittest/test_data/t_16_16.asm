BITS 16
add [bx+si],al
add [bx+si],ax
add ax,bx
add al,[bx+si]
add ax,[bx+si]
add al,0x0
push es
pop es
or [bx+si],al
or [bx+si],ax
or ax,[bx+si]
or al,0x0
push cs
sldt [bx+si]
str [bx+si]
lldt [bx+si]
ltr [bx+si]
verr [bx+si]
verw [bx+si]
sldt ax
str ax
lldt ax
ltr ax
verr ax
verw ax
sgdt [bx+si]
sidt [bx+si]
lgdt [bx+si]
lidt [bx+si]
smsw [bx+si]
lmsw [bx+si]
invlpg [bx+si]
vmcall
vmlaunch
vmresume
vmxoff
monitor
mwait
xgetbv
xsetbv
invlpga
smsw ax
lmsw ax
rdtscp
lar ax,[bx+si]
lsl ax,[bx+si]
loadall286
clts
loadall
invd
wbinvd
ud2
prefetch [bx+si]
femms
pfrcp mm0,mm0
pfrcpit1 mm0,mm1
pfmul mm0,mm1
pfrcpit2 mm0,mm1
pfcmpge mm0,mm2
pfrsqrt mm1,mm0
pfrsqit1 mm1,mm0
pfmul mm1,mm1
pfrcpit2 mm1,mm2
pfsubr mm1,mm3
pfmul mm2,mm0
pswapd mm3,mm4
pfpnacc mm4,mm6
pfnacc mm6,mm5
pf2iw mm7,mm0
movups xmm0,[bx+si]
movups xmm1,[bx+si]
movups xmm1,[bp+di]
movups xmm1,xmm2
movups [bx+si],xmm0
movups [bx+si],xmm2
movups [bp+di],xmm2
movlps xmm0,[bx+si]
movlps xmm1,[bx+si]
movlps xmm1,[bp+di]
movhlps xmm0,xmm0
movhlps xmm1,xmm2
movlps [bx+si],xmm0
movlps [bx+si],xmm2
movlps [bp+di],xmm2
unpcklps xmm0,[bx+si]
unpcklps xmm1,[bx+si]
unpcklps xmm1,[bp+di]
unpcklps xmm1,xmm2
unpckhps xmm0,[bx+si]
unpckhps xmm1,[bx+si]
unpckhps xmm1,[bp+di]
unpckhps xmm1,xmm2
movhps xmm0,[bx+si]
movhps xmm1,[bx+si]
movhps xmm1,[bp+di]
movlhps xmm0,xmm0
movlhps xmm1,xmm2
movhps [bx+si],xmm0
movhps [bx+si],xmm2
movhps [bp+di],xmm2
prefetchnta [bx+si]
prefetcht0 [bx+si]
prefetcht1 [bx+si]
prefetcht2 [bx+si]
nop word [bx+si]
nop word [bx+di]
nop word [bx+si+0x0]
mov eax,cr0
mov eax,dr0
mov eax,dr7
mov cr0,eax
mov cr2,ebx
mov cr4,edx
mov dr0,eax
mov dr1,edx
movaps xmm0,[bx+si]
movaps xmm1,[bx+si]
movaps xmm1,[bp+di]
movaps xmm1,xmm2
movaps [bx+si],xmm0
movaps [bx+si],xmm2
movaps [bp+di],xmm2
cvtpi2ps xmm0,[bx+si]
cvtpi2ps xmm1,[bp+di]
cvtpi2ps xmm1,mm2
cvtpi2ps xmm2,mm3
movntps [bx+si],xmm0
movntps [bx+si],xmm1
movntps [bp+di],xmm2
cvttps2pi mm0,[bx+si]
cvttps2pi mm1,[bp+di]
cvttps2pi mm1,xmm2
cvttps2pi mm4,xmm5
cvtps2pi mm0,[bx+si]
cvtps2pi mm1,[bp+di]
cvtps2pi mm1,xmm2
cvtps2pi mm6,xmm7
ucomiss xmm0,[bx+si]
ucomiss xmm1,[bx+si]
ucomiss xmm1,[bp+di]
ucomiss xmm1,xmm2
comiss xmm0,[bx+si]
comiss xmm1,[bx+si]
comiss xmm1,[bp+di]
comiss xmm1,xmm2
wrmsr
rdtsc
rdmsr
rdpmc
sysenter
sysexit
getsec
pshufb mm0,[bx+si]
pshufb mm0,mm1
phaddw mm0,mm1
phaddd mm0,mm1
phaddsw mm0,mm1
pmaddubsw mm0,mm1
phsubw mm0,mm1
phsubd mm0,mm1
phsubsw mm0,mm1
psignb mm0,mm1
psignw mm0,mm1
psignd mm0,mm1
pmulhrsw mm0,mm1
pabsb mm0,mm1
pabsw mm0,mm1
pabsd mm0,mm1
movbe ax,word [bx+si]
movbe cx,word [bx+si]
movbe word [bx+si],ax
palignr mm0,mm0,0x0
palignr mm0,mm1,0x3
cmovo ax,[bx+si]
cmovno ax,[bx+si]
cmovc ax,[bx+si]
cmovnc ax,[bx+si]
cmovz ax,[bx+si]
cmovnz ax,[bx+si]
cmovna ax,[bx+si]
cmova ax,[bx+si]
cmovs ax,[bx+si]
cmovns ax,[bx+si]
cmovpe ax,[bx+si]
cmovpo ax,[bx+si]
cmovl ax,[bx+si]
cmovnl ax,[bx+si]
cmovng ax,[bx+si]
cmovg ax,[bx+si]
movmskps eax,xmm0
movmskps eax,xmm1
movmskps eax,xmm2
movmskps ebx,xmm2
sqrtps xmm0,[bx+si]
sqrtps xmm1,[bx+si]
sqrtps xmm1,[bp+di]
sqrtps xmm1,xmm2
rsqrtps xmm0,[bx+si]
rsqrtps xmm1,[bx+si]
rsqrtps xmm1,[bp+di]
rsqrtps xmm1,xmm2
rcpps xmm0,[bx+si]
rcpps xmm1,[bx+si]
rcpps xmm1,[bp+di]
rcpps xmm1,xmm2
andps xmm0,[bx+si]
andps xmm1,[bx+si]
andps xmm1,[bp+di]
andps xmm1,xmm2
andnps xmm0,[bx+si]
andnps xmm1,[bx+si]
andnps xmm1,[bp+di]
andnps xmm1,xmm2
orps xmm0,[bx+si]
orps xmm1,[bx+si]
orps xmm1,[bp+di]
orps xmm1,xmm2
xorps xmm0,[bx+si]
xorps xmm1,[bx+si]
xorps xmm1,[bp+di]
xorps xmm1,xmm2
xorps xmm2,xmm2
addps xmm0,[bx+si]
addps xmm1,[bx+si]
addps xmm1,[bp+di]
addps xmm1,xmm2
mulps xmm0,[bx+si]
mulps xmm1,[bx+si]
mulps xmm1,[bp+di]
mulps xmm1,xmm2
cvtps2pd xmm0,[bx+si]
cvtps2pd xmm1,[bx+si]
cvtps2pd xmm1,[bp+di]
cvtps2pd xmm1,xmm2
cvtps2pd xmm2,xmm3
cvtdq2ps xmm0,[bx+si]
cvtdq2ps xmm1,[bx+si]
cvtdq2ps xmm1,[bp+di]
cvtdq2ps xmm1,xmm2
subps xmm0,[bx+si]
subps xmm1,[bx+si]
subps xmm1,[bp+di]
subps xmm1,xmm2
minps xmm0,[bx+si]
minps xmm1,[bx+si]
minps xmm1,[bp+di]
minps xmm1,xmm2
divps xmm0,[bx+si]
divps xmm1,[bx+si]
divps xmm1,[bp+di]
divps xmm1,xmm2
maxps xmm0,[bx+si]
maxps xmm1,[bx+si]
maxps xmm1,[bp+di]
maxps xmm1,xmm2
punpcklbw mm0,[bx+si]
punpcklwd mm0,[bx+si]
punpckldq mm0,[bx+si]
packsswb mm0,[bx+si]
pcmpgtb mm0,[bx+si]
pcmpgtw mm0,[bx+si]
pcmpgtw mm0,mm2
pcmpgtd mm0,[bx+si]
packuswb mm0,[bx+si]
punpckhbw mm0,[bx+si]
punpckhwd mm0,[bx+si]
punpckhdq mm0,[bx+si]
packssdw mm0,[bx+si]
movd mm0,[bx+si]
movd mm7,eax
movq mm0,[bx+si]
movq mm0,[bp+si]
movq mm1,[bx+si]
movq mm0,mm1
movq mm1,mm0
movq mm2,mm1
pshufw mm0,[bx+si],0x0
psrlw mm0,0x0
psrlw mm0,0x1
psraw mm0,0x0
psraw mm1,0x1
psllw mm0,0x0
psrld mm0,0x0
psrld mm0,0x1
psrad mm0,0x0
psrad mm1,0x1
pslld mm0,0x0
psrlq mm0,0x0
psrlq mm0,0x1
psllq mm0,0x0
pcmpeqb mm0,[bx+si]
pcmpeqw mm0,[bx+si]
pcmpeqd mm0,[bx+si]
emms
vmread dword [bx+si],eax
vmread dword [bp+di],ecx
vmwrite eax,dword [bx+si]
vmwrite ebp,dword [di+0x0]
movd [bx+si],mm0
movd eax,mm0
movq [bx+si],mm0
movq [bp+si],mm0
jz  0xe
js  0x34
jpe  0x35
push fs
pop fs
cpuid
bt [bx+si],ax
bt [bx+si],di
bt si,di
shld [bx+si],ax,0x0
shld cx,dx,0xa
shld ax,bx,0x5
shld [bx+si],ax,cl
shld ax,bx,cl
xstore
push gs
pop gs
rsm
bts [bx+si],ax
bts [bx+si],dx
bts ax,dx
shrd [bx+si],ax,0x0
shrd [bx+si],ax,cl
shrd cx,dx,cl
fxsave [bx+si]
fxsave [0x0]
fxrstor [bx+si]
fxrstor [0x0]
ldmxcsr [bx+si]
ldmxcsr [bp+di]
stmxcsr [bx+si]
stmxcsr [bp+di]
xsave [bx+si]
xrstor [bx+si]
clflush [bx+si]
lfence
mfence
sfence
imul ax,[bx+si]
cmpxchg [bx+si],al
cmpxchg [bx+si],ax
cmpxchg [bx+si],dx
lss ax,[bx+si]
btr [bx+si],ax
btr [bx+si],bp
btr sp,bp
lfs ax,[bx+si]
lgs ax,[bx+si]
movzx ax,[bx+si]
movzx cx,[bp+di]
btc [bx+si],ax
bsf ax,[bx+si]
bsf dx,[bx+si]
bsf ax,dx
bsr ax,[bx+si]
bsr bx,[bx+si]
bsr cx,bx
movsx ax,[bx+si]
xadd [bx+si],al
xadd [bx+si],ax
xadd [bx+si],di
cmpeqps xmm0,[bx+si]
cmpltps xmm0,[bx+si]
cmpleps xmm0,[bx+si]
cmpunordps xmm0,[bx+si]
cmpneqps xmm0,[bx+si]
cmpnltps xmm0,[bx+si]
cmpnleps xmm0,[bx+si]
cmpordps xmm0,[bx+si]
cmpnltps xmm1,[bx+si]
cmpeqps xmm1,[bp+di]
cmpeqps xmm1,xmm2
cmpnltps xmm1,xmm2
movnti [bx+si],eax
pinsrw mm0,[bx+si],0x0
pinsrw mm3,si,0x5
pextrw eax,mm0,0x0
pextrw ebx,mm5,0x0
shufps xmm0,[bx+si],0x0
shufps xmm1,[bx+si],0x5
shufps xmm1,[bp+di],0x0
shufps xmm1,xmm2,0x0
shufps xmm1,xmm2,0x5
cmpxchg8b [bx+si]
vmptrld [bx+si]
vmptrst [bx+si]
psrlw mm0,[bx+si]
psrld mm0,[bx+si]
psrlq mm0,[bx+si]
paddq mm0,[bx+si]
pmullw mm0,[bx+si]
pmovmskb eax,mm0
pmovmskb edi,mm0
psubusb mm0,[bx+si]
psubusw mm0,[bx+si]
pminub mm0,[bx+si]
pand mm0,[bx+si]
paddusb mm0,[bx+si]
paddusw mm0,[bx+si]
pmaxub mm0,[bx+si]
pandn mm0,[bx+si]
pavgb mm0,[bx+si]
psraw mm0,[bx+si]
psrad mm0,[bx+si]
pavgw mm0,[bx+si]
pmulhuw mm0,[bx+si]
pmulhw mm0,[bx+si]
movntq [bx+si],mm0
psubsb mm0,[bx+si]
psubsw mm0,[bx+si]
pminsw mm0,[bx+si]
por mm0,[bx+si]
paddsb mm0,[bx+si]
paddsw mm0,[bx+si]
pmaxsw mm0,[bx+si]
pxor mm0,[bx+si]
psllw mm0,[bx+si]
pslld mm0,[bx+si]
psllq mm0,[bx+si]
pmuludq mm0,[bx+si]
pmaddwd mm0,[bx+si]
psadbw mm0,[bx+si]
maskmovq mm0,mm0
psubb mm0,[bx+si]
psubw mm0,[bx+si]
psubd mm0,[bx+si]
psubq mm0,[bx+si]
paddb mm0,[bx+si]
paddw mm0,[bx+si]
paddd mm0,[bx+si]
adc [bx+si],al
adc [bx+si],ax
adc al,[bx+si]
adc ax,[bx+si]
adc al,0x0
push ss
pop ss
sbb [bx+si],al
sbb [bx+si],ax
sbb al,[bx+si]
sbb ax,[bx+si]
sbb al,0x0
push ds
pop ds
and [bx+si],al
and [bx+si],ax
and al,[bx+si]
and ax,[bx+si]
and al,0x0
idiv dword [dword es:0x5]
fnstenv [es:ecx+0x5]
mov [es:bx+si],ax
fnstenv [es:bx+di+0x5]
cmpeqsd xmm0,[es:bx+si]
cmpeqss xmm0,[es:bx+si]
daa
sub [bx+si],al
sub [bx+si],ax
sub bx,di
sub al,[bx+si]
sub ax,[bx+si]
sub al,0x0
idiv dword [cs:0x5]
mov [cs:bx+si],ax
mov es,[cs:0x0]
das
xor [bx+si],al
xor [bx+si],ax
xor al,[bx+si]
xor ax,[bx+si]
xor al,0x0
idiv word [ss:edi+0x5]
mov [ss:bx+si],ax
mov ds,[ss:0x10]
call word far [ss:0x0]
aaa
cmp [bx+si],al
cmp [bx+si],ax
cmp al,[bx+si]
cmp ax,[bx+si]
cmp al,0x0
mov [ds:bx+si],ax
aas
inc ax
inc cx
inc dx
inc bx
inc sp
inc bp
inc si
inc di
dec ax
dec cx
dec dx
dec bx
dec sp
dec bp
dec si
dec di
push ax
push cx
push dx
push bx
push sp
push bp
push si
push di
pop ax
pop cx
pop dx
pop bx
pop sp
pop bp
pop si
pop di
pushaw
popaw
bound ax,[bx+si]
bound sp,[0x4]
arpl [bx+si],ax
lock and [fs:eax],esi
mov [fs:bx+si],ax
mov ax,[fs:di+0x0]
mov eax,[dword gs:ebx+ecx]
mov [gs:bx+si],ax
add eax,ebx
o32 push cs
smsw eax
movupd xmm0,[bx+si]
movupd xmm1,[bx+si]
movupd xmm1,[bp+di]
movupd xmm1,xmm2
movupd [bx+si],xmm0
movupd [bx+si],xmm2
movupd [bp+di],xmm2
movlpd xmm0,[bx+si]
movlpd xmm1,[bx+si]
movlpd xmm1,[bp+di]
movlpd [bx+si],xmm0
movlpd [bx+si],xmm2
movlpd [bp+di],xmm2
unpcklpd xmm0,[bx+si]
unpcklpd xmm1,[bx+si]
unpcklpd xmm1,[bp+di]
unpcklpd xmm1,xmm2
unpckhpd xmm0,[bx+si]
unpckhpd xmm1,[bx+si]
unpckhpd xmm1,[bp+di]
unpckhpd xmm1,xmm2
movhpd xmm0,[bx+si]
movhpd xmm1,[bx+si]
movhpd xmm1,[bp+di]
movhpd [bx+si],xmm0
movhpd [bx+si],xmm2
movhpd [bp+di],xmm2
movapd xmm0,[bx+si]
movapd xmm1,[bx+si]
movapd xmm1,[bp+di]
movapd xmm1,xmm2
movapd [bx+si],xmm0
movapd [bx+si],xmm2
movapd [bp+di],xmm2
cvtpi2pd xmm0,[bx+si]
cvtpi2pd xmm1,[bp+di]
cvtpi2pd xmm1,mm2
cvtpi2pd xmm5,mm6
movntpd [bx+si],xmm0
movntpd [bx+si],xmm1
movntpd [bp+di],xmm2
cvttpd2pi mm0,[bx+si]
cvttpd2pi mm1,[bp+di]
cvttpd2pi mm0,xmm1
cvttpd2pi mm1,xmm2
cvtpd2pi mm0,[bx+si]
cvtpd2pi mm1,[bp+di]
cvtpd2pi mm1,xmm2
cvtpd2pi mm4,xmm5
ucomisd xmm0,[bx+si]
ucomisd xmm1,[bx+si]
ucomisd xmm1,[bp+di]
ucomisd xmm1,xmm2
comisd xmm0,[bx+si]
comisd xmm1,[bx+si]
comisd xmm1,[bp+di]
comisd xmm1,xmm2
pshufb xmm0,[bx+si]
pshufb xmm1,[bx+si]
pshufb xmm0,xmm1
pshufb xmm1,xmm2
phaddw xmm0,[bx+si]
phaddw xmm1,[bx+si]
phaddw xmm0,xmm1
phaddw xmm1,xmm2
phaddd xmm0,[bx+si]
phaddd xmm1,[bx+si]
phaddd xmm0,xmm1
phaddd xmm1,xmm2
phaddsw xmm0,[bx+si]
phaddsw xmm1,[bx+si]
phaddsw xmm0,xmm1
phaddsw xmm1,xmm2
pmaddubsw xmm0,[bx+si]
pmaddubsw xmm1,[bx+si]
pmaddubsw xmm0,xmm1
pmaddubsw xmm1,xmm2
phsubw xmm0,[bx+si]
phsubw xmm1,[bx+si]
phsubw xmm0,xmm1
phsubw xmm1,xmm2
phsubd xmm0,[bx+si]
phsubd xmm1,[bx+si]
phsubd xmm0,xmm1
phsubd xmm1,xmm2
phsubsw xmm0,[bx+si]
phsubsw xmm1,[bx+si]
phsubsw xmm0,xmm1
phsubsw xmm1,xmm2
psignb xmm1,[bx+si]
psignb xmm0,xmm0
psignb xmm0,xmm1
psignb xmm1,xmm2
psignw xmm1,[bx+si]
psignw xmm0,xmm0
psignw xmm0,xmm1
psignw xmm1,xmm2
psignd xmm1,[bx+si]
psignd xmm0,xmm0
psignd xmm0,xmm1
psignd xmm1,xmm2
pmulhrsw xmm1,[bx+si]
pmulhrsw xmm0,xmm0
pmulhrsw xmm0,xmm1
pmulhrsw xmm1,xmm2
pblendvb xmm1,[bx+si],xmm0
pblendvb xmm0,xmm0,xmm0
pblendvb xmm1,xmm2,xmm0
blendvps xmm1,[bx+si],xmm0
blendvps xmm0,xmm0,xmm0
blendvps xmm1,xmm2,xmm0
blendvps xmm1,xmm3,xmm0
blendvpd xmm1,[bx+si],xmm0
blendvpd xmm0,xmm0,xmm0
blendvpd xmm1,xmm2,xmm0
blendvpd xmm1,xmm3,xmm0
ptest xmm1,[bx+si]
ptest xmm0,xmm0
ptest xmm1,xmm2
pabsb xmm1,[bx+si]
pabsb xmm0,xmm0
pabsb xmm0,xmm1
pabsb xmm1,xmm2
pabsw xmm1,[bx+si]
pabsw xmm0,xmm0
pabsw xmm0,xmm1
pabsw xmm1,xmm2
pabsd xmm1,[bx+si]
pabsd xmm0,xmm0
pabsd xmm0,xmm1
pabsd xmm1,xmm2
pmovsxbw xmm1,[bx+si]
pmovsxbw xmm0,xmm0
pmovsxbw xmm1,xmm2
pmovsxbd xmm1,[bx+si]
pmovsxbd xmm0,xmm0
pmovsxbd xmm1,xmm2
pmovsxbq xmm1,[bx+si]
pmovsxbq xmm0,xmm0
pmovsxbq xmm1,xmm2
pmovsxwd xmm1,[bx+si]
pmovsxwd xmm0,xmm0
pmovsxwd xmm1,xmm2
pmovsxwq xmm1,[bx+si]
pmovsxwq xmm0,xmm0
pmovsxwq xmm1,xmm2
pmovsxdq xmm1,[bx+si]
pmovsxdq xmm0,xmm0
pmovsxdq xmm1,xmm2
pmuldq xmm1,[bx+si]
pmuldq xmm0,xmm0
pmuldq xmm1,xmm2
pcmpeqq xmm1,[bx+si]
pcmpeqq xmm0,xmm0
pcmpeqq xmm1,xmm2
movntdqa xmm0,[bx+si]
movntdqa xmm1,[bx+si]
packusdw xmm1,[bx+si]
packusdw xmm0,xmm0
packusdw xmm1,xmm2
pmovzxbw xmm1,[bx+si]
pmovzxbw xmm0,xmm0
pmovzxbw xmm1,xmm2
pmovzxbd xmm1,[bx+si]
pmovzxbd xmm0,xmm0
pmovzxbd xmm1,xmm2
pmovzxbq xmm1,[bx+si]
pmovzxbq xmm0,xmm0
pmovzxbq xmm1,xmm2
pmovzxwd xmm1,[bx+si]
pmovzxwd xmm0,xmm0
pmovzxwd xmm1,xmm2
pmovzxwq xmm1,[bx+si]
pmovzxwq xmm0,xmm0
pmovzxwq xmm1,xmm2
pmovzxdq xmm1,[bx+si]
pmovzxdq xmm0,xmm0
pmovzxdq xmm1,xmm2
pcmpgtq xmm1,[bx+si]
pcmpgtq xmm0,xmm0
pcmpgtq xmm1,xmm2
pminsb xmm1,[bx+si]
pminsb xmm0,xmm0
pminsb xmm1,xmm2
pminsd xmm1,[bx+si]
pminsd xmm0,xmm0
pminsd xmm1,xmm2
pminuw xmm1,[bx+si]
pminuw xmm0,xmm0
pminuw xmm1,xmm2
pminud xmm1,[bx+si]
pminud xmm0,xmm0
pminud xmm1,xmm2
pmaxsb xmm1,[bx+si]
pmaxsb xmm0,xmm0
pmaxsb xmm1,xmm2
pmaxsd xmm1,[bx+si]
pmaxsd xmm0,xmm0
pmaxsd xmm1,xmm2
pmaxuw xmm1,[bx+si]
pmaxuw xmm0,xmm0
pmaxuw xmm1,xmm2
pmaxud xmm1,[bx+si]
pmaxud xmm0,xmm0
pmaxud xmm1,xmm2
pmulld xmm1,[bx+si]
pmulld xmm0,xmm0
pmulld xmm1,xmm2
phminposuw xmm1,[bx+si]
phminposuw xmm0,xmm0
phminposuw xmm1,xmm2
invvpid ecx,[bp+si]
aesimc xmm1,oword [bx+si]
aesimc xmm0,xmm0
aesimc xmm1,xmm2
aesenc xmm1,oword [bx+si]
aesenc xmm0,xmm0
aesenc xmm1,xmm2
aesenc xmm5,xmm6
aesenclast xmm1,oword [bx+si]
aesenclast xmm0,xmm0
aesenclast xmm1,xmm2
aesdec xmm1,oword [bx+si]
aesdec xmm0,xmm0
aesdec xmm1,xmm2
aesdeclast xmm1,oword [bx+si]
aesdeclast xmm0,xmm0
aesdeclast xmm1,xmm2
movbe eax,dword [bx+si]
movbe ecx,dword [bx+si]
roundps xmm1,[bx+si],0x5
roundps xmm0,xmm0,0x0
roundps xmm1,xmm2,0x5
roundpd xmm1,[bx+si],0x5
roundpd xmm0,xmm0,0x0
roundpd xmm1,xmm2,0x5
roundss xmm1,[bx+si],0x5
roundss xmm0,xmm0,0x0
roundss xmm1,xmm2,0x5
roundsd xmm1,[bx+si],0x5
roundsd xmm0,xmm0,0x0
roundsd xmm1,xmm2,0x5
blendps xmm1,[bx+si],0x5
blendps xmm0,xmm0,0x0
blendps xmm1,xmm2,0x5
blendpd xmm1,[bx+si],0x5
blendpd xmm0,xmm0,0x0
blendpd xmm1,xmm2,0x5
pblendw xmm1,[bx+si],0x5
pblendw xmm0,xmm0,0x0
pblendw xmm1,xmm2,0x5
palignr xmm1,[bx+si],0x5
palignr xmm0,xmm0,0x0
palignr xmm0,xmm1,0x3
palignr xmm1,xmm2,0x5
pextrb byte [bx+si],xmm2,0x5
pextrb eax,xmm0,0x0
pextrb eax,xmm1,0x5
pextrb ecx,xmm1,0x5
pextrb eax,xmm2,0x5
pextrw word [bx+si],xmm2,0x5
pextrw eax,xmm1,0x5
pextrw esi,xmm1,0x5
pextrd dword [0x4],xmm1,0x5
pextrd dword [dword 0x4],xmm1,0x5
pextrd dword [bx+si],xmm2,0x5
pextrd eax,xmm0,0x0
pextrd eax,xmm1,0x5
pextrd eax,xmm2,0x5
extractps dword [bx+si],xmm1,0x5
extractps eax,xmm0,0x0
extractps eax,xmm1,0x5
extractps edi,xmm1,0x5
pinsrb xmm1,[bx+si],0x5
pinsrb xmm0,al,0x0
pinsrb xmm1,al,0x5
insertps xmm1,[bx+si],0x5
insertps xmm0,xmm0,0x0
insertps xmm1,xmm2,0x5
pinsrd xmm1,[bx+si],0x5
pinsrd xmm1,eax,0x5
dpps xmm1,[bx+si],0x5
dpps xmm0,xmm0,0x0
dpps xmm1,xmm2,0x5
dppd xmm1,[bx+si],0x5
dppd xmm0,xmm0,0x0
dppd xmm1,xmm2,0x5
mpsadbw xmm1,[bx+si],0x5
mpsadbw xmm0,xmm0,0x0
mpsadbw xmm1,xmm2,0x5
pclmullqlqdq xmm1,oword [bx+si]
pclmulhqlqdq xmm1,oword [bx+si]
pclmullqhqdq xmm1,oword [bx+si]
pclmulhqhqdq xmm1,oword [bx+si]
pclmullqlqdq xmm0,xmm0
pclmullqlqdq xmm1,xmm2
pclmulhqlqdq xmm1,xmm2
pclmullqhqdq xmm1,xmm2
pclmulhqhqdq xmm1,xmm2
pcmpestrm xmm1,[bx+si],0x5
pcmpestrm xmm0,xmm0,0x0
pcmpestrm xmm1,xmm2,0x5
pcmpestri xmm1,[bx+si],0x5
pcmpestri xmm0,xmm0,0x0
pcmpestri xmm1,xmm2,0x5
pcmpistrm xmm1,[bx+si],0x5
pcmpistrm xmm0,xmm0,0x0
pcmpistrm xmm1,xmm2,0x5
pcmpistri xmm1,[bx+si],0x5
pcmpistri xmm0,xmm0,0x0
pcmpistri xmm1,xmm2,0x5
movmskpd eax,xmm0
movmskpd eax,xmm2
movmskpd edx,xmm7
movmskpd ebx,xmm2
sqrtpd xmm0,[bx+si]
sqrtpd xmm1,[bx+si]
sqrtpd xmm1,[bp+di]
sqrtpd xmm1,xmm2
andpd xmm0,[bx+si]
andpd xmm1,[bx+si]
andpd xmm1,[bp+di]
andpd xmm1,xmm2
andnpd xmm0,[bx+si]
andnpd xmm1,[bx+si]
andnpd xmm1,[bp+di]
andnpd xmm1,xmm2
orpd xmm0,[bx+si]
orpd xmm1,[bx+si]
orpd xmm1,[bp+di]
orpd xmm1,xmm2
xorpd xmm0,[bx+si]
xorpd xmm1,[bx+si]
xorpd xmm1,[bp+di]
xorpd xmm1,xmm2
addpd xmm0,[bx+si]
addpd xmm1,[bx+si]
addpd xmm1,[bp+di]
addpd xmm1,xmm2
addpd xmm5,xmm6
mulpd xmm0,[bx+si]
mulpd xmm1,[bx+si]
mulpd xmm1,[bp+di]
mulpd xmm1,xmm2
cvtpd2ps xmm0,[bx+si]
cvtpd2ps xmm1,[bx+si]
cvtpd2ps xmm1,[bp+di]
cvtpd2ps xmm1,xmm2
cvtps2dq xmm0,[bx+si]
cvtps2dq xmm1,[bx+si]
cvtps2dq xmm1,[bp+di]
cvtps2dq xmm1,xmm2
cvtps2dq xmm6,xmm7
subpd xmm0,[bx+si]
subpd xmm1,[bx+si]
subpd xmm1,[bp+di]
subpd xmm1,xmm2
minpd xmm0,[bx+si]
minpd xmm1,[bx+si]
minpd xmm1,[bp+di]
minpd xmm1,xmm2
divpd xmm0,[bx+si]
divpd xmm1,[bx+si]
divpd xmm1,[bp+di]
divpd xmm1,xmm2
maxpd xmm0,[bx+si]
maxpd xmm1,[bx+si]
maxpd xmm1,[bp+di]
maxpd xmm1,xmm2
punpcklbw xmm0,[bx+si]
punpcklbw xmm1,[bx+si]
punpcklbw xmm1,[bp+di]
punpcklbw xmm1,xmm2
punpcklwd xmm0,[bx+si]
punpcklwd xmm1,[bx+si]
punpcklwd xmm1,[bp+di]
punpcklwd xmm1,xmm2
punpckldq xmm0,[bx+si]
punpckldq xmm1,[bx+si]
punpckldq xmm1,[bp+di]
punpckldq xmm1,xmm2
packsswb xmm0,[bx+si]
packsswb xmm1,[bx+si]
packsswb xmm1,[bp+di]
packsswb xmm1,xmm2
pcmpgtb xmm0,[bx+si]
pcmpgtb xmm1,[bx+si]
pcmpgtb xmm1,[bp+di]
pcmpgtb xmm1,xmm2
pcmpgtw xmm0,[bx+si]
pcmpgtw xmm1,[bx+si]
pcmpgtw xmm1,[bp+di]
pcmpgtw xmm1,xmm2
pcmpgtd xmm0,[bx+si]
pcmpgtd xmm1,[bx+si]
pcmpgtd xmm1,[bp+di]
pcmpgtd xmm1,xmm2
packuswb xmm0,[bx+si]
packuswb xmm1,[bx+si]
packuswb xmm1,[bp+di]
packuswb xmm1,xmm2
punpckhbw xmm0,[bx+si]
punpckhbw xmm1,[bx+si]
punpckhbw xmm1,[bp+di]
punpckhbw xmm1,xmm2
punpckhwd xmm0,[bx+si]
punpckhwd xmm1,[bx+si]
punpckhwd xmm1,[bp+di]
punpckhwd xmm1,xmm2
punpckhdq xmm0,[bx+si]
punpckhdq xmm1,[bx+si]
punpckhdq xmm1,[bp+di]
punpckhdq xmm1,xmm2
packssdw xmm0,[bx+si]
packssdw xmm1,[bx+si]
packssdw xmm1,[bp+di]
packssdw xmm1,xmm2
punpcklqdq xmm0,[bx+si]
punpcklqdq xmm1,[bx+si]
punpcklqdq xmm1,[bp+di]
punpcklqdq xmm1,xmm2
punpckhqdq xmm0,[bx+si]
punpckhqdq xmm1,[bx+si]
punpckhqdq xmm1,[bp+di]
punpckhqdq xmm1,xmm2
movd xmm0,[bx+si]
movd xmm1,[bx+si]
movd xmm1,[bp+di]
movd xmm1,eax
movd xmm1,ecx
movd xmm1,ebx
movdqa xmm0,[bx+si]
movdqa xmm1,[bx+si]
movdqa xmm1,[bp+di]
movdqa xmm1,xmm2
pshufd xmm0,[bx+si],0x0
pshufd xmm1,[bx+si],0x5
pshufd xmm1,[bp+di],0x0
pshufd xmm1,xmm2,0x0
pshufd xmm1,xmm2,0x5
psrlw xmm0,0x0
psrlw xmm0,0x1
psrlw xmm1,0x5
psraw xmm0,0x0
psraw xmm1,0x1
psraw xmm1,0x5
psllw xmm0,0x0
psllw xmm1,0x5
psrld xmm0,0x0
psrld xmm0,0x1
psrld xmm1,0x5
psrad xmm0,0x0
psrad xmm1,0x1
psrad xmm1,0x5
pslld xmm0,0x0
pslld xmm1,0x5
psrlq xmm0,0x0
psrlq xmm0,0x1
psrlq xmm1,0x5
psrldq xmm0,0x0
psrldq xmm1,0x5
psllq xmm0,0x0
psllq xmm1,0x5
pslldq xmm0,0x0
pslldq xmm1,0x5
pslldq xmm7,0x5
pcmpeqb xmm0,[bx+si]
pcmpeqb xmm1,[bx+si]
pcmpeqb xmm1,[bp+di]
pcmpeqb xmm1,xmm2
pcmpeqb xmm3,xmm4
pcmpeqw xmm0,[bx+si]
pcmpeqw xmm1,[bx+si]
pcmpeqw xmm1,[bp+di]
pcmpeqw xmm1,xmm2
pcmpeqd xmm0,[bx+si]
pcmpeqd xmm1,[bx+si]
pcmpeqd xmm1,[bp+di]
pcmpeqd xmm1,xmm2
extrq xmm0,0x0,0x0
extrq xmm0,0x5,0x4
extrq xmm1,0x0,0x1
extrq xmm6,0x0,0x7
extrq xmm0,xmm0
extrq xmm1,xmm2
extrq xmm2,xmm3
haddpd xmm0,[bx+si]
haddpd xmm1,[bx+si]
haddpd xmm1,[bp+di]
haddpd xmm7,[bx+di+0x4]
haddpd xmm1,xmm2
haddpd xmm2,xmm4
hsubpd xmm0,[bx+si]
hsubpd xmm1,[bx+si]
hsubpd xmm1,[bp+di]
hsubpd xmm1,[di+0x0]
hsubpd xmm1,xmm2
hsubpd xmm5,xmm3
movd [bx+si],xmm0
movd [bx+si],xmm2
movd [bp+di],xmm2
movd eax,xmm0
movd eax,xmm2
movdqa [bx+si],xmm0
movdqa [bx+si],xmm2
movdqa [bp+di],xmm2
bt esi,edi
shld ecx,edx,0xa
shld eax,ebx,0x5
shld eax,ebx,cl
bts eax,edx
shrd ecx,edx,cl
lss esp,[0xb]
btr esp,ebp
lfs ecx,[0xd]
lgs edx,[0xf]
bsf eax,edx
bsr ecx,ebx
movsx eax,byte [bx+di]
cmpeqpd xmm0,[bx+si]
cmpltpd xmm0,[bx+si]
cmplepd xmm0,[bx+si]
cmpunordpd xmm0,[bx+si]
cmpneqpd xmm0,[bx+si]
cmpnltpd xmm0,[bx+si]
cmpnlepd xmm0,[bx+si]
cmpordpd xmm0,[bx+si]
cmpnltpd xmm1,[bx+si]
cmpeqpd xmm1,[bp+di]
cmpeqpd xmm1,xmm2
cmpnltpd xmm1,xmm2
pinsrw xmm0,[bx+si],0x0
pinsrw xmm1,[bx+si],0x5
pinsrw xmm1,[bp+di],0x0
pinsrw xmm1,ax,0x3
pinsrw xmm1,ax,0x5
pinsrw xmm1,bx,0x0
pextrw eax,xmm0,0x0
pextrw eax,xmm2,0x5
pextrw ecx,xmm0,0x1
pextrw ebx,xmm2,0x0
shufpd xmm0,[bx+si],0x0
shufpd xmm1,[bx+si],0x5
shufpd xmm1,[bp+di],0x0
shufpd xmm1,xmm2,0x0
shufpd xmm1,xmm2,0x5
vmclear [bx+si]
bswap ecx
addsubpd xmm0,[bx+si]
addsubpd xmm1,[bx+si]
addsubpd xmm1,[bp+di]
addsubpd xmm1,xmm2
addsubpd xmm5,xmm7
psrlw xmm0,[bx+si]
psrlw xmm1,[bx+si]
psrlw xmm1,[bp+di]
psrlw xmm1,xmm2
psrld xmm0,[bx+si]
psrld xmm1,[bx+si]
psrld xmm1,[bp+di]
psrld xmm1,xmm2
psrlq xmm0,[bx+si]
psrlq xmm1,[bx+si]
psrlq xmm1,[bp+di]
psrlq xmm1,xmm2
paddq xmm0,[bx+si]
paddq xmm1,[bx+si]
paddq xmm1,[bp+di]
paddq xmm1,xmm2
pmullw xmm0,[bx+si]
pmullw xmm1,[bx+si]
pmullw xmm1,[bp+di]
pmullw xmm1,xmm2
movq [bx+si],xmm0
movq [bx+si],xmm1
movq [bx+si],xmm2
movq [bp+di],xmm2
pmovmskb eax,xmm1
pmovmskb eax,xmm2
pmovmskb esi,xmm1
psubusb xmm0,[bx+si]
psubusb xmm1,[bx+si]
psubusb xmm1,[bp+di]
psubusb xmm1,xmm2
psubusw xmm0,[bx+si]
psubusw xmm1,[bx+si]
psubusw xmm1,[bp+di]
psubusw xmm1,xmm2
pminub xmm0,[bx+si]
pminub xmm1,[bx+si]
pminub xmm1,[bp+di]
pminub xmm1,xmm2
pand xmm0,[bx+si]
pand xmm1,[bx+si]
pand xmm1,[bp+di]
pand xmm1,xmm2
paddusb xmm0,[bx+si]
paddusb xmm1,[bx+si]
paddusb xmm1,[bp+di]
paddusb xmm1,xmm2
paddusw xmm0,[bx+si]
paddusw xmm1,[bx+si]
paddusw xmm1,[bp+di]
paddusw xmm1,xmm2
pmaxub xmm0,[bx+si]
pmaxub xmm1,[bx+si]
pmaxub xmm1,[bp+di]
pmaxub xmm1,xmm2
pandn xmm0,[bx+si]
pandn xmm1,[bx+si]
pandn xmm1,[bp+di]
pandn xmm1,xmm2
pavgb xmm0,[bx+si]
pavgb xmm1,[bx+si]
pavgb xmm1,[bp+di]
pavgb xmm1,xmm2
psraw xmm0,[bx+si]
psraw xmm1,[bx+si]
psraw xmm1,[bp+di]
psraw xmm1,xmm2
psrad xmm0,[bx+si]
psrad xmm1,[bx+si]
psrad xmm1,[bp+di]
psrad xmm1,xmm2
pavgw xmm0,[bx+si]
pavgw xmm1,[bx+si]
pavgw xmm1,[bp+di]
pavgw xmm1,xmm2
pmulhuw xmm0,[bx+si]
pmulhuw xmm1,[bx+si]
pmulhuw xmm1,[bp+di]
pmulhuw xmm1,xmm2
pmulhw xmm0,[bx+si]
pmulhw xmm1,[bx+si]
pmulhw xmm1,[bp+di]
pmulhw xmm1,xmm2
cvttpd2dq xmm0,[bx+si]
cvttpd2dq xmm1,[bx+si]
cvttpd2dq xmm1,[bp+di]
cvttpd2dq xmm1,xmm2
cvttpd2dq xmm4,xmm5
movntdq [bx+si],xmm0
movntdq [bx+si],xmm1
movntdq [bp+di],xmm2
psubsb xmm0,[bx+si]
psubsb xmm1,[bx+si]
psubsb xmm1,[bp+di]
psubsb xmm1,xmm2
psubsw xmm0,[bx+si]
psubsw xmm1,[bx+si]
psubsw xmm1,[bp+di]
psubsw xmm1,xmm2
pminsw xmm0,[bx+si]
pminsw xmm1,[bx+si]
pminsw xmm1,[bp+di]
pminsw xmm1,xmm2
por xmm0,[bx+si]
por xmm1,[bx+si]
por xmm1,[bp+di]
por xmm1,xmm2
paddsb xmm0,[bx+si]
paddsb xmm1,[bx+si]
paddsb xmm1,[bp+di]
paddsb xmm1,xmm2
paddsw xmm0,[bx+si]
paddsw xmm1,[bx+si]
paddsw xmm1,[bp+di]
paddsw xmm1,xmm2
pmaxsw xmm0,[bx+si]
pmaxsw xmm1,[bx+si]
pmaxsw xmm1,[bp+di]
pmaxsw xmm1,xmm2
pxor xmm0,[bx+si]
pxor xmm1,[bx+si]
pxor xmm1,[bp+di]
pxor xmm1,xmm2
psllw xmm0,[bx+si]
psllw xmm1,[bx+si]
psllw xmm1,[bp+di]
psllw xmm1,xmm2
pslld xmm0,[bx+si]
pslld xmm1,[bx+si]
pslld xmm1,[bp+di]
pslld xmm1,xmm2
psllq xmm0,[bx+si]
psllq xmm1,[bx+si]
psllq xmm1,[bp+di]
psllq xmm1,xmm2
pmuludq xmm0,[bx+si]
pmuludq xmm1,[bx+si]
pmuludq xmm1,[bp+di]
pmuludq xmm1,xmm2
pmaddwd xmm0,[bx+si]
pmaddwd xmm1,[bx+si]
pmaddwd xmm1,[bp+di]
pmaddwd xmm1,xmm2
psadbw xmm0,[bx+si]
psadbw xmm1,[bx+si]
psadbw xmm1,[bp+di]
psadbw xmm1,xmm2
maskmovdqu xmm0,xmm0
maskmovdqu xmm1,xmm2
psubb xmm0,[bx+si]
psubb xmm1,[bx+si]
psubb xmm1,[bp+di]
psubb xmm1,xmm2
psubw xmm0,[bx+si]
psubw xmm1,[bx+si]
psubw xmm1,[bp+di]
psubw xmm1,xmm2
psubd xmm0,[bx+si]
psubd xmm1,[bx+si]
psubd xmm1,[bp+di]
psubd xmm1,xmm2
psubq xmm0,[bx+si]
psubq xmm1,[bx+si]
psubq xmm1,[bp+di]
psubq xmm1,xmm2
paddb xmm0,[bx+si]
paddb xmm1,[bx+si]
paddb xmm1,[bp+di]
paddb xmm1,xmm2
paddw xmm0,[bx+si]
paddw xmm1,[bx+si]
paddw xmm1,[bp+di]
paddw xmm1,xmm2
paddd xmm0,[bx+si]
paddd xmm1,[bx+si]
paddd xmm1,[bp+di]
paddd xmm1,xmm2
and eax,0xe00
sub ebx,edi
push esi
pop edi
pushad
popad
push dword 0x80
imul eax,eax,byte +0x4
imul esi,ebp,byte +0x2
insd
outsd
or edx,0x23
or ebx,0x23
or ebp,0xe00
xor ecx,0xe00
or ebx,byte +0x23
and edx,byte +0x23
and edi,byte +0x23
xor esp,byte +0x23
xchg eax,[0x0]
xchg ecx,[0x0]
xchg ebx,ecx
mov ecx,edx
mov eax,cs
mov eax,ss
mov eax,fs
lea ebx,[0x20]
xchg eax,eax
xchg eax,ecx
xchg eax,edx
xchg eax,ebx
cwde
cdq
call dword 0x1234:0x56789abc
popfd
movsd
cmpsd
stosd
lodsd
scasd
mov eax,0x1
mov eax,0x2
mov eax,0x4
mov eax,0x8
mov eax,0x11111111
mov ax,0x6261
ror ebx,0x3
rcl ecx,0x2
shr eax,0x5
les ebx,[0x9]
lds eax,[0x1]
lds eax,[0x7]
mov dword [0x2],0x3
iretd
rcr edx,1
shr ebx,1
rol eax,cl
shr ecx,cl
sar esi,cl
in eax,0x63
in eax,0x64
out 0x42,eax
out 0x4d,eax
jmp dword 0x1234:0x56789abc
in eax,dx
out dx,eax
crc32 eax,ebx
crc32 ecx,ebx
popcnt eax,ebx
lzcnt eax,ebx
idiv dword [bp+0x0]
not eax
neg ecx
mul ecx
mul ebx
idiv eax
call dword near [0x357]
push dword [0x2]
add [eax],al
sldt [eax]
str [eax]
lldt [eax]
ltr [eax]
verr [eax]
verw [eax]
sgdt [eax]
sidt [eax]
lgdt [eax]
lidt [eax]
smsw [eax]
invlpg [eax]
invlpga eax,ecx
movups xmm1,[eax]
movups xmm1,[ebx]
movups [eax],xmm2
movups [ebx],xmm2
movlps xmm1,[eax]
movlps xmm1,[ebx]
movlps [eax],xmm2
movlps [ebx],xmm2
unpcklps xmm1,[eax]
unpcklps xmm1,[ebx]
unpckhps xmm1,[eax]
unpckhps xmm1,[ebx]
movhps xmm1,[eax]
movhps xmm1,[ebx]
movhps [eax],xmm2
movhps [ebx],xmm2
movaps xmm1,[eax]
movaps xmm1,[ebx]
movaps [eax],xmm2
movaps [ebx],xmm2
cvtpi2ps xmm1,[ebx]
movntps [eax],xmm1
movntps [ebx],xmm2
cvttps2pi mm1,[ebx]
cvtps2pi mm1,[ebx]
ucomiss xmm1,[eax]
ucomiss xmm1,[ebx]
comiss xmm1,[eax]
comiss xmm1,[ebx]
movbe ax,word [eax]
movbe cx,word [eax]
sqrtps xmm1,[eax]
sqrtps xmm1,[ebx]
rsqrtps xmm1,[eax]
rsqrtps xmm1,[ebx]
rcpps xmm1,[eax]
rcpps xmm1,[ebx]
andps xmm1,[eax]
andps xmm1,[ebx]
andnps xmm1,[eax]
andnps xmm1,[ebx]
orps xmm1,[eax]
orps xmm1,[ebx]
xorps xmm1,[eax]
xorps xmm1,[ebx]
addps xmm1,[eax]
addps xmm1,[ebx]
mulps xmm1,[eax]
mulps xmm1,[ebx]
cvtps2pd xmm1,[eax]
cvtps2pd xmm1,[ebx]
cvtdq2ps xmm1,[eax]
cvtdq2ps xmm1,[ebx]
subps xmm1,[eax]
subps xmm1,[ebx]
minps xmm1,[eax]
minps xmm1,[ebx]
divps xmm1,[eax]
divps xmm1,[ebx]
maxps xmm1,[eax]
maxps xmm1,[ebx]
movq mm0,[edx]
movq mm1,[eax]
vmread dword [ebx],ecx
vmwrite ebp,dword [ebp+0x0]
movq [edx],mm0
fxsave [dword eax+ebx]
fxrstor [dword edi+eax*2]
ldmxcsr [eax]
ldmxcsr [ebx]
stmxcsr [eax]
stmxcsr [ebx]
movzx cx,[ebx]
movsx ax,[ecx]
cmpnltps xmm1,[eax]
cmpeqps xmm1,[ebx]
shufps xmm1,[eax],0x5
shufps xmm1,[ebx],0x0
vmptrst [eax]
xor ax,[dword ebp+ecx*4+0x0]
xor bx,[dword ebp+ecx*4+0x4]
xor si,[dword ebp+ecx*4+0x8]
xor di,[dword ebp+ecx*4+0xc]
arpl [eax],ax
lar eax,[eax]
lsl eax,[eax]
movupd xmm1,[eax]
movupd xmm1,[ebx]
movupd [eax],xmm2
movupd [ebx],xmm2
movlpd xmm1,[eax]
movlpd xmm1,[ebx]
movlpd [eax],xmm2
movlpd [ebx],xmm2
unpcklpd xmm1,[eax]
unpcklpd xmm1,[ebx]
unpckhpd xmm1,[eax]
unpckhpd xmm1,[ebx]
movhpd xmm1,[eax]
movhpd xmm1,[ebx]
movhpd [eax],xmm2
movhpd [ebx],xmm2
movapd xmm1,[eax]
movapd xmm1,[ebx]
movapd [eax],xmm2
movapd [ebx],xmm2
cvtpi2pd xmm1,[ebx]
movntpd [eax],xmm1
movntpd [ebx],xmm2
cvttpd2pi mm1,[ebx]
cvtpd2pi mm1,[ebx]
ucomisd xmm1,[eax]
ucomisd xmm1,[ebx]
comisd xmm1,[eax]
comisd xmm1,[ebx]
pshufb xmm1,[eax]
phaddw xmm1,[eax]
phaddd xmm1,[eax]
phaddsw xmm1,[eax]
pmaddubsw xmm1,[eax]
phsubw xmm1,[eax]
phsubd xmm1,[eax]
phsubsw xmm1,[eax]
psignb xmm1,[eax]
psignw xmm1,[eax]
psignd xmm1,[eax]
pmulhrsw xmm1,[eax]
pblendvb xmm1,[eax],xmm0
blendvps xmm1,[eax],xmm0
blendvpd xmm1,[eax],xmm0
ptest xmm1,[eax]
pabsb xmm1,[eax]
pabsw xmm1,[eax]
pabsd xmm1,[eax]
pmovsxbw xmm1,[eax]
pmovsxbd xmm1,[eax]
pmovsxbq xmm1,[eax]
pmovsxwd xmm1,[eax]
pmovsxwq xmm1,[eax]
pmovsxdq xmm1,[eax]
pmuldq xmm1,[eax]
pcmpeqq xmm1,[eax]
movntdqa xmm1,[eax]
packusdw xmm1,[eax]
pmovzxbw xmm1,[eax]
pmovzxbd xmm1,[eax]
pmovzxbq xmm1,[eax]
pmovzxwd xmm1,[eax]
pmovzxwq xmm1,[eax]
pmovzxdq xmm1,[eax]
pcmpgtq xmm1,[eax]
pminsb xmm1,[eax]
pminsd xmm1,[eax]
pminuw xmm1,[eax]
pminud xmm1,[eax]
pmaxsb xmm1,[eax]
pmaxsd xmm1,[eax]
pmaxuw xmm1,[eax]
pmaxud xmm1,[eax]
pmulld xmm1,[eax]
phminposuw xmm1,[eax]
aesimc xmm1,oword [eax]
aesenc xmm1,oword [eax]
aesenclast xmm1,oword [eax]
aesdec xmm1,oword [eax]
aesdeclast xmm1,oword [eax]
movbe eax,dword [eax]
movbe ecx,dword [dword ebx+ecx]
roundps xmm1,[eax],0x5
roundpd xmm1,[eax],0x5
roundss xmm1,[eax],0x5
roundsd xmm1,[eax],0x5
blendps xmm1,[eax],0x5
blendpd xmm1,[eax],0x5
pblendw xmm1,[eax],0x5
palignr xmm1,[eax],0x5
pextrb byte [eax],xmm2,0x5
pextrw word [eax],xmm2,0x5
pextrd dword [eax],xmm2,0x5
extractps dword [eax],xmm1,0x5
pinsrb xmm1,[eax],0x5
insertps xmm1,[eax],0x5
pinsrd xmm0,[eax],0x0
pinsrd xmm1,[eax],0x5
dpps xmm1,[eax],0x5
dppd xmm1,[eax],0x5
mpsadbw xmm1,[eax],0x5
pclmullqlqdq xmm1,oword [eax]
pclmulhqlqdq xmm1,oword [eax]
pclmullqhqdq xmm1,oword [eax]
pclmulhqhqdq xmm1,oword [eax]
pcmpestrm xmm1,[eax],0x5
pcmpestri xmm1,[eax],0x5
pcmpistrm xmm1,[eax],0x5
pcmpistri xmm1,[eax],0x5
sqrtpd xmm1,[eax]
sqrtpd xmm1,[ebx]
andpd xmm1,[eax]
andpd xmm1,[ebx]
andnpd xmm1,[eax]
andnpd xmm1,[ebx]
orpd xmm1,[eax]
orpd xmm1,[ebx]
xorpd xmm1,[eax]
xorpd xmm1,[ebx]
addpd xmm1,[eax]
addpd xmm1,[ebx]
mulpd xmm1,[eax]
mulpd xmm1,[ebx]
cvtpd2ps xmm1,[eax]
cvtpd2ps xmm1,[ebx]
cvtps2dq xmm1,[eax]
cvtps2dq xmm1,[ebx]
subpd xmm1,[eax]
subpd xmm1,[ebx]
minpd xmm1,[eax]
minpd xmm1,[ebx]
divpd xmm1,[eax]
divpd xmm1,[ebx]
maxpd xmm1,[eax]
maxpd xmm1,[ebx]
punpcklbw xmm1,[eax]
punpcklbw xmm1,[ebx]
punpcklwd xmm1,[eax]
punpcklwd xmm1,[ebx]
punpckldq xmm1,[eax]
punpckldq xmm1,[ebx]
packsswb xmm1,[eax]
packsswb xmm1,[ebx]
pcmpgtb xmm1,[eax]
pcmpgtb xmm1,[ebx]
pcmpgtw xmm1,[eax]
pcmpgtw xmm1,[ebx]
pcmpgtd xmm1,[eax]
pcmpgtd xmm1,[ebx]
packuswb xmm1,[eax]
packuswb xmm1,[ebx]
punpckhbw xmm1,[eax]
punpckhbw xmm1,[ebx]
punpckhwd xmm1,[eax]
punpckhwd xmm1,[ebx]
punpckhdq xmm1,[eax]
punpckhdq xmm1,[ebx]
packssdw xmm1,[eax]
packssdw xmm1,[ebx]
punpcklqdq xmm1,[eax]
punpcklqdq xmm1,[ebx]
punpckhqdq xmm1,[eax]
punpckhqdq xmm1,[ebx]
movd xmm1,[eax]
movd xmm1,[ebx]
movdqa xmm1,[eax]
movdqa xmm1,[ebx]
pshufd xmm1,[eax],0x5
pshufd xmm1,[ebx],0x0
pcmpeqb xmm1,[eax]
pcmpeqb xmm1,[ebx]
pcmpeqw xmm1,[eax]
pcmpeqw xmm1,[ebx]
pcmpeqd xmm1,[eax]
pcmpeqd xmm1,[ebx]
haddpd xmm1,[eax]
haddpd xmm1,[ebx]
hsubpd xmm1,[eax]
hsubpd xmm1,[ebx]
hsubpd xmm1,[ebp+0x0]
movd [eax],xmm2
movd [ebx],xmm2
movdqa [eax],xmm2
movdqa [ebx],xmm2
bt [eax],edi
bts [eax],edx
btr [eax],ebp
movzx ecx,byte [ebx]
movzx ebx,word [eax]
bsf edx,[eax]
bsr ebx,[eax]
movsx eax,byte [ecx]
xadd [eax],edi
cmpnltpd xmm1,[eax]
cmpeqpd xmm1,[ebx]
pinsrw xmm1,[eax],0x5
pinsrw xmm1,[ebx],0x0
shufpd xmm1,[eax],0x5
shufpd xmm1,[ebx],0x0
addsubpd xmm0,[eax]
addsubpd xmm1,[eax]
addsubpd xmm1,[ebx]
psrlw xmm1,[eax]
psrlw xmm1,[ebx]
psrld xmm1,[eax]
psrld xmm1,[ebx]
psrlq xmm1,[eax]
psrlq xmm1,[ebx]
paddq xmm1,[eax]
paddq xmm1,[ebx]
pmullw xmm1,[eax]
pmullw xmm1,[ebx]
movq [eax],xmm1
movq [eax],xmm2
movq [ebx],xmm2
psubusb xmm1,[eax]
psubusb xmm1,[ebx]
psubusw xmm1,[eax]
psubusw xmm1,[ebx]
pminub xmm1,[eax]
pminub xmm1,[ebx]
pand xmm1,[eax]
pand xmm1,[ebx]
paddusb xmm1,[eax]
paddusb xmm1,[ebx]
paddusw xmm1,[eax]
paddusw xmm1,[ebx]
pmaxub xmm1,[eax]
pmaxub xmm1,[ebx]
pandn xmm1,[eax]
pandn xmm1,[ebx]
pavgb xmm1,[eax]
pavgb xmm1,[ebx]
psraw xmm1,[eax]
psraw xmm1,[ebx]
psrad xmm1,[eax]
psrad xmm1,[ebx]
pavgw xmm1,[eax]
pavgw xmm1,[ebx]
pmulhuw xmm1,[eax]
pmulhuw xmm1,[ebx]
pmulhw xmm1,[eax]
pmulhw xmm1,[ebx]
cvttpd2dq xmm1,[eax]
cvttpd2dq xmm1,[ebx]
movntdq [eax],xmm1
movntdq [ebx],xmm2
psubsb xmm1,[eax]
psubsb xmm1,[ebx]
psubsw xmm1,[eax]
psubsw xmm1,[ebx]
pminsw xmm1,[eax]
pminsw xmm1,[ebx]
por xmm1,[eax]
por xmm1,[ebx]
paddsb xmm1,[eax]
paddsb xmm1,[ebx]
paddsw xmm1,[eax]
paddsw xmm1,[ebx]
pmaxsw xmm1,[eax]
pmaxsw xmm1,[ebx]
pxor xmm1,[eax]
pxor xmm1,[ebx]
psllw xmm1,[eax]
psllw xmm1,[ebx]
pslld xmm1,[eax]
pslld xmm1,[ebx]
psllq xmm1,[eax]
psllq xmm1,[ebx]
pmuludq xmm1,[eax]
pmuludq xmm1,[ebx]
pmaddwd xmm1,[eax]
pmaddwd xmm1,[ebx]
psadbw xmm1,[eax]
psadbw xmm1,[ebx]
psubb xmm1,[eax]
psubb xmm1,[ebx]
psubw xmm1,[eax]
psubw xmm1,[ebx]
psubd xmm1,[eax]
psubd xmm1,[ebx]
psubq xmm1,[eax]
psubq xmm1,[ebx]
paddb xmm1,[eax]
paddb xmm1,[ebx]
paddw xmm1,[eax]
paddw xmm1,[ebx]
paddd xmm1,[eax]
paddd xmm1,[ebx]
pextrd dword [eax],xmm0,0x0
mov eax,[dword ecx+ebx]
idiv dword [eax]
adc byte [eax],0x12
mov ax,[dword eax+eax]
mov ax,[dword esi+ebp]
mov ax,[dword eax*2+0x0]
mov ax,[eax+0x0]
mov ax,[dword esp+0x8]
mov ax,[dword ebp+esi+0x0]
mov dx,[dword esp+0x4]
mov ax,[eax+0x0]
lea di,[dword eax+edi*8+0x0]
vfmadd132ss xmm1,xmm3,dword [ebx]
vpshufb xmm1,xmm2,oword [eax]
vphaddw xmm1,xmm2,oword [eax]
vphaddd xmm1,xmm2,oword [eax]
vphaddsw xmm1,xmm2,oword [eax]
vpmaddubsw xmm1,xmm2,oword [eax]
vphsubw xmm1,xmm2,oword [eax]
vphsubd xmm1,xmm2,oword [eax]
vphsubsw xmm1,xmm2,oword [eax]
vpsignb xmm1,xmm2,oword [eax]
vpsignw xmm1,xmm2,oword [eax]
vpsignd xmm1,xmm2,oword [eax]
vpmulhrsw xmm1,xmm2,oword [eax]
vpermilps xmm1,xmm2,oword [eax]
vpermilpd xmm1,xmm2,oword [eax]
vpmuldq xmm1,xmm2,oword [eax]
vpackusdw xmm1,xmm2,oword [eax]
vmaskmovps xmm1,xmm2,oword [eax]
vmaskmovpd xmm1,xmm2,oword [eax]
vmaskmovps oword [eax],xmm2,xmm3
vmaskmovpd oword [eax],xmm2,xmm3
vpminsb xmm1,xmm2,oword [eax]
vpminsd xmm1,xmm2,oword [eax]
vpminuw xmm1,xmm2,oword [eax]
vpminud xmm1,xmm2,oword [eax]
vpmaxsb xmm1,xmm2,oword [eax]
vpmaxsd xmm1,xmm2,oword [eax]
vpmaxuw xmm1,xmm2,oword [eax]
vpmaxud xmm1,xmm2,oword [eax]
vpmulld xmm1,xmm2,oword [eax]
vfmaddsub132ps xmm1,xmm2,oword [eax]
vfmsubadd132ps xmm1,xmm2,oword [eax]
vfmadd132ps xmm1,xmm2,oword [edx+0x101]
vfmadd132ss xmm1,xmm2,dword [eax]
vfmsub132ps xmm1,xmm2,oword [esi+0x8]
vfmsub132ss xmm1,xmm2,dword [dword ecx*8+0x0]
vfmsub132ss xmm1,xmm2,dword [dword ebx*8+0x0]
vfnmadd132ps xmm1,xmm2,oword [eax]
vfnmadd132ss xmm1,xmm2,dword [eax]
vfnmsub132ps xmm1,xmm2,oword [eax]
vfnmsub132ss xmm1,xmm2,dword [eax]
vfmaddsub213ps xmm1,xmm2,oword [eax]
vfmsubadd213ps xmm1,xmm2,oword [eax]
vfmadd213ps xmm1,xmm2,oword [edi+0x101]
vfmadd213ss xmm1,xmm2,dword [esi]
vfmadd213ss xmm1,xmm2,dword [edi]
vfmsub213ps xmm1,xmm2,oword [dword esp+0x8]
vfmsub213ss xmm1,xmm2,dword [dword ebp*8+0x0]
vfmsub213ss xmm1,xmm2,dword [dword esi*8+0x0]
vfnmadd213ps xmm1,xmm2,oword [eax]
vfnmadd213ss xmm1,xmm2,dword [eax]
vfnmsub213ps xmm1,xmm2,oword [eax]
vfnmsub213ss xmm1,xmm2,dword [eax]
vfmaddsub231ps xmm1,xmm2,oword [eax]
vfmsubadd231ps xmm1,xmm2,oword [eax]
vfmadd231ps xmm1,xmm2,oword [esi+0x101]
vfmadd231ss xmm1,xmm2,dword [ecx]
vfmadd231ss xmm1,xmm2,dword [edx]
vfmsub231ps xmm1,xmm2,oword [ebp+0x8]
vfmsub231ss xmm1,xmm2,dword [dword edx*8+0x0]
vfmsub231ss xmm1,xmm2,dword [dword edi*8+0x0]
vfnmadd231ps xmm1,xmm2,oword [eax]
vfnmadd231ss xmm1,xmm2,dword [eax]
vfnmsub231ps xmm1,xmm2,oword [eax]
vfnmsub231ss xmm1,xmm2,dword [eax]
vaesenclast xmm1,xmm2,oword [eax]
vaesdec xmm1,xmm2,oword [eax]
vaesdeclast xmm1,xmm2,oword [eax]
vpermilps ymm1,ymm2,yword [eax]
vpermilpd ymm1,ymm2,yword [eax]
vmaskmovps ymm1,ymm2,yword [eax]
vmaskmovpd ymm1,ymm2,yword [eax]
vmaskmovps yword [eax],xmm2,xmm3
vmaskmovpd yword [eax],ymm2,ymm3
vfmaddsub132ps ymm1,ymm2,yword [eax]
vfmsubadd132ps ymm1,ymm2,yword [eax]
vfmadd132ps ymm1,ymm2,yword [dword esp+0x101]
vfmadd132ps ymm1,ymm2,yword [ebp+0x101]
vfnmadd132ps ymm1,ymm2,yword [eax]
vfnmsub132ps ymm1,ymm2,yword [eax]
vfmaddsub213ps ymm1,ymm2,yword [eax]
vfmsubadd213ps ymm1,ymm2,yword [eax]
vfmadd213ps ymm1,ymm2,yword [dword esi+edx*2+0x12c]
vfmadd213ps ymm1,ymm2,yword [dword edi+esi*2+0x12c]
vfnmadd213ps ymm1,ymm2,yword [eax]
vfnmsub213ps ymm1,ymm2,yword [eax]
vfmaddsub231ps ymm1,ymm2,yword [eax]
vfmsubadd231ps ymm1,ymm2,yword [eax]
vfmadd231ps ymm1,ymm2,yword [dword ebx+eax*2+0x12c]
vfmadd231ps ymm1,ymm2,yword [dword ecx+ebx*2+0x12c]
vfnmadd231ps ymm1,ymm2,yword [eax]
vfnmsub231ps ymm1,ymm2,yword [eax]
vpshufb xmm1,xmm1,oword [eax]
vphaddw xmm1,xmm1,oword [eax]
vphaddd xmm1,xmm1,oword [eax]
vphaddsw xmm1,xmm1,oword [eax]
vpmaddubsw xmm1,xmm1,oword [eax]
vphsubw xmm1,xmm1,oword [eax]
vphsubd xmm1,xmm1,oword [eax]
vphsubsw xmm1,xmm1,oword [eax]
vpsignb xmm1,xmm1,oword [eax]
vpsignw xmm1,xmm1,oword [eax]
vpsignd xmm1,xmm1,oword [eax]
vpmulhrsw xmm1,xmm1,oword [eax]
vpmuldq xmm1,xmm1,oword [eax]
vpackusdw xmm1,xmm1,oword [eax]
vpminsb xmm1,xmm1,oword [eax]
vpminsd xmm1,xmm1,oword [eax]
vpminuw xmm1,xmm1,oword [eax]
vpminud xmm1,xmm1,oword [eax]
vpmaxsb xmm1,xmm1,oword [eax]
vpmaxsd xmm1,xmm1,oword [eax]
vpmaxuw xmm1,xmm1,oword [eax]
vpmaxud xmm1,xmm1,oword [eax]
vpmulld xmm1,xmm1,oword [eax]
vaesenclast xmm1,xmm1,oword [eax]
vaesdec xmm1,xmm1,oword [eax]
vaesdeclast xmm1,xmm1,oword [eax]
vtestps xmm1,oword [eax]
vtestpd xmm1,oword [eax]
vptest xmm1,oword [eax]
vbroadcastss xmm1,dword [eax]
vpabsb xmm1,oword [eax]
vpabsw xmm1,oword [eax]
vpabsd xmm1,oword [eax]
vpmovsxbw xmm1,qword [eax]
vpmovsxbd xmm1,dword [eax]
vpmovsxbq xmm1,word [eax]
vpmovsxwd xmm1,qword [eax]
vpmovsxwq xmm1,dword [eax]
vpmovsxdq xmm1,qword [eax]
vmovntdqa xmm1,oword [eax]
vpmovzxbw xmm1,qword [eax]
vpmovzxbd xmm1,dword [eax]
vpmovzxbq xmm1,word [eax]
vpmovzxwd xmm1,qword [eax]
vpmovzxwq xmm1,dword [eax]
vpmovzxdq xmm1,qword [eax]
vphminposuw xmm1,oword [eax]
vtestps ymm1,yword [eax]
vtestpd ymm1,yword [eax]
vptest ymm1,yword [eax]
vbroadcastss ymm1,dword [eax]
vbroadcastsd ymm1,qword [eax]
vbroadcastf128 ymm1,oword [eax]
vfmaddsub132pd xmm1,xmm2,oword [eax]
vfmsubadd132pd xmm1,xmm2,oword [eax]
vfmadd132pd xmm1,xmm2,oword [dword ebp+esi*2+0x12c]
vfmadd132pd xmm1,xmm2,oword [dword ebp+edi*2+0x12c]
vfmadd132sd xmm1,xmm2,qword [dword esp]
vfmadd132sd xmm1,xmm2,qword [ebp+0x0]
vfmsub132sd xmm1,xmm2,qword [dword esp]
vfmsub132sd xmm1,xmm2,qword [eax+0x8]
vfnmadd132pd xmm1,xmm2,oword [eax]
vfnmadd132sd xmm1,xmm2,qword [eax]
vfnmsub132pd xmm1,xmm2,oword [eax]
vfnmsub132sd xmm1,xmm2,qword [eax]
vfmaddsub213pd xmm1,xmm2,oword [eax]
vfmsubadd213pd xmm1,xmm2,oword [eax]
vfmadd213pd xmm1,xmm2,oword [dword ebx+eax*4+0x258]
vfmadd213pd xmm1,xmm2,oword [dword ecx+ebx*4+0x258]
vfmadd213sd xmm1,xmm2,qword [ecx+0x101]
vfmadd213sd xmm1,xmm2,qword [ebx+0x101]
vfmsub213sd xmm1,xmm2,qword [edx+0x8]
vfmsub213sd xmm1,xmm2,qword [edi+0x8]
vfnmadd213pd xmm1,xmm2,oword [eax]
vfnmadd213sd xmm1,xmm2,qword [eax]
vfnmsub213pd xmm1,xmm2,oword [eax]
vfnmsub213sd xmm1,xmm2,qword [eax]
vfmaddsub231pd xmm1,xmm2,oword [eax]
vfmsubadd231pd xmm1,xmm2,oword [eax]
vfmadd231pd xmm1,xmm2,oword [dword esp+eax+0x12c]
vfmadd231pd xmm1,xmm2,oword [dword esp+ebp*2+0x12c]
vfmadd231sd xmm1,xmm2,qword [eax]
vfmadd231sd xmm1,xmm2,qword [eax+0x101]
vfmsub231sd xmm1,xmm2,qword [ecx+0x8]
vfmsub231sd xmm1,xmm2,qword [ebx+0x8]
vfnmadd231pd xmm1,xmm2,oword [eax]
vfnmadd231sd xmm1,xmm2,qword [eax]
vfnmsub231pd xmm1,xmm2,oword [eax]
vfnmsub231sd xmm1,xmm2,qword [eax]
vfmaddsub132pd ymm1,ymm2,yword [eax]
vfmsubadd132pd ymm1,ymm2,yword [eax]
vfmadd132pd ymm1,ymm2,yword [dword esi+edx*4+0x258]
vfmadd132pd ymm1,ymm2,yword [dword edi+esi*4+0x258]
vfmsub132pd ymm1,ymm2,yword [eax]
vfnmadd132pd ymm1,ymm2,yword [eax]
vfnmsub132pd ymm1,ymm2,yword [eax]
vfmaddsub213pd ymm1,ymm2,yword [eax]
vfmsubadd213pd ymm1,ymm2,yword [eax]
vfmadd213pd ymm1,ymm2,yword [dword eax*8+0x0]
vfmadd213pd ymm1,ymm2,yword [dword esp+eax*4+0x258]
vfmsub213pd ymm1,ymm2,yword [eax]
vfnmadd213pd ymm1,ymm2,yword [eax]
vfnmsub213pd ymm1,ymm2,yword [eax]
vfmaddsub231pd ymm1,ymm2,yword [eax]
vfmsubadd231pd ymm1,ymm2,yword [eax]
vfmadd231pd ymm1,ymm2,yword [dword esp+ebp*4+0x258]
vfmadd231pd ymm1,ymm2,yword [dword esp+edi*4+0x258]
vfmsub231pd ymm1,ymm2,yword [eax]
vfnmadd231pd ymm1,ymm2,yword [eax]
vfnmsub231pd ymm1,ymm2,yword [eax]
vpinsrb xmm1,xmm2,byte [eax],byte 0x5
vpinsrd xmm1,xmm2,dword [eax],byte 0x5
vblendvps xmm1,xmm2,oword [eax],xmm4
vblendvpd xmm1,xmm2,oword [eax],xmm4
vpblendvb xmm1,xmm2,oword [eax],xmm4
vblendvps ymm1,ymm2,yword [eax],ymm4
vblendvpd ymm1,ymm2,yword [eax],ymm4
vpinsrb xmm1,xmm1,byte [eax],byte 0x5
vpinsrd xmm1,xmm1,dword [eax],byte 0x5
vfmaddsubps xmm0,xmm1,oword [eax],xmm3
vfmaddsubpd xmm0,xmm1,oword [eax],xmm3
vfmaddps xmm0,xmm1,oword [eax],xmm3
vfmaddpd xmm0,xmm1,oword [eax],xmm3
vfmaddss xmm0,xmm1,dword [eax],xmm3
vfmaddsd xmm0,xmm1,qword [eax],xmm3
vfmsubps xmm0,xmm1,oword [eax],xmm3
vfmsubpd xmm0,xmm1,oword [eax],xmm3
vfmsubss xmm0,xmm1,dword [eax],xmm3
vfmsubsd xmm0,xmm1,qword [eax],xmm3
vfnmaddps xmm0,xmm1,oword [eax],xmm3
vfnmaddpd xmm0,xmm1,oword [eax],xmm3
vfnmaddss xmm0,xmm1,dword [eax],xmm3
vfnmaddsd xmm0,xmm1,qword [eax],xmm3
vfnmsubps xmm0,xmm1,oword [eax],xmm3
vfnmsubpd xmm0,xmm1,oword [eax],xmm3
vfnmsubss xmm0,xmm1,dword [eax],xmm3
vfnmsubsd xmm0,xmm1,qword [eax],xmm3
vfmaddsubps ymm0,ymm1,yword [eax],ymm3
vfmaddsubpd ymm0,ymm1,yword [eax],ymm3
vfmaddps ymm0,ymm1,yword [eax],ymm3
vfmaddpd ymm0,ymm1,yword [eax],ymm3
vfmsubps ymm0,ymm1,yword [eax],ymm3
vfmsubpd ymm0,ymm1,yword [eax],ymm3
vfnmaddps ymm0,ymm1,yword [eax],ymm3
vfnmaddpd ymm0,ymm1,yword [eax],ymm3
vfnmsubps ymm0,ymm1,yword [eax],ymm3
vfnmsubpd ymm0,ymm1,yword [eax],ymm3
vpextrb byte [eax],xmm2,byte 0x5
vfmaddsubps xmm0,xmm1,xmm2,oword [eax]
vfmaddsubpd xmm0,xmm1,xmm2,oword [eax]
vfmaddps xmm0,xmm1,xmm2,oword [eax]
vfmaddpd xmm0,xmm1,xmm2,oword [eax]
vfmaddss xmm0,xmm1,xmm2,dword [eax]
vfmaddsd xmm0,xmm1,xmm2,qword [eax]
vfmsubps xmm0,xmm1,xmm2,oword [eax]
vfmsubpd xmm0,xmm1,xmm2,oword [eax]
vfmsubss xmm0,xmm1,xmm2,dword [eax]
vfmsubsd xmm0,xmm1,xmm2,qword [eax]
vfnmaddps xmm0,xmm1,xmm2,oword [eax]
vfnmaddpd xmm0,xmm1,xmm2,oword [eax]
vfnmaddss xmm0,xmm1,xmm2,dword [eax]
vfnmaddsd xmm0,xmm1,xmm2,qword [eax]
vfnmsubps xmm0,xmm1,xmm2,oword [eax]
vfnmsubpd xmm0,xmm1,xmm2,oword [eax]
vfnmsubss xmm0,xmm1,xmm2,dword [eax]
vfnmsubsd xmm0,xmm1,xmm2,qword [eax]
vfmaddsubps ymm0,ymm1,ymm2,yword [eax]
vfmaddsubpd ymm0,ymm1,ymm2,yword [eax]
vfmaddps ymm0,ymm1,ymm2,yword [eax]
vfmaddpd ymm0,ymm1,ymm2,yword [eax]
vfmsubps ymm0,ymm1,ymm2,yword [eax]
vfmsubpd ymm0,ymm1,ymm2,yword [eax]
vfnmaddps ymm0,ymm1,ymm2,yword [eax]
vfnmaddpd ymm0,ymm1,ymm2,yword [eax]
vfnmsubps ymm0,ymm1,ymm2,yword [eax]
vfnmsubpd ymm0,ymm1,ymm2,yword [eax]
vaddpd ymm5,ymm6,yword [dword eax+edi*4]
vaddpd ymm5,ymm6,yword [dword esi+edi*4]
vmovlps xmm1,xmm2,qword [eax]
vunpcklps xmm1,xmm2,oword [eax]
vunpckhps xmm1,xmm2,oword [eax]
vmovhps xmm1,xmm2,qword [eax]
vandps xmm1,xmm2,oword [eax]
vandnps xmm1,xmm2,oword [eax]
vorps xmm1,xmm2,oword [eax]
vxorps xmm1,xmm2,oword [eax]
vaddps xmm1,xmm2,oword [eax]
vmulps xmm1,xmm2,oword [eax]
vsubps xmm1,xmm2,oword [eax]
vminps xmm1,xmm2,oword [eax]
vdivps xmm1,xmm2,oword [eax]
vmaxps xmm1,xmm2,oword [eax]
vmovlpd xmm1,xmm2,qword [eax]
vunpcklpd xmm1,xmm2,oword [eax]
vunpckhpd xmm1,xmm2,oword [eax]
vmovhpd xmm1,xmm2,qword [eax]
vandpd xmm1,xmm2,oword [eax]
vandnpd xmm1,xmm2,oword [eax]
vorpd xmm1,xmm2,oword [eax]
vxorpd xmm1,xmm2,oword [eax]
vaddpd xmm1,xmm2,oword [eax]
vmulpd xmm1,xmm2,oword [eax]
vsubpd xmm1,xmm2,oword [eax]
vminpd xmm1,xmm2,oword [eax]
vdivpd xmm1,xmm2,oword [eax]
vmaxpd xmm1,xmm2,oword [eax]
vpunpcklbw xmm1,xmm2,oword [eax]
vpunpcklwd xmm1,xmm2,oword [eax]
vpunpckldq xmm1,xmm2,oword [eax]
vpacksswb xmm1,xmm2,oword [eax]
vpcmpgtb xmm1,xmm2,oword [eax]
vpcmpgtw xmm1,xmm2,oword [eax]
vpcmpgtd xmm1,xmm2,oword [eax]
vpackuswb xmm1,xmm2,oword [eax]
vpunpckhbw xmm1,xmm2,oword [eax]
vpunpckhwd xmm1,xmm2,oword [eax]
vpunpckhdq xmm1,xmm2,oword [eax]
vpackssdw xmm1,xmm2,oword [eax]
vpunpcklqdq xmm1,xmm2,oword [eax]
vpunpckhqdq xmm1,xmm2,oword [eax]
vpcmpeqb xmm1,xmm2,oword [eax]
vpcmpeqw xmm1,xmm2,oword [eax]
vpcmpeqd xmm1,xmm2,oword [eax]
vhaddpd xmm1,xmm2,oword [eax]
vhsubpd xmm1,xmm2,oword [eax]
vpsrlw xmm1,xmm2,oword [eax]
vpsrld xmm1,xmm2,oword [eax]
vpsrlq xmm1,xmm2,oword [eax]
vpaddq xmm1,xmm2,oword [eax]
vpmullw xmm1,xmm2,oword [eax]
vpsubusb xmm1,xmm2,oword [eax]
vpsubusw xmm1,xmm2,oword [eax]
vpminub xmm1,xmm2,oword [eax]
vpand xmm1,xmm2,oword [eax]
vpaddusb xmm1,xmm2,oword [eax]
vpaddusw xmm1,xmm2,oword [eax]
vpmaxub xmm1,xmm2,oword [eax]
vpandn xmm1,xmm2,oword [eax]
vpavgb xmm1,xmm2,oword [eax]
vpsraw xmm1,xmm2,oword [eax]
vpsrad xmm1,xmm2,oword [eax]
vpavgw xmm1,xmm2,oword [eax]
vpmulhuw xmm1,xmm2,oword [eax]
vpmulhw xmm1,xmm2,oword [eax]
vpsubsb xmm1,xmm2,oword [eax]
vpsubsw xmm1,xmm2,oword [eax]
vpminsw xmm1,xmm2,oword [eax]
vpor xmm1,xmm2,oword [eax]
vpaddsb xmm1,xmm2,oword [eax]
vpaddsw xmm1,xmm2,oword [eax]
vpmaxsw xmm1,xmm2,oword [eax]
vpxor xmm1,xmm2,oword [eax]
vpsllw xmm1,xmm2,oword [eax]
vpslld xmm1,xmm2,oword [eax]
vpsllq xmm1,xmm2,oword [eax]
vpmuludq xmm1,xmm2,oword [eax]
vpmaddwd xmm1,xmm2,oword [eax]
vpsadbw xmm1,xmm2,oword [eax]
vpsubb xmm1,xmm2,oword [eax]
vpsubw xmm1,xmm2,oword [eax]
vpsubd xmm1,xmm2,oword [eax]
vpsubq xmm1,xmm2,oword [eax]
vpaddb xmm1,xmm2,oword [eax]
vpaddw xmm1,xmm2,oword [eax]
vpaddd xmm1,xmm2,oword [eax]
vcvtsi2ss xmm1,xmm2,dword [eax]
vsqrtss xmm1,xmm2,dword [eax]
vrsqrtss xmm1,xmm2,dword [eax]
vrcpss xmm1,xmm2,dword [eax]
vaddss xmm1,xmm2,dword [eax]
vmulss xmm1,xmm2,dword [eax]
vcvtss2sd xmm1,xmm2,dword [eax]
vsubss xmm1,xmm2,dword [eax]
vminss xmm1,xmm2,dword [eax]
vdivss xmm1,xmm2,dword [eax]
vmaxss xmm1,xmm2,dword [eax]
vcvtsi2sd xmm1,xmm2,dword [eax]
vsqrtsd xmm1,xmm2,qword [eax]
vaddsd xmm1,xmm2,qword [eax]
vmulsd xmm1,xmm2,qword [eax]
vcvtsd2ss xmm1,xmm2,qword [eax]
vsubsd xmm1,xmm2,qword [eax]
vminsd xmm1,xmm2,qword [eax]
vdivsd xmm1,xmm2,qword [eax]
vmaxsd xmm1,xmm2,qword [eax]
vhaddps xmm1,xmm2,oword [eax]
vhsubps xmm1,xmm2,oword [eax]
vaddsubps xmm1,xmm2,oword [eax]
vunpcklps ymm1,ymm2,yword [eax]
vunpckhps ymm1,ymm2,yword [eax]
vandps ymm1,ymm2,yword [eax]
vandnps ymm1,ymm2,yword [eax]
vorps ymm1,ymm2,yword [eax]
vxorps ymm1,ymm2,yword [eax]
vaddps ymm1,ymm2,yword [eax]
vmulps ymm1,ymm2,yword [eax]
vsubps ymm1,ymm2,yword [eax]
vminps ymm1,ymm2,yword [eax]
vdivps ymm1,ymm2,yword [eax]
vmaxps ymm1,ymm2,yword [eax]
vunpcklpd ymm1,ymm2,yword [eax]
vunpckhpd ymm1,ymm2,yword [eax]
vandpd ymm1,ymm2,yword [eax]
vandnpd ymm1,ymm2,yword [eax]
vorpd ymm1,ymm2,yword [eax]
vxorpd ymm1,ymm2,yword [eax]
vaddpd ymm1,ymm2,yword [eax]
vmulpd ymm1,ymm2,yword [eax]
vsubpd ymm1,ymm2,yword [eax]
vminpd ymm1,ymm2,yword [eax]
vdivpd ymm1,ymm2,yword [eax]
vmaxpd ymm1,ymm2,yword [eax]
vhaddpd ymm1,ymm2,yword [eax]
vhsubpd ymm1,ymm2,yword [eax]
vaddsubpd ymm1,ymm2,yword [eax]
vhaddps ymm1,ymm2,yword [eax]
vhsubps ymm1,ymm2,yword [eax]
vaddsubps ymm1,ymm2,yword [eax]
vmovlps xmm1,xmm1,qword [eax]
vunpcklps xmm1,xmm1,oword [eax]
vunpckhps xmm1,xmm1,oword [eax]
vmovhps xmm1,xmm1,qword [eax]
vandps xmm1,xmm1,oword [eax]
vandnps xmm1,xmm1,oword [eax]
vorps xmm1,xmm1,oword [eax]
vxorps xmm1,xmm1,oword [eax]
vaddps xmm1,xmm1,oword [eax]
vmulps xmm1,xmm1,oword [eax]
vsubps xmm1,xmm1,oword [eax]
vminps xmm1,xmm1,oword [eax]
vdivps xmm1,xmm1,oword [eax]
vmaxps xmm1,xmm1,oword [eax]
vmovlpd xmm1,xmm1,qword [eax]
vunpcklpd xmm1,xmm1,oword [eax]
vunpckhpd xmm1,xmm1,oword [eax]
vmovhpd xmm1,xmm1,qword [eax]
vandpd xmm1,xmm1,oword [eax]
vandnpd xmm1,xmm1,oword [eax]
vorpd xmm1,xmm1,oword [eax]
vxorpd xmm1,xmm1,oword [eax]
vaddpd xmm1,xmm1,oword [eax]
vmulpd xmm1,xmm1,oword [eax]
vsubpd xmm1,xmm1,oword [eax]
vminpd xmm1,xmm1,oword [eax]
vdivpd xmm1,xmm1,oword [eax]
vmaxpd xmm1,xmm1,oword [eax]
vpunpcklbw xmm1,xmm1,oword [eax]
vpunpcklwd xmm1,xmm1,oword [eax]
vpunpckldq xmm1,xmm1,oword [eax]
vpacksswb xmm1,xmm1,oword [eax]
vpcmpgtb xmm1,xmm1,oword [eax]
vpcmpgtw xmm1,xmm1,oword [eax]
vpcmpgtd xmm1,xmm1,oword [eax]
vpackuswb xmm1,xmm1,oword [eax]
vpunpckhbw xmm1,xmm1,oword [eax]
vpunpckhwd xmm1,xmm1,oword [eax]
vpunpckhdq xmm1,xmm1,oword [eax]
vpackssdw xmm1,xmm1,oword [eax]
vpunpcklqdq xmm1,xmm1,oword [eax]
vpunpckhqdq xmm1,xmm1,oword [eax]
vpcmpeqb xmm1,xmm1,oword [eax]
vpcmpeqw xmm1,xmm1,oword [eax]
vpcmpeqd xmm1,xmm1,oword [eax]
vhaddpd xmm1,xmm1,oword [eax]
vhsubpd xmm1,xmm1,oword [eax]
vpinsrw xmm1,xmm1,word [eax],byte 0x5
vaddsubpd xmm1,xmm1,oword [eax]
vpsrlw xmm1,xmm1,oword [eax]
vpsrld xmm1,xmm1,oword [eax]
vpsrlq xmm1,xmm1,oword [eax]
vpaddq xmm1,xmm1,oword [eax]
vpmullw xmm1,xmm1,oword [eax]
vpsubusb xmm1,xmm1,oword [eax]
vpsubusw xmm1,xmm1,oword [eax]
vpminub xmm1,xmm1,oword [eax]
vpand xmm1,xmm1,oword [eax]
vpaddusb xmm1,xmm1,oword [eax]
vpaddusw xmm1,xmm1,oword [eax]
vpmaxub xmm1,xmm1,oword [eax]
vpandn xmm1,xmm1,oword [eax]
vpavgb xmm1,xmm1,oword [eax]
vpsraw xmm1,xmm1,oword [eax]
vpsrad xmm1,xmm1,oword [eax]
vpavgw xmm1,xmm1,oword [eax]
vpmulhuw xmm1,xmm1,oword [eax]
vpmulhw xmm1,xmm1,oword [eax]
vpsubsb xmm1,xmm1,oword [eax]
vpsubsw xmm1,xmm1,oword [eax]
vpminsw xmm1,xmm1,oword [eax]
vpor xmm1,xmm1,oword [eax]
vpaddsb xmm1,xmm1,oword [eax]
vpaddsw xmm1,xmm1,oword [eax]
vpmaxsw xmm1,xmm1,oword [eax]
vpxor xmm1,xmm1,oword [eax]
vpsllw xmm1,xmm1,oword [eax]
vpslld xmm1,xmm1,oword [eax]
vpsllq xmm1,xmm1,oword [eax]
vpmuludq xmm1,xmm1,oword [eax]
vpmaddwd xmm1,xmm1,oword [eax]
vpsadbw xmm1,xmm1,oword [eax]
vpsubb xmm1,xmm1,oword [eax]
vpsubw xmm1,xmm1,oword [eax]
vpsubd xmm1,xmm1,oword [eax]
vpsubq xmm1,xmm1,oword [eax]
vpaddb xmm1,xmm1,oword [eax]
vpaddw xmm1,xmm1,oword [eax]
vpaddd xmm1,xmm1,oword [eax]
vcvtsi2ss xmm1,xmm1,dword [eax]
vsqrtss xmm1,xmm1,dword [eax]
vrsqrtss xmm1,xmm1,dword [eax]
vrcpss xmm1,xmm1,dword [eax]
vaddss xmm1,xmm1,dword [eax]
vmulss xmm1,xmm1,dword [eax]
vcvtss2sd xmm1,xmm1,dword [eax]
vsubss xmm1,xmm1,dword [eax]
vminss xmm1,xmm1,dword [eax]
vdivss xmm1,xmm1,dword [eax]
vmaxss xmm1,xmm1,dword [eax]
vcvtsi2sd xmm1,xmm1,dword [eax]
vsqrtsd xmm1,xmm1,qword [eax]
vaddsd xmm1,xmm1,qword [eax]
vmulsd xmm1,xmm1,qword [eax]
vcvtsd2ss xmm1,xmm1,qword [eax]
vsubsd xmm1,xmm1,qword [eax]
vminsd xmm1,xmm1,qword [eax]
vdivsd xmm1,xmm1,qword [eax]
vmaxsd xmm1,xmm1,qword [eax]
vhaddps xmm1,xmm1,oword [eax]
vhsubps xmm1,xmm1,oword [eax]
vaddsubps xmm1,xmm1,oword [eax]
vmovups xmm1,oword [eax]
vmovups oword [eax],xmm2
vmovlps qword [eax],xmm2
vmovhps qword [eax],xmm2
vmovaps xmm1,oword [eax]
vmovaps oword [eax],xmm2
vmovntps oword [eax],xmm1
vucomiss xmm1,dword [eax]
vcomiss xmm1,dword [eax]
vsqrtps xmm1,oword [eax]
vrsqrtps xmm1,oword [eax]
vrcpps xmm1,oword [eax]
vcvtps2pd xmm1,qword [eax]
vcvtdq2ps xmm1,oword [eax]
vldmxcsr dword [eax]
vstmxcsr dword [eax]
vmovupd xmm1,oword [eax]
vmovupd oword [eax],xmm2
vmovlpd qword [eax],xmm2
vmovhpd qword [eax],xmm2
vmovapd xmm1,oword [eax]
vmovapd oword [eax],xmm2
vmovntpd oword [eax],xmm1
vucomisd xmm1,qword [eax]
vcomisd xmm1,qword [eax]
vsqrtpd xmm1,oword [eax]
vcvtpd2ps xmm1,oword [eax]
vcvtps2dq xmm1,oword [eax]
vmovd xmm1,dword [eax]
vmovdqa xmm1,oword [eax]
vmovd dword [eax],xmm2
vmovdqa oword [eax],xmm2
vmovq qword [eax],xmm1
vmovq qword [eax],xmm2
vcvttpd2dq xmm1,oword [eax]
vmovntdq oword [eax],xmm1
vmovss xmm1,qword [eax]
vmovss qword [eax],xmm2
vmovsldup xmm1,oword [eax]
vmovshdup xmm1,oword [eax]
vcvttss2si eax,dword [eax]
vcvtss2si eax,dword [eax]
vcvttps2dq xmm1,oword [eax]
vmovdqu xmm1,oword [eax]
vmovq xmm1,qword [eax]
vmovdqu oword [eax],xmm2
vcvtdq2pd xmm1,qword [eax]
vmovsd xmm1,qword [eax]
vmovsd qword [eax],xmm2
vmovddup xmm1,qword [eax]
vcvttsd2si eax,qword [eax]
vcvtsd2si eax,qword [eax]
vcvtpd2dq xmm1,oword [eax]
vlddqu xmm1,oword [eax]
vmovups ymm1,yword [eax]
vmovups yword [eax],ymm2
vmovaps ymm1,yword [eax]
vmovaps yword [eax],ymm2
vmovntps oword [eax],ymm1
vsqrtps ymm1,yword [eax]
vrsqrtps ymm1,yword [eax]
vrcpps ymm1,yword [eax]
vcvtps2pd ymm1,oword [eax]
vcvtdq2ps ymm1,yword [eax]
vmovupd ymm1,yword [eax]
vmovupd yword [eax],ymm2
vmovapd ymm1,yword [eax]
vmovapd yword [eax],ymm2
vmovntpd yword [eax],ymm1
vsqrtpd ymm1,yword [eax]
vcvtpd2ps xmm1,yword [eax]
vcvtps2dq ymm1,yword [eax]
vmovqqa ymm1,yword [eax]
vmovqqa yword [eax],ymm2
vcvttpd2dq xmm1,yword [eax]
vmovntqq yword [eax],ymm1
vmovsldup ymm1,yword [eax]
vmovshdup ymm1,yword [eax]
vcvttps2dq ymm1,yword [eax]
vmovqqu ymm1,yword [eax]
vmovqqu yword [eax],ymm2
vcvtdq2pd ymm1,oword [eax]
vmovddup ymm1,yword [eax]
vcvtpd2dq xmm1,yword [eax]
vldqqu ymm1,yword [eax]
jecxz $+0x3
movsd xmm1,[eax]
movsd xmm1,[ebx]
movsd [eax],xmm2
movsd [ebx],xmm2
movddup xmm1,[eax]
movddup xmm1,[ebx]
cvtsi2sd xmm1,dword [eax]
cvtsi2sd xmm1,dword [ebx]
movntsd [ebx],xmm2
cvttsd2si eax,[eax]
cvttsd2si eax,[ebx]
cvtsd2si eax,[eax]
cvtsd2si ebx,[ebx]
sqrtsd xmm1,[eax]
sqrtsd xmm1,[ebx]
addsd xmm1,[eax]
addsd xmm1,[ebx]
mulsd xmm1,[eax]
mulsd xmm1,[ebx]
cvtsd2ss xmm1,[eax]
cvtsd2ss xmm1,[ebx]
subsd xmm1,[eax]
subsd xmm1,[ebx]
minsd xmm1,[eax]
minsd xmm1,[ebx]
divsd xmm1,[eax]
divsd xmm1,[ebx]
maxsd xmm1,[eax]
maxsd xmm1,[ebx]
pshuflw xmm1,[eax],0x5
pshuflw xmm1,[ebx],0x0
haddps xmm1,[eax]
haddps xmm1,[ebx]
hsubps xmm1,[eax]
hsubps xmm1,[ebx]
hsubps xmm2,[dword esp]
cmpeqsd xmm0,[eax]
cmpnltsd xmm1,[eax]
cmpeqsd xmm1,[ebx]
addsubps xmm1,[eax]
addsubps xmm1,[ebx]
addsubps xmm3,[edx]
cvtpd2dq xmm1,[eax]
cvtpd2dq xmm1,[ebx]
lddqu xmm1,[eax]
lddqu xmm1,[ebx]
lddqu xmm3,[dword ecx+edx*4+0x8]
movss xmm1,[eax]
movss xmm1,[ebx]
movss [eax],xmm2
movss [ebx],xmm2
movsldup xmm1,[eax]
movsldup xmm1,[ebx]
movshdup xmm1,[eax]
movshdup xmm1,[ebx]
cvtsi2ss xmm1,dword [eax]
cvtsi2ss xmm1,dword [ebx]
movntss [ebx],xmm2
cvttss2si eax,[eax]
cvttss2si eax,[ebx]
cvtss2si eax,[eax]
cvtss2si ecx,[ebx]
cvtss2si ebx,[ebx]
sqrtss xmm1,[eax]
sqrtss xmm1,[ebx]
rsqrtss xmm1,[eax]
rsqrtss xmm1,[ebx]
rcpss xmm1,[eax]
rcpss xmm1,[ebx]
addss xmm1,[eax]
addss xmm1,[ebx]
mulss xmm1,[eax]
mulss xmm1,[ebx]
cvtss2sd xmm1,[eax]
cvtss2sd xmm1,[ebx]
cvttps2dq xmm1,[eax]
cvttps2dq xmm1,[ebx]
subss xmm1,[eax]
subss xmm1,[ebx]
minss xmm1,[eax]
minss xmm1,[ebx]
divss xmm1,[eax]
divss xmm1,[ebx]
maxss xmm1,[eax]
maxss xmm1,[ebx]
movdqu xmm0,[edx]
movdqu xmm1,[eax]
movdqu xmm1,[ebx]
pshufhw xmm1,[eax],0x5
pshufhw xmm1,[ebx],0x0
movq xmm1,[eax]
movq xmm1,[ebx]
movdqu [edx],xmm0
movdqu [eax],xmm2
movdqu [ebx],xmm2
cmpeqss xmm0,[eax]
cmpnltss xmm1,[eax]
cmpeqss xmm1,[ebx]
cmpnless xmm1,[ebx]
vmxon [dword edi+esi*4+0x190]
cvtdq2pd xmm1,[eax]
cvtdq2pd xmm1,[ebx]
idiv byte [dword 0xffffffff]
idiv byte [edi]
idiv word [esi+0x0]
push word 0x80
push byte +0x0
push byte +0x7f
imul ax,[bx+si],byte +0x0
imul ax,ax,byte +0x4
imul si,bp,byte +0x2
insb
insw
outsb
outsw
jo 0x0
jno 0x0
jc 0x2
jc 0x4
jc 0x0
jnc 0x0
jz 0x0
jnz 0x0
jna 0x0
ja 0x0
js 0x0
jns 0x0
jpe 0x0
jpo 0x0
jl 0x0
jnl 0x0
jng 0x0
jg 0x0
add byte [bx+si],0x0
xor cx,0xe00
xor si,0xe00
add word [bx+si],byte +0x0
or bx,byte +0x23
and dx,byte +0x23
and di,byte +0x23
xor sp,byte +0x23
test [bx+si],al
test [bx+si],ax
xchg al,[bx+si]
xchg al,[0x0]
xchg al,al
xchg bl,al
xchg ax,[bx+si]
xchg ax,[0x0]
xchg cx,[0x0]
xchg ax,ax
xchg bx,cx
mov [bx+si],al
mov [0x0],bl
mov [0x1],bl
mov [bx+si],ax
mov cx,dx
mov al,[bx+si]
mov bh,[bx+di]
mov ax,[bx+si]
mov ax,[bx+si+0x0]
mov ax,[di+0x0]
mov [bx+si],es
mov [0x8],es
mov [0x0],ds
mov ax,cs
mov ax,ss
mov ax,gs
lea ax,[bx+si]
lea bx,[0x5]
mov es,[bx+si]
mov ds,[0x4]
mov fs,ax
mov gs,ax
pop word [bx+si]
vpmacssww xmm1,xmm4,xmm7,xmm3
vpmacsswd xmm1,xmm4,xmm7,xmm3
vpmacssdql xmm1,xmm4,xmm7,xmm3
vpmacssdd xmm1,xmm4,xmm7,xmm3
vpmacssdqh xmm1,xmm4,xmm7,xmm3
vpmacsww xmm1,xmm4,xmm7,xmm3
vpmacswd xmm1,xmm4,xmm7,xmm3
vpmacsdql xmm1,xmm4,xmm7,xmm3
vpmacsdd xmm1,xmm4,xmm7,xmm3
vpmacsdqh xmm1,xmm4,xmm7,xmm3
vpmadcsswd xmm1,xmm4,xmm7,xmm3
vpmadcswd xmm1,xmm4,xmm7,xmm3
vpmacssww xmm1,xmm2,xmm3,xmm4
vpmacsswd xmm1,xmm2,xmm3,xmm4
vpmacssdql xmm1,xmm2,xmm3,xmm4
vpmacssdd xmm1,xmm2,xmm3,xmm4
vpmacssdqh xmm1,xmm2,xmm3,xmm4
vpmacsww xmm1,xmm2,xmm3,xmm4
vpmacswd xmm1,xmm2,xmm3,xmm4
vpmacsdql xmm1,xmm2,xmm3,xmm4
vpmacsdd xmm1,xmm2,xmm3,xmm4
vpmacsdqh xmm1,xmm2,xmm3,xmm4
vpcmov xmm1,xmm2,xmm3,xmm4
vpperm xmm1,xmm2,xmm3,xmm4
vpmadcsswd xmm1,xmm2,xmm3,xmm4
vpmadcswd xmm1,xmm2,xmm3,xmm4
vpcmov ymm1,ymm2,ymm3,ymm4
vprotb xmm1,xmm2,xmm3
vprotw xmm1,xmm2,xmm3
vprotd xmm1,xmm2,xmm3
vprotq xmm1,xmm2,xmm3
vpshlb xmm1,xmm2,xmm3
vpshlw xmm1,xmm2,xmm3
vpshld xmm1,xmm2,xmm3
vpshlq xmm1,xmm2,xmm3
vpshab xmm1,xmm2,xmm3
vpshaw xmm1,xmm2,xmm3
vpshad xmm1,xmm2,xmm3
vpshaq xmm1,xmm2,xmm3
vfrczps xmm1,xmm2
vfrczpd xmm1,xmm2
vfrczss xmm1,xmm2
vfrczsd xmm1,xmm2
vphaddbw xmm1,xmm2
vphaddbd xmm1,xmm2
vphaddbq xmm1,xmm2
vphaddwd xmm1,xmm2
vphaddwq xmm1,xmm2
vphadddq xmm1,xmm2
vphaddubd xmm1,xmm2
vphaddubq xmm1,xmm2
vphadduwd xmm1,xmm2
vphadduwq xmm1,xmm2
vphsubbw xmm1,xmm2
vphsubwd xmm1,xmm2
vphsubdq xmm1,xmm2
vfrczps ymm1,ymm2
vfrczpd ymm1,ymm2
nop
xchg ax,cx
xchg ax,dx
xchg ax,bx
xchg ax,sp
xchg ax,bp
xchg ax,si
xchg ax,di
cbw
cwd
fstenv [bx+si]
fstcw [bx+si]
fclex
finit
fsave [bx+si]
fstsw [bx+si]
pushfw
popfw
sahf
lahf
mov ax,[0x2]
mov [0x0],al
mov [0x1],al
movsb
movsw
cmpsb
cmpsw
test al,0x0
test al,0xff
stosb
stosw
lodsb
lodsw
scasb
scasw
mov al,0x0
mov cl,0x0
mov dl,0x0
mov bl,0x0
mov ah,0x0
mov ch,0x0
mov dh,0x0
mov bh,0x0
mov ax,0x2
mov ax,0x6261
mov ax,0xffff
mov bx,0x1
rol byte [bx+si],0x0
ror byte [bx+si],0x0
rcl byte [bx+si],0x0
rcr byte [bx+si],0x0
shl byte [bx+si],0x0
shr byte [bx+si],0x0
sar byte [bx+si],0x0
shl al,0x5
shl ah,0x4
rol word [bx+si],0x0
ror word [bx+si],0x0
rcl word [bx+si],0x0
rcr word [bx+si],0x0
shl word [bx+si],0x0
shr word [bx+si],0x0
sar word [bx+si],0x0
ror bx,0x3
rcl cx,0x2
shr ax,0x5
ret 0x0
ret 0x2
ret 0x8
ret 0x1234
ret
les ax,[bx+si]
les di,[0x5]
vfmadd132ss xmm1,xmm3,dword [bp+di]
vpshufb xmm1,xmm2,oword [bx+si]
vpshufb xmm1,xmm2,xmm3
vphaddw xmm1,xmm2,oword [bx+si]
vphaddw xmm1,xmm2,xmm3
vphaddd xmm1,xmm2,oword [bx+si]
vphaddd xmm1,xmm2,xmm3
vphaddsw xmm1,xmm2,oword [bx+si]
vphaddsw xmm1,xmm2,xmm3
vpmaddubsw xmm1,xmm2,oword [bx+si]
vpmaddubsw xmm1,xmm2,xmm3
vphsubw xmm1,xmm2,oword [bx+si]
vphsubw xmm1,xmm2,xmm3
vphsubd xmm1,xmm2,oword [bx+si]
vphsubd xmm1,xmm2,xmm3
vphsubsw xmm1,xmm2,oword [bx+si]
vphsubsw xmm1,xmm2,xmm3
vpsignb xmm1,xmm2,oword [bx+si]
vpsignb xmm1,xmm2,xmm3
vpsignw xmm1,xmm2,oword [bx+si]
vpsignw xmm1,xmm2,xmm3
vpsignd xmm1,xmm2,oword [bx+si]
vpsignd xmm1,xmm2,xmm3
vpmulhrsw xmm1,xmm2,oword [bx+si]
vpmulhrsw xmm1,xmm2,xmm3
vpermilps xmm1,xmm2,oword [bx+si]
vpermilps xmm1,xmm2,xmm3
vpermilpd xmm1,xmm2,oword [bx+si]
vpermilpd xmm1,xmm2,xmm3
vpmuldq xmm1,xmm2,oword [bx+si]
vpmuldq xmm1,xmm2,xmm3
vpackusdw xmm1,xmm2,oword [bx+si]
vpackusdw xmm1,xmm2,xmm3
vmaskmovps xmm1,xmm2,oword [bx+si]
vmaskmovpd xmm1,xmm2,oword [bx+si]
vmaskmovps oword [bx+si],xmm2,xmm3
vmaskmovpd oword [bx+si],xmm2,xmm3
vpminsb xmm1,xmm2,oword [bx+si]
vpminsb xmm1,xmm2,xmm3
vpminsd xmm1,xmm2,oword [bx+si]
vpminsd xmm1,xmm2,xmm3
vpminuw xmm1,xmm2,oword [bx+si]
vpminuw xmm1,xmm2,xmm3
vpminud xmm1,xmm2,oword [bx+si]
vpminud xmm1,xmm2,xmm3
vpmaxsb xmm1,xmm2,oword [bx+si]
vpmaxsb xmm1,xmm2,xmm3
vpmaxsd xmm1,xmm2,oword [bx+si]
vpmaxsd xmm1,xmm2,xmm3
vpmaxuw xmm1,xmm2,oword [bx+si]
vpmaxuw xmm1,xmm2,xmm3
vpmaxud xmm1,xmm2,oword [bx+si]
vpmaxud xmm1,xmm2,xmm3
vpmulld xmm1,xmm2,oword [bx+si]
vpmulld xmm1,xmm2,xmm3
vfmaddsub132ps xmm1,xmm2,oword [bx+si]
vfmaddsub132ps xmm1,xmm2,xmm3
vfmsubadd132ps xmm1,xmm2,oword [bx+si]
vfmsubadd132ps xmm1,xmm2,xmm3
vfmadd132ps xmm1,xmm2,xmm3
vfmadd132ss xmm1,xmm2,dword [bx+si]
vfmadd132ss xmm1,xmm2,xmm3
vfmsub132ps xmm1,xmm2,oword [bp+0x8]
vfmsub132ps xmm1,xmm2,xmm3
vfmsub132ss xmm1,xmm2,xmm3
vfnmadd132ps xmm1,xmm2,oword [bx+si]
vfnmadd132ps xmm1,xmm2,xmm3
vfnmadd132ss xmm1,xmm2,dword [bx+si]
vfnmadd132ss xmm1,xmm2,xmm3
vfnmsub132ps xmm1,xmm2,oword [bx+si]
vfnmsub132ps xmm1,xmm2,xmm3
vfnmsub132ss xmm1,xmm2,dword [bx+si]
vfnmsub132ss xmm1,xmm2,xmm3
vfmaddsub213ps xmm1,xmm2,oword [bx+si]
vfmaddsub213ps xmm1,xmm2,xmm3
vfmsubadd213ps xmm1,xmm2,oword [bx+si]
vfmsubadd213ps xmm1,xmm2,xmm3
vfmadd213ps xmm1,xmm2,xmm3
vfmadd213ss xmm1,xmm2,dword [bx]
vfmadd213ss xmm1,xmm2,xmm3
vfmsub213ps xmm1,xmm2,xmm3
vfmsub213ss xmm1,xmm2,xmm3
vfnmadd213ps xmm1,xmm2,oword [bx+si]
vfnmadd213ps xmm1,xmm2,xmm3
vfnmadd213ss xmm1,xmm2,dword [bx+si]
vfnmadd213ss xmm1,xmm2,xmm3
vfnmsub213ps xmm1,xmm2,oword [bx+si]
vfnmsub213ps xmm1,xmm2,xmm3
vfnmsub213ss xmm1,xmm2,dword [bx+si]
vfnmsub213ss xmm1,xmm2,xmm3
vfmaddsub231ps xmm1,xmm2,oword [bx+si]
vfmaddsub231ps xmm1,xmm2,xmm3
vfmsubadd231ps xmm1,xmm2,oword [bx+si]
vfmsubadd231ps xmm1,xmm2,xmm3
vfmadd231ps xmm1,xmm2,xmm3
vfmadd231ss xmm1,xmm2,dword [bx+di]
vfmadd231ss xmm1,xmm2,dword [bp+si]
vfmadd231ss xmm1,xmm2,xmm3
vfmsub231ps xmm1,xmm2,oword [di+0x8]
vfmsub231ps xmm1,xmm2,xmm3
vfmsub231ss xmm1,xmm2,xmm3
vfnmadd231ps xmm1,xmm2,oword [bx+si]
vfnmadd231ps xmm1,xmm2,xmm3
vfnmadd231ss xmm1,xmm2,dword [bx+si]
vfnmadd231ss xmm1,xmm2,xmm3
vfnmsub231ps xmm1,xmm2,oword [bx+si]
vfnmsub231ps xmm1,xmm2,xmm3
vfnmsub231ss xmm1,xmm2,dword [bx+si]
vfnmsub231ss xmm1,xmm2,xmm3
vaesenc xmm1,xmm2,oword [bx+si]
vaesenc xmm1,xmm2,xmm3
vaesenclast xmm1,xmm2,oword [bx+si]
vaesenclast xmm1,xmm2,xmm3
vaesdec xmm1,xmm2,oword [bx+si]
vaesdec xmm1,xmm2,xmm3
vaesdeclast xmm1,xmm2,oword [bx+si]
vaesdeclast xmm1,xmm2,xmm3
vpermilps ymm1,ymm2,yword [bx+si]
vpermilps ymm1,ymm2,ymm3
vpermilpd ymm1,ymm2,yword [bx+si]
vpermilpd ymm1,ymm2,ymm3
vmaskmovps ymm1,ymm2,yword [bx+si]
vmaskmovpd ymm1,ymm2,yword [bx+si]
vmaskmovps yword [bx+si],xmm2,xmm3
vmaskmovpd yword [bx+si],ymm2,ymm3
vfmaddsub132ps ymm1,ymm2,yword [bx+si]
vfmaddsub132ps ymm1,ymm2,ymm3
vfmsubadd132ps ymm1,ymm2,yword [bx+si]
vfmsubadd132ps ymm1,ymm2,ymm3
vfmadd132ps ymm1,ymm2,ymm3
vfmsub132ps ymm1,ymm2,ymm3
vfnmadd132ps ymm1,ymm2,yword [bx+si]
vfnmadd132ps ymm1,ymm2,ymm3
vfnmsub132ps ymm1,ymm2,yword [bx+si]
vfnmsub132ps ymm1,ymm2,ymm3
vfmaddsub213ps ymm1,ymm2,yword [bx+si]
vfmaddsub213ps ymm1,ymm2,ymm3
vfmsubadd213ps ymm1,ymm2,yword [bx+si]
vfmsubadd213ps ymm1,ymm2,ymm3
vfmadd213ps ymm1,ymm2,ymm3
vfmsub213ps ymm1,ymm2,ymm3
vfnmadd213ps ymm1,ymm2,yword [bx+si]
vfnmadd213ps ymm1,ymm2,ymm3
vfnmsub213ps ymm1,ymm2,yword [bx+si]
vfnmsub213ps ymm1,ymm2,ymm3
vfmaddsub231ps ymm1,ymm2,yword [bx+si]
vfmaddsub231ps ymm1,ymm2,ymm3
vfmsubadd231ps ymm1,ymm2,yword [bx+si]
vfmsubadd231ps ymm1,ymm2,ymm3
vfmadd231ps ymm1,ymm2,ymm3
vfmsub231ps ymm1,ymm2,ymm3
vfnmadd231ps ymm1,ymm2,yword [bx+si]
vfnmadd231ps ymm1,ymm2,ymm3
vfnmsub231ps ymm1,ymm2,yword [bx+si]
vfnmsub231ps ymm1,ymm2,ymm3
vpshufb xmm1,xmm1,oword [bx+si]
vpshufb xmm1,xmm1,xmm2
vphaddw xmm1,xmm1,oword [bx+si]
vphaddw xmm1,xmm1,xmm2
vphaddd xmm1,xmm1,oword [bx+si]
vphaddd xmm1,xmm1,xmm2
vphaddsw xmm1,xmm1,oword [bx+si]
vphaddsw xmm1,xmm1,xmm2
vpmaddubsw xmm1,xmm1,oword [bx+si]
vpmaddubsw xmm1,xmm1,xmm2
vphsubw xmm1,xmm1,oword [bx+si]
vphsubw xmm1,xmm1,xmm2
vphsubd xmm1,xmm1,oword [bx+si]
vphsubd xmm1,xmm1,xmm2
vphsubsw xmm1,xmm1,oword [bx+si]
vphsubsw xmm1,xmm1,xmm2
vpsignb xmm1,xmm1,oword [bx+si]
vpsignb xmm1,xmm1,xmm2
vpsignw xmm1,xmm1,oword [bx+si]
vpsignw xmm1,xmm1,xmm2
vpsignd xmm1,xmm1,oword [bx+si]
vpsignd xmm1,xmm1,xmm2
vpmulhrsw xmm1,xmm1,oword [bx+si]
vpmulhrsw xmm1,xmm1,xmm2
vpmuldq xmm1,xmm1,oword [bx+si]
vpmuldq xmm1,xmm1,xmm2
vpackusdw xmm1,xmm1,oword [bx+si]
vpackusdw xmm1,xmm1,xmm2
vpminsb xmm1,xmm1,oword [bx+si]
vpminsb xmm1,xmm1,xmm2
vpminsd xmm1,xmm1,oword [bx+si]
vpminsd xmm1,xmm1,xmm2
vpminuw xmm1,xmm1,oword [bx+si]
vpminuw xmm1,xmm1,xmm2
vpminud xmm1,xmm1,oword [bx+si]
vpminud xmm1,xmm1,xmm2
vpmaxsb xmm1,xmm1,oword [bx+si]
vpmaxsb xmm1,xmm1,xmm2
vpmaxsd xmm1,xmm1,oword [bx+si]
vpmaxsd xmm1,xmm1,xmm2
vpmaxuw xmm1,xmm1,oword [bx+si]
vpmaxuw xmm1,xmm1,xmm2
vpmaxud xmm1,xmm1,oword [bx+si]
vpmaxud xmm1,xmm1,xmm2
vpmulld xmm1,xmm1,oword [bx+si]
vpmulld xmm1,xmm1,xmm2
vaesenc xmm1,xmm1,oword [bx+si]
vaesenc xmm1,xmm1,xmm2
vaesenclast xmm1,xmm1,oword [bx+si]
vaesenclast xmm1,xmm1,xmm2
vaesdec xmm1,xmm1,oword [bx+si]
vaesdec xmm1,xmm1,xmm2
vaesdeclast xmm1,xmm1,oword [bx+si]
vaesdeclast xmm1,xmm1,xmm2
vtestps xmm1,oword [bx+si]
vtestps xmm1,xmm2
vtestpd xmm1,oword [bx+si]
vtestpd xmm1,xmm2
vptest xmm1,oword [bx+si]
vptest xmm1,xmm2
vbroadcastss xmm1,dword [bx+si]
vpabsb xmm1,oword [bx+si]
vpabsb xmm1,xmm2
vpabsw xmm1,oword [bx+si]
vpabsw xmm1,xmm2
vpabsd xmm1,oword [bx+si]
vpabsd xmm1,xmm2
vpmovsxbw xmm1,qword [bx+si]
vpmovsxbw xmm1,xmm2
vpmovsxbd xmm1,dword [bx+si]
vpmovsxbd xmm1,xmm2
vpmovsxbq xmm1,word [bx+si]
vpmovsxbq xmm1,xmm2
vpmovsxwd xmm1,qword [bx+si]
vpmovsxwd xmm1,xmm2
vpmovsxwq xmm1,dword [bx+si]
vpmovsxwq xmm1,xmm2
vpmovsxdq xmm1,qword [bx+si]
vpmovsxdq xmm1,xmm2
vmovntdqa xmm1,oword [bx+si]
vpmovzxbw xmm1,qword [bx+si]
vpmovzxbw xmm1,xmm2
vpmovzxbd xmm1,dword [bx+si]
vpmovzxbd xmm1,xmm2
vpmovzxbq xmm1,word [bx+si]
vpmovzxbq xmm1,xmm2
vpmovzxwd xmm1,qword [bx+si]
vpmovzxwd xmm1,xmm2
vpmovzxwq xmm1,dword [bx+si]
vpmovzxwq xmm1,xmm2
vpmovzxdq xmm1,qword [bx+si]
vpmovzxdq xmm1,xmm2
vphminposuw xmm1,oword [bx+si]
vphminposuw xmm1,xmm2
vaesimc xmm0,xmm0
vaesenc xmm0,xmm0,xmm0
vaesenclast xmm0,xmm0,xmm0
vaesdec xmm0,xmm0,xmm0
vaesdeclast xmm0,xmm0,xmm0
vtestps ymm1,yword [bx+si]
vtestps ymm0,ymm0
vtestps ymm1,ymm2
vtestpd ymm1,yword [bx+si]
vtestpd ymm0,ymm0
vtestpd ymm1,ymm2
vptest ymm1,yword [bx+si]
vptest ymm1,ymm2
vbroadcastss ymm0,dword [bx+si]
vbroadcastss ymm1,dword [bx+si]
vbroadcastsd ymm1,qword [bx+si]
vbroadcastf128 ymm1,oword [bx+si]
vfmaddsub132pd xmm1,xmm2,oword [bx+si]
vfmaddsub132pd xmm1,xmm2,xmm3
vfmsubadd132pd xmm1,xmm2,oword [bx+si]
vfmsubadd132pd xmm1,xmm2,xmm3
vfmadd132pd xmm1,xmm2,xmm3
vfmadd132sd xmm1,xmm2,qword [di+0x0]
vfmadd132sd xmm1,xmm2,xmm3
vfmsub132pd xmm1,xmm2,xmm3
vfmsub132sd xmm1,xmm2,qword [bx+si+0x8]
vfmsub132sd xmm1,xmm2,xmm3
vfnmadd132pd xmm1,xmm2,oword [bx+si]
vfnmadd132pd xmm1,xmm2,xmm3
vfnmadd132sd xmm1,xmm2,qword [bx+si]
vfnmadd132sd xmm1,xmm2,xmm3
vfnmsub132pd xmm1,xmm2,oword [bx+si]
vfnmsub132pd xmm1,xmm2,xmm3
vfnmsub132sd xmm1,xmm2,qword [bx+si]
vfnmsub132sd xmm1,xmm2,xmm3
vfmaddsub213pd xmm1,xmm2,oword [bx+si]
vfmaddsub213pd xmm1,xmm2,xmm3
vfmsubadd213pd xmm1,xmm2,oword [bx+si]
vfmsubadd213pd xmm1,xmm2,xmm3
vfmadd213pd xmm1,xmm2,xmm3
vfmadd213sd xmm1,xmm2,xmm3
vfmsub213pd xmm1,xmm2,xmm3
vfmsub213sd xmm1,xmm2,qword [bp+si+0x8]
vfmsub213sd xmm1,xmm2,qword [bx+0x8]
vfmsub213sd xmm1,xmm2,xmm3
vfnmadd213pd xmm1,xmm2,oword [bx+si]
vfnmadd213pd xmm1,xmm2,xmm3
vfnmadd213sd xmm1,xmm2,qword [bx+si]
vfnmadd213sd xmm1,xmm2,xmm3
vfnmsub213pd xmm1,xmm2,oword [bx+si]
vfnmsub213pd xmm1,xmm2,xmm3
vfnmsub213sd xmm1,xmm2,qword [bx+si]
vfnmsub213sd xmm1,xmm2,xmm3
vfmaddsub231pd xmm1,xmm2,oword [bx+si]
vfmaddsub231pd xmm1,xmm2,xmm3
vfmsubadd231pd xmm1,xmm2,oword [bx+si]
vfmsubadd231pd xmm1,xmm2,xmm3
vfmadd231pd xmm1,xmm2,xmm3
vfmadd231sd xmm1,xmm2,qword [bx+si]
vfmadd231sd xmm1,xmm2,xmm3
vfmsub231pd xmm1,xmm2,xmm3
vfmsub231sd xmm1,xmm2,qword [bx+di+0x8]
vfmsub231sd xmm1,xmm2,qword [bp+di+0x8]
vfmsub231sd xmm1,xmm2,xmm3
vfnmadd231pd xmm1,xmm2,oword [bx+si]
vfnmadd231pd xmm1,xmm2,xmm3
vfnmadd231sd xmm1,xmm2,qword [bx+si]
vfnmadd231sd xmm1,xmm2,xmm3
vfnmsub231pd xmm1,xmm2,oword [bx+si]
vfnmsub231pd xmm1,xmm2,xmm3
vfnmsub231sd xmm1,xmm2,qword [bx+si]
vfnmsub231sd xmm1,xmm2,xmm3
vfmaddsub132pd ymm1,ymm2,yword [bx+si]
vfmaddsub132pd ymm1,ymm2,ymm3
vfmsubadd132pd ymm1,ymm2,yword [bx+si]
vfmsubadd132pd ymm1,ymm2,ymm3
vfmadd132pd ymm1,ymm2,ymm3
vfmsub132pd ymm1,ymm2,yword [bx+si]
vfmsub132pd ymm1,ymm2,ymm3
vfnmadd132pd ymm1,ymm2,yword [bx+si]
vfnmadd132pd ymm1,ymm2,ymm3
vfnmsub132pd ymm1,ymm2,yword [bx+si]
vfnmsub132pd ymm1,ymm2,ymm3
vfmaddsub213pd ymm1,ymm2,yword [bx+si]
vfmaddsub213pd ymm1,ymm2,ymm3
vfmsubadd213pd ymm1,ymm2,yword [bx+si]
vfmsubadd213pd ymm1,ymm2,ymm3
vfmadd213pd ymm1,ymm2,ymm3
vfmsub213pd ymm1,ymm2,yword [bx+si]
vfmsub213pd ymm1,ymm2,ymm3
vfnmadd213pd ymm1,ymm2,yword [bx+si]
vfnmadd213pd ymm1,ymm2,ymm3
vfnmsub213pd ymm1,ymm2,yword [bx+si]
vfnmsub213pd ymm1,ymm2,ymm3
vfmaddsub231pd ymm1,ymm2,yword [bx+si]
vfmaddsub231pd ymm1,ymm2,ymm3
vfmsubadd231pd ymm1,ymm2,yword [bx+si]
vfmsubadd231pd ymm1,ymm2,ymm3
vfmadd231pd ymm1,ymm2,ymm3
vfmsub231pd ymm1,ymm2,yword [bx+si]
vfmsub231pd ymm1,ymm2,ymm3
vfnmadd231pd ymm1,ymm2,yword [bx+si]
vfnmadd231pd ymm1,ymm2,ymm3
vfnmsub231pd ymm1,ymm2,yword [bx+si]
vfnmsub231pd ymm1,ymm2,ymm3
vfmadd132pd xmm0,xmm0,xmm0
vfmadd213pd xmm0,xmm0,xmm0
vfmadd231pd xmm0,xmm0,xmm0
vpinsrb xmm1,xmm2,byte [bx+si],byte 0x5
vpinsrb xmm1,xmm2,al,byte 0x5
vpinsrd xmm1,xmm2,dword [bx+si],byte 0x5
vpinsrd xmm1,xmm2,eax,byte 0x5
vblendvps xmm1,xmm2,oword [bx+si],xmm4
vblendvps xmm1,xmm2,xmm3,xmm4
vblendvpd xmm1,xmm2,oword [bx+si],xmm4
vblendvpd xmm1,xmm2,xmm3,xmm4
vpblendvb xmm1,xmm2,oword [bx+si],xmm4
vpblendvb xmm1,xmm2,xmm3,xmm4
vfmaddpd xmm1,xmm2,xmm3,xmm4
vblendvps ymm1,ymm2,yword [bx+si],ymm4
vblendvps ymm1,ymm2,ymm3,ymm4
vblendvpd ymm1,ymm2,yword [bx+si],ymm4
vblendvpd ymm1,ymm2,ymm3,ymm4
vpinsrb xmm1,xmm1,byte [bx+si],byte 0x5
vpinsrb xmm1,xmm1,al,byte 0x5
vpinsrd xmm1,xmm1,dword [bx+si],byte 0x5
vpinsrd xmm1,xmm1,eax,byte 0x5
vpclmullqlqdq xmm0,xmm1,oword [bp+di]
vpclmulhqlqdq xmm0,xmm1,oword [bp+di]
vpclmullqhqdq xmm0,xmm1,oword [bp+di]
vpclmulhqhqdq xmm0,xmm1,oword [bp+di]
vpclmullqlqdq xmm1,xmm1,oword [bp+di]
vpclmulhqlqdq xmm1,xmm1,oword [bp+di]
vpclmullqhqdq xmm1,xmm1,oword [bp+di]
vpclmulhqhqdq xmm1,xmm1,oword [bp+di]
vpclmullqlqdq xmm0,xmm1,xmm2
vpclmulhqlqdq xmm0,xmm1,xmm2
vpclmullqhqdq xmm0,xmm1,xmm2
vpclmulhqhqdq xmm0,xmm1,xmm2
vpclmullqlqdq xmm1,xmm1,xmm2
vpclmulhqlqdq xmm1,xmm1,xmm2
vpclmullqhqdq xmm1,xmm1,xmm2
vpclmulhqhqdq xmm1,xmm1,xmm2
vfmaddsubps xmm0,xmm1,oword [bx+si],xmm3
vfmaddsubps xmm0,xmm1,xmm2,xmm3
vfmaddsubpd xmm0,xmm1,oword [bx+si],xmm3
vfmaddsubpd xmm0,xmm1,xmm2,xmm3
vfmaddps xmm0,xmm1,oword [bx+si],xmm3
vfmaddps xmm0,xmm1,xmm2,xmm3
vfmaddpd xmm0,xmm1,oword [bx+si],xmm3
vfmaddpd xmm0,xmm1,xmm2,xmm3
vfmaddss xmm0,xmm1,dword [bx+si],xmm3
vfmaddss xmm0,xmm1,xmm2,xmm3
vfmaddsd xmm0,xmm1,qword [bx+si],xmm3
vfmaddsd xmm0,xmm1,xmm2,xmm3
vfmsubps xmm0,xmm1,oword [bx+si],xmm3
vfmsubps xmm0,xmm1,xmm2,xmm3
vfmsubpd xmm0,xmm1,oword [bx+si],xmm3
vfmsubpd xmm0,xmm1,xmm2,xmm3
vfmsubss xmm0,xmm1,dword [bx+si],xmm3
vfmsubss xmm0,xmm1,xmm2,xmm3
vfmsubsd xmm0,xmm1,qword [bx+si],xmm3
vfmsubsd xmm0,xmm1,xmm2,xmm3
vfnmaddps xmm0,xmm1,oword [bx+si],xmm3
vfnmaddps xmm0,xmm1,xmm2,xmm3
vfnmaddpd xmm0,xmm1,oword [bx+si],xmm3
vfnmaddpd xmm0,xmm1,xmm2,xmm3
vfnmaddss xmm0,xmm1,dword [bx+si],xmm3
vfnmaddss xmm0,xmm1,xmm2,xmm3
vfnmaddsd xmm0,xmm1,qword [bx+si],xmm3
vfnmaddsd xmm0,xmm1,xmm2,xmm3
vfnmsubps xmm0,xmm1,oword [bx+si],xmm3
vfnmsubps xmm0,xmm1,xmm2,xmm3
vfnmsubpd xmm0,xmm1,oword [bx+si],xmm3
vfnmsubpd xmm0,xmm1,xmm2,xmm3
vfnmsubss xmm0,xmm1,dword [bx+si],xmm3
vfnmsubss xmm0,xmm1,xmm2,xmm3
vfnmsubsd xmm0,xmm1,qword [bx+si],xmm3
vfnmsubsd xmm0,xmm1,xmm2,xmm3
vfmaddsubps ymm0,ymm1,yword [bx+si],ymm3
vfmaddsubps ymm0,ymm1,ymm2,ymm3
vfmaddsubpd ymm0,ymm1,yword [bx+si],ymm3
vfmaddsubpd ymm0,ymm1,ymm2,ymm3
vfmaddps ymm0,ymm1,yword [bx+si],ymm3
vfmaddps ymm0,ymm1,ymm2,ymm3
vfmaddpd ymm0,ymm1,yword [bx+si],ymm3
vfmaddpd ymm0,ymm1,ymm2,ymm3
vfmsubps ymm0,ymm1,yword [bx+si],ymm3
vfmsubps ymm0,ymm1,ymm2,ymm3
vfmsubpd ymm0,ymm1,yword [bx+si],ymm3
vfmsubpd ymm0,ymm1,ymm2,ymm3
vfnmaddps ymm0,ymm1,yword [bx+si],ymm3
vfnmaddps ymm0,ymm1,ymm2,ymm3
vfnmaddpd ymm0,ymm1,yword [bx+si],ymm3
vfnmaddpd ymm0,ymm1,ymm2,ymm3
vfnmsubps ymm0,ymm1,yword [bx+si],ymm3
vfnmsubps ymm0,ymm1,ymm2,ymm3
vfnmsubpd ymm0,ymm1,yword [bx+si],ymm3
vfnmsubpd ymm0,ymm1,ymm2,ymm3
vpextrb byte [bx+si],xmm2,byte 0x5
vfmaddsubps xmm0,xmm1,xmm2,oword [bx+si]
vfmaddsubpd xmm0,xmm1,xmm2,oword [bx+si]
vfmaddps xmm0,xmm1,xmm2,oword [bx+si]
vfmaddpd xmm0,xmm1,xmm2,oword [bx+si]
vfmaddss xmm0,xmm1,xmm2,dword [bx+si]
vfmaddsd xmm0,xmm1,xmm2,qword [bx+si]
vfmsubps xmm0,xmm1,xmm2,oword [bx+si]
vfmsubpd xmm0,xmm1,xmm2,oword [bx+si]
vfmsubss xmm0,xmm1,xmm2,dword [bx+si]
vfmsubsd xmm0,xmm1,xmm2,qword [bx+si]
vfnmaddps xmm0,xmm1,xmm2,oword [bx+si]
vfnmaddpd xmm0,xmm1,xmm2,oword [bx+si]
vfnmaddss xmm0,xmm1,xmm2,dword [bx+si]
vfnmaddsd xmm0,xmm1,xmm2,qword [bx+si]
vfnmsubps xmm0,xmm1,xmm2,oword [bx+si]
vfnmsubpd xmm0,xmm1,xmm2,oword [bx+si]
vfnmsubss xmm0,xmm1,xmm2,dword [bx+si]
vfnmsubsd xmm0,xmm1,xmm2,qword [bx+si]
vfmaddsubps ymm0,ymm1,ymm2,yword [bx+si]
vfmaddsubpd ymm0,ymm1,ymm2,yword [bx+si]
vfmaddps ymm0,ymm1,ymm2,yword [bx+si]
vfmaddpd ymm0,ymm1,ymm2,yword [bx+si]
vfmsubps ymm0,ymm1,ymm2,yword [bx+si]
vfmsubpd ymm0,ymm1,ymm2,yword [bx+si]
vfnmaddps ymm0,ymm1,ymm2,yword [bx+si]
vfnmaddpd ymm0,ymm1,ymm2,yword [bx+si]
vfnmsubps ymm0,ymm1,ymm2,yword [bx+si]
vfnmsubpd ymm0,ymm1,ymm2,yword [bx+si]
lds ax,[bx+si]
lds ax,[0x1]
lds si,[0x0]
vaddpd xmm5,xmm6,xmm7
vaddpd ymm5,ymm6,ymm7
vaddpd xmm5,xmm5,xmm6
vmovlps xmm1,xmm2,qword [bx+si]
vmovhlps xmm1,xmm2,xmm3
vunpcklps xmm1,xmm2,oword [bx+si]
vunpcklps xmm1,xmm2,xmm3
vunpckhps xmm1,xmm2,oword [bx+si]
vunpckhps xmm1,xmm2,xmm3
vmovhps xmm1,xmm2,qword [bx+si]
vandps xmm1,xmm2,oword [bx+si]
vandps xmm1,xmm2,xmm3
vandnps xmm1,xmm2,oword [bx+si]
vandnps xmm1,xmm2,xmm3
vorps xmm1,xmm2,oword [bx+si]
vorps xmm1,xmm2,xmm3
vxorps xmm1,xmm2,oword [bx+si]
vxorps xmm1,xmm2,xmm3
vaddps xmm1,xmm2,oword [bx+si]
vaddps xmm1,xmm2,xmm3
vmulps xmm1,xmm2,oword [bx+si]
vmulps xmm1,xmm2,xmm3
vsubps xmm1,xmm2,oword [bx+si]
vsubps xmm1,xmm2,xmm3
vminps xmm1,xmm2,oword [bx+si]
vminps xmm1,xmm2,xmm3
vdivps xmm1,xmm2,oword [bx+si]
vdivps xmm1,xmm2,xmm3
vmaxps xmm1,xmm2,oword [bx+si]
vmaxps xmm1,xmm2,xmm3
vmovlpd xmm1,xmm2,qword [bx+si]
vunpcklpd xmm1,xmm2,oword [bx+si]
vunpcklpd xmm1,xmm2,xmm3
vunpckhpd xmm1,xmm2,oword [bx+si]
vunpckhpd xmm1,xmm2,xmm3
vmovhpd xmm1,xmm2,qword [bx+si]
vandpd xmm1,xmm2,oword [bx+si]
vandpd xmm1,xmm2,xmm3
vandnpd xmm1,xmm2,oword [bx+si]
vandnpd xmm1,xmm2,xmm3
vorpd xmm1,xmm2,oword [bx+si]
vorpd xmm1,xmm2,xmm3
vxorpd xmm1,xmm2,oword [bx+si]
vxorpd xmm1,xmm2,xmm3
vaddpd xmm1,xmm2,oword [bx+si]
vaddpd xmm1,xmm2,xmm3
vmulpd xmm1,xmm2,oword [bx+si]
vmulpd xmm1,xmm2,xmm3
vsubpd xmm1,xmm2,oword [bx+si]
vsubpd xmm1,xmm2,xmm3
vminpd xmm1,xmm2,oword [bx+si]
vminpd xmm1,xmm2,xmm3
vdivpd xmm1,xmm2,oword [bx+si]
vdivpd xmm1,xmm2,xmm3
vmaxpd xmm1,xmm2,oword [bx+si]
vmaxpd xmm1,xmm2,xmm3
vpunpcklbw xmm1,xmm2,oword [bx+si]
vpunpcklbw xmm1,xmm2,xmm3
vpunpcklwd xmm1,xmm2,oword [bx+si]
vpunpcklwd xmm1,xmm2,xmm3
vpunpckldq xmm1,xmm2,oword [bx+si]
vpunpckldq xmm1,xmm2,xmm3
vpacksswb xmm1,xmm2,oword [bx+si]
vpacksswb xmm1,xmm2,xmm3
vpcmpgtb xmm1,xmm2,oword [bx+si]
vpcmpgtb xmm1,xmm2,xmm3
vpcmpgtw xmm1,xmm2,oword [bx+si]
vpcmpgtw xmm1,xmm2,xmm3
vpcmpgtd xmm1,xmm2,oword [bx+si]
vpcmpgtd xmm1,xmm2,xmm3
vpackuswb xmm1,xmm2,oword [bx+si]
vpackuswb xmm1,xmm2,xmm3
vpunpckhbw xmm1,xmm2,oword [bx+si]
vpunpckhbw xmm1,xmm2,xmm3
vpunpckhwd xmm1,xmm2,oword [bx+si]
vpunpckhwd xmm1,xmm2,xmm3
vpunpckhdq xmm1,xmm2,oword [bx+si]
vpunpckhdq xmm1,xmm2,xmm3
vpackssdw xmm1,xmm2,oword [bx+si]
vpackssdw xmm1,xmm2,xmm3
vpunpcklqdq xmm1,xmm2,oword [bx+si]
vpunpcklqdq xmm1,xmm2,xmm3
vpunpckhqdq xmm1,xmm2,oword [bx+si]
vpunpckhqdq xmm1,xmm2,xmm3
vpcmpeqb xmm1,xmm2,oword [bx+si]
vpcmpeqb xmm1,xmm2,xmm3
vpcmpeqw xmm1,xmm2,oword [bx+si]
vpcmpeqw xmm1,xmm2,xmm3
vpcmpeqd xmm1,xmm2,oword [bx+si]
vpcmpeqd xmm1,xmm2,xmm3
vhaddpd xmm1,xmm2,oword [bx+si]
vhaddpd xmm1,xmm2,xmm3
vhsubpd xmm1,xmm2,oword [bx+si]
vhsubpd xmm1,xmm2,xmm3
vpinsrw xmm1,xmm2,word [bx+si],byte 0x5
vpinsrw xmm1,xmm2,ax,byte 0x5
vaddsubpd xmm1,xmm2,oword [bx+si]
vaddsubpd xmm1,xmm2,xmm3
vpsrlw xmm1,xmm2,oword [bx+si]
vpsrlw xmm1,xmm2,xmm3
vpsrld xmm1,xmm2,oword [bx+si]
vpsrld xmm1,xmm2,xmm3
vpsrlq xmm1,xmm2,oword [bx+si]
vpsrlq xmm1,xmm2,xmm3
vpaddq xmm1,xmm2,oword [bx+si]
vpaddq xmm1,xmm2,xmm3
vpmullw xmm1,xmm2,oword [bx+si]
vpmullw xmm1,xmm2,xmm3
vpsubusb xmm1,xmm2,oword [bx+si]
vpsubusb xmm1,xmm2,xmm3
vpsubusw xmm1,xmm2,oword [bx+si]
vpsubusw xmm1,xmm2,xmm3
vpminub xmm1,xmm2,oword [bx+si]
vpminub xmm1,xmm2,xmm3
vpand xmm1,xmm2,oword [bx+si]
vpand xmm1,xmm2,xmm3
vpaddusb xmm1,xmm2,oword [bx+si]
vpaddusb xmm1,xmm2,xmm3
vpaddusw xmm1,xmm2,oword [bx+si]
vpaddusw xmm1,xmm2,xmm3
vpmaxub xmm1,xmm2,oword [bx+si]
vpmaxub xmm1,xmm2,xmm3
vpandn xmm1,xmm2,oword [bx+si]
vpandn xmm1,xmm2,xmm3
vpavgb xmm1,xmm2,oword [bx+si]
vpavgb xmm1,xmm2,xmm3
vpsraw xmm1,xmm2,oword [bx+si]
vpsraw xmm1,xmm2,xmm3
vpsrad xmm1,xmm2,oword [bx+si]
vpsrad xmm1,xmm2,xmm3
vpavgw xmm1,xmm2,oword [bx+si]
vpavgw xmm1,xmm2,xmm3
vpmulhuw xmm1,xmm2,oword [bx+si]
vpmulhuw xmm1,xmm2,xmm3
vpmulhw xmm1,xmm2,oword [bx+si]
vpmulhw xmm1,xmm2,xmm3
vpsubsb xmm1,xmm2,oword [bx+si]
vpsubsb xmm1,xmm2,xmm3
vpsubsw xmm1,xmm2,oword [bx+si]
vpsubsw xmm1,xmm2,xmm3
vpminsw xmm1,xmm2,oword [bx+si]
vpminsw xmm1,xmm2,xmm3
vpor xmm1,xmm2,oword [bx+si]
vpor xmm1,xmm2,xmm3
vpaddsb xmm1,xmm2,oword [bx+si]
vpaddsb xmm1,xmm2,xmm3
vpaddsw xmm1,xmm2,oword [bx+si]
vpaddsw xmm1,xmm2,xmm3
vpmaxsw xmm1,xmm2,oword [bx+si]
vpmaxsw xmm1,xmm2,xmm3
vpxor xmm1,xmm2,oword [bx+si]
vpxor xmm1,xmm2,xmm3
vpsllw xmm1,xmm2,oword [bx+si]
vpsllw xmm1,xmm2,xmm3
vpslld xmm1,xmm2,oword [bx+si]
vpslld xmm1,xmm2,xmm3
vpsllq xmm1,xmm2,oword [bx+si]
vpsllq xmm1,xmm2,xmm3
vpmuludq xmm1,xmm2,oword [bx+si]
vpmuludq xmm1,xmm2,xmm3
vpmaddwd xmm1,xmm2,oword [bx+si]
vpmaddwd xmm1,xmm2,xmm3
vpsadbw xmm1,xmm2,oword [bx+si]
vpsadbw xmm1,xmm2,xmm3
vpsubb xmm1,xmm2,oword [bx+si]
vpsubb xmm1,xmm2,xmm3
vpsubw xmm1,xmm2,oword [bx+si]
vpsubw xmm1,xmm2,xmm3
vpsubd xmm1,xmm2,oword [bx+si]
vpsubd xmm1,xmm2,xmm3
vpsubq xmm1,xmm2,oword [bx+si]
vpsubq xmm1,xmm2,xmm3
vpaddb xmm1,xmm2,oword [bx+si]
vpaddb xmm1,xmm2,xmm3
vpaddw xmm1,xmm2,oword [bx+si]
vpaddw xmm1,xmm2,xmm3
vpaddd xmm1,xmm2,oword [bx+si]
vpaddd xmm1,xmm2,xmm3
vmovss xmm1,xmm2,xmm3
vcvtsi2ss xmm1,xmm2,dword [bx+si]
vcvtsi2ss xmm1,xmm2,eax
vsqrtss xmm1,xmm2,dword [bx+si]
vsqrtss xmm1,xmm2,xmm3
vrsqrtss xmm1,xmm2,dword [bx+si]
vrsqrtss xmm1,xmm2,xmm3
vrcpss xmm1,xmm2,dword [bx+si]
vrcpss xmm1,xmm2,xmm3
vaddss xmm1,xmm2,dword [bx+si]
vaddss xmm1,xmm2,xmm3
vmulss xmm1,xmm2,dword [bx+si]
vmulss xmm1,xmm2,xmm3
vcvtss2sd xmm1,xmm2,dword [bx+si]
vcvtss2sd xmm1,xmm2,xmm3
vsubss xmm1,xmm2,dword [bx+si]
vsubss xmm1,xmm2,xmm3
vminss xmm1,xmm2,dword [bx+si]
vminss xmm1,xmm2,xmm3
vdivss xmm1,xmm2,dword [bx+si]
vdivss xmm1,xmm2,xmm3
vmaxss xmm1,xmm2,dword [bx+si]
vmaxss xmm1,xmm2,xmm3
vmovsd xmm1,xmm2,xmm3
vcvtsi2sd xmm1,xmm2,dword [bx+si]
vcvtsi2sd xmm1,xmm2,eax
vsqrtsd xmm1,xmm2,qword [bx+si]
vsqrtsd xmm1,xmm2,xmm3
vaddsd xmm1,xmm2,qword [bx+si]
vaddsd xmm1,xmm2,xmm3
vmulsd xmm1,xmm2,qword [bx+si]
vmulsd xmm1,xmm2,xmm3
vcvtsd2ss xmm1,xmm2,qword [bx+si]
vcvtsd2ss xmm1,xmm2,xmm3
vsubsd xmm1,xmm2,qword [bx+si]
vsubsd xmm1,xmm2,xmm3
vminsd xmm1,xmm2,qword [bx+si]
vminsd xmm1,xmm2,xmm3
vdivsd xmm1,xmm2,qword [bx+si]
vdivsd xmm1,xmm2,xmm3
vmaxsd xmm1,xmm2,qword [bx+si]
vmaxsd xmm1,xmm2,xmm3
vhaddps xmm1,xmm2,oword [bx+si]
vhaddps xmm1,xmm2,xmm3
vhsubps xmm1,xmm2,oword [bx+si]
vhsubps xmm1,xmm2,xmm3
vaddsubps xmm1,xmm2,oword [bx+si]
vaddsubps xmm1,xmm2,xmm3
vunpcklps ymm1,ymm2,yword [bx+si]
vunpcklps ymm1,ymm2,ymm3
vunpckhps ymm1,ymm2,yword [bx+si]
vunpckhps ymm1,ymm2,ymm3
vandps ymm1,ymm2,yword [bx+si]
vandps ymm1,ymm2,ymm3
vandnps ymm1,ymm2,yword [bx+si]
vandnps ymm1,ymm2,ymm3
vorps ymm1,ymm2,yword [bx+si]
vorps ymm1,ymm2,ymm3
vxorps ymm1,ymm2,yword [bx+si]
vxorps ymm1,ymm2,ymm3
vaddps ymm1,ymm2,yword [bx+si]
vaddps ymm1,ymm2,ymm3
vmulps ymm1,ymm2,yword [bx+si]
vmulps ymm1,ymm2,ymm3
vsubps ymm1,ymm2,yword [bx+si]
vsubps ymm1,ymm2,ymm3
vminps ymm1,ymm2,yword [bx+si]
vminps ymm1,ymm2,ymm3
vdivps ymm1,ymm2,yword [bx+si]
vdivps ymm1,ymm2,ymm3
vmaxps ymm1,ymm2,yword [bx+si]
vmaxps ymm1,ymm2,ymm3
vunpcklpd ymm1,ymm2,yword [bx+si]
vunpcklpd ymm1,ymm2,ymm3
vunpckhpd ymm1,ymm2,yword [bx+si]
vunpckhpd ymm1,ymm2,ymm3
vandpd ymm1,ymm2,yword [bx+si]
vandpd ymm1,ymm2,ymm3
vandnpd ymm1,ymm2,yword [bx+si]
vandnpd ymm1,ymm2,ymm3
vorpd ymm1,ymm2,yword [bx+si]
vorpd ymm1,ymm2,ymm3
vxorpd ymm1,ymm2,yword [bx+si]
vxorpd ymm1,ymm2,ymm3
vaddpd ymm1,ymm2,yword [bx+si]
vaddpd ymm1,ymm2,ymm3
vmulpd ymm1,ymm2,yword [bx+si]
vmulpd ymm1,ymm2,ymm3
vsubpd ymm1,ymm2,yword [bx+si]
vsubpd ymm1,ymm2,ymm3
vminpd ymm1,ymm2,yword [bx+si]
vminpd ymm1,ymm2,ymm3
vdivpd ymm1,ymm2,yword [bx+si]
vdivpd ymm1,ymm2,ymm3
vmaxpd ymm1,ymm2,yword [bx+si]
vmaxpd ymm1,ymm2,ymm3
vhaddpd ymm1,ymm2,yword [bx+si]
vhaddpd ymm1,ymm2,ymm3
vhsubpd ymm1,ymm2,yword [bx+si]
vhsubpd ymm1,ymm2,ymm3
vaddsubpd ymm1,ymm2,yword [bx+si]
vaddsubpd ymm1,ymm2,ymm3
vhaddps ymm1,ymm2,yword [bx+si]
vhaddps ymm1,ymm2,ymm3
vhsubps ymm1,ymm2,yword [bx+si]
vhsubps ymm1,ymm2,ymm3
vaddsubps ymm1,ymm2,yword [bx+si]
vaddsubps ymm1,ymm2,ymm3
vmovlps xmm1,xmm1,qword [bx+si]
vmovhlps xmm1,xmm1,xmm2
vunpcklps xmm1,xmm1,oword [bx+si]
vunpcklps xmm1,xmm1,xmm2
vunpckhps xmm1,xmm1,oword [bx+si]
vunpckhps xmm1,xmm1,xmm2
vmovhps xmm1,xmm1,qword [bx+si]
vandps xmm1,xmm1,oword [bx+si]
vandps xmm1,xmm1,xmm2
vandnps xmm1,xmm1,oword [bx+si]
vandnps xmm1,xmm1,xmm2
vorps xmm1,xmm1,oword [bx+si]
vorps xmm1,xmm1,xmm2
vxorps xmm1,xmm1,oword [bx+si]
vxorps xmm1,xmm1,xmm2
vaddps xmm1,xmm1,oword [bx+si]
vaddps xmm1,xmm1,xmm2
vmulps xmm1,xmm1,oword [bx+si]
vmulps xmm1,xmm1,xmm2
vsubps xmm1,xmm1,oword [bx+si]
vsubps xmm1,xmm1,xmm2
vminps xmm1,xmm1,oword [bx+si]
vminps xmm1,xmm1,xmm2
vdivps xmm1,xmm1,oword [bx+si]
vdivps xmm1,xmm1,xmm2
vmaxps xmm1,xmm1,oword [bx+si]
vmaxps xmm1,xmm1,xmm2
vmovlpd xmm1,xmm1,qword [bx+si]
vunpcklpd xmm1,xmm1,oword [bx+si]
vunpcklpd xmm1,xmm1,xmm2
vunpckhpd xmm1,xmm1,oword [bx+si]
vunpckhpd xmm1,xmm1,xmm2
vmovhpd xmm1,xmm1,qword [bx+si]
vandpd xmm1,xmm1,oword [bx+si]
vandpd xmm1,xmm1,xmm2
vandnpd xmm1,xmm1,oword [bx+si]
vandnpd xmm1,xmm1,xmm2
vorpd xmm1,xmm1,oword [bx+si]
vorpd xmm1,xmm1,xmm2
vxorpd xmm1,xmm1,oword [bx+si]
vxorpd xmm1,xmm1,xmm2
vaddpd xmm1,xmm1,oword [bx+si]
vaddpd xmm1,xmm1,xmm2
vmulpd xmm1,xmm1,oword [bx+si]
vmulpd xmm1,xmm1,xmm2
vsubpd xmm1,xmm1,oword [bx+si]
vsubpd xmm1,xmm1,xmm2
vminpd xmm1,xmm1,oword [bx+si]
vminpd xmm1,xmm1,xmm2
vdivpd xmm1,xmm1,oword [bx+si]
vdivpd xmm1,xmm1,xmm2
vmaxpd xmm1,xmm1,oword [bx+si]
vmaxpd xmm1,xmm1,xmm2
vpunpcklbw xmm1,xmm1,oword [bx+si]
vpunpcklbw xmm1,xmm1,xmm2
vpunpcklwd xmm1,xmm1,oword [bx+si]
vpunpcklwd xmm1,xmm1,xmm2
vpunpckldq xmm1,xmm1,oword [bx+si]
vpunpckldq xmm1,xmm1,xmm2
vpacksswb xmm1,xmm1,oword [bx+si]
vpacksswb xmm1,xmm1,xmm2
vpcmpgtb xmm1,xmm1,oword [bx+si]
vpcmpgtb xmm1,xmm1,xmm2
vpcmpgtw xmm1,xmm1,oword [bx+si]
vpcmpgtw xmm1,xmm1,xmm2
vpcmpgtd xmm1,xmm1,oword [bx+si]
vpcmpgtd xmm1,xmm1,xmm2
vpackuswb xmm1,xmm1,oword [bx+si]
vpackuswb xmm1,xmm1,xmm2
vpunpckhbw xmm1,xmm1,oword [bx+si]
vpunpckhbw xmm1,xmm1,xmm2
vpunpckhwd xmm1,xmm1,oword [bx+si]
vpunpckhwd xmm1,xmm1,xmm2
vpunpckhdq xmm1,xmm1,oword [bx+si]
vpunpckhdq xmm1,xmm1,xmm2
vpackssdw xmm1,xmm1,oword [bx+si]
vpackssdw xmm1,xmm1,xmm2
vpunpcklqdq xmm1,xmm1,oword [bx+si]
vpunpcklqdq xmm1,xmm1,xmm2
vpunpckhqdq xmm1,xmm1,oword [bx+si]
vpunpckhqdq xmm1,xmm1,xmm2
vpcmpeqb xmm1,xmm1,oword [bx+si]
vpcmpeqb xmm1,xmm1,xmm2
vpcmpeqw xmm1,xmm1,oword [bx+si]
vpcmpeqw xmm1,xmm1,xmm2
vpcmpeqd xmm1,xmm1,oword [bx+si]
vpcmpeqd xmm1,xmm1,xmm2
vhaddpd xmm1,xmm1,oword [bx+si]
vhaddpd xmm1,xmm1,xmm2
vhsubpd xmm1,xmm1,oword [bx+si]
vhsubpd xmm1,xmm1,xmm2
vpinsrw xmm1,xmm1,word [bx+si],byte 0x5
vpinsrw xmm1,xmm1,ax,byte 0x5
vaddsubpd xmm1,xmm1,oword [bx+si]
vaddsubpd xmm1,xmm1,xmm2
vpsrlw xmm1,xmm1,oword [bx+si]
vpsrlw xmm1,xmm1,xmm2
vpsrld xmm1,xmm1,oword [bx+si]
vpsrld xmm1,xmm1,xmm2
vpsrlq xmm1,xmm1,oword [bx+si]
vpsrlq xmm1,xmm1,xmm2
vpaddq xmm1,xmm1,oword [bx+si]
vpaddq xmm1,xmm1,xmm2
vpmullw xmm1,xmm1,oword [bx+si]
vpmullw xmm1,xmm1,xmm2
vpsubusb xmm1,xmm1,oword [bx+si]
vpsubusb xmm1,xmm1,xmm2
vpsubusw xmm1,xmm1,oword [bx+si]
vpsubusw xmm1,xmm1,xmm2
vpminub xmm1,xmm1,oword [bx+si]
vpminub xmm1,xmm1,xmm2
vpand xmm1,xmm1,oword [bx+si]
vpand xmm1,xmm1,xmm2
vpaddusb xmm1,xmm1,oword [bx+si]
vpaddusb xmm1,xmm1,xmm2
vpaddusw xmm1,xmm1,oword [bx+si]
vpaddusw xmm1,xmm1,xmm2
vpmaxub xmm1,xmm1,oword [bx+si]
vpmaxub xmm1,xmm1,xmm2
vpandn xmm1,xmm1,oword [bx+si]
vpandn xmm1,xmm1,xmm2
vpavgb xmm1,xmm1,oword [bx+si]
vpavgb xmm1,xmm1,xmm2
vpsraw xmm1,xmm1,oword [bx+si]
vpsraw xmm1,xmm1,xmm2
vpsrad xmm1,xmm1,oword [bx+si]
vpsrad xmm1,xmm1,xmm2
vpavgw xmm1,xmm1,oword [bx+si]
vpavgw xmm1,xmm1,xmm2
vpmulhuw xmm1,xmm1,oword [bx+si]
vpmulhuw xmm1,xmm1,xmm2
vpmulhw xmm1,xmm1,oword [bx+si]
vpmulhw xmm1,xmm1,xmm2
vpsubsb xmm1,xmm1,oword [bx+si]
vpsubsb xmm1,xmm1,xmm2
vpsubsw xmm1,xmm1,oword [bx+si]
vpsubsw xmm1,xmm1,xmm2
vpminsw xmm1,xmm1,oword [bx+si]
vpminsw xmm1,xmm1,xmm2
vpor xmm1,xmm1,oword [bx+si]
vpor xmm1,xmm1,xmm2
vpaddsb xmm1,xmm1,oword [bx+si]
vpaddsb xmm1,xmm1,xmm2
vpaddsw xmm1,xmm1,oword [bx+si]
vpaddsw xmm1,xmm1,xmm2
vpmaxsw xmm1,xmm1,oword [bx+si]
vpmaxsw xmm1,xmm1,xmm2
vpxor xmm1,xmm1,oword [bx+si]
vpxor xmm1,xmm1,xmm2
vpsllw xmm1,xmm1,oword [bx+si]
vpsllw xmm1,xmm1,xmm2
vpslld xmm1,xmm1,oword [bx+si]
vpslld xmm1,xmm1,xmm2
vpsllq xmm1,xmm1,oword [bx+si]
vpsllq xmm1,xmm1,xmm2
vpmuludq xmm1,xmm1,oword [bx+si]
vpmuludq xmm1,xmm1,xmm2
vpmaddwd xmm1,xmm1,oword [bx+si]
vpmaddwd xmm1,xmm1,xmm2
vpsadbw xmm1,xmm1,oword [bx+si]
vpsadbw xmm1,xmm1,xmm2
vpsubb xmm1,xmm1,oword [bx+si]
vpsubb xmm1,xmm1,xmm2
vpsubw xmm1,xmm1,oword [bx+si]
vpsubw xmm1,xmm1,xmm2
vpsubd xmm1,xmm1,oword [bx+si]
vpsubd xmm1,xmm1,xmm2
vpsubq xmm1,xmm1,oword [bx+si]
vpsubq xmm1,xmm1,xmm2
vpaddb xmm1,xmm1,oword [bx+si]
vpaddb xmm1,xmm1,xmm2
vpaddw xmm1,xmm1,oword [bx+si]
vpaddw xmm1,xmm1,xmm2
vpaddd xmm1,xmm1,oword [bx+si]
vpaddd xmm1,xmm1,xmm2
vmovss xmm1,xmm1,xmm2
vcvtsi2ss xmm1,xmm1,dword [bx+si]
vcvtsi2ss xmm1,xmm1,eax
vsqrtss xmm1,xmm1,dword [bx+si]
vsqrtss xmm1,xmm1,xmm2
vrsqrtss xmm1,xmm1,dword [bx+si]
vrsqrtss xmm1,xmm1,xmm2
vrcpss xmm1,xmm1,dword [bx+si]
vrcpss xmm1,xmm1,xmm2
vaddss xmm1,xmm1,dword [bx+si]
vaddss xmm1,xmm1,xmm2
vmulss xmm1,xmm1,dword [bx+si]
vmulss xmm1,xmm1,xmm2
vcvtss2sd xmm1,xmm1,dword [bx+si]
vcvtss2sd xmm1,xmm1,xmm2
vsubss xmm1,xmm1,dword [bx+si]
vsubss xmm1,xmm1,xmm2
vminss xmm1,xmm1,dword [bx+si]
vminss xmm1,xmm1,xmm2
vdivss xmm1,xmm1,dword [bx+si]
vdivss xmm1,xmm1,xmm2
vmaxss xmm1,xmm1,dword [bx+si]
vmaxss xmm1,xmm1,xmm2
vcmpeq_osss xmm1,xmm1,xmm2
vmovsd xmm1,xmm1,xmm2
vcvtsi2sd xmm1,xmm1,dword [bx+si]
vcvtsi2sd xmm1,xmm1,eax
vsqrtsd xmm1,xmm1,qword [bx+si]
vsqrtsd xmm1,xmm1,xmm2
vaddsd xmm1,xmm1,qword [bx+si]
vaddsd xmm1,xmm1,xmm2
vmulsd xmm1,xmm1,qword [bx+si]
vmulsd xmm1,xmm1,xmm2
vcvtsd2ss xmm1,xmm1,qword [bx+si]
vcvtsd2ss xmm1,xmm1,xmm2
vsubsd xmm1,xmm1,qword [bx+si]
vsubsd xmm1,xmm1,xmm2
vminsd xmm1,xmm1,qword [bx+si]
vminsd xmm1,xmm1,xmm2
vdivsd xmm1,xmm1,qword [bx+si]
vdivsd xmm1,xmm1,xmm2
vmaxsd xmm1,xmm1,qword [bx+si]
vmaxsd xmm1,xmm1,xmm2
vhaddps xmm1,xmm1,oword [bx+si]
vhaddps xmm1,xmm1,xmm2
vhsubps xmm1,xmm1,oword [bx+si]
vhsubps xmm1,xmm1,xmm2
vaddsubps xmm1,xmm1,oword [bx+si]
vaddsubps xmm1,xmm1,xmm2
vmovups xmm1,oword [bx+si]
vmovups xmm1,xmm2
vmovups oword [bx+si],xmm2
vmovlps qword [bx+si],xmm2
vmovhps qword [bx+si],xmm2
vmovaps xmm1,oword [bx+si]
vmovaps xmm1,xmm2
vmovaps oword [bx+si],xmm2
vmovntps oword [bx+si],xmm1
vucomiss xmm1,dword [bx+si]
vucomiss xmm1,xmm2
vcomiss xmm1,dword [bx+si]
vcomiss xmm1,xmm2
vmovmskps eax,xmm2
vsqrtps xmm1,oword [bx+si]
vsqrtps xmm1,xmm2
vrsqrtps xmm1,oword [bx+si]
vrsqrtps xmm1,xmm2
vrcpps xmm1,oword [bx+si]
vrcpps xmm1,xmm2
vcvtps2pd xmm1,qword [bx+si]
vcvtps2pd xmm1,xmm2
vcvtdq2ps xmm1,oword [bx+si]
vcvtdq2ps xmm1,xmm2
vzeroupper
vldmxcsr dword [bx+si]
vstmxcsr dword [bx+si]
vmovupd xmm1,oword [bx+si]
vmovupd xmm1,xmm2
vmovupd oword [bx+si],xmm2
vmovlpd qword [bx+si],xmm2
vmovhpd qword [bx+si],xmm2
vmovapd xmm1,oword [bx+si]
vmovapd xmm1,xmm2
vmovapd oword [bx+si],xmm2
vmovntpd oword [bx+si],xmm1
vucomisd xmm1,qword [bx+si]
vucomisd xmm1,xmm2
vcomisd xmm1,qword [bx+si]
vcomisd xmm1,xmm2
vmovmskpd eax,xmm2
vsqrtpd xmm1,oword [bx+si]
vsqrtpd xmm1,xmm2
vaddpd xmm0,xmm0,oword [bx+si]
vcvtpd2ps xmm1,oword [bx+si]
vcvtpd2ps xmm1,xmm2
vcvtps2dq xmm1,oword [bx+si]
vcvtps2dq xmm1,xmm2
vmovd xmm1,dword [bx+si]
vmovd xmm1,eax
vmovdqa xmm1,oword [bx+si]
vmovdqa xmm1,xmm2
vmovd dword [bx+si],xmm2
vmovd eax,xmm2
vmovdqa oword [bx+si],xmm2
vmovq qword [bx+si],xmm1
vmovq qword [bx+si],xmm2
vpmovmskb eax,xmm1
vcvttpd2dq xmm1,oword [bx+si]
vcvttpd2dq xmm1,xmm2
vmovntdq oword [bx+si],xmm1
vmaskmovdqu xmm1,xmm2
vmovss xmm1,qword [bx+si]
vmovsldup xmm1,oword [bx+si]
vmovsldup xmm1,xmm2
vmovshdup xmm1,oword [bx+si]
vmovshdup xmm1,xmm2
vcvttss2si eax,dword [bx+si]
vcvttss2si eax,xmm2
vcvtss2si eax,dword [bx+si]
vcvtss2si eax,xmm2
vcvttps2dq xmm1,oword [bx+si]
vcvttps2dq xmm1,xmm2
vmovdqu xmm1,oword [bx+si]
vmovdqu xmm1,xmm2
vmovq xmm1,qword [bx+si]
vmovq xmm1,xmm2
vmovdqu oword [bx+si],xmm2
vcvtdq2pd xmm1,qword [bx+si]
vcvtdq2pd xmm1,xmm2
vmovsd xmm1,qword [bx+si]
vmovddup xmm1,qword [bx+si]
vmovddup xmm1,xmm2
vcvttsd2si eax,qword [bx+si]
vcvttsd2si eax,xmm2
vcvtsd2si eax,qword [bx+si]
vcvtsd2si eax,xmm2
vcvtpd2dq xmm1,oword [bx+si]
vcvtpd2dq xmm1,xmm2
vlddqu xmm1,oword [bx+si]
vmovups ymm1,yword [bx+si]
vmovups ymm1,ymm2
vmovups yword [bx+si],ymm2
vmovaps ymm1,yword [bx+si]
vmovaps ymm1,ymm2
vmovaps yword [bx+si],ymm2
vmovntps oword [bx+si],ymm1
vmovmskps eax,ymm2
vsqrtps ymm1,yword [bx+si]
vsqrtps ymm1,ymm2
vrsqrtps ymm1,yword [bx+si]
vrsqrtps ymm1,ymm2
vrcpps ymm1,yword [bx+si]
vrcpps ymm1,ymm2
vcvtps2pd ymm1,oword [bx+si]
vcvtps2pd ymm1,xmm2
vcvtdq2ps ymm1,yword [bx+si]
vcvtdq2ps ymm1,ymm2
vzeroall
vmovupd ymm1,yword [bx+si]
vmovupd ymm1,ymm2
vmovupd yword [bx+si],ymm2
vmovapd ymm1,yword [bx+si]
vmovapd ymm1,ymm2
vmovapd yword [bx+si],ymm2
vmovntpd yword [bx+si],ymm1
vmovmskpd eax,ymm2
vsqrtpd ymm1,yword [bx+si]
vsqrtpd ymm1,ymm2
vaddpd ymm0,ymm0,ymm0
vcvtpd2ps xmm1,yword [bx+si]
vcvtpd2ps xmm1,ymm2
vcvtps2dq ymm1,yword [bx+si]
vcvtps2dq ymm1,ymm2
vmovqqa ymm1,yword [bx+si]
vmovqqa ymm1,ymm2
vmovqqa yword [bx+si],ymm2
vcvttpd2dq xmm1,yword [bx+si]
vcvttpd2dq xmm1,ymm2
vmovntqq yword [bx+si],ymm1
vmovsldup ymm1,yword [bx+si]
vmovsldup ymm1,ymm2
vmovshdup ymm1,yword [bx+si]
vmovshdup ymm1,ymm2
vcvttps2dq ymm1,yword [bx+si]
vcvttps2dq ymm1,ymm2
vmovqqu ymm1,yword [bx+si]
vmovqqu ymm1,ymm2
vmovqqu yword [bx+si],ymm2
vcvtdq2pd ymm1,oword [bx+si]
vcvtdq2pd ymm1,xmm2
vmovddup ymm1,yword [bx+si]
vmovddup ymm1,ymm2
vcvtpd2dq xmm1,yword [bx+si]
vcvtpd2dq xmm1,ymm2
vldqqu ymm1,yword [bx+si]
mov byte [bx+si],0x0
mov byte [0x0],0x1
mov word [0x1],0x2
enter 0xa,0x0
enter 0xa,0xc
enter 0x14,0x0
enter 0x17,0x8
enter 0x1a,0x3
enter 0x320,0x4
enter 0x28,0x2
enter 0x3141,0x59
enter 0x64,0x0
enter 0xc8,0x0
enter 0x3e8,0x1
leave
retf 0x10
retf 0x1234
retf
int3
int 0x1
int 0x3
int 0xa
into
iretw
shl bl,1
rcr dx,1
shr bx,1
rol byte [bx+si],cl
shl cl,cl
shr dh,cl
rol word [bx+si],cl
rol ax,cl
shr cx,cl
sar si,cl
aam
aam 0xff
aad 0x5
aad
aad 0xff
salc
xlatb
fadd dword [bx+si]
fadd dword [0xa]
fmul dword [bx+si]
fcom dword [bx+si]
fcom dword [0x0]
fcomp dword [bx+si]
fsub dword [bx+si]
fsubr dword [bx+si]
fdiv dword [bx+si]
fdivr dword [bx+si]
fadd st0
fadd st5
fmul st0
fcom st0
fcom st1
fcomp st0
fsub st0
fsub st1
fsubr st0
fsubr st1
fdiv st0
fdiv st1
fdivr st0
fdivr st1
fld dword [bx+si]
fld dword [0x0]
fst dword [bx+si]
fst dword [0x1]
fstp dword [bx+si]
fstp dword [0x0]
fldenv [bx+si]
fldcw [bx+si]
fldcw [0x0]
fnstenv [bx+si]
fnstcw [bx+si]
fnstcw [0x4]
fnstenv [bx+di+0x5]
fld st0
fld st2
fxch st0
fxch st1
fxch st2
fnop
fchs
fabs
ftst
fxam
fld1
fldl2t
fldl2e
fldpi
fldlg2
fldln2
fldz
f2xm1
fyl2x
fptan
fpatan
fxtract
fprem1
fdecstp
fincstp
fprem
fyl2xp1
fsqrt
fsincos
frndint
fscale
fsin
fcos
fiadd dword [bx+si]
fimul dword [bx+si]
ficom dword [bx+si]
ficomp dword [bx+si]
fisub dword [bx+si]
fisub dword [0x4]
fisubr dword [bx+si]
fidiv dword [bx+si]
fidivr dword [bx+si]
fcmovb st0
fcmove st0
fcmove st6
fcmovbe st0
fcmovu st0
fcmovu st5
fucompp
fild dword [bx+si]
fild dword [0x4]
fist dword [bx+si]
fistp dword [bx+si]
fld tword [bx+si]
fld tword [0x10]
fstp tword [bx+si]
fcmovnb st0
fcmovne st0
fcmovnbe st0
fcmovnu st0
fneni
fndisi
fnclex
fninit
fsetpm
fucomi st0
fucomi st2
fcomi st0
fadd qword [bx+si]
fadd qword [0x5]
fmul qword [bx+si]
fcom qword [bx+si]
fcom qword [0x8]
fcomp qword [bx+si]
fsub qword [bx+si]
fsubr qword [bx+si]
fdiv qword [bx+si]
fdivr qword [bx+si]
fadd to st6
fadd to st7
fld qword [bx+si]
fld qword [0x4]
fst qword [bx+si]
fst qword [0x8]
fstp qword [bx+si]
frstor [bx+si]
fnsave [bx+si]
fnstsw [bx+si]
fnstsw [0x0]
fnstsw [0x8]
ffree st0
ffree st1
fst st0
fst st1
fstp st0
fstp st4
fucom st0
fucom st2
fucom st7
fucomp st0
fucomp st3
fucomp st5
fiadd word [bx+si]
fiadd word [0xa]
fimul word [bx+si]
ficom word [bx+si]
ficomp word [bx+si]
fisub word [bx+si]
fisubr word [bx+si]
fidiv word [bx+si]
fidivr word [bx+si]
faddp st0
faddp st1
faddp st2
faddp st5
fmulp st0
fcompp
fsubrp st0
fsubrp st1
fsubp st0
fsubp st1
fdivrp st0
fdivrp st1
fdivp st0
fdivp st1
fild word [bx+si]
fild word [0x0]
fisttp word [bx+si]
fist word [bx+si]
fistp word [bx+si]
fbld tword [bx+si]
fbld tword [0xa]
fbld tword [0x64]
fild qword [bx+si]
fild qword [0x8]
fbstp tword [bx+si]
fistp qword [bx+si]
ffreep st0
fnstsw ax
fucomip st0
fcomip st0
loopne $+0x0f
loope $+0x0f
loop $
jcxz $+0xc
in al,0x37
in al,0xff
in ax,0x63
in ax,0x64
in ax,0xff
out 0x37,al
out 0xff,al
out 0x42,ax
out 0x4d,ax
out 0xff,ax
call word 0xfff3
jmp short $+0xf
in al,dx
in ax,dx
out dx,al
out dx,ax
lock cmpxchg8b [bx+si]
lock mov [bx+si],ax
lock mov ax,ax
int1
movsd xmm0,[bx+si]
movsd xmm1,[bx+si]
movsd xmm1,[bp+di]
movsd xmm1,xmm2
movsd [bx+si],xmm0
movsd [bx+si],xmm2
movsd [bp+di],xmm2
movddup xmm0,[bx+si]
movddup xmm1,[bx+si]
movddup xmm1,[bp+di]
movddup xmm1,xmm2
movddup xmm7,xmm6
cvtsi2sd xmm0,dword [bx+si]
cvtsi2sd xmm1,dword [bx+si]
cvtsi2sd xmm1,dword [bp+di]
cvtsi2sd xmm0,eax
cvtsi2sd xmm1,eax
cvtsi2sd xmm1,ebx
cvtsi2sd xmm5,eax
movntsd [bx+si],xmm0
movntsd [bp+di],xmm2
cvttsd2si eax,[bx+si]
cvttsd2si eax,[bp+di]
cvttsd2si eax,xmm1
cvttsd2si eax,xmm2
cvttsd2si ecx,xmm0
cvtsd2si eax,[bx+si]
cvtsd2si ebx,[bp+di]
cvtsd2si eax,xmm2
cvtsd2si edx,xmm0
cvtsd2si ebx,xmm2
crc32 eax,byte [bx+si]
crc32 eax,bl
crc32 eax,bh
crc32 ecx,bl
crc32 eax,word [bx+si]
crc32 eax,cx
crc32 eax,dx
crc32 eax,bx
crc32 ecx,dx
crc32 ecx,bx
sqrtsd xmm0,[bx+si]
sqrtsd xmm1,[bx+si]
sqrtsd xmm1,[bp+di]
sqrtsd xmm1,xmm2
addsd xmm0,[bx+si]
addsd xmm1,[bx+si]
addsd xmm1,[bp+di]
addsd xmm1,xmm2
mulsd xmm0,[bx+si]
mulsd xmm1,[bx+si]
mulsd xmm1,[bp+di]
mulsd xmm1,xmm2
cvtsd2ss xmm0,[bx+si]
cvtsd2ss xmm1,[bx+si]
cvtsd2ss xmm1,[bp+di]
cvtsd2ss xmm1,xmm2
subsd xmm0,[bx+si]
subsd xmm1,[bx+si]
subsd xmm1,[bp+di]
subsd xmm1,xmm2
minsd xmm0,[bx+si]
minsd xmm1,[bx+si]
minsd xmm1,[bp+di]
minsd xmm1,xmm2
divsd xmm0,[bx+si]
divsd xmm1,[bx+si]
divsd xmm1,[bp+di]
divsd xmm1,xmm2
maxsd xmm0,[bx+si]
maxsd xmm1,[bx+si]
maxsd xmm1,[bp+di]
maxsd xmm1,xmm2
pshuflw xmm0,[bx+si],0x0
pshuflw xmm1,[bx+si],0x5
pshuflw xmm1,[bp+di],0x0
pshuflw xmm1,xmm2,0x0
pshuflw xmm1,xmm2,0x5
insertq xmm0,xmm1,0x5,0x4
insertq xmm1,xmm2,0x0,0x1
insertq xmm5,xmm6,0x0,0x7
insertq xmm1,xmm2
insertq xmm2,xmm3
haddps xmm0,[bx+si]
haddps xmm1,[bx+si]
haddps xmm1,[bp+di]
haddps xmm1,xmm2
haddps xmm6,xmm1
hsubps xmm0,[bx+si]
hsubps xmm1,[bx+si]
hsubps xmm1,[bp+di]
hsubps xmm1,xmm2
hsubps xmm4,xmm1
cmpeqsd xmm0,[bx+si]
cmpltsd xmm0,[bx+si]
cmplesd xmm0,[bx+si]
cmpunordsd xmm0,[bx+si]
cmpneqsd xmm0,[bx+si]
cmpnltsd xmm0,[bx+si]
cmpnlesd xmm0,[bx+si]
cmpordsd xmm0,[bx+si]
cmpnltsd xmm1,[bx+si]
cmpeqsd xmm1,[bp+di]
cmpeqsd xmm1,xmm2
cmpnltsd xmm1,xmm2
addsubps xmm0,[bx+si]
addsubps xmm1,[bx+si]
addsubps xmm1,[bp+di]
addsubps xmm3,[bp+si]
addsubps xmm1,xmm2
addsubps xmm1,xmm5
movdq2q mm0,xmm0
movdq2q mm1,xmm2
cvtpd2dq xmm0,[bx+si]
cvtpd2dq xmm1,[bx+si]
cvtpd2dq xmm1,[bp+di]
cvtpd2dq xmm0,xmm1
cvtpd2dq xmm1,xmm2
lddqu xmm0,[bx+si]
lddqu xmm1,[bx+si]
lddqu xmm1,[bp+di]
repne movsb
movss xmm0,[bx+si]
movss xmm1,[bx+si]
movss xmm1,[bp+di]
movss xmm1,xmm2
movss [bx+si],xmm0
movss [bx+si],xmm2
movss [bp+di],xmm2
movsldup xmm0,[bx+si]
movsldup xmm1,[bx+si]
movsldup xmm1,[bp+di]
movsldup xmm0,xmm7
movsldup xmm1,xmm2
movshdup xmm0,[bx+si]
movshdup xmm1,[bx+si]
movshdup xmm1,[bp+di]
movshdup xmm2,[0x0]
movshdup xmm2,[dword 0x0]
movshdup xmm1,xmm2
movshdup xmm3,xmm4
cvtsi2ss xmm0,dword [bx+si]
cvtsi2ss xmm1,dword [bx+si]
cvtsi2ss xmm1,dword [bp+di]
cvtsi2ss xmm0,edx
cvtsi2ss xmm1,eax
cvtsi2ss xmm1,ebx
movntss [bx+si],xmm0
movntss [bp+di],xmm2
cvttss2si eax,[bx+si]
cvttss2si eax,[bp+di]
cvttss2si eax,xmm1
cvttss2si eax,xmm2
cvttss2si esi,xmm3
cvtss2si eax,[bx+si]
cvtss2si ecx,[bp+di]
cvtss2si ebx,[bp+di]
cvtss2si eax,xmm2
cvtss2si ecx,xmm2
cvtss2si ebx,xmm2
cvtss2si ebx,xmm7
sqrtss xmm0,[bx+si]
sqrtss xmm1,[bx+si]
sqrtss xmm1,[bp+di]
sqrtss xmm1,xmm2
rsqrtss xmm0,[bx+si]
rsqrtss xmm1,[bx+si]
rsqrtss xmm1,[bp+di]
rsqrtss xmm1,xmm2
rcpss xmm0,[bx+si]
rcpss xmm1,[bx+si]
rcpss xmm1,[bp+di]
rcpss xmm1,xmm2
addss xmm0,[bx+si]
addss xmm1,[bx+si]
addss xmm1,[bp+di]
addss xmm1,xmm2
mulss xmm0,[bx+si]
mulss xmm1,[bx+si]
mulss xmm1,[bp+di]
mulss xmm1,xmm2
cvtss2sd xmm0,[bx+si]
cvtss2sd xmm1,[bx+si]
cvtss2sd xmm1,[bp+di]
cvtss2sd xmm1,xmm2
cvtss2sd xmm3,xmm4
cvttps2dq xmm0,[bx+si]
cvttps2dq xmm1,[bx+si]
cvttps2dq xmm1,[bp+di]
cvttps2dq xmm0,xmm1
cvttps2dq xmm1,xmm2
subss xmm0,[bx+si]
subss xmm1,[bx+si]
subss xmm1,[bp+di]
subss xmm1,xmm2
minss xmm0,[bx+si]
minss xmm1,[bx+si]
minss xmm1,[bp+di]
minss xmm1,xmm2
divss xmm0,[bx+si]
divss xmm1,[bx+si]
divss xmm1,[bp+di]
divss xmm1,xmm2
maxss xmm0,[bx+si]
maxss xmm1,[bx+si]
maxss xmm1,[bp+di]
maxss xmm1,xmm2
movdqu xmm0,[bx+si]
movdqu xmm0,[bp+si]
movdqu xmm1,[bx+si]
movdqu xmm1,[bp+di]
movdqu xmm1,xmm2
pshufhw xmm0,[bx+si],0x0
pshufhw xmm1,[bx+si],0x5
pshufhw xmm1,[bp+di],0x0
pshufhw xmm1,xmm2,0x0
pshufhw xmm1,xmm2,0x5
movq xmm0,[bx+si]
movq xmm1,[bx+si]
movq xmm1,[bp+di]
movq xmm1,xmm0
movq xmm1,xmm2
movdqu [bx+si],xmm0
movdqu [bp+si],xmm0
movdqu [bx+si],xmm2
movdqu [bp+di],xmm2
rep xstore
popcnt ax,word [bx+si]
popcnt ax,bx
popcnt cx,dx
popcnt bx,cx
lzcnt ax,word [bx+si]
lzcnt ax,bx
cmpeqss xmm0,[bx+si]
cmpltss xmm0,[bx+si]
cmpless xmm0,[bx+si]
cmpunordss xmm0,[bx+si]
cmpneqss xmm0,[bx+si]
cmpnltss xmm0,[bx+si]
cmpnless xmm0,[bx+si]
cmpordss xmm0,[bx+si]
cmpnltss xmm1,[bx+si]
cmpltss xmm1,[bx+di]
cmpeqss xmm1,[bp+di]
cmpneqss xmm1,[bp+di]
cmpnless xmm1,[bp+di]
cmpless xmm1,[bx]
cmpeqss xmm1,xmm2
cmpnltss xmm1,xmm2
vmxon [bx+si]
movq2dq xmm0,mm0
movq2dq xmm1,mm2
cvtdq2pd xmm0,[bx+si]
cvtdq2pd xmm1,[bx+si]
cvtdq2pd xmm1,[bp+di]
cvtdq2pd xmm1,xmm2
cvtdq2pd xmm5,xmm4
pause
rep movsb
rep montmul
rep xsha1
rep xsha256
rep xcryptecb
rep xcryptcbc
rep xcryptctr
rep xcryptcfb
rep xcryptofb
hlt
cmc
test byte [bx+si],0x0
not byte [bx+si]
neg byte [bx+si]
mul byte [bx+si]
imul byte [bx+si]
div byte [bx+si]
idiv byte [bx+si]
idiv byte [bp+di]
idiv byte [0x0]
idiv byte [bx]
mul bl
div ah
idiv al
not word [bx+si]
neg word [bx+si]
mul word [bx+si]
imul word [bx+si]
div word [bx+si]
idiv word [bx+si]
idiv word [di+0x0]
not ax
neg cx
mul cx
mul bx
idiv ax
clc
stc
cli
sti
cld
std
inc byte [bx+si]
dec byte [bx+si]
inc word [bx+si]
dec word [bx+si]
call word near [bx+si]
call word near [0x357]
call word far [bx+si]
call word far [0x357]
jmp word near [bx+si]
jmp word far [bx+si]
jmp word far [0x2]
jmp word far [0x357]
push word [bx+si]
inc bx
dec cx
BITS 16
add [bx+si],al
add [bx+si],ax
add ax,bx
add al,[bx+si]
add ax,[bx+si]
add al,0x0
push es
pop es
or [bx+si],al
or [bx+si],ax
or ax,[bx+si]
or al,0x0
push cs
sldt [bx+si]
str [bx+si]
lldt [bx+si]
ltr [bx+si]
verr [bx+si]
verw [bx+si]
sldt ax
str ax
lldt ax
ltr ax
verr ax
verw ax
sgdt [bx+si]
sidt [bx+si]
lgdt [bx+si]
lidt [bx+si]
smsw [bx+si]
lmsw [bx+si]
invlpg [bx+si]
vmcall
vmlaunch
vmresume
vmxoff
monitor
mwait
xgetbv
xsetbv
invlpga
smsw ax
lmsw ax
rdtscp
lar ax,[bx+si]
lsl ax,[bx+si]
loadall286
clts
loadall
invd
wbinvd
ud2
prefetch [bx+si]
femms
pfrcp mm0,mm0
pfrcpit1 mm0,mm1
pfmul mm0,mm1
pfrcpit2 mm0,mm1
pfcmpge mm0,mm2
pfrsqrt mm1,mm0
pfrsqit1 mm1,mm0
pfmul mm1,mm1
pfrcpit2 mm1,mm2
pfsubr mm1,mm3
pfmul mm2,mm0
pswapd mm3,mm4
pfpnacc mm4,mm6
pfnacc mm6,mm5
pf2iw mm7,mm0
movups xmm0,[bx+si]
movups xmm1,[bx+si]
movups xmm1,[bp+di]
movups xmm1,xmm2
movups [bx+si],xmm0
movups [bx+si],xmm2
movups [bp+di],xmm2
movlps xmm0,[bx+si]
movlps xmm1,[bx+si]
movlps xmm1,[bp+di]
movhlps xmm0,xmm0
movhlps xmm1,xmm2
movlps [bx+si],xmm0
movlps [bx+si],xmm2
movlps [bp+di],xmm2
unpcklps xmm0,[bx+si]
unpcklps xmm1,[bx+si]
unpcklps xmm1,[bp+di]
unpcklps xmm1,xmm2
unpckhps xmm0,[bx+si]
unpckhps xmm1,[bx+si]
unpckhps xmm1,[bp+di]
unpckhps xmm1,xmm2
movhps xmm0,[bx+si]
movhps xmm1,[bx+si]
movhps xmm1,[bp+di]
movlhps xmm0,xmm0
movlhps xmm1,xmm2
movhps [bx+si],xmm0
movhps [bx+si],xmm2
movhps [bp+di],xmm2
prefetchnta [bx+si]
prefetcht0 [bx+si]
prefetcht1 [bx+si]
prefetcht2 [bx+si]
nop word [bx+si]
nop word [bx+di]
nop word [bx+si+0x0]
mov eax,cr0
mov eax,dr0
mov eax,dr7
mov cr0,eax
mov cr2,ebx
mov cr4,edx
mov dr0,eax
mov dr1,edx
movaps xmm0,[bx+si]
movaps xmm1,[bx+si]
movaps xmm1,[bp+di]
movaps xmm1,xmm2
movaps [bx+si],xmm0
movaps [bx+si],xmm2
movaps [bp+di],xmm2
cvtpi2ps xmm0,[bx+si]
cvtpi2ps xmm1,[bp+di]
cvtpi2ps xmm1,mm2
cvtpi2ps xmm2,mm3
movntps [bx+si],xmm0
movntps [bx+si],xmm1
movntps [bp+di],xmm2
cvttps2pi mm0,[bx+si]
cvttps2pi mm1,[bp+di]
cvttps2pi mm1,xmm2
cvttps2pi mm4,xmm5
cvtps2pi mm0,[bx+si]
cvtps2pi mm1,[bp+di]
cvtps2pi mm1,xmm2
cvtps2pi mm6,xmm7
ucomiss xmm0,[bx+si]
ucomiss xmm1,[bx+si]
ucomiss xmm1,[bp+di]
ucomiss xmm1,xmm2
comiss xmm0,[bx+si]
comiss xmm1,[bx+si]
comiss xmm1,[bp+di]
comiss xmm1,xmm2
wrmsr
rdtsc
rdmsr
rdpmc
sysenter
sysexit
getsec
pshufb mm0,[bx+si]
pshufb mm0,mm1
phaddw mm0,mm1
phaddd mm0,mm1
phaddsw mm0,mm1
pmaddubsw mm0,mm1
phsubw mm0,mm1
phsubd mm0,mm1
phsubsw mm0,mm1
psignb mm0,mm1
psignw mm0,mm1
psignd mm0,mm1
pmulhrsw mm0,mm1
pabsb mm0,mm1
pabsw mm0,mm1
pabsd mm0,mm1
movbe ax,word [bx+si]
movbe cx,word [bx+si]
movbe word [bx+si],ax
palignr mm0,mm0,0x0
palignr mm0,mm1,0x3
cmovo ax,[bx+si]
cmovno ax,[bx+si]
cmovc ax,[bx+si]
cmovnc ax,[bx+si]
cmovz ax,[bx+si]
cmovnz ax,[bx+si]
cmovna ax,[bx+si]
cmova ax,[bx+si]
cmovs ax,[bx+si]
cmovns ax,[bx+si]
cmovpe ax,[bx+si]
cmovpo ax,[bx+si]
cmovl ax,[bx+si]
cmovnl ax,[bx+si]
cmovng ax,[bx+si]
cmovg ax,[bx+si]
movmskps eax,xmm0
movmskps eax,xmm1
movmskps eax,xmm2
movmskps ebx,xmm2
sqrtps xmm0,[bx+si]
sqrtps xmm1,[bx+si]
sqrtps xmm1,[bp+di]
sqrtps xmm1,xmm2
rsqrtps xmm0,[bx+si]
rsqrtps xmm1,[bx+si]
rsqrtps xmm1,[bp+di]
rsqrtps xmm1,xmm2
rcpps xmm0,[bx+si]
rcpps xmm1,[bx+si]
rcpps xmm1,[bp+di]
rcpps xmm1,xmm2
andps xmm0,[bx+si]
andps xmm1,[bx+si]
andps xmm1,[bp+di]
andps xmm1,xmm2
andnps xmm0,[bx+si]
andnps xmm1,[bx+si]
andnps xmm1,[bp+di]
andnps xmm1,xmm2
orps xmm0,[bx+si]
orps xmm1,[bx+si]
orps xmm1,[bp+di]
orps xmm1,xmm2
xorps xmm0,[bx+si]
xorps xmm1,[bx+si]
xorps xmm1,[bp+di]
xorps xmm1,xmm2
xorps xmm2,xmm2
addps xmm0,[bx+si]
addps xmm1,[bx+si]
addps xmm1,[bp+di]
addps xmm1,xmm2
mulps xmm0,[bx+si]
mulps xmm1,[bx+si]
mulps xmm1,[bp+di]
mulps xmm1,xmm2
cvtps2pd xmm0,[bx+si]
cvtps2pd xmm1,[bx+si]
cvtps2pd xmm1,[bp+di]
cvtps2pd xmm1,xmm2
cvtps2pd xmm2,xmm3
cvtdq2ps xmm0,[bx+si]
cvtdq2ps xmm1,[bx+si]
cvtdq2ps xmm1,[bp+di]
cvtdq2ps xmm1,xmm2
subps xmm0,[bx+si]
subps xmm1,[bx+si]
subps xmm1,[bp+di]
subps xmm1,xmm2
minps xmm0,[bx+si]
minps xmm1,[bx+si]
minps xmm1,[bp+di]
minps xmm1,xmm2
divps xmm0,[bx+si]
divps xmm1,[bx+si]
divps xmm1,[bp+di]
divps xmm1,xmm2
maxps xmm0,[bx+si]
maxps xmm1,[bx+si]
maxps xmm1,[bp+di]
maxps xmm1,xmm2
punpcklbw mm0,[bx+si]
punpcklwd mm0,[bx+si]
punpckldq mm0,[bx+si]
packsswb mm0,[bx+si]
pcmpgtb mm0,[bx+si]
pcmpgtw mm0,[bx+si]
pcmpgtw mm0,mm2
pcmpgtd mm0,[bx+si]
packuswb mm0,[bx+si]
punpckhbw mm0,[bx+si]
punpckhwd mm0,[bx+si]
punpckhdq mm0,[bx+si]
packssdw mm0,[bx+si]
movd mm0,[bx+si]
movd mm7,eax
movq mm0,[bx+si]
movq mm0,[bp+si]
movq mm1,[bx+si]
movq mm0,mm1
movq mm1,mm0
movq mm2,mm1
pshufw mm0,[bx+si],0x0
psrlw mm0,0x0
psrlw mm0,0x1
psraw mm0,0x0
psraw mm1,0x1
psllw mm0,0x0
psrld mm0,0x0
psrld mm0,0x1
psrad mm0,0x0
psrad mm1,0x1
pslld mm0,0x0
psrlq mm0,0x0
psrlq mm0,0x1
psllq mm0,0x0
pcmpeqb mm0,[bx+si]
pcmpeqw mm0,[bx+si]
pcmpeqd mm0,[bx+si]
emms
vmread dword [bx+si],eax
vmread dword [bp+di],ecx
vmwrite eax,dword [bx+si]
vmwrite ebp,dword [di+0x0]
movd [bx+si],mm0
movd eax,mm0
movq [bx+si],mm0
movq [bp+si],mm0
push fs
pop fs
cpuid
bt [bx+si],ax
bt [bx+si],di
bt si,di
shld [bx+si],ax,0x0
shld cx,dx,0xa
shld ax,bx,0x5
shld [bx+si],ax,cl
shld ax,bx,cl
xstore
push gs
pop gs
rsm
bts [bx+si],ax
bts [bx+si],dx
bts ax,dx
shrd [bx+si],ax,0x0
shrd [bx+si],ax,cl
shrd cx,dx,cl
fxsave [bx+si]
fxsave [0x0]
fxrstor [bx+si]
fxrstor [0x0]
ldmxcsr [bx+si]
ldmxcsr [bp+di]
stmxcsr [bx+si]
stmxcsr [bp+di]
xsave [bx+si]
xrstor [bx+si]
clflush [bx+si]
lfence
mfence
sfence
imul ax,[bx+si]
cmpxchg [bx+si],al
cmpxchg [bx+si],ax
cmpxchg [bx+si],dx
lss ax,[bx+si]
btr [bx+si],ax
btr [bx+si],bp
btr sp,bp
lfs ax,[bx+si]
lgs ax,[bx+si]
movzx ax,[bx+si]
movzx cx,[bp+di]
btc [bx+si],ax
bsf ax,[bx+si]
bsf dx,[bx+si]
bsf ax,dx
bsr ax,[bx+si]
bsr bx,[bx+si]
bsr cx,bx
movsx ax,[bx+si]
xadd [bx+si],al
xadd [bx+si],ax
xadd [bx+si],di
cmpeqps xmm0,[bx+si]
cmpltps xmm0,[bx+si]
cmpleps xmm0,[bx+si]
cmpunordps xmm0,[bx+si]
cmpneqps xmm0,[bx+si]
cmpnltps xmm0,[bx+si]
cmpnleps xmm0,[bx+si]
cmpordps xmm0,[bx+si]
cmpnltps xmm1,[bx+si]
cmpeqps xmm1,[bp+di]
cmpeqps xmm1,xmm2
cmpnltps xmm1,xmm2
movnti [bx+si],eax
pinsrw mm0,[bx+si],0x0
pinsrw mm3,si,0x5
pextrw eax,mm0,0x0
pextrw ebx,mm5,0x0
shufps xmm0,[bx+si],0x0
shufps xmm1,[bx+si],0x5
shufps xmm1,[bp+di],0x0
shufps xmm1,xmm2,0x0
shufps xmm1,xmm2,0x5
cmpxchg8b [bx+si]
vmptrld [bx+si]
vmptrst [bx+si]
psrlw mm0,[bx+si]
psrld mm0,[bx+si]
psrlq mm0,[bx+si]
paddq mm0,[bx+si]
pmullw mm0,[bx+si]
pmovmskb eax,mm0
pmovmskb edi,mm0
psubusb mm0,[bx+si]
psubusw mm0,[bx+si]
pminub mm0,[bx+si]
pand mm0,[bx+si]
paddusb mm0,[bx+si]
paddusw mm0,[bx+si]
pmaxub mm0,[bx+si]
pandn mm0,[bx+si]
pavgb mm0,[bx+si]
psraw mm0,[bx+si]
psrad mm0,[bx+si]
pavgw mm0,[bx+si]
pmulhuw mm0,[bx+si]
pmulhw mm0,[bx+si]
movntq [bx+si],mm0
psubsb mm0,[bx+si]
psubsw mm0,[bx+si]
pminsw mm0,[bx+si]
por mm0,[bx+si]
paddsb mm0,[bx+si]
paddsw mm0,[bx+si]
pmaxsw mm0,[bx+si]
pxor mm0,[bx+si]
psllw mm0,[bx+si]
pslld mm0,[bx+si]
psllq mm0,[bx+si]
pmuludq mm0,[bx+si]
pmaddwd mm0,[bx+si]
psadbw mm0,[bx+si]
maskmovq mm0,mm0
psubb mm0,[bx+si]
psubw mm0,[bx+si]
psubd mm0,[bx+si]
psubq mm0,[bx+si]
paddb mm0,[bx+si]
paddw mm0,[bx+si]
paddd mm0,[bx+si]
adc [bx+si],al
adc [bx+si],ax
adc al,[bx+si]
adc ax,[bx+si]
adc al,0x0
push ss
pop ss
sbb [bx+si],al
sbb [bx+si],ax
sbb al,[bx+si]
sbb ax,[bx+si]
sbb al,0x0
push ds
pop ds
and [bx+si],al
and [bx+si],ax
and al,[bx+si]
and ax,[bx+si]
and al,0x0
idiv dword [dword es:0x5]
fnstenv [es:ecx+0x5]
mov [es:bx+si],ax
fnstenv [es:bx+di+0x5]
cmpeqsd xmm0,[es:bx+si]
cmpeqss xmm0,[es:bx+si]
daa
sub [bx+si],al
sub [bx+si],ax
sub bx,di
sub al,[bx+si]
sub ax,[bx+si]
sub al,0x0
idiv dword [cs:0x5]
mov [cs:bx+si],ax
mov es,[cs:0x0]
das
xor [bx+si],al
xor [bx+si],ax
xor al,[bx+si]
xor ax,[bx+si]
xor al,0x0
idiv word [ss:edi+0x5]
mov [ss:bx+si],ax
mov ds,[ss:0x10]
call word far [ss:0x0]
aaa
cmp [bx+si],al
cmp [bx+si],ax
cmp al,[bx+si]
cmp ax,[bx+si]
cmp al,0x0
mov [ds:bx+si],ax
aas
inc ax
inc cx
inc dx
inc bx
inc sp
inc bp
inc si
inc di
dec ax
dec cx
dec dx
dec bx
dec sp
dec bp
dec si
dec di
push ax
push cx
push dx
push bx
push sp
push bp
push si
push di
pop ax
pop cx
pop dx
pop bx
pop sp
pop bp
pop si
pop di
pushaw
popaw
bound ax,[bx+si]
bound sp,[0x4]
arpl [bx+si],ax
lock and [fs:eax],esi
mov [fs:bx+si],ax
mov ax,[fs:di+0x0]
mov eax,[dword gs:ebx+ecx]
mov [gs:bx+si],ax
add eax,ebx
o32 push cs
smsw eax
movupd xmm0,[bx+si]
movupd xmm1,[bx+si]
movupd xmm1,[bp+di]
movupd xmm1,xmm2
movupd [bx+si],xmm0
movupd [bx+si],xmm2
movupd [bp+di],xmm2
movlpd xmm0,[bx+si]
movlpd xmm1,[bx+si]
movlpd xmm1,[bp+di]
movlpd [bx+si],xmm0
movlpd [bx+si],xmm2
movlpd [bp+di],xmm2
unpcklpd xmm0,[bx+si]
unpcklpd xmm1,[bx+si]
unpcklpd xmm1,[bp+di]
unpcklpd xmm1,xmm2
unpckhpd xmm0,[bx+si]
unpckhpd xmm1,[bx+si]
unpckhpd xmm1,[bp+di]
unpckhpd xmm1,xmm2
movhpd xmm0,[bx+si]
movhpd xmm1,[bx+si]
movhpd xmm1,[bp+di]
movhpd [bx+si],xmm0
movhpd [bx+si],xmm2
movhpd [bp+di],xmm2
movapd xmm0,[bx+si]
movapd xmm1,[bx+si]
movapd xmm1,[bp+di]
movapd xmm1,xmm2
movapd [bx+si],xmm0
movapd [bx+si],xmm2
movapd [bp+di],xmm2
cvtpi2pd xmm0,[bx+si]
cvtpi2pd xmm1,[bp+di]
cvtpi2pd xmm1,mm2
cvtpi2pd xmm5,mm6
movntpd [bx+si],xmm0
movntpd [bx+si],xmm1
movntpd [bp+di],xmm2
cvttpd2pi mm0,[bx+si]
cvttpd2pi mm1,[bp+di]
cvttpd2pi mm0,xmm1
cvttpd2pi mm1,xmm2
cvtpd2pi mm0,[bx+si]
cvtpd2pi mm1,[bp+di]
cvtpd2pi mm1,xmm2
cvtpd2pi mm4,xmm5
ucomisd xmm0,[bx+si]
ucomisd xmm1,[bx+si]
ucomisd xmm1,[bp+di]
ucomisd xmm1,xmm2
comisd xmm0,[bx+si]
comisd xmm1,[bx+si]
comisd xmm1,[bp+di]
comisd xmm1,xmm2
pshufb xmm0,[bx+si]
pshufb xmm1,[bx+si]
pshufb xmm0,xmm1
pshufb xmm1,xmm2
phaddw xmm0,[bx+si]
phaddw xmm1,[bx+si]
phaddw xmm0,xmm1
phaddw xmm1,xmm2
phaddd xmm0,[bx+si]
phaddd xmm1,[bx+si]
phaddd xmm0,xmm1
phaddd xmm1,xmm2
phaddsw xmm0,[bx+si]
phaddsw xmm1,[bx+si]
phaddsw xmm0,xmm1
phaddsw xmm1,xmm2
pmaddubsw xmm0,[bx+si]
pmaddubsw xmm1,[bx+si]
pmaddubsw xmm0,xmm1
pmaddubsw xmm1,xmm2
phsubw xmm0,[bx+si]
phsubw xmm1,[bx+si]
phsubw xmm0,xmm1
phsubw xmm1,xmm2
phsubd xmm0,[bx+si]
phsubd xmm1,[bx+si]
phsubd xmm0,xmm1
phsubd xmm1,xmm2
phsubsw xmm0,[bx+si]
phsubsw xmm1,[bx+si]
phsubsw xmm0,xmm1
phsubsw xmm1,xmm2
psignb xmm1,[bx+si]
psignb xmm0,xmm0
psignb xmm0,xmm1
psignb xmm1,xmm2
psignw xmm1,[bx+si]
psignw xmm0,xmm0
psignw xmm0,xmm1
psignw xmm1,xmm2
psignd xmm1,[bx+si]
psignd xmm0,xmm0
psignd xmm0,xmm1
psignd xmm1,xmm2
pmulhrsw xmm1,[bx+si]
pmulhrsw xmm0,xmm0
pmulhrsw xmm0,xmm1
pmulhrsw xmm1,xmm2
pblendvb xmm1,[bx+si],xmm0
pblendvb xmm0,xmm0,xmm0
pblendvb xmm1,xmm2,xmm0
blendvps xmm1,[bx+si],xmm0
blendvps xmm0,xmm0,xmm0
blendvps xmm1,xmm2,xmm0
blendvps xmm1,xmm3,xmm0
blendvpd xmm1,[bx+si],xmm0
blendvpd xmm0,xmm0,xmm0
blendvpd xmm1,xmm2,xmm0
blendvpd xmm1,xmm3,xmm0
ptest xmm1,[bx+si]
ptest xmm0,xmm0
ptest xmm1,xmm2
pabsb xmm1,[bx+si]
pabsb xmm0,xmm0
pabsb xmm0,xmm1
pabsb xmm1,xmm2
pabsw xmm1,[bx+si]
pabsw xmm0,xmm0
pabsw xmm0,xmm1
pabsw xmm1,xmm2
pabsd xmm1,[bx+si]
pabsd xmm0,xmm0
pabsd xmm0,xmm1
pabsd xmm1,xmm2
pmovsxbw xmm1,[bx+si]
pmovsxbw xmm0,xmm0
pmovsxbw xmm1,xmm2
pmovsxbd xmm1,[bx+si]
pmovsxbd xmm0,xmm0
pmovsxbd xmm1,xmm2
pmovsxbq xmm1,[bx+si]
pmovsxbq xmm0,xmm0
pmovsxbq xmm1,xmm2
pmovsxwd xmm1,[bx+si]
pmovsxwd xmm0,xmm0
pmovsxwd xmm1,xmm2
pmovsxwq xmm1,[bx+si]
pmovsxwq xmm0,xmm0
pmovsxwq xmm1,xmm2
pmovsxdq xmm1,[bx+si]
pmovsxdq xmm0,xmm0
pmovsxdq xmm1,xmm2
pmuldq xmm1,[bx+si]
pmuldq xmm0,xmm0
pmuldq xmm1,xmm2
pcmpeqq xmm1,[bx+si]
pcmpeqq xmm0,xmm0
pcmpeqq xmm1,xmm2
movntdqa xmm0,[bx+si]
movntdqa xmm1,[bx+si]
packusdw xmm1,[bx+si]
packusdw xmm0,xmm0
packusdw xmm1,xmm2
pmovzxbw xmm1,[bx+si]
pmovzxbw xmm0,xmm0
pmovzxbw xmm1,xmm2
pmovzxbd xmm1,[bx+si]
pmovzxbd xmm0,xmm0
pmovzxbd xmm1,xmm2
pmovzxbq xmm1,[bx+si]
pmovzxbq xmm0,xmm0
pmovzxbq xmm1,xmm2
pmovzxwd xmm1,[bx+si]
pmovzxwd xmm0,xmm0
pmovzxwd xmm1,xmm2
pmovzxwq xmm1,[bx+si]
pmovzxwq xmm0,xmm0
pmovzxwq xmm1,xmm2
pmovzxdq xmm1,[bx+si]
pmovzxdq xmm0,xmm0
pmovzxdq xmm1,xmm2
pcmpgtq xmm1,[bx+si]
pcmpgtq xmm0,xmm0
pcmpgtq xmm1,xmm2
pminsb xmm1,[bx+si]
pminsb xmm0,xmm0
pminsb xmm1,xmm2
pminsd xmm1,[bx+si]
pminsd xmm0,xmm0
pminsd xmm1,xmm2
pminuw xmm1,[bx+si]
pminuw xmm0,xmm0
pminuw xmm1,xmm2
pminud xmm1,[bx+si]
pminud xmm0,xmm0
pminud xmm1,xmm2
pmaxsb xmm1,[bx+si]
pmaxsb xmm0,xmm0
pmaxsb xmm1,xmm2
pmaxsd xmm1,[bx+si]
pmaxsd xmm0,xmm0
pmaxsd xmm1,xmm2
pmaxuw xmm1,[bx+si]
pmaxuw xmm0,xmm0
pmaxuw xmm1,xmm2
pmaxud xmm1,[bx+si]
pmaxud xmm0,xmm0
pmaxud xmm1,xmm2
pmulld xmm1,[bx+si]
pmulld xmm0,xmm0
pmulld xmm1,xmm2
phminposuw xmm1,[bx+si]
phminposuw xmm0,xmm0
phminposuw xmm1,xmm2
invvpid ecx,[bp+si]
aesimc xmm1,oword [bx+si]
aesimc xmm0,xmm0
aesimc xmm1,xmm2
aesenc xmm1,oword [bx+si]
aesenc xmm0,xmm0
aesenc xmm1,xmm2
aesenc xmm5,xmm6
aesenclast xmm1,oword [bx+si]
aesenclast xmm0,xmm0
aesenclast xmm1,xmm2
aesdec xmm1,oword [bx+si]
aesdec xmm0,xmm0
aesdec xmm1,xmm2
aesdeclast xmm1,oword [bx+si]
aesdeclast xmm0,xmm0
aesdeclast xmm1,xmm2
movbe eax,dword [bx+si]
movbe ecx,dword [bx+si]
roundps xmm1,[bx+si],0x5
roundps xmm0,xmm0,0x0
roundps xmm1,xmm2,0x5
roundpd xmm1,[bx+si],0x5
roundpd xmm0,xmm0,0x0
roundpd xmm1,xmm2,0x5
roundss xmm1,[bx+si],0x5
roundss xmm0,xmm0,0x0
roundss xmm1,xmm2,0x5
roundsd xmm1,[bx+si],0x5
roundsd xmm0,xmm0,0x0
roundsd xmm1,xmm2,0x5
blendps xmm1,[bx+si],0x5
blendps xmm0,xmm0,0x0
blendps xmm1,xmm2,0x5
blendpd xmm1,[bx+si],0x5
blendpd xmm0,xmm0,0x0
blendpd xmm1,xmm2,0x5
pblendw xmm1,[bx+si],0x5
pblendw xmm0,xmm0,0x0
pblendw xmm1,xmm2,0x5
palignr xmm1,[bx+si],0x5
palignr xmm0,xmm0,0x0
palignr xmm0,xmm1,0x3
palignr xmm1,xmm2,0x5
pextrb byte [bx+si],xmm2,0x5
pextrb eax,xmm0,0x0
pextrb eax,xmm1,0x5
pextrb ecx,xmm1,0x5
pextrb eax,xmm2,0x5
pextrw word [bx+si],xmm2,0x5
pextrw eax,xmm1,0x5
pextrw esi,xmm1,0x5
pextrd dword [0x4],xmm1,0x5
pextrd dword [dword 0x4],xmm1,0x5
pextrd dword [bx+si],xmm2,0x5
pextrd eax,xmm0,0x0
pextrd eax,xmm1,0x5
pextrd eax,xmm2,0x5
extractps dword [bx+si],xmm1,0x5
extractps eax,xmm0,0x0
extractps eax,xmm1,0x5
extractps edi,xmm1,0x5
pinsrb xmm1,[bx+si],0x5
pinsrb xmm0,al,0x0
pinsrb xmm1,al,0x5
insertps xmm1,[bx+si],0x5
insertps xmm0,xmm0,0x0
insertps xmm1,xmm2,0x5
pinsrd xmm1,[bx+si],0x5
pinsrd xmm1,eax,0x5
dpps xmm1,[bx+si],0x5
dpps xmm0,xmm0,0x0
dpps xmm1,xmm2,0x5
dppd xmm1,[bx+si],0x5
dppd xmm0,xmm0,0x0
dppd xmm1,xmm2,0x5
mpsadbw xmm1,[bx+si],0x5
mpsadbw xmm0,xmm0,0x0
mpsadbw xmm1,xmm2,0x5
pclmullqlqdq xmm1,oword [bx+si]
pclmulhqlqdq xmm1,oword [bx+si]
pclmullqhqdq xmm1,oword [bx+si]
pclmulhqhqdq xmm1,oword [bx+si]
pclmullqlqdq xmm0,xmm0
pclmullqlqdq xmm1,xmm2
pclmulhqlqdq xmm1,xmm2
pclmullqhqdq xmm1,xmm2
pclmulhqhqdq xmm1,xmm2
pcmpestrm xmm1,[bx+si],0x5
pcmpestrm xmm0,xmm0,0x0
pcmpestrm xmm1,xmm2,0x5
pcmpestri xmm1,[bx+si],0x5
pcmpestri xmm0,xmm0,0x0
pcmpestri xmm1,xmm2,0x5
pcmpistrm xmm1,[bx+si],0x5
pcmpistrm xmm0,xmm0,0x0
pcmpistrm xmm1,xmm2,0x5
pcmpistri xmm1,[bx+si],0x5
pcmpistri xmm0,xmm0,0x0
pcmpistri xmm1,xmm2,0x5
movmskpd eax,xmm0
movmskpd eax,xmm2
movmskpd edx,xmm7
movmskpd ebx,xmm2
sqrtpd xmm0,[bx+si]
sqrtpd xmm1,[bx+si]
sqrtpd xmm1,[bp+di]
sqrtpd xmm1,xmm2
andpd xmm0,[bx+si]
andpd xmm1,[bx+si]
andpd xmm1,[bp+di]
andpd xmm1,xmm2
andnpd xmm0,[bx+si]
andnpd xmm1,[bx+si]
andnpd xmm1,[bp+di]
andnpd xmm1,xmm2
orpd xmm0,[bx+si]
orpd xmm1,[bx+si]
orpd xmm1,[bp+di]
orpd xmm1,xmm2
xorpd xmm0,[bx+si]
xorpd xmm1,[bx+si]
xorpd xmm1,[bp+di]
xorpd xmm1,xmm2
addpd xmm0,[bx+si]
addpd xmm1,[bx+si]
addpd xmm1,[bp+di]
addpd xmm1,xmm2
addpd xmm5,xmm6
mulpd xmm0,[bx+si]
mulpd xmm1,[bx+si]
mulpd xmm1,[bp+di]
mulpd xmm1,xmm2
cvtpd2ps xmm0,[bx+si]
cvtpd2ps xmm1,[bx+si]
cvtpd2ps xmm1,[bp+di]
cvtpd2ps xmm1,xmm2
cvtps2dq xmm0,[bx+si]
cvtps2dq xmm1,[bx+si]
cvtps2dq xmm1,[bp+di]
cvtps2dq xmm1,xmm2
cvtps2dq xmm6,xmm7
subpd xmm0,[bx+si]
subpd xmm1,[bx+si]
subpd xmm1,[bp+di]
subpd xmm1,xmm2
minpd xmm0,[bx+si]
minpd xmm1,[bx+si]
minpd xmm1,[bp+di]
minpd xmm1,xmm2
divpd xmm0,[bx+si]
divpd xmm1,[bx+si]
divpd xmm1,[bp+di]
divpd xmm1,xmm2
maxpd xmm0,[bx+si]
maxpd xmm1,[bx+si]
maxpd xmm1,[bp+di]
maxpd xmm1,xmm2
punpcklbw xmm0,[bx+si]
punpcklbw xmm1,[bx+si]
punpcklbw xmm1,[bp+di]
punpcklbw xmm1,xmm2
punpcklwd xmm0,[bx+si]
punpcklwd xmm1,[bx+si]
punpcklwd xmm1,[bp+di]
punpcklwd xmm1,xmm2
punpckldq xmm0,[bx+si]
punpckldq xmm1,[bx+si]
punpckldq xmm1,[bp+di]
punpckldq xmm1,xmm2
packsswb xmm0,[bx+si]
packsswb xmm1,[bx+si]
packsswb xmm1,[bp+di]
packsswb xmm1,xmm2
pcmpgtb xmm0,[bx+si]
pcmpgtb xmm1,[bx+si]
pcmpgtb xmm1,[bp+di]
pcmpgtb xmm1,xmm2
pcmpgtw xmm0,[bx+si]
pcmpgtw xmm1,[bx+si]
pcmpgtw xmm1,[bp+di]
pcmpgtw xmm1,xmm2
pcmpgtd xmm0,[bx+si]
pcmpgtd xmm1,[bx+si]
pcmpgtd xmm1,[bp+di]
pcmpgtd xmm1,xmm2
packuswb xmm0,[bx+si]
packuswb xmm1,[bx+si]
packuswb xmm1,[bp+di]
packuswb xmm1,xmm2
punpckhbw xmm0,[bx+si]
punpckhbw xmm1,[bx+si]
punpckhbw xmm1,[bp+di]
punpckhbw xmm1,xmm2
punpckhwd xmm0,[bx+si]
punpckhwd xmm1,[bx+si]
punpckhwd xmm1,[bp+di]
punpckhwd xmm1,xmm2
punpckhdq xmm0,[bx+si]
punpckhdq xmm1,[bx+si]
punpckhdq xmm1,[bp+di]
punpckhdq xmm1,xmm2
packssdw xmm0,[bx+si]
packssdw xmm1,[bx+si]
packssdw xmm1,[bp+di]
packssdw xmm1,xmm2
punpcklqdq xmm0,[bx+si]
punpcklqdq xmm1,[bx+si]
punpcklqdq xmm1,[bp+di]
punpcklqdq xmm1,xmm2
punpckhqdq xmm0,[bx+si]
punpckhqdq xmm1,[bx+si]
punpckhqdq xmm1,[bp+di]
punpckhqdq xmm1,xmm2
movd xmm0,[bx+si]
movd xmm1,[bx+si]
movd xmm1,[bp+di]
movd xmm1,eax
movd xmm1,ecx
movd xmm1,ebx
movdqa xmm0,[bx+si]
movdqa xmm1,[bx+si]
movdqa xmm1,[bp+di]
movdqa xmm1,xmm2
pshufd xmm0,[bx+si],0x0
pshufd xmm1,[bx+si],0x5
pshufd xmm1,[bp+di],0x0
pshufd xmm1,xmm2,0x0
pshufd xmm1,xmm2,0x5
psrlw xmm0,0x0
psrlw xmm0,0x1
psrlw xmm1,0x5
psraw xmm0,0x0
psraw xmm1,0x1
psraw xmm1,0x5
psllw xmm0,0x0
psllw xmm1,0x5
psrld xmm0,0x0
psrld xmm0,0x1
psrld xmm1,0x5
psrad xmm0,0x0
psrad xmm1,0x1
psrad xmm1,0x5
pslld xmm0,0x0
pslld xmm1,0x5
psrlq xmm0,0x0
psrlq xmm0,0x1
psrlq xmm1,0x5
psrldq xmm0,0x0
psrldq xmm1,0x5
psllq xmm0,0x0
psllq xmm1,0x5
pslldq xmm0,0x0
pslldq xmm1,0x5
pslldq xmm7,0x5
pcmpeqb xmm0,[bx+si]
pcmpeqb xmm1,[bx+si]
pcmpeqb xmm1,[bp+di]
pcmpeqb xmm1,xmm2
pcmpeqb xmm3,xmm4
pcmpeqw xmm0,[bx+si]
pcmpeqw xmm1,[bx+si]
pcmpeqw xmm1,[bp+di]
pcmpeqw xmm1,xmm2
pcmpeqd xmm0,[bx+si]
pcmpeqd xmm1,[bx+si]
pcmpeqd xmm1,[bp+di]
pcmpeqd xmm1,xmm2
extrq xmm0,0x0,0x0
extrq xmm0,0x5,0x4
extrq xmm1,0x0,0x1
extrq xmm6,0x0,0x7
extrq xmm0,xmm0
extrq xmm1,xmm2
extrq xmm2,xmm3
haddpd xmm0,[bx+si]
haddpd xmm1,[bx+si]
haddpd xmm1,[bp+di]
haddpd xmm7,[bx+di+0x4]
haddpd xmm1,xmm2
haddpd xmm2,xmm4
hsubpd xmm0,[bx+si]
hsubpd xmm1,[bx+si]
hsubpd xmm1,[bp+di]
hsubpd xmm1,[di+0x0]
hsubpd xmm1,xmm2
hsubpd xmm5,xmm3
movd [bx+si],xmm0
movd [bx+si],xmm2
movd [bp+di],xmm2
movd eax,xmm0
movd eax,xmm2
movdqa [bx+si],xmm0
movdqa [bx+si],xmm2
movdqa [bp+di],xmm2
bt esi,edi
shld ecx,edx,0xa
shld eax,ebx,0x5
shld eax,ebx,cl
bts eax,edx
shrd ecx,edx,cl
lss esp,[0xb]
btr esp,ebp
lfs ecx,[0xd]
lgs edx,[0xf]
bsf eax,edx
bsr ecx,ebx
movsx eax,byte [bx+di]
cmpeqpd xmm0,[bx+si]
cmpltpd xmm0,[bx+si]
cmplepd xmm0,[bx+si]
cmpunordpd xmm0,[bx+si]
cmpneqpd xmm0,[bx+si]
cmpnltpd xmm0,[bx+si]
cmpnlepd xmm0,[bx+si]
cmpordpd xmm0,[bx+si]
cmpnltpd xmm1,[bx+si]
cmpeqpd xmm1,[bp+di]
cmpeqpd xmm1,xmm2
cmpnltpd xmm1,xmm2
pinsrw xmm0,[bx+si],0x0
pinsrw xmm1,[bx+si],0x5
pinsrw xmm1,[bp+di],0x0
pinsrw xmm1,ax,0x3
pinsrw xmm1,ax,0x5
pinsrw xmm1,bx,0x0
pextrw eax,xmm0,0x0
pextrw eax,xmm2,0x5
pextrw ecx,xmm0,0x1
pextrw ebx,xmm2,0x0
shufpd xmm0,[bx+si],0x0
shufpd xmm1,[bx+si],0x5
shufpd xmm1,[bp+di],0x0
shufpd xmm1,xmm2,0x0
shufpd xmm1,xmm2,0x5
vmclear [bx+si]
bswap ecx
addsubpd xmm0,[bx+si]
addsubpd xmm1,[bx+si]
addsubpd xmm1,[bp+di]
addsubpd xmm1,xmm2
addsubpd xmm5,xmm7
psrlw xmm0,[bx+si]
psrlw xmm1,[bx+si]
psrlw xmm1,[bp+di]
psrlw xmm1,xmm2
psrld xmm0,[bx+si]
psrld xmm1,[bx+si]
psrld xmm1,[bp+di]
psrld xmm1,xmm2
psrlq xmm0,[bx+si]
psrlq xmm1,[bx+si]
psrlq xmm1,[bp+di]
psrlq xmm1,xmm2
paddq xmm0,[bx+si]
paddq xmm1,[bx+si]
paddq xmm1,[bp+di]
paddq xmm1,xmm2
pmullw xmm0,[bx+si]
pmullw xmm1,[bx+si]
pmullw xmm1,[bp+di]
pmullw xmm1,xmm2
movq [bx+si],xmm0
movq [bx+si],xmm1
movq [bx+si],xmm2
movq [bp+di],xmm2
pmovmskb eax,xmm1
pmovmskb eax,xmm2
pmovmskb esi,xmm1
psubusb xmm0,[bx+si]
psubusb xmm1,[bx+si]
psubusb xmm1,[bp+di]
psubusb xmm1,xmm2
psubusw xmm0,[bx+si]
psubusw xmm1,[bx+si]
psubusw xmm1,[bp+di]
psubusw xmm1,xmm2
pminub xmm0,[bx+si]
pminub xmm1,[bx+si]
pminub xmm1,[bp+di]
pminub xmm1,xmm2
pand xmm0,[bx+si]
pand xmm1,[bx+si]
pand xmm1,[bp+di]
pand xmm1,xmm2
paddusb xmm0,[bx+si]
paddusb xmm1,[bx+si]
paddusb xmm1,[bp+di]
paddusb xmm1,xmm2
paddusw xmm0,[bx+si]
paddusw xmm1,[bx+si]
paddusw xmm1,[bp+di]
paddusw xmm1,xmm2
pmaxub xmm0,[bx+si]
pmaxub xmm1,[bx+si]
pmaxub xmm1,[bp+di]
pmaxub xmm1,xmm2
pandn xmm0,[bx+si]
pandn xmm1,[bx+si]
pandn xmm1,[bp+di]
pandn xmm1,xmm2
pavgb xmm0,[bx+si]
pavgb xmm1,[bx+si]
pavgb xmm1,[bp+di]
pavgb xmm1,xmm2
psraw xmm0,[bx+si]
psraw xmm1,[bx+si]
psraw xmm1,[bp+di]
psraw xmm1,xmm2
psrad xmm0,[bx+si]
psrad xmm1,[bx+si]
psrad xmm1,[bp+di]
psrad xmm1,xmm2
pavgw xmm0,[bx+si]
pavgw xmm1,[bx+si]
pavgw xmm1,[bp+di]
pavgw xmm1,xmm2
pmulhuw xmm0,[bx+si]
pmulhuw xmm1,[bx+si]
pmulhuw xmm1,[bp+di]
pmulhuw xmm1,xmm2
pmulhw xmm0,[bx+si]
pmulhw xmm1,[bx+si]
pmulhw xmm1,[bp+di]
pmulhw xmm1,xmm2
cvttpd2dq xmm0,[bx+si]
cvttpd2dq xmm1,[bx+si]
cvttpd2dq xmm1,[bp+di]
cvttpd2dq xmm1,xmm2
cvttpd2dq xmm4,xmm5
movntdq [bx+si],xmm0
movntdq [bx+si],xmm1
movntdq [bp+di],xmm2
psubsb xmm0,[bx+si]
psubsb xmm1,[bx+si]
psubsb xmm1,[bp+di]
psubsb xmm1,xmm2
psubsw xmm0,[bx+si]
psubsw xmm1,[bx+si]
psubsw xmm1,[bp+di]
psubsw xmm1,xmm2
pminsw xmm0,[bx+si]
pminsw xmm1,[bx+si]
pminsw xmm1,[bp+di]
pminsw xmm1,xmm2
por xmm0,[bx+si]
por xmm1,[bx+si]
por xmm1,[bp+di]
por xmm1,xmm2
paddsb xmm0,[bx+si]
paddsb xmm1,[bx+si]
paddsb xmm1,[bp+di]
paddsb xmm1,xmm2
paddsw xmm0,[bx+si]
paddsw xmm1,[bx+si]
paddsw xmm1,[bp+di]
paddsw xmm1,xmm2
pmaxsw xmm0,[bx+si]
pmaxsw xmm1,[bx+si]
pmaxsw xmm1,[bp+di]
pmaxsw xmm1,xmm2
pxor xmm0,[bx+si]
pxor xmm1,[bx+si]
pxor xmm1,[bp+di]
pxor xmm1,xmm2
psllw xmm0,[bx+si]
psllw xmm1,[bx+si]
psllw xmm1,[bp+di]
psllw xmm1,xmm2
pslld xmm0,[bx+si]
pslld xmm1,[bx+si]
pslld xmm1,[bp+di]
pslld xmm1,xmm2
psllq xmm0,[bx+si]
psllq xmm1,[bx+si]
psllq xmm1,[bp+di]
psllq xmm1,xmm2
pmuludq xmm0,[bx+si]
pmuludq xmm1,[bx+si]
pmuludq xmm1,[bp+di]
pmuludq xmm1,xmm2
pmaddwd xmm0,[bx+si]
pmaddwd xmm1,[bx+si]
pmaddwd xmm1,[bp+di]
pmaddwd xmm1,xmm2
psadbw xmm0,[bx+si]
psadbw xmm1,[bx+si]
psadbw xmm1,[bp+di]
psadbw xmm1,xmm2
maskmovdqu xmm0,xmm0
maskmovdqu xmm1,xmm2
psubb xmm0,[bx+si]
psubb xmm1,[bx+si]
psubb xmm1,[bp+di]
psubb xmm1,xmm2
psubw xmm0,[bx+si]
psubw xmm1,[bx+si]
psubw xmm1,[bp+di]
psubw xmm1,xmm2
psubd xmm0,[bx+si]
psubd xmm1,[bx+si]
psubd xmm1,[bp+di]
psubd xmm1,xmm2
psubq xmm0,[bx+si]
psubq xmm1,[bx+si]
psubq xmm1,[bp+di]
psubq xmm1,xmm2
paddb xmm0,[bx+si]
paddb xmm1,[bx+si]
paddb xmm1,[bp+di]
paddb xmm1,xmm2
paddw xmm0,[bx+si]
paddw xmm1,[bx+si]
paddw xmm1,[bp+di]
paddw xmm1,xmm2
paddd xmm0,[bx+si]
paddd xmm1,[bx+si]
paddd xmm1,[bp+di]
paddd xmm1,xmm2
and eax,0xe00
sub ebx,edi
push esi
pop edi
pushad
popad
push dword 0x80
imul eax,eax,byte +0x4
imul esi,ebp,byte +0x2
insd
outsd
or edx,0x23
or ebx,0x23
or ebp,0xe00
xor ecx,0xe00
or ebx,byte +0x23
and edx,byte +0x23
and edi,byte +0x23
xor esp,byte +0x23
xchg eax,[0x0]
xchg ecx,[0x0]
xchg ebx,ecx
mov ecx,edx
mov eax,cs
mov eax,ss
mov eax,fs
lea ebx,[0x20]
xchg eax,eax
xchg eax,ecx
xchg eax,edx
xchg eax,ebx
cwde
cdq
call dword 0x1234:0x56789abc
popfd
movsd
cmpsd
stosd
lodsd
scasd
mov eax,0x1
mov eax,0x2
mov eax,0x4
mov eax,0x8
mov eax,0x11111111
mov ax,0x6261
ror ebx,0x3
rcl ecx,0x2
shr eax,0x5
les ebx,[0x9]
lds eax,[0x1]
lds eax,[0x7]
mov dword [0x2],0x3
iretd
rcr edx,1
shr ebx,1
rol eax,cl
shr ecx,cl
sar esi,cl
in eax,0x63
in eax,0x64
out 0x42,eax
out 0x4d,eax
jmp dword 0x1234:0x56789abc
in eax,dx
out dx,eax
crc32 eax,ebx
crc32 ecx,ebx
popcnt eax,ebx
lzcnt eax,ebx
idiv dword [bp+0x0]
not eax
neg ecx
mul ecx
mul ebx
idiv eax
call dword near [0x357]
push dword [0x2]
add [eax],al
sldt [eax]
str [eax]
lldt [eax]
ltr [eax]
verr [eax]
verw [eax]
sgdt [eax]
sidt [eax]
lgdt [eax]
lidt [eax]
smsw [eax]
invlpg [eax]
invlpga eax,ecx
movups xmm1,[eax]
movups xmm1,[ebx]
movups [eax],xmm2
movups [ebx],xmm2
movlps xmm1,[eax]
movlps xmm1,[ebx]
movlps [eax],xmm2
movlps [ebx],xmm2
unpcklps xmm1,[eax]
unpcklps xmm1,[ebx]
unpckhps xmm1,[eax]
unpckhps xmm1,[ebx]
movhps xmm1,[eax]
movhps xmm1,[ebx]
movhps [eax],xmm2
movhps [ebx],xmm2
movaps xmm1,[eax]
movaps xmm1,[ebx]
movaps [eax],xmm2
movaps [ebx],xmm2
cvtpi2ps xmm1,[ebx]
movntps [eax],xmm1
movntps [ebx],xmm2
cvttps2pi mm1,[ebx]
cvtps2pi mm1,[ebx]
ucomiss xmm1,[eax]
ucomiss xmm1,[ebx]
comiss xmm1,[eax]
comiss xmm1,[ebx]
movbe ax,word [eax]
movbe cx,word [eax]
sqrtps xmm1,[eax]
sqrtps xmm1,[ebx]
rsqrtps xmm1,[eax]
rsqrtps xmm1,[ebx]
rcpps xmm1,[eax]
rcpps xmm1,[ebx]
andps xmm1,[eax]
andps xmm1,[ebx]
andnps xmm1,[eax]
andnps xmm1,[ebx]
orps xmm1,[eax]
orps xmm1,[ebx]
xorps xmm1,[eax]
xorps xmm1,[ebx]
addps xmm1,[eax]
addps xmm1,[ebx]
mulps xmm1,[eax]
mulps xmm1,[ebx]
cvtps2pd xmm1,[eax]
cvtps2pd xmm1,[ebx]
cvtdq2ps xmm1,[eax]
cvtdq2ps xmm1,[ebx]
subps xmm1,[eax]
subps xmm1,[ebx]
minps xmm1,[eax]
minps xmm1,[ebx]
divps xmm1,[eax]
divps xmm1,[ebx]
maxps xmm1,[eax]
maxps xmm1,[ebx]
movq mm0,[edx]
movq mm1,[eax]
vmread dword [ebx],ecx
vmwrite ebp,dword [ebp+0x0]
movq [edx],mm0
fxsave [dword eax+ebx]
fxrstor [dword edi+eax*2]
ldmxcsr [eax]
ldmxcsr [ebx]
stmxcsr [eax]
stmxcsr [ebx]
movzx cx,[ebx]
movsx ax,[ecx]
cmpnltps xmm1,[eax]
cmpeqps xmm1,[ebx]
shufps xmm1,[eax],0x5
shufps xmm1,[ebx],0x0
vmptrst [eax]
xor ax,[dword ebp+ecx*4+0x0]
xor bx,[dword ebp+ecx*4+0x4]
xor si,[dword ebp+ecx*4+0x8]
xor di,[dword ebp+ecx*4+0xc]
arpl [eax],ax
lar eax,[eax]
lsl eax,[eax]
movupd xmm1,[eax]
movupd xmm1,[ebx]
movupd [eax],xmm2
movupd [ebx],xmm2
movlpd xmm1,[eax]
movlpd xmm1,[ebx]
movlpd [eax],xmm2
movlpd [ebx],xmm2
unpcklpd xmm1,[eax]
unpcklpd xmm1,[ebx]
unpckhpd xmm1,[eax]
unpckhpd xmm1,[ebx]
movhpd xmm1,[eax]
movhpd xmm1,[ebx]
movhpd [eax],xmm2
movhpd [ebx],xmm2
movapd xmm1,[eax]
movapd xmm1,[ebx]
movapd [eax],xmm2
movapd [ebx],xmm2
cvtpi2pd xmm1,[ebx]
movntpd [eax],xmm1
movntpd [ebx],xmm2
cvttpd2pi mm1,[ebx]
cvtpd2pi mm1,[ebx]
ucomisd xmm1,[eax]
ucomisd xmm1,[ebx]
comisd xmm1,[eax]
comisd xmm1,[ebx]
pshufb xmm1,[eax]
phaddw xmm1,[eax]
phaddd xmm1,[eax]
phaddsw xmm1,[eax]
pmaddubsw xmm1,[eax]
phsubw xmm1,[eax]
phsubd xmm1,[eax]
phsubsw xmm1,[eax]
psignb xmm1,[eax]
psignw xmm1,[eax]
psignd xmm1,[eax]
pmulhrsw xmm1,[eax]
pblendvb xmm1,[eax],xmm0
blendvps xmm1,[eax],xmm0
blendvpd xmm1,[eax],xmm0
ptest xmm1,[eax]
pabsb xmm1,[eax]
pabsw xmm1,[eax]
pabsd xmm1,[eax]
pmovsxbw xmm1,[eax]
pmovsxbd xmm1,[eax]
pmovsxbq xmm1,[eax]
pmovsxwd xmm1,[eax]
pmovsxwq xmm1,[eax]
pmovsxdq xmm1,[eax]
pmuldq xmm1,[eax]
pcmpeqq xmm1,[eax]
movntdqa xmm1,[eax]
packusdw xmm1,[eax]
pmovzxbw xmm1,[eax]
pmovzxbd xmm1,[eax]
pmovzxbq xmm1,[eax]
pmovzxwd xmm1,[eax]
pmovzxwq xmm1,[eax]
pmovzxdq xmm1,[eax]
pcmpgtq xmm1,[eax]
pminsb xmm1,[eax]
pminsd xmm1,[eax]
pminuw xmm1,[eax]
pminud xmm1,[eax]
pmaxsb xmm1,[eax]
pmaxsd xmm1,[eax]
pmaxuw xmm1,[eax]
pmaxud xmm1,[eax]
pmulld xmm1,[eax]
phminposuw xmm1,[eax]
aesimc xmm1,oword [eax]
aesenc xmm1,oword [eax]
aesenclast xmm1,oword [eax]
aesdec xmm1,oword [eax]
aesdeclast xmm1,oword [eax]
movbe eax,dword [eax]
movbe ecx,dword [dword ebx+ecx]
roundps xmm1,[eax],0x5
roundpd xmm1,[eax],0x5
roundss xmm1,[eax],0x5
roundsd xmm1,[eax],0x5
blendps xmm1,[eax],0x5
blendpd xmm1,[eax],0x5
pblendw xmm1,[eax],0x5
palignr xmm1,[eax],0x5
pextrb byte [eax],xmm2,0x5
pextrw word [eax],xmm2,0x5
pextrd dword [eax],xmm2,0x5
extractps dword [eax],xmm1,0x5
pinsrb xmm1,[eax],0x5
insertps xmm1,[eax],0x5
pinsrd xmm0,[eax],0x0
pinsrd xmm1,[eax],0x5
dpps xmm1,[eax],0x5
dppd xmm1,[eax],0x5
mpsadbw xmm1,[eax],0x5
pclmullqlqdq xmm1,oword [eax]
pclmulhqlqdq xmm1,oword [eax]
pclmullqhqdq xmm1,oword [eax]
pclmulhqhqdq xmm1,oword [eax]
pcmpestrm xmm1,[eax],0x5
pcmpestri xmm1,[eax],0x5
pcmpistrm xmm1,[eax],0x5
pcmpistri xmm1,[eax],0x5
sqrtpd xmm1,[eax]
sqrtpd xmm1,[ebx]
andpd xmm1,[eax]
andpd xmm1,[ebx]
andnpd xmm1,[eax]
andnpd xmm1,[ebx]
orpd xmm1,[eax]
orpd xmm1,[ebx]
xorpd xmm1,[eax]
xorpd xmm1,[ebx]
addpd xmm1,[eax]
addpd xmm1,[ebx]
mulpd xmm1,[eax]
mulpd xmm1,[ebx]
cvtpd2ps xmm1,[eax]
cvtpd2ps xmm1,[ebx]
cvtps2dq xmm1,[eax]
cvtps2dq xmm1,[ebx]
subpd xmm1,[eax]
subpd xmm1,[ebx]
minpd xmm1,[eax]
minpd xmm1,[ebx]
divpd xmm1,[eax]
divpd xmm1,[ebx]
maxpd xmm1,[eax]
maxpd xmm1,[ebx]
punpcklbw xmm1,[eax]
punpcklbw xmm1,[ebx]
punpcklwd xmm1,[eax]
punpcklwd xmm1,[ebx]
punpckldq xmm1,[eax]
punpckldq xmm1,[ebx]
packsswb xmm1,[eax]
packsswb xmm1,[ebx]
pcmpgtb xmm1,[eax]
pcmpgtb xmm1,[ebx]
pcmpgtw xmm1,[eax]
pcmpgtw xmm1,[ebx]
pcmpgtd xmm1,[eax]
pcmpgtd xmm1,[ebx]
packuswb xmm1,[eax]
packuswb xmm1,[ebx]
punpckhbw xmm1,[eax]
punpckhbw xmm1,[ebx]
punpckhwd xmm1,[eax]
punpckhwd xmm1,[ebx]
punpckhdq xmm1,[eax]
punpckhdq xmm1,[ebx]
packssdw xmm1,[eax]
packssdw xmm1,[ebx]
punpcklqdq xmm1,[eax]
punpcklqdq xmm1,[ebx]
punpckhqdq xmm1,[eax]
punpckhqdq xmm1,[ebx]
movd xmm1,[eax]
movd xmm1,[ebx]
movdqa xmm1,[eax]
movdqa xmm1,[ebx]
pshufd xmm1,[eax],0x5
pshufd xmm1,[ebx],0x0
pcmpeqb xmm1,[eax]
pcmpeqb xmm1,[ebx]
pcmpeqw xmm1,[eax]
pcmpeqw xmm1,[ebx]
pcmpeqd xmm1,[eax]
pcmpeqd xmm1,[ebx]
haddpd xmm1,[eax]
haddpd xmm1,[ebx]
hsubpd xmm1,[eax]
hsubpd xmm1,[ebx]
hsubpd xmm1,[ebp+0x0]
movd [eax],xmm2
movd [ebx],xmm2
movdqa [eax],xmm2
movdqa [ebx],xmm2
bt [eax],edi
bts [eax],edx
btr [eax],ebp
movzx ecx,byte [ebx]
movzx ebx,word [eax]
bsf edx,[eax]
bsr ebx,[eax]
movsx eax,byte [ecx]
xadd [eax],edi
cmpnltpd xmm1,[eax]
cmpeqpd xmm1,[ebx]
pinsrw xmm1,[eax],0x5
pinsrw xmm1,[ebx],0x0
shufpd xmm1,[eax],0x5
shufpd xmm1,[ebx],0x0
addsubpd xmm0,[eax]
addsubpd xmm1,[eax]
addsubpd xmm1,[ebx]
psrlw xmm1,[eax]
psrlw xmm1,[ebx]
psrld xmm1,[eax]
psrld xmm1,[ebx]
psrlq xmm1,[eax]
psrlq xmm1,[ebx]
paddq xmm1,[eax]
paddq xmm1,[ebx]
pmullw xmm1,[eax]
pmullw xmm1,[ebx]
movq [eax],xmm1
movq [eax],xmm2
movq [ebx],xmm2
psubusb xmm1,[eax]
psubusb xmm1,[ebx]
psubusw xmm1,[eax]
psubusw xmm1,[ebx]
pminub xmm1,[eax]
pminub xmm1,[ebx]
pand xmm1,[eax]
pand xmm1,[ebx]
paddusb xmm1,[eax]
paddusb xmm1,[ebx]
paddusw xmm1,[eax]
paddusw xmm1,[ebx]
pmaxub xmm1,[eax]
pmaxub xmm1,[ebx]
pandn xmm1,[eax]
pandn xmm1,[ebx]
pavgb xmm1,[eax]
pavgb xmm1,[ebx]
psraw xmm1,[eax]
psraw xmm1,[ebx]
psrad xmm1,[eax]
psrad xmm1,[ebx]
pavgw xmm1,[eax]
pavgw xmm1,[ebx]
pmulhuw xmm1,[eax]
pmulhuw xmm1,[ebx]
pmulhw xmm1,[eax]
pmulhw xmm1,[ebx]
cvttpd2dq xmm1,[eax]
cvttpd2dq xmm1,[ebx]
movntdq [eax],xmm1
movntdq [ebx],xmm2
psubsb xmm1,[eax]
psubsb xmm1,[ebx]
psubsw xmm1,[eax]
psubsw xmm1,[ebx]
pminsw xmm1,[eax]
pminsw xmm1,[ebx]
por xmm1,[eax]
por xmm1,[ebx]
paddsb xmm1,[eax]
paddsb xmm1,[ebx]
paddsw xmm1,[eax]
paddsw xmm1,[ebx]
pmaxsw xmm1,[eax]
pmaxsw xmm1,[ebx]
pxor xmm1,[eax]
pxor xmm1,[ebx]
psllw xmm1,[eax]
psllw xmm1,[ebx]
pslld xmm1,[eax]
pslld xmm1,[ebx]
psllq xmm1,[eax]
psllq xmm1,[ebx]
pmuludq xmm1,[eax]
pmuludq xmm1,[ebx]
pmaddwd xmm1,[eax]
pmaddwd xmm1,[ebx]
psadbw xmm1,[eax]
psadbw xmm1,[ebx]
psubb xmm1,[eax]
psubb xmm1,[ebx]
psubw xmm1,[eax]
psubw xmm1,[ebx]
psubd xmm1,[eax]
psubd xmm1,[ebx]
psubq xmm1,[eax]
psubq xmm1,[ebx]
paddb xmm1,[eax]
paddb xmm1,[ebx]
paddw xmm1,[eax]
paddw xmm1,[ebx]
paddd xmm1,[eax]
paddd xmm1,[ebx]
pextrd dword [eax],xmm0,0x0
mov eax,[dword ecx+ebx]
idiv dword [eax]
adc byte [eax],0x12
mov ax,[dword eax+eax]
mov ax,[dword esi+ebp]
mov ax,[dword eax*2+0x0]
mov ax,[eax+0x0]
mov ax,[dword esp+0x8]
mov ax,[dword ebp+esi+0x0]
mov dx,[dword esp+0x4]
mov ax,[eax+0x0]
lea di,[dword eax+edi*8+0x0]
vfmadd132ss xmm1,xmm3,dword [ebx]
vpshufb xmm1,xmm2,oword [eax]
vphaddw xmm1,xmm2,oword [eax]
vphaddd xmm1,xmm2,oword [eax]
vphaddsw xmm1,xmm2,oword [eax]
vpmaddubsw xmm1,xmm2,oword [eax]
vphsubw xmm1,xmm2,oword [eax]
vphsubd xmm1,xmm2,oword [eax]
vphsubsw xmm1,xmm2,oword [eax]
vpsignb xmm1,xmm2,oword [eax]
vpsignw xmm1,xmm2,oword [eax]
vpsignd xmm1,xmm2,oword [eax]
vpmulhrsw xmm1,xmm2,oword [eax]
vpermilps xmm1,xmm2,oword [eax]
vpermilpd xmm1,xmm2,oword [eax]
vpmuldq xmm1,xmm2,oword [eax]
vpackusdw xmm1,xmm2,oword [eax]
vmaskmovps xmm1,xmm2,oword [eax]
vmaskmovpd xmm1,xmm2,oword [eax]
vmaskmovps oword [eax],xmm2,xmm3
vmaskmovpd oword [eax],xmm2,xmm3
vpminsb xmm1,xmm2,oword [eax]
vpminsd xmm1,xmm2,oword [eax]
vpminuw xmm1,xmm2,oword [eax]
vpminud xmm1,xmm2,oword [eax]
vpmaxsb xmm1,xmm2,oword [eax]
vpmaxsd xmm1,xmm2,oword [eax]
vpmaxuw xmm1,xmm2,oword [eax]
vpmaxud xmm1,xmm2,oword [eax]
vpmulld xmm1,xmm2,oword [eax]
vfmaddsub132ps xmm1,xmm2,oword [eax]
vfmsubadd132ps xmm1,xmm2,oword [eax]
vfmadd132ps xmm1,xmm2,oword [edx+0x101]
vfmadd132ss xmm1,xmm2,dword [eax]
vfmsub132ps xmm1,xmm2,oword [esi+0x8]
vfmsub132ss xmm1,xmm2,dword [dword ecx*8+0x0]
vfmsub132ss xmm1,xmm2,dword [dword ebx*8+0x0]
vfnmadd132ps xmm1,xmm2,oword [eax]
vfnmadd132ss xmm1,xmm2,dword [eax]
vfnmsub132ps xmm1,xmm2,oword [eax]
vfnmsub132ss xmm1,xmm2,dword [eax]
vfmaddsub213ps xmm1,xmm2,oword [eax]
vfmsubadd213ps xmm1,xmm2,oword [eax]
vfmadd213ps xmm1,xmm2,oword [edi+0x101]
vfmadd213ss xmm1,xmm2,dword [esi]
vfmadd213ss xmm1,xmm2,dword [edi]
vfmsub213ps xmm1,xmm2,oword [dword esp+0x8]
vfmsub213ss xmm1,xmm2,dword [dword ebp*8+0x0]
vfmsub213ss xmm1,xmm2,dword [dword esi*8+0x0]
vfnmadd213ps xmm1,xmm2,oword [eax]
vfnmadd213ss xmm1,xmm2,dword [eax]
vfnmsub213ps xmm1,xmm2,oword [eax]
vfnmsub213ss xmm1,xmm2,dword [eax]
vfmaddsub231ps xmm1,xmm2,oword [eax]
vfmsubadd231ps xmm1,xmm2,oword [eax]
vfmadd231ps xmm1,xmm2,oword [esi+0x101]
vfmadd231ss xmm1,xmm2,dword [ecx]
vfmadd231ss xmm1,xmm2,dword [edx]
vfmsub231ps xmm1,xmm2,oword [ebp+0x8]
vfmsub231ss xmm1,xmm2,dword [dword edx*8+0x0]
vfmsub231ss xmm1,xmm2,dword [dword edi*8+0x0]
vfnmadd231ps xmm1,xmm2,oword [eax]
vfnmadd231ss xmm1,xmm2,dword [eax]
vfnmsub231ps xmm1,xmm2,oword [eax]
vfnmsub231ss xmm1,xmm2,dword [eax]
vaesenclast xmm1,xmm2,oword [eax]
vaesdec xmm1,xmm2,oword [eax]
vaesdeclast xmm1,xmm2,oword [eax]
vpermilps ymm1,ymm2,yword [eax]
vpermilpd ymm1,ymm2,yword [eax]
vmaskmovps ymm1,ymm2,yword [eax]
vmaskmovpd ymm1,ymm2,yword [eax]
vmaskmovps yword [eax],xmm2,xmm3
vmaskmovpd yword [eax],ymm2,ymm3
vfmaddsub132ps ymm1,ymm2,yword [eax]
vfmsubadd132ps ymm1,ymm2,yword [eax]
vfmadd132ps ymm1,ymm2,yword [dword esp+0x101]
vfmadd132ps ymm1,ymm2,yword [ebp+0x101]
vfnmadd132ps ymm1,ymm2,yword [eax]
vfnmsub132ps ymm1,ymm2,yword [eax]
vfmaddsub213ps ymm1,ymm2,yword [eax]
vfmsubadd213ps ymm1,ymm2,yword [eax]
vfmadd213ps ymm1,ymm2,yword [dword esi+edx*2+0x12c]
vfmadd213ps ymm1,ymm2,yword [dword edi+esi*2+0x12c]
vfnmadd213ps ymm1,ymm2,yword [eax]
vfnmsub213ps ymm1,ymm2,yword [eax]
vfmaddsub231ps ymm1,ymm2,yword [eax]
vfmsubadd231ps ymm1,ymm2,yword [eax]
vfmadd231ps ymm1,ymm2,yword [dword ebx+eax*2+0x12c]
vfmadd231ps ymm1,ymm2,yword [dword ecx+ebx*2+0x12c]
vfnmadd231ps ymm1,ymm2,yword [eax]
vfnmsub231ps ymm1,ymm2,yword [eax]
vpshufb xmm1,xmm1,oword [eax]
vphaddw xmm1,xmm1,oword [eax]
vphaddd xmm1,xmm1,oword [eax]
vphaddsw xmm1,xmm1,oword [eax]
vpmaddubsw xmm1,xmm1,oword [eax]
vphsubw xmm1,xmm1,oword [eax]
vphsubd xmm1,xmm1,oword [eax]
vphsubsw xmm1,xmm1,oword [eax]
vpsignb xmm1,xmm1,oword [eax]
vpsignw xmm1,xmm1,oword [eax]
vpsignd xmm1,xmm1,oword [eax]
vpmulhrsw xmm1,xmm1,oword [eax]
vpmuldq xmm1,xmm1,oword [eax]
vpackusdw xmm1,xmm1,oword [eax]
vpminsb xmm1,xmm1,oword [eax]
vpminsd xmm1,xmm1,oword [eax]
vpminuw xmm1,xmm1,oword [eax]
vpminud xmm1,xmm1,oword [eax]
vpmaxsb xmm1,xmm1,oword [eax]
vpmaxsd xmm1,xmm1,oword [eax]
vpmaxuw xmm1,xmm1,oword [eax]
vpmaxud xmm1,xmm1,oword [eax]
vpmulld xmm1,xmm1,oword [eax]
vaesenclast xmm1,xmm1,oword [eax]
vaesdec xmm1,xmm1,oword [eax]
vaesdeclast xmm1,xmm1,oword [eax]
vtestps xmm1,oword [eax]
vtestpd xmm1,oword [eax]
vptest xmm1,oword [eax]
vbroadcastss xmm1,dword [eax]
vpabsb xmm1,oword [eax]
vpabsw xmm1,oword [eax]
vpabsd xmm1,oword [eax]
vpmovsxbw xmm1,qword [eax]
vpmovsxbd xmm1,dword [eax]
vpmovsxbq xmm1,word [eax]
vpmovsxwd xmm1,qword [eax]
vpmovsxwq xmm1,dword [eax]
vpmovsxdq xmm1,qword [eax]
vmovntdqa xmm1,oword [eax]
vpmovzxbw xmm1,qword [eax]
vpmovzxbd xmm1,dword [eax]
vpmovzxbq xmm1,word [eax]
vpmovzxwd xmm1,qword [eax]
vpmovzxwq xmm1,dword [eax]
vpmovzxdq xmm1,qword [eax]
vphminposuw xmm1,oword [eax]
vtestps ymm1,yword [eax]
vtestpd ymm1,yword [eax]
vptest ymm1,yword [eax]
vbroadcastss ymm1,dword [eax]
vbroadcastsd ymm1,qword [eax]
vbroadcastf128 ymm1,oword [eax]
vfmaddsub132pd xmm1,xmm2,oword [eax]
vfmsubadd132pd xmm1,xmm2,oword [eax]
vfmadd132pd xmm1,xmm2,oword [dword ebp+esi*2+0x12c]
vfmadd132pd xmm1,xmm2,oword [dword ebp+edi*2+0x12c]
vfmadd132sd xmm1,xmm2,qword [dword esp]
vfmadd132sd xmm1,xmm2,qword [ebp+0x0]
vfmsub132sd xmm1,xmm2,qword [dword esp]
vfmsub132sd xmm1,xmm2,qword [eax+0x8]
vfnmadd132pd xmm1,xmm2,oword [eax]
vfnmadd132sd xmm1,xmm2,qword [eax]
vfnmsub132pd xmm1,xmm2,oword [eax]
vfnmsub132sd xmm1,xmm2,qword [eax]
vfmaddsub213pd xmm1,xmm2,oword [eax]
vfmsubadd213pd xmm1,xmm2,oword [eax]
vfmadd213pd xmm1,xmm2,oword [dword ebx+eax*4+0x258]
vfmadd213pd xmm1,xmm2,oword [dword ecx+ebx*4+0x258]
vfmadd213sd xmm1,xmm2,qword [ecx+0x101]
vfmadd213sd xmm1,xmm2,qword [ebx+0x101]
vfmsub213sd xmm1,xmm2,qword [edx+0x8]
vfmsub213sd xmm1,xmm2,qword [edi+0x8]
vfnmadd213pd xmm1,xmm2,oword [eax]
vfnmadd213sd xmm1,xmm2,qword [eax]
vfnmsub213pd xmm1,xmm2,oword [eax]
vfnmsub213sd xmm1,xmm2,qword [eax]
vfmaddsub231pd xmm1,xmm2,oword [eax]
vfmsubadd231pd xmm1,xmm2,oword [eax]
vfmadd231pd xmm1,xmm2,oword [dword esp+eax+0x12c]
vfmadd231pd xmm1,xmm2,oword [dword esp+ebp*2+0x12c]
vfmadd231sd xmm1,xmm2,qword [eax]
vfmadd231sd xmm1,xmm2,qword [eax+0x101]
vfmsub231sd xmm1,xmm2,qword [ecx+0x8]
vfmsub231sd xmm1,xmm2,qword [ebx+0x8]
vfnmadd231pd xmm1,xmm2,oword [eax]
vfnmadd231sd xmm1,xmm2,qword [eax]
vfnmsub231pd xmm1,xmm2,oword [eax]
vfnmsub231sd xmm1,xmm2,qword [eax]
vfmaddsub132pd ymm1,ymm2,yword [eax]
vfmsubadd132pd ymm1,ymm2,yword [eax]
vfmadd132pd ymm1,ymm2,yword [dword esi+edx*4+0x258]
vfmadd132pd ymm1,ymm2,yword [dword edi+esi*4+0x258]
vfmsub132pd ymm1,ymm2,yword [eax]
vfnmadd132pd ymm1,ymm2,yword [eax]
vfnmsub132pd ymm1,ymm2,yword [eax]
vfmaddsub213pd ymm1,ymm2,yword [eax]
vfmsubadd213pd ymm1,ymm2,yword [eax]
vfmadd213pd ymm1,ymm2,yword [dword eax*8+0x0]
vfmadd213pd ymm1,ymm2,yword [dword esp+eax*4+0x258]
vfmsub213pd ymm1,ymm2,yword [eax]
vfnmadd213pd ymm1,ymm2,yword [eax]
vfnmsub213pd ymm1,ymm2,yword [eax]
vfmaddsub231pd ymm1,ymm2,yword [eax]
vfmsubadd231pd ymm1,ymm2,yword [eax]
vfmadd231pd ymm1,ymm2,yword [dword esp+ebp*4+0x258]
vfmadd231pd ymm1,ymm2,yword [dword esp+edi*4+0x258]
vfmsub231pd ymm1,ymm2,yword [eax]
vfnmadd231pd ymm1,ymm2,yword [eax]
vfnmsub231pd ymm1,ymm2,yword [eax]
vpinsrb xmm1,xmm2,byte [eax],byte 0x5
vpinsrd xmm1,xmm2,dword [eax],byte 0x5
vblendvps xmm1,xmm2,oword [eax],xmm4
vblendvpd xmm1,xmm2,oword [eax],xmm4
vpblendvb xmm1,xmm2,oword [eax],xmm4
vblendvps ymm1,ymm2,yword [eax],ymm4
vblendvpd ymm1,ymm2,yword [eax],ymm4
vpinsrb xmm1,xmm1,byte [eax],byte 0x5
vpinsrd xmm1,xmm1,dword [eax],byte 0x5
vfmaddsubps xmm0,xmm1,oword [eax],xmm3
vfmaddsubpd xmm0,xmm1,oword [eax],xmm3
vfmaddps xmm0,xmm1,oword [eax],xmm3
vfmaddpd xmm0,xmm1,oword [eax],xmm3
vfmaddss xmm0,xmm1,dword [eax],xmm3
vfmaddsd xmm0,xmm1,qword [eax],xmm3
vfmsubps xmm0,xmm1,oword [eax],xmm3
vfmsubpd xmm0,xmm1,oword [eax],xmm3
vfmsubss xmm0,xmm1,dword [eax],xmm3
vfmsubsd xmm0,xmm1,qword [eax],xmm3
vfnmaddps xmm0,xmm1,oword [eax],xmm3
vfnmaddpd xmm0,xmm1,oword [eax],xmm3
vfnmaddss xmm0,xmm1,dword [eax],xmm3
vfnmaddsd xmm0,xmm1,qword [eax],xmm3
vfnmsubps xmm0,xmm1,oword [eax],xmm3
vfnmsubpd xmm0,xmm1,oword [eax],xmm3
vfnmsubss xmm0,xmm1,dword [eax],xmm3
vfnmsubsd xmm0,xmm1,qword [eax],xmm3
vfmaddsubps ymm0,ymm1,yword [eax],ymm3
vfmaddsubpd ymm0,ymm1,yword [eax],ymm3
vfmaddps ymm0,ymm1,yword [eax],ymm3
vfmaddpd ymm0,ymm1,yword [eax],ymm3
vfmsubps ymm0,ymm1,yword [eax],ymm3
vfmsubpd ymm0,ymm1,yword [eax],ymm3
vfnmaddps ymm0,ymm1,yword [eax],ymm3
vfnmaddpd ymm0,ymm1,yword [eax],ymm3
vfnmsubps ymm0,ymm1,yword [eax],ymm3
vfnmsubpd ymm0,ymm1,yword [eax],ymm3
vpextrb byte [eax],xmm2,byte 0x5
vfmaddsubps xmm0,xmm1,xmm2,oword [eax]
vfmaddsubpd xmm0,xmm1,xmm2,oword [eax]
vfmaddps xmm0,xmm1,xmm2,oword [eax]
vfmaddpd xmm0,xmm1,xmm2,oword [eax]
vfmaddss xmm0,xmm1,xmm2,dword [eax]
vfmaddsd xmm0,xmm1,xmm2,qword [eax]
vfmsubps xmm0,xmm1,xmm2,oword [eax]
vfmsubpd xmm0,xmm1,xmm2,oword [eax]
vfmsubss xmm0,xmm1,xmm2,dword [eax]
vfmsubsd xmm0,xmm1,xmm2,qword [eax]
vfnmaddps xmm0,xmm1,xmm2,oword [eax]
vfnmaddpd xmm0,xmm1,xmm2,oword [eax]
vfnmaddss xmm0,xmm1,xmm2,dword [eax]
vfnmaddsd xmm0,xmm1,xmm2,qword [eax]
vfnmsubps xmm0,xmm1,xmm2,oword [eax]
vfnmsubpd xmm0,xmm1,xmm2,oword [eax]
vfnmsubss xmm0,xmm1,xmm2,dword [eax]
vfnmsubsd xmm0,xmm1,xmm2,qword [eax]
vfmaddsubps ymm0,ymm1,ymm2,yword [eax]
vfmaddsubpd ymm0,ymm1,ymm2,yword [eax]
vfmaddps ymm0,ymm1,ymm2,yword [eax]
vfmaddpd ymm0,ymm1,ymm2,yword [eax]
vfmsubps ymm0,ymm1,ymm2,yword [eax]
vfmsubpd ymm0,ymm1,ymm2,yword [eax]
vfnmaddps ymm0,ymm1,ymm2,yword [eax]
vfnmaddpd ymm0,ymm1,ymm2,yword [eax]
vfnmsubps ymm0,ymm1,ymm2,yword [eax]
vfnmsubpd ymm0,ymm1,ymm2,yword [eax]
vaddpd ymm5,ymm6,yword [dword eax+edi*4]
vaddpd ymm5,ymm6,yword [dword esi+edi*4]
vmovlps xmm1,xmm2,qword [eax]
vunpcklps xmm1,xmm2,oword [eax]
vunpckhps xmm1,xmm2,oword [eax]
vmovhps xmm1,xmm2,qword [eax]
vandps xmm1,xmm2,oword [eax]
vandnps xmm1,xmm2,oword [eax]
vorps xmm1,xmm2,oword [eax]
vxorps xmm1,xmm2,oword [eax]
vaddps xmm1,xmm2,oword [eax]
vmulps xmm1,xmm2,oword [eax]
vsubps xmm1,xmm2,oword [eax]
vminps xmm1,xmm2,oword [eax]
vdivps xmm1,xmm2,oword [eax]
vmaxps xmm1,xmm2,oword [eax]
vmovlpd xmm1,xmm2,qword [eax]
vunpcklpd xmm1,xmm2,oword [eax]
vunpckhpd xmm1,xmm2,oword [eax]
vmovhpd xmm1,xmm2,qword [eax]
vandpd xmm1,xmm2,oword [eax]
vandnpd xmm1,xmm2,oword [eax]
vorpd xmm1,xmm2,oword [eax]
vxorpd xmm1,xmm2,oword [eax]
vaddpd xmm1,xmm2,oword [eax]
vmulpd xmm1,xmm2,oword [eax]
vsubpd xmm1,xmm2,oword [eax]
vminpd xmm1,xmm2,oword [eax]
vdivpd xmm1,xmm2,oword [eax]
vmaxpd xmm1,xmm2,oword [eax]
vpunpcklbw xmm1,xmm2,oword [eax]
vpunpcklwd xmm1,xmm2,oword [eax]
vpunpckldq xmm1,xmm2,oword [eax]
vpacksswb xmm1,xmm2,oword [eax]
vpcmpgtb xmm1,xmm2,oword [eax]
vpcmpgtw xmm1,xmm2,oword [eax]
vpcmpgtd xmm1,xmm2,oword [eax]
vpackuswb xmm1,xmm2,oword [eax]
vpunpckhbw xmm1,xmm2,oword [eax]
vpunpckhwd xmm1,xmm2,oword [eax]
vpunpckhdq xmm1,xmm2,oword [eax]
vpackssdw xmm1,xmm2,oword [eax]
vpunpcklqdq xmm1,xmm2,oword [eax]
vpunpckhqdq xmm1,xmm2,oword [eax]
vpcmpeqb xmm1,xmm2,oword [eax]
vpcmpeqw xmm1,xmm2,oword [eax]
vpcmpeqd xmm1,xmm2,oword [eax]
vhaddpd xmm1,xmm2,oword [eax]
vhsubpd xmm1,xmm2,oword [eax]
vaddsubpd xmm1,xmm2,oword [eax]
vpsrlw xmm1,xmm2,oword [eax]
vpsrld xmm1,xmm2,oword [eax]
vpsrlq xmm1,xmm2,oword [eax]
vpaddq xmm1,xmm2,oword [eax]
vpmullw xmm1,xmm2,oword [eax]
vpsubusb xmm1,xmm2,oword [eax]
vpsubusw xmm1,xmm2,oword [eax]
vpminub xmm1,xmm2,oword [eax]
vpand xmm1,xmm2,oword [eax]
vpaddusb xmm1,xmm2,oword [eax]
vpaddusw xmm1,xmm2,oword [eax]
vpmaxub xmm1,xmm2,oword [eax]
vpandn xmm1,xmm2,oword [eax]
vpavgb xmm1,xmm2,oword [eax]
vpsraw xmm1,xmm2,oword [eax]
vpsrad xmm1,xmm2,oword [eax]
vpavgw xmm1,xmm2,oword [eax]
vpmulhuw xmm1,xmm2,oword [eax]
vpmulhw xmm1,xmm2,oword [eax]
vpsubsb xmm1,xmm2,oword [eax]
vpsubsw xmm1,xmm2,oword [eax]
vpminsw xmm1,xmm2,oword [eax]
vpor xmm1,xmm2,oword [eax]
vpaddsb xmm1,xmm2,oword [eax]
vpaddsw xmm1,xmm2,oword [eax]
vpmaxsw xmm1,xmm2,oword [eax]
vpxor xmm1,xmm2,oword [eax]
vpsllw xmm1,xmm2,oword [eax]
vpslld xmm1,xmm2,oword [eax]
vpsllq xmm1,xmm2,oword [eax]
vpmuludq xmm1,xmm2,oword [eax]
vpmaddwd xmm1,xmm2,oword [eax]
vpsadbw xmm1,xmm2,oword [eax]
vpsubb xmm1,xmm2,oword [eax]
vpsubw xmm1,xmm2,oword [eax]
vpsubd xmm1,xmm2,oword [eax]
vpsubq xmm1,xmm2,oword [eax]
vpaddb xmm1,xmm2,oword [eax]
vpaddw xmm1,xmm2,oword [eax]
vpaddd xmm1,xmm2,oword [eax]
vcvtsi2ss xmm1,xmm2,dword [eax]
vsqrtss xmm1,xmm2,dword [eax]
vrsqrtss xmm1,xmm2,dword [eax]
vrcpss xmm1,xmm2,dword [eax]
vaddss xmm1,xmm2,dword [eax]
vmulss xmm1,xmm2,dword [eax]
vcvtss2sd xmm1,xmm2,dword [eax]
vsubss xmm1,xmm2,dword [eax]
vminss xmm1,xmm2,dword [eax]
vdivss xmm1,xmm2,dword [eax]
vmaxss xmm1,xmm2,dword [eax]
vcvtsi2sd xmm1,xmm2,dword [eax]
vsqrtsd xmm1,xmm2,qword [eax]
vaddsd xmm1,xmm2,qword [eax]
vmulsd xmm1,xmm2,qword [eax]
vcvtsd2ss xmm1,xmm2,qword [eax]
vsubsd xmm1,xmm2,qword [eax]
vminsd xmm1,xmm2,qword [eax]
vdivsd xmm1,xmm2,qword [eax]
vmaxsd xmm1,xmm2,qword [eax]
vhaddps xmm1,xmm2,oword [eax]
vhsubps xmm1,xmm2,oword [eax]
vaddsubps xmm1,xmm2,oword [eax]
vunpcklps ymm1,ymm2,yword [eax]
vunpckhps ymm1,ymm2,yword [eax]
vandps ymm1,ymm2,yword [eax]
vandnps ymm1,ymm2,yword [eax]
vorps ymm1,ymm2,yword [eax]
vxorps ymm1,ymm2,yword [eax]
vaddps ymm1,ymm2,yword [eax]
vmulps ymm1,ymm2,yword [eax]
vsubps ymm1,ymm2,yword [eax]
vminps ymm1,ymm2,yword [eax]
vdivps ymm1,ymm2,yword [eax]
vmaxps ymm1,ymm2,yword [eax]
vunpcklpd ymm1,ymm2,yword [eax]
vunpckhpd ymm1,ymm2,yword [eax]
vandpd ymm1,ymm2,yword [eax]
vandnpd ymm1,ymm2,yword [eax]
vorpd ymm1,ymm2,yword [eax]
vxorpd ymm1,ymm2,yword [eax]
vaddpd ymm1,ymm2,yword [eax]
vmulpd ymm1,ymm2,yword [eax]
vsubpd ymm1,ymm2,yword [eax]
vminpd ymm1,ymm2,yword [eax]
vdivpd ymm1,ymm2,yword [eax]
vmaxpd ymm1,ymm2,yword [eax]
vhaddpd ymm1,ymm2,yword [eax]
vhsubpd ymm1,ymm2,yword [eax]
vaddsubpd ymm1,ymm2,yword [eax]
vhaddps ymm1,ymm2,yword [eax]
vhsubps ymm1,ymm2,yword [eax]
vaddsubps ymm1,ymm2,yword [eax]
vmovlps xmm1,xmm1,qword [eax]
vunpcklps xmm1,xmm1,oword [eax]
vunpckhps xmm1,xmm1,oword [eax]
vmovhps xmm1,xmm1,qword [eax]
vandps xmm1,xmm1,oword [eax]
vandnps xmm1,xmm1,oword [eax]
vorps xmm1,xmm1,oword [eax]
vxorps xmm1,xmm1,oword [eax]
vaddps xmm1,xmm1,oword [eax]
vmulps xmm1,xmm1,oword [eax]
vsubps xmm1,xmm1,oword [eax]
vminps xmm1,xmm1,oword [eax]
vdivps xmm1,xmm1,oword [eax]
vmaxps xmm1,xmm1,oword [eax]
vmovlpd xmm1,xmm1,qword [eax]
vunpcklpd xmm1,xmm1,oword [eax]
vunpckhpd xmm1,xmm1,oword [eax]
vmovhpd xmm1,xmm1,qword [eax]
vandpd xmm1,xmm1,oword [eax]
vandnpd xmm1,xmm1,oword [eax]
vorpd xmm1,xmm1,oword [eax]
vxorpd xmm1,xmm1,oword [eax]
vaddpd xmm1,xmm1,oword [eax]
vmulpd xmm1,xmm1,oword [eax]
vsubpd xmm1,xmm1,oword [eax]
vminpd xmm1,xmm1,oword [eax]
vdivpd xmm1,xmm1,oword [eax]
vmaxpd xmm1,xmm1,oword [eax]
vpunpcklbw xmm1,xmm1,oword [eax]
vpunpcklwd xmm1,xmm1,oword [eax]
vpunpckldq xmm1,xmm1,oword [eax]
vpacksswb xmm1,xmm1,oword [eax]
vpcmpgtb xmm1,xmm1,oword [eax]
vpcmpgtw xmm1,xmm1,oword [eax]
vpcmpgtd xmm1,xmm1,oword [eax]
vpackuswb xmm1,xmm1,oword [eax]
vpunpckhbw xmm1,xmm1,oword [eax]
vpunpckhwd xmm1,xmm1,oword [eax]
vpunpckhdq xmm1,xmm1,oword [eax]
vpackssdw xmm1,xmm1,oword [eax]
vpunpcklqdq xmm1,xmm1,oword [eax]
vpunpckhqdq xmm1,xmm1,oword [eax]
vpcmpeqb xmm1,xmm1,oword [eax]
vpcmpeqw xmm1,xmm1,oword [eax]
vpcmpeqd xmm1,xmm1,oword [eax]
vhaddpd xmm1,xmm1,oword [eax]
vhsubpd xmm1,xmm1,oword [eax]
vpinsrw xmm1,xmm1,word [eax],byte 0x5
vaddsubpd xmm1,xmm1,oword [eax]
vpsrlw xmm1,xmm1,oword [eax]
vpsrld xmm1,xmm1,oword [eax]
vpsrlq xmm1,xmm1,oword [eax]
vpaddq xmm1,xmm1,oword [eax]
vpmullw xmm1,xmm1,oword [eax]
vpsubusb xmm1,xmm1,oword [eax]
vpsubusw xmm1,xmm1,oword [eax]
vpminub xmm1,xmm1,oword [eax]
vpand xmm1,xmm1,oword [eax]
vpaddusb xmm1,xmm1,oword [eax]
vpaddusw xmm1,xmm1,oword [eax]
vpmaxub xmm1,xmm1,oword [eax]
vpandn xmm1,xmm1,oword [eax]
vpavgb xmm1,xmm1,oword [eax]
vpsraw xmm1,xmm1,oword [eax]
vpsrad xmm1,xmm1,oword [eax]
vpavgw xmm1,xmm1,oword [eax]
vpmulhuw xmm1,xmm1,oword [eax]
vpmulhw xmm1,xmm1,oword [eax]
vpsubsb xmm1,xmm1,oword [eax]
vpsubsw xmm1,xmm1,oword [eax]
vpminsw xmm1,xmm1,oword [eax]
vpor xmm1,xmm1,oword [eax]
vpaddsb xmm1,xmm1,oword [eax]
vpaddsw xmm1,xmm1,oword [eax]
vpmaxsw xmm1,xmm1,oword [eax]
vpxor xmm1,xmm1,oword [eax]
vpsllw xmm1,xmm1,oword [eax]
vpslld xmm1,xmm1,oword [eax]
vpsllq xmm1,xmm1,oword [eax]
vpmuludq xmm1,xmm1,oword [eax]
vpmaddwd xmm1,xmm1,oword [eax]
vpsadbw xmm1,xmm1,oword [eax]
vpsubb xmm1,xmm1,oword [eax]
vpsubw xmm1,xmm1,oword [eax]
vpsubd xmm1,xmm1,oword [eax]
vpsubq xmm1,xmm1,oword [eax]
vpaddb xmm1,xmm1,oword [eax]
vpaddw xmm1,xmm1,oword [eax]
vpaddd xmm1,xmm1,oword [eax]
vcvtsi2ss xmm1,xmm1,dword [eax]
vsqrtss xmm1,xmm1,dword [eax]
vrsqrtss xmm1,xmm1,dword [eax]
vrcpss xmm1,xmm1,dword [eax]
vaddss xmm1,xmm1,dword [eax]
vmulss xmm1,xmm1,dword [eax]
vcvtss2sd xmm1,xmm1,dword [eax]
vsubss xmm1,xmm1,dword [eax]
vminss xmm1,xmm1,dword [eax]
vdivss xmm1,xmm1,dword [eax]
vmaxss xmm1,xmm1,dword [eax]
vcvtsi2sd xmm1,xmm1,dword [eax]
vsqrtsd xmm1,xmm1,qword [eax]
vaddsd xmm1,xmm1,qword [eax]
vmulsd xmm1,xmm1,qword [eax]
vcvtsd2ss xmm1,xmm1,qword [eax]
vsubsd xmm1,xmm1,qword [eax]
vminsd xmm1,xmm1,qword [eax]
vdivsd xmm1,xmm1,qword [eax]
vmaxsd xmm1,xmm1,qword [eax]
vhaddps xmm1,xmm1,oword [eax]
vhsubps xmm1,xmm1,oword [eax]
vaddsubps xmm1,xmm1,oword [eax]
vmovups xmm1,oword [eax]
vmovups oword [eax],xmm2
vmovlps qword [eax],xmm2
vmovhps qword [eax],xmm2
vmovaps xmm1,oword [eax]
vmovaps oword [eax],xmm2
vmovntps oword [eax],xmm1
vucomiss xmm1,dword [eax]
vcomiss xmm1,dword [eax]
vsqrtps xmm1,oword [eax]
vrsqrtps xmm1,oword [eax]
vrcpps xmm1,oword [eax]
vcvtps2pd xmm1,qword [eax]
vcvtdq2ps xmm1,oword [eax]
vldmxcsr dword [eax]
vstmxcsr dword [eax]
vmovupd xmm1,oword [eax]
vmovupd oword [eax],xmm2
vmovlpd qword [eax],xmm2
vmovhpd qword [eax],xmm2
vmovapd xmm1,oword [eax]
vmovapd oword [eax],xmm2
vmovntpd oword [eax],xmm1
vucomisd xmm1,qword [eax]
vcomisd xmm1,qword [eax]
vsqrtpd xmm1,oword [eax]
vcvtpd2ps xmm1,oword [eax]
vcvtps2dq xmm1,oword [eax]
vmovd xmm1,dword [eax]
vmovdqa xmm1,oword [eax]
vmovd dword [eax],xmm2
vmovdqa oword [eax],xmm2
vmovq qword [eax],xmm1
vmovq qword [eax],xmm2
vcvttpd2dq xmm1,oword [eax]
vmovntdq oword [eax],xmm1
vmovss xmm1,qword [eax]
vmovss qword [eax],xmm2
vmovsldup xmm1,oword [eax]
vmovshdup xmm1,oword [eax]
vcvttss2si eax,dword [eax]
vcvtss2si eax,dword [eax]
vcvttps2dq xmm1,oword [eax]
vmovdqu xmm1,oword [eax]
vmovq xmm1,qword [eax]
vmovdqu oword [eax],xmm2
vcvtdq2pd xmm1,qword [eax]
vmovsd xmm1,qword [eax]
vmovsd qword [eax],xmm2
vmovddup xmm1,qword [eax]
vcvttsd2si eax,qword [eax]
vcvtsd2si eax,qword [eax]
vcvtpd2dq xmm1,oword [eax]
vlddqu xmm1,oword [eax]
vmovups ymm1,yword [eax]
vmovups yword [eax],ymm2
vmovaps ymm1,yword [eax]
vmovaps yword [eax],ymm2
vmovntps oword [eax],ymm1
vsqrtps ymm1,yword [eax]
vrsqrtps ymm1,yword [eax]
vrcpps ymm1,yword [eax]
vcvtps2pd ymm1,oword [eax]
vcvtdq2ps ymm1,yword [eax]
vmovupd ymm1,yword [eax]
vmovupd yword [eax],ymm2
vmovapd ymm1,yword [eax]
vmovapd yword [eax],ymm2
vmovntpd yword [eax],ymm1
vsqrtpd ymm1,yword [eax]
vcvtpd2ps xmm1,yword [eax]
vcvtps2dq ymm1,yword [eax]
vmovqqa ymm1,yword [eax]
vmovqqa yword [eax],ymm2
vcvttpd2dq xmm1,yword [eax]
vmovntqq yword [eax],ymm1
vmovsldup ymm1,yword [eax]
vmovshdup ymm1,yword [eax]
vcvttps2dq ymm1,yword [eax]
vmovqqu ymm1,yword [eax]
vmovqqu yword [eax],ymm2
vcvtdq2pd ymm1,oword [eax]
vmovddup ymm1,yword [eax]
vcvtpd2dq xmm1,yword [eax]
vldqqu ymm1,yword [eax]
jecxz $+0xc
movsd xmm1,[eax]
movsd xmm1,[ebx]
movsd [eax],xmm2
movsd [ebx],xmm2
movddup xmm1,[eax]
movddup xmm1,[ebx]
cvtsi2sd xmm1,dword [eax]
cvtsi2sd xmm1,dword [ebx]
movntsd [ebx],xmm2
cvttsd2si eax,[eax]
cvttsd2si eax,[ebx]
cvtsd2si eax,[eax]
cvtsd2si ebx,[ebx]
sqrtsd xmm1,[eax]
sqrtsd xmm1,[ebx]
addsd xmm1,[eax]
addsd xmm1,[ebx]
mulsd xmm1,[eax]
mulsd xmm1,[ebx]
cvtsd2ss xmm1,[eax]
cvtsd2ss xmm1,[ebx]
subsd xmm1,[eax]
subsd xmm1,[ebx]
minsd xmm1,[eax]
minsd xmm1,[ebx]
divsd xmm1,[eax]
divsd xmm1,[ebx]
maxsd xmm1,[eax]
maxsd xmm1,[ebx]
pshuflw xmm1,[eax],0x5
pshuflw xmm1,[ebx],0x0
haddps xmm1,[eax]
haddps xmm1,[ebx]
hsubps xmm1,[eax]
hsubps xmm1,[ebx]
hsubps xmm2,[dword esp]
cmpeqsd xmm0,[eax]
cmpnltsd xmm1,[eax]
cmpeqsd xmm1,[ebx]
addsubps xmm1,[eax]
addsubps xmm1,[ebx]
addsubps xmm3,[edx]
cvtpd2dq xmm1,[eax]
cvtpd2dq xmm1,[ebx]
lddqu xmm1,[eax]
lddqu xmm1,[ebx]
lddqu xmm3,[dword ecx+edx*4+0x8]
movss xmm1,[eax]
movss xmm1,[ebx]
movss [eax],xmm2
movss [ebx],xmm2
movsldup xmm1,[eax]
movsldup xmm1,[ebx]
movshdup xmm1,[eax]
movshdup xmm1,[ebx]
cvtsi2ss xmm1,dword [eax]
cvtsi2ss xmm1,dword [ebx]
movntss [ebx],xmm2
cvttss2si eax,[eax]
cvttss2si eax,[ebx]
cvtss2si eax,[eax]
cvtss2si ecx,[ebx]
cvtss2si ebx,[ebx]
sqrtss xmm1,[eax]
sqrtss xmm1,[ebx]
rsqrtss xmm1,[eax]
rsqrtss xmm1,[ebx]
rcpss xmm1,[eax]
rcpss xmm1,[ebx]
addss xmm1,[eax]
addss xmm1,[ebx]
mulss xmm1,[eax]
mulss xmm1,[ebx]
cvtss2sd xmm1,[eax]
cvtss2sd xmm1,[ebx]
cvttps2dq xmm1,[eax]
cvttps2dq xmm1,[ebx]
subss xmm1,[eax]
subss xmm1,[ebx]
minss xmm1,[eax]
minss xmm1,[ebx]
divss xmm1,[eax]
divss xmm1,[ebx]
maxss xmm1,[eax]
maxss xmm1,[ebx]
movdqu xmm0,[edx]
movdqu xmm1,[eax]
movdqu xmm1,[ebx]
pshufhw xmm1,[eax],0x5
pshufhw xmm1,[ebx],0x0
movq xmm1,[eax]
movq xmm1,[ebx]
movdqu [edx],xmm0
movdqu [eax],xmm2
movdqu [ebx],xmm2
cmpeqss xmm0,[eax]
cmpnltss xmm1,[eax]
cmpeqss xmm1,[ebx]
cmpnless xmm1,[ebx]
vmxon [dword edi+esi*4+0x190]
cvtdq2pd xmm1,[eax]
cvtdq2pd xmm1,[ebx]
idiv byte [dword 0xffffffff]
idiv byte [edi]
idiv word [esi+0x0]
push word 0x80
push byte +0x0
push byte +0x7f
imul ax,[bx+si],byte +0x0
imul ax,ax,byte +0x4
imul si,bp,byte +0x2
insb
insw
outsb
outsw
jo 0x0
jno 0x0
jc 0x2
jc 0x4
jc 0x0
jnc 0x0
jz 0x0
jnz 0x0
jna 0x0
ja 0x0
js 0x0
jns 0x0
jpe 0x0
jpo 0x0
jl 0x0
jnl 0x0
jng 0x0
jg 0x0
add byte [bx+si],0x0
xor cx,0xe00
xor si,0xe00
add word [bx+si],byte +0x0
or bx,byte +0x23
and dx,byte +0x23
and di,byte +0x23
xor sp,byte +0x23
test [bx+si],al
test [bx+si],ax
xchg al,[bx+si]
xchg al,[0x0]
xchg al,al
xchg bl,al
xchg ax,[bx+si]
xchg ax,[0x0]
xchg cx,[0x0]
xchg ax,ax
xchg bx,cx
mov [bx+si],al
mov [0x0],bl
mov [0x1],bl
mov [bx+si],ax
mov cx,dx
mov al,[bx+si]
mov bh,[bx+di]
mov ax,[bx+si]
mov ax,[bx+si+0x0]
mov ax,[di+0x0]
mov [bx+si],es
mov [0x8],es
mov [0x0],ds
mov ax,cs
mov ax,ss
mov ax,gs
lea ax,[bx+si]
lea bx,[0x5]
mov es,[bx+si]
mov ds,[0x4]
mov fs,ax
mov gs,ax
pop word [bx+si]
vpmacssww xmm1,xmm4,xmm7,xmm3
vpmacsswd xmm1,xmm4,xmm7,xmm3
vpmacssdql xmm1,xmm4,xmm7,xmm3
vpmacssdd xmm1,xmm4,xmm7,xmm3
vpmacssdqh xmm1,xmm4,xmm7,xmm3
vpmacsww xmm1,xmm4,xmm7,xmm3
vpmacswd xmm1,xmm4,xmm7,xmm3
vpmacsdql xmm1,xmm4,xmm7,xmm3
vpmacsdd xmm1,xmm4,xmm7,xmm3
vpmacsdqh xmm1,xmm4,xmm7,xmm3
vpmadcsswd xmm1,xmm4,xmm7,xmm3
vpmadcswd xmm1,xmm4,xmm7,xmm3
vpmacssww xmm1,xmm2,xmm3,xmm4
vpmacsswd xmm1,xmm2,xmm3,xmm4
vpmacssdql xmm1,xmm2,xmm3,xmm4
vpmacssdd xmm1,xmm2,xmm3,xmm4
vpmacssdqh xmm1,xmm2,xmm3,xmm4
vpmacsww xmm1,xmm2,xmm3,xmm4
vpmacswd xmm1,xmm2,xmm3,xmm4
vpmacsdql xmm1,xmm2,xmm3,xmm4
vpmacsdd xmm1,xmm2,xmm3,xmm4
vpmacsdqh xmm1,xmm2,xmm3,xmm4
vpcmov xmm1,xmm2,xmm3,xmm4
vpperm xmm1,xmm2,xmm3,xmm4
vpmadcsswd xmm1,xmm2,xmm3,xmm4
vpmadcswd xmm1,xmm2,xmm3,xmm4
vpcmov ymm1,ymm2,ymm3,ymm4
vprotb xmm1,xmm2,xmm3
vprotw xmm1,xmm2,xmm3
vprotd xmm1,xmm2,xmm3
vprotq xmm1,xmm2,xmm3
vpshlb xmm1,xmm2,xmm3
vpshlw xmm1,xmm2,xmm3
vpshld xmm1,xmm2,xmm3
vpshlq xmm1,xmm2,xmm3
vpshab xmm1,xmm2,xmm3
vpshaw xmm1,xmm2,xmm3
vpshad xmm1,xmm2,xmm3
vpshaq xmm1,xmm2,xmm3
vfrczps xmm1,xmm2
vfrczpd xmm1,xmm2
vfrczss xmm1,xmm2
vfrczsd xmm1,xmm2
vphaddbw xmm1,xmm2
vphaddbd xmm1,xmm2
vphaddbq xmm1,xmm2
vphaddwd xmm1,xmm2
vphaddwq xmm1,xmm2
vphadddq xmm1,xmm2
vphaddubd xmm1,xmm2
vphaddubq xmm1,xmm2
vphadduwd xmm1,xmm2
vphadduwq xmm1,xmm2
vphsubbw xmm1,xmm2
vphsubwd xmm1,xmm2
vphsubdq xmm1,xmm2
vfrczps ymm1,ymm2
vfrczpd ymm1,ymm2
nop
xchg ax,cx
xchg ax,dx
xchg ax,bx
xchg ax,sp
xchg ax,bp
xchg ax,si
xchg ax,di
cbw
cwd
fstenv [bx+si]
fstcw [bx+si]
fclex
finit
fsave [bx+si]
fstsw [bx+si]
pushfw
popfw
sahf
lahf
mov ax,[0x2]
mov [0x0],al
mov [0x1],al
movsb
movsw
cmpsb
cmpsw
test al,0x0
test al,0xff
stosb
stosw
lodsb
lodsw
scasb
scasw
mov al,0x0
mov cl,0x0
mov dl,0x0
mov bl,0x0
mov ah,0x0
mov ch,0x0
mov dh,0x0
mov bh,0x0
mov ax,0x2
mov ax,0x6261
mov ax,0xffff
mov bx,0x1
rol byte [bx+si],0x0
ror byte [bx+si],0x0
rcl byte [bx+si],0x0
rcr byte [bx+si],0x0
shl byte [bx+si],0x0
shr byte [bx+si],0x0
sar byte [bx+si],0x0
shl al,0x5
shl ah,0x4
rol word [bx+si],0x0
ror word [bx+si],0x0
rcl word [bx+si],0x0
rcr word [bx+si],0x0
shl word [bx+si],0x0
shr word [bx+si],0x0
sar word [bx+si],0x0
ror bx,0x3
rcl cx,0x2
shr ax,0x5
ret 0x0
ret 0x2
ret 0x8
ret 0x1234
ret
les ax,[bx+si]
les di,[0x5]
vfmadd132ss xmm1,xmm3,dword [bp+di]
vpshufb xmm1,xmm2,oword [bx+si]
vpshufb xmm1,xmm2,xmm3
vphaddw xmm1,xmm2,oword [bx+si]
vphaddw xmm1,xmm2,xmm3
vphaddd xmm1,xmm2,oword [bx+si]
vphaddd xmm1,xmm2,xmm3
vphaddsw xmm1,xmm2,oword [bx+si]
vphaddsw xmm1,xmm2,xmm3
vpmaddubsw xmm1,xmm2,oword [bx+si]
vpmaddubsw xmm1,xmm2,xmm3
vphsubw xmm1,xmm2,oword [bx+si]
vphsubw xmm1,xmm2,xmm3
vphsubd xmm1,xmm2,oword [bx+si]
vphsubd xmm1,xmm2,xmm3
vphsubsw xmm1,xmm2,oword [bx+si]
vphsubsw xmm1,xmm2,xmm3
vpsignb xmm1,xmm2,oword [bx+si]
vpsignb xmm1,xmm2,xmm3
vpsignw xmm1,xmm2,oword [bx+si]
vpsignw xmm1,xmm2,xmm3
vpsignd xmm1,xmm2,oword [bx+si]
vpsignd xmm1,xmm2,xmm3
vpmulhrsw xmm1,xmm2,oword [bx+si]
vpmulhrsw xmm1,xmm2,xmm3
vpermilps xmm1,xmm2,oword [bx+si]
vpermilps xmm1,xmm2,xmm3
vpermilpd xmm1,xmm2,oword [bx+si]
vpermilpd xmm1,xmm2,xmm3
vpmuldq xmm1,xmm2,oword [bx+si]
vpmuldq xmm1,xmm2,xmm3
vpackusdw xmm1,xmm2,oword [bx+si]
vpackusdw xmm1,xmm2,xmm3
vmaskmovps xmm1,xmm2,oword [bx+si]
vmaskmovpd xmm1,xmm2,oword [bx+si]
vmaskmovps oword [bx+si],xmm2,xmm3
vmaskmovpd oword [bx+si],xmm2,xmm3
vpminsb xmm1,xmm2,oword [bx+si]
vpminsb xmm1,xmm2,xmm3
vpminsd xmm1,xmm2,oword [bx+si]
vpminsd xmm1,xmm2,xmm3
vpminuw xmm1,xmm2,oword [bx+si]
vpminuw xmm1,xmm2,xmm3
vpminud xmm1,xmm2,oword [bx+si]
vpminud xmm1,xmm2,xmm3
vpmaxsb xmm1,xmm2,oword [bx+si]
vpmaxsb xmm1,xmm2,xmm3
vpmaxsd xmm1,xmm2,oword [bx+si]
vpmaxsd xmm1,xmm2,xmm3
vpmaxuw xmm1,xmm2,oword [bx+si]
vpmaxuw xmm1,xmm2,xmm3
vpmaxud xmm1,xmm2,oword [bx+si]
vpmaxud xmm1,xmm2,xmm3
vpmulld xmm1,xmm2,oword [bx+si]
vpmulld xmm1,xmm2,xmm3
vfmaddsub132ps xmm1,xmm2,oword [bx+si]
vfmaddsub132ps xmm1,xmm2,xmm3
vfmsubadd132ps xmm1,xmm2,oword [bx+si]
vfmsubadd132ps xmm1,xmm2,xmm3
vfmadd132ps xmm1,xmm2,xmm3
vfmadd132ss xmm1,xmm2,dword [bx+si]
vfmadd132ss xmm1,xmm2,xmm3
vfmsub132ps xmm1,xmm2,oword [bp+0x8]
vfmsub132ps xmm1,xmm2,xmm3
vfmsub132ss xmm1,xmm2,xmm3
vfnmadd132ps xmm1,xmm2,oword [bx+si]
vfnmadd132ps xmm1,xmm2,xmm3
vfnmadd132ss xmm1,xmm2,dword [bx+si]
vfnmadd132ss xmm1,xmm2,xmm3
vfnmsub132ps xmm1,xmm2,oword [bx+si]
vfnmsub132ps xmm1,xmm2,xmm3
vfnmsub132ss xmm1,xmm2,dword [bx+si]
vfnmsub132ss xmm1,xmm2,xmm3
vfmaddsub213ps xmm1,xmm2,oword [bx+si]
vfmaddsub213ps xmm1,xmm2,xmm3
vfmsubadd213ps xmm1,xmm2,oword [bx+si]
vfmsubadd213ps xmm1,xmm2,xmm3
vfmadd213ps xmm1,xmm2,xmm3
vfmadd213ss xmm1,xmm2,dword [bx]
vfmadd213ss xmm1,xmm2,xmm3
vfmsub213ps xmm1,xmm2,xmm3
vfmsub213ss xmm1,xmm2,xmm3
vfnmadd213ps xmm1,xmm2,oword [bx+si]
vfnmadd213ps xmm1,xmm2,xmm3
vfnmadd213ss xmm1,xmm2,dword [bx+si]
vfnmadd213ss xmm1,xmm2,xmm3
vfnmsub213ps xmm1,xmm2,oword [bx+si]
vfnmsub213ps xmm1,xmm2,xmm3
vfnmsub213ss xmm1,xmm2,dword [bx+si]
vfnmsub213ss xmm1,xmm2,xmm3
vfmaddsub231ps xmm1,xmm2,oword [bx+si]
vfmaddsub231ps xmm1,xmm2,xmm3
vfmsubadd231ps xmm1,xmm2,oword [bx+si]
vfmsubadd231ps xmm1,xmm2,xmm3
vfmadd231ps xmm1,xmm2,xmm3
vfmadd231ss xmm1,xmm2,dword [bx+di]
vfmadd231ss xmm1,xmm2,dword [bp+si]
vfmadd231ss xmm1,xmm2,xmm3
vfmsub231ps xmm1,xmm2,oword [di+0x8]
vfmsub231ps xmm1,xmm2,xmm3
vfmsub231ss xmm1,xmm2,xmm3
vfnmadd231ps xmm1,xmm2,oword [bx+si]
vfnmadd231ps xmm1,xmm2,xmm3
vfnmadd231ss xmm1,xmm2,dword [bx+si]
vfnmadd231ss xmm1,xmm2,xmm3
vfnmsub231ps xmm1,xmm2,oword [bx+si]
vfnmsub231ps xmm1,xmm2,xmm3
vfnmsub231ss xmm1,xmm2,dword [bx+si]
vfnmsub231ss xmm1,xmm2,xmm3
vaesenc xmm1,xmm2,oword [bx+si]
vaesenc xmm1,xmm2,xmm3
vaesenclast xmm1,xmm2,oword [bx+si]
vaesenclast xmm1,xmm2,xmm3
vaesdec xmm1,xmm2,oword [bx+si]
vaesdec xmm1,xmm2,xmm3
vaesdeclast xmm1,xmm2,oword [bx+si]
vaesdeclast xmm1,xmm2,xmm3
vpermilps ymm1,ymm2,yword [bx+si]
vpermilps ymm1,ymm2,ymm3
vpermilpd ymm1,ymm2,yword [bx+si]
vpermilpd ymm1,ymm2,ymm3
vmaskmovps ymm1,ymm2,yword [bx+si]
vmaskmovpd ymm1,ymm2,yword [bx+si]
vmaskmovps yword [bx+si],xmm2,xmm3
vmaskmovpd yword [bx+si],ymm2,ymm3
vfmaddsub132ps ymm1,ymm2,yword [bx+si]
vfmaddsub132ps ymm1,ymm2,ymm3
vfmsubadd132ps ymm1,ymm2,yword [bx+si]
vfmsubadd132ps ymm1,ymm2,ymm3
vfmadd132ps ymm1,ymm2,ymm3
vfmsub132ps ymm1,ymm2,ymm3
vfnmadd132ps ymm1,ymm2,yword [bx+si]
vfnmadd132ps ymm1,ymm2,ymm3
vfnmsub132ps ymm1,ymm2,yword [bx+si]
vfnmsub132ps ymm1,ymm2,ymm3
vfmaddsub213ps ymm1,ymm2,yword [bx+si]
vfmaddsub213ps ymm1,ymm2,ymm3
vfmsubadd213ps ymm1,ymm2,yword [bx+si]
vfmsubadd213ps ymm1,ymm2,ymm3
vfmadd213ps ymm1,ymm2,ymm3
vfmsub213ps ymm1,ymm2,ymm3
vfnmadd213ps ymm1,ymm2,yword [bx+si]
vfnmadd213ps ymm1,ymm2,ymm3
vfnmsub213ps ymm1,ymm2,yword [bx+si]
vfnmsub213ps ymm1,ymm2,ymm3
vfmaddsub231ps ymm1,ymm2,yword [bx+si]
vfmaddsub231ps ymm1,ymm2,ymm3
vfmsubadd231ps ymm1,ymm2,yword [bx+si]
vfmsubadd231ps ymm1,ymm2,ymm3
vfmadd231ps ymm1,ymm2,ymm3
vfmsub231ps ymm1,ymm2,ymm3
vfnmadd231ps ymm1,ymm2,yword [bx+si]
vfnmadd231ps ymm1,ymm2,ymm3
vfnmsub231ps ymm1,ymm2,yword [bx+si]
vfnmsub231ps ymm1,ymm2,ymm3
vpshufb xmm1,xmm1,oword [bx+si]
vpshufb xmm1,xmm1,xmm2
vphaddw xmm1,xmm1,oword [bx+si]
vphaddw xmm1,xmm1,xmm2
vphaddd xmm1,xmm1,oword [bx+si]
vphaddd xmm1,xmm1,xmm2
vphaddsw xmm1,xmm1,oword [bx+si]
vphaddsw xmm1,xmm1,xmm2
vpmaddubsw xmm1,xmm1,oword [bx+si]
vpmaddubsw xmm1,xmm1,xmm2
vphsubw xmm1,xmm1,oword [bx+si]
vphsubw xmm1,xmm1,xmm2
vphsubd xmm1,xmm1,oword [bx+si]
vphsubd xmm1,xmm1,xmm2
vphsubsw xmm1,xmm1,oword [bx+si]
vphsubsw xmm1,xmm1,xmm2
vpsignb xmm1,xmm1,oword [bx+si]
vpsignb xmm1,xmm1,xmm2
vpsignw xmm1,xmm1,oword [bx+si]
vpsignw xmm1,xmm1,xmm2
vpsignd xmm1,xmm1,oword [bx+si]
vpsignd xmm1,xmm1,xmm2
vpmulhrsw xmm1,xmm1,oword [bx+si]
vpmulhrsw xmm1,xmm1,xmm2
vpmuldq xmm1,xmm1,oword [bx+si]
vpmuldq xmm1,xmm1,xmm2
vpackusdw xmm1,xmm1,oword [bx+si]
vpackusdw xmm1,xmm1,xmm2
vpminsb xmm1,xmm1,oword [bx+si]
vpminsb xmm1,xmm1,xmm2
vpminsd xmm1,xmm1,oword [bx+si]
vpminsd xmm1,xmm1,xmm2
vpminuw xmm1,xmm1,oword [bx+si]
vpminuw xmm1,xmm1,xmm2
vpminud xmm1,xmm1,oword [bx+si]
vpminud xmm1,xmm1,xmm2
vpmaxsb xmm1,xmm1,oword [bx+si]
vpmaxsb xmm1,xmm1,xmm2
vpmaxsd xmm1,xmm1,oword [bx+si]
vpmaxsd xmm1,xmm1,xmm2
vpmaxuw xmm1,xmm1,oword [bx+si]
vpmaxuw xmm1,xmm1,xmm2
vpmaxud xmm1,xmm1,oword [bx+si]
vpmaxud xmm1,xmm1,xmm2
vpmulld xmm1,xmm1,oword [bx+si]
vpmulld xmm1,xmm1,xmm2
vaesenc xmm1,xmm1,oword [bx+si]
vaesenc xmm1,xmm1,xmm2
vaesenclast xmm1,xmm1,oword [bx+si]
vaesenclast xmm1,xmm1,xmm2
vaesdec xmm1,xmm1,oword [bx+si]
vaesdec xmm1,xmm1,xmm2
vaesdeclast xmm1,xmm1,oword [bx+si]
vaesdeclast xmm1,xmm1,xmm2
vtestps xmm1,oword [bx+si]
vtestps xmm1,xmm2
vtestpd xmm1,oword [bx+si]
vtestpd xmm1,xmm2
vptest xmm1,oword [bx+si]
vptest xmm1,xmm2
vbroadcastss xmm1,dword [bx+si]
vpabsb xmm1,oword [bx+si]
vpabsb xmm1,xmm2
vpabsw xmm1,oword [bx+si]
vpabsw xmm1,xmm2
vpabsd xmm1,oword [bx+si]
vpabsd xmm1,xmm2
vpmovsxbw xmm1,qword [bx+si]
vpmovsxbw xmm1,xmm2
vpmovsxbd xmm1,dword [bx+si]
vpmovsxbd xmm1,xmm2
vpmovsxbq xmm1,word [bx+si]
vpmovsxbq xmm1,xmm2
vpmovsxwd xmm1,qword [bx+si]
vpmovsxwd xmm1,xmm2
vpmovsxwq xmm1,dword [bx+si]
vpmovsxwq xmm1,xmm2
vpmovsxdq xmm1,qword [bx+si]
vpmovsxdq xmm1,xmm2
vmovntdqa xmm1,oword [bx+si]
vpmovzxbw xmm1,qword [bx+si]
vpmovzxbw xmm1,xmm2
vpmovzxbd xmm1,dword [bx+si]
vpmovzxbd xmm1,xmm2
vpmovzxbq xmm1,word [bx+si]
vpmovzxbq xmm1,xmm2
vpmovzxwd xmm1,qword [bx+si]
vpmovzxwd xmm1,xmm2
vpmovzxwq xmm1,dword [bx+si]
vpmovzxwq xmm1,xmm2
vpmovzxdq xmm1,qword [bx+si]
vpmovzxdq xmm1,xmm2
vphminposuw xmm1,oword [bx+si]
vphminposuw xmm1,xmm2
vaesimc xmm0,xmm0
vaesenc xmm0,xmm0,xmm0
vaesenclast xmm0,xmm0,xmm0
vaesdec xmm0,xmm0,xmm0
vaesdeclast xmm0,xmm0,xmm0
vtestps ymm1,yword [bx+si]
vtestps ymm0,ymm0
vtestps ymm1,ymm2
vtestpd ymm1,yword [bx+si]
vtestpd ymm0,ymm0
vtestpd ymm1,ymm2
vptest ymm1,yword [bx+si]
vptest ymm1,ymm2
vbroadcastss ymm0,dword [bx+si]
vbroadcastss ymm1,dword [bx+si]
vbroadcastsd ymm1,qword [bx+si]
vbroadcastf128 ymm1,oword [bx+si]
vfmaddsub132pd xmm1,xmm2,oword [bx+si]
vfmaddsub132pd xmm1,xmm2,xmm3
vfmsubadd132pd xmm1,xmm2,oword [bx+si]
vfmsubadd132pd xmm1,xmm2,xmm3
vfmadd132pd xmm1,xmm2,xmm3
vfmadd132sd xmm1,xmm2,qword [di+0x0]
vfmadd132sd xmm1,xmm2,xmm3
vfmsub132pd xmm1,xmm2,xmm3
vfmsub132sd xmm1,xmm2,qword [bx+si+0x8]
vfmsub132sd xmm1,xmm2,xmm3
vfnmadd132pd xmm1,xmm2,oword [bx+si]
vfnmadd132pd xmm1,xmm2,xmm3
vfnmadd132sd xmm1,xmm2,qword [bx+si]
vfnmadd132sd xmm1,xmm2,xmm3
vfnmsub132pd xmm1,xmm2,oword [bx+si]
vfnmsub132pd xmm1,xmm2,xmm3
vfnmsub132sd xmm1,xmm2,qword [bx+si]
vfnmsub132sd xmm1,xmm2,xmm3
vfmaddsub213pd xmm1,xmm2,oword [bx+si]
vfmaddsub213pd xmm1,xmm2,xmm3
vfmsubadd213pd xmm1,xmm2,oword [bx+si]
vfmsubadd213pd xmm1,xmm2,xmm3
vfmadd213pd xmm1,xmm2,xmm3
vfmadd213sd xmm1,xmm2,xmm3
vfmsub213pd xmm1,xmm2,xmm3
vfmsub213sd xmm1,xmm2,qword [bp+si+0x8]
vfmsub213sd xmm1,xmm2,qword [bx+0x8]
vfmsub213sd xmm1,xmm2,xmm3
vfnmadd213pd xmm1,xmm2,oword [bx+si]
vfnmadd213pd xmm1,xmm2,xmm3
vfnmadd213sd xmm1,xmm2,qword [bx+si]
vfnmadd213sd xmm1,xmm2,xmm3
vfnmsub213pd xmm1,xmm2,oword [bx+si]
vfnmsub213pd xmm1,xmm2,xmm3
vfnmsub213sd xmm1,xmm2,qword [bx+si]
vfnmsub213sd xmm1,xmm2,xmm3
vfmaddsub231pd xmm1,xmm2,oword [bx+si]
vfmaddsub231pd xmm1,xmm2,xmm3
vfmsubadd231pd xmm1,xmm2,oword [bx+si]
vfmsubadd231pd xmm1,xmm2,xmm3
vfmadd231pd xmm1,xmm2,xmm3
vfmadd231sd xmm1,xmm2,qword [bx+si]
vfmadd231sd xmm1,xmm2,xmm3
vfmsub231pd xmm1,xmm2,xmm3
vfmsub231sd xmm1,xmm2,qword [bx+di+0x8]
vfmsub231sd xmm1,xmm2,qword [bp+di+0x8]
vfmsub231sd xmm1,xmm2,xmm3
vfnmadd231pd xmm1,xmm2,oword [bx+si]
vfnmadd231pd xmm1,xmm2,xmm3
vfnmadd231sd xmm1,xmm2,qword [bx+si]
vfnmadd231sd xmm1,xmm2,xmm3
vfnmsub231pd xmm1,xmm2,oword [bx+si]
vfnmsub231pd xmm1,xmm2,xmm3
vfnmsub231sd xmm1,xmm2,qword [bx+si]
vfnmsub231sd xmm1,xmm2,xmm3
vfmaddsub132pd ymm1,ymm2,yword [bx+si]
vfmaddsub132pd ymm1,ymm2,ymm3
vfmsubadd132pd ymm1,ymm2,yword [bx+si]
vfmsubadd132pd ymm1,ymm2,ymm3
vfmadd132pd ymm1,ymm2,ymm3
vfmsub132pd ymm1,ymm2,yword [bx+si]
vfmsub132pd ymm1,ymm2,ymm3
vfnmadd132pd ymm1,ymm2,yword [bx+si]
vfnmadd132pd ymm1,ymm2,ymm3
vfnmsub132pd ymm1,ymm2,yword [bx+si]
vfnmsub132pd ymm1,ymm2,ymm3
vfmaddsub213pd ymm1,ymm2,yword [bx+si]
vfmaddsub213pd ymm1,ymm2,ymm3
vfmsubadd213pd ymm1,ymm2,yword [bx+si]
vfmsubadd213pd ymm1,ymm2,ymm3
vfmadd213pd ymm1,ymm2,ymm3
vfmsub213pd ymm1,ymm2,yword [bx+si]
vfmsub213pd ymm1,ymm2,ymm3
vfnmadd213pd ymm1,ymm2,yword [bx+si]
vfnmadd213pd ymm1,ymm2,ymm3
vfnmsub213pd ymm1,ymm2,yword [bx+si]
vfnmsub213pd ymm1,ymm2,ymm3
vfmaddsub231pd ymm1,ymm2,yword [bx+si]
vfmaddsub231pd ymm1,ymm2,ymm3
vfmsubadd231pd ymm1,ymm2,yword [bx+si]
vfmsubadd231pd ymm1,ymm2,ymm3
vfmadd231pd ymm1,ymm2,ymm3
vfmsub231pd ymm1,ymm2,yword [bx+si]
vfmsub231pd ymm1,ymm2,ymm3
vfnmadd231pd ymm1,ymm2,yword [bx+si]
vfnmadd231pd ymm1,ymm2,ymm3
vfnmsub231pd ymm1,ymm2,yword [bx+si]
vfnmsub231pd ymm1,ymm2,ymm3
vfmadd132pd xmm0,xmm0,xmm0
vfmadd213pd xmm0,xmm0,xmm0
vfmadd231pd xmm0,xmm0,xmm0
vpinsrb xmm1,xmm2,byte [bx+si],byte 0x5
vpinsrb xmm1,xmm2,al,byte 0x5
vpinsrd xmm1,xmm2,dword [bx+si],byte 0x5
vpinsrd xmm1,xmm2,eax,byte 0x5
vblendvps xmm1,xmm2,oword [bx+si],xmm4
vblendvps xmm1,xmm2,xmm3,xmm4
vblendvpd xmm1,xmm2,oword [bx+si],xmm4
vblendvpd xmm1,xmm2,xmm3,xmm4
vpblendvb xmm1,xmm2,oword [bx+si],xmm4
vpblendvb xmm1,xmm2,xmm3,xmm4
vfmaddpd xmm1,xmm2,xmm3,xmm4
vblendvps ymm1,ymm2,yword [bx+si],ymm4
vblendvps ymm1,ymm2,ymm3,ymm4
vblendvpd ymm1,ymm2,yword [bx+si],ymm4
vblendvpd ymm1,ymm2,ymm3,ymm4
vpinsrb xmm1,xmm1,byte [bx+si],byte 0x5
vpinsrb xmm1,xmm1,al,byte 0x5
vpinsrd xmm1,xmm1,dword [bx+si],byte 0x5
vpinsrd xmm1,xmm1,eax,byte 0x5
vpclmullqlqdq xmm0,xmm1,oword [bp+di]
vpclmulhqlqdq xmm0,xmm1,oword [bp+di]
vpclmullqhqdq xmm0,xmm1,oword [bp+di]
vpclmulhqhqdq xmm0,xmm1,oword [bp+di]
vpclmullqlqdq xmm1,xmm1,oword [bp+di]
vpclmulhqlqdq xmm1,xmm1,oword [bp+di]
vpclmullqhqdq xmm1,xmm1,oword [bp+di]
vpclmulhqhqdq xmm1,xmm1,oword [bp+di]
vpclmullqlqdq xmm0,xmm1,xmm2
vpclmulhqlqdq xmm0,xmm1,xmm2
vpclmullqhqdq xmm0,xmm1,xmm2
vpclmulhqhqdq xmm0,xmm1,xmm2
vpclmullqlqdq xmm1,xmm1,xmm2
vpclmulhqlqdq xmm1,xmm1,xmm2
vpclmullqhqdq xmm1,xmm1,xmm2
vpclmulhqhqdq xmm1,xmm1,xmm2
vfmaddsubps xmm0,xmm1,oword [bx+si],xmm3
vfmaddsubps xmm0,xmm1,xmm2,xmm3
vfmaddsubpd xmm0,xmm1,oword [bx+si],xmm3
vfmaddsubpd xmm0,xmm1,xmm2,xmm3
vfmaddps xmm0,xmm1,oword [bx+si],xmm3
vfmaddps xmm0,xmm1,xmm2,xmm3
vfmaddpd xmm0,xmm1,oword [bx+si],xmm3
vfmaddpd xmm0,xmm1,xmm2,xmm3
vfmaddss xmm0,xmm1,dword [bx+si],xmm3
vfmaddss xmm0,xmm1,xmm2,xmm3
vfmaddsd xmm0,xmm1,qword [bx+si],xmm3
vfmaddsd xmm0,xmm1,xmm2,xmm3
vfmsubps xmm0,xmm1,oword [bx+si],xmm3
vfmsubps xmm0,xmm1,xmm2,xmm3
vfmsubpd xmm0,xmm1,oword [bx+si],xmm3
vfmsubpd xmm0,xmm1,xmm2,xmm3
vfmsubss xmm0,xmm1,dword [bx+si],xmm3
vfmsubss xmm0,xmm1,xmm2,xmm3
vfmsubsd xmm0,xmm1,qword [bx+si],xmm3
vfmsubsd xmm0,xmm1,xmm2,xmm3
vfnmaddps xmm0,xmm1,oword [bx+si],xmm3
vfnmaddps xmm0,xmm1,xmm2,xmm3
vfnmaddpd xmm0,xmm1,oword [bx+si],xmm3
vfnmaddpd xmm0,xmm1,xmm2,xmm3
vfnmaddss xmm0,xmm1,dword [bx+si],xmm3
vfnmaddss xmm0,xmm1,xmm2,xmm3
vfnmaddsd xmm0,xmm1,qword [bx+si],xmm3
vfnmaddsd xmm0,xmm1,xmm2,xmm3
vfnmsubps xmm0,xmm1,oword [bx+si],xmm3
vfnmsubps xmm0,xmm1,xmm2,xmm3
vfnmsubpd xmm0,xmm1,oword [bx+si],xmm3
vfnmsubpd xmm0,xmm1,xmm2,xmm3
vfnmsubss xmm0,xmm1,dword [bx+si],xmm3
vfnmsubss xmm0,xmm1,xmm2,xmm3
vfnmsubsd xmm0,xmm1,qword [bx+si],xmm3
vfnmsubsd xmm0,xmm1,xmm2,xmm3
vfmaddsubps ymm0,ymm1,yword [bx+si],ymm3
vfmaddsubps ymm0,ymm1,ymm2,ymm3
vfmaddsubpd ymm0,ymm1,yword [bx+si],ymm3
vfmaddsubpd ymm0,ymm1,ymm2,ymm3
vfmaddps ymm0,ymm1,yword [bx+si],ymm3
vfmaddps ymm0,ymm1,ymm2,ymm3
vfmaddpd ymm0,ymm1,yword [bx+si],ymm3
vfmaddpd ymm0,ymm1,ymm2,ymm3
vfmsubps ymm0,ymm1,yword [bx+si],ymm3
vfmsubps ymm0,ymm1,ymm2,ymm3
vfmsubpd ymm0,ymm1,yword [bx+si],ymm3
vfmsubpd ymm0,ymm1,ymm2,ymm3
vfnmaddps ymm0,ymm1,yword [bx+si],ymm3
vfnmaddps ymm0,ymm1,ymm2,ymm3
vfnmaddpd ymm0,ymm1,yword [bx+si],ymm3
vfnmaddpd ymm0,ymm1,ymm2,ymm3
vfnmsubps ymm0,ymm1,yword [bx+si],ymm3
vfnmsubps ymm0,ymm1,ymm2,ymm3
vfnmsubpd ymm0,ymm1,yword [bx+si],ymm3
vfnmsubpd ymm0,ymm1,ymm2,ymm3
vpextrb byte [bx+si],xmm2,byte 0x5
vfmaddsubps xmm0,xmm1,xmm2,oword [bx+si]
vfmaddsubpd xmm0,xmm1,xmm2,oword [bx+si]
vfmaddps xmm0,xmm1,xmm2,oword [bx+si]
vfmaddpd xmm0,xmm1,xmm2,oword [bx+si]
vfmaddss xmm0,xmm1,xmm2,dword [bx+si]
vfmaddsd xmm0,xmm1,xmm2,qword [bx+si]
vfmsubps xmm0,xmm1,xmm2,oword [bx+si]
vfmsubpd xmm0,xmm1,xmm2,oword [bx+si]
vfmsubss xmm0,xmm1,xmm2,dword [bx+si]
vfmsubsd xmm0,xmm1,xmm2,qword [bx+si]
vfnmaddps xmm0,xmm1,xmm2,oword [bx+si]
vfnmaddpd xmm0,xmm1,xmm2,oword [bx+si]
vfnmaddss xmm0,xmm1,xmm2,dword [bx+si]
vfnmaddsd xmm0,xmm1,xmm2,qword [bx+si]
vfnmsubps xmm0,xmm1,xmm2,oword [bx+si]
vfnmsubpd xmm0,xmm1,xmm2,oword [bx+si]
vfnmsubss xmm0,xmm1,xmm2,dword [bx+si]
vfnmsubsd xmm0,xmm1,xmm2,qword [bx+si]
vfmaddsubps ymm0,ymm1,ymm2,yword [bx+si]
vfmaddsubpd ymm0,ymm1,ymm2,yword [bx+si]
vfmaddps ymm0,ymm1,ymm2,yword [bx+si]
vfmaddpd ymm0,ymm1,ymm2,yword [bx+si]
vfmsubps ymm0,ymm1,ymm2,yword [bx+si]
vfmsubpd ymm0,ymm1,ymm2,yword [bx+si]
vfnmaddps ymm0,ymm1,ymm2,yword [bx+si]
vfnmaddpd ymm0,ymm1,ymm2,yword [bx+si]
vfnmsubps ymm0,ymm1,ymm2,yword [bx+si]
vfnmsubpd ymm0,ymm1,ymm2,yword [bx+si]
lds ax,[bx+si]
lds ax,[0x1]
lds si,[0x0]
vaddpd xmm5,xmm6,xmm7
vaddpd ymm5,ymm6,ymm7
vaddpd xmm5,xmm5,xmm6
vmovlps xmm1,xmm2,qword [bx+si]
vmovhlps xmm1,xmm2,xmm3
vunpcklps xmm1,xmm2,oword [bx+si]
vunpcklps xmm1,xmm2,xmm3
vunpckhps xmm1,xmm2,oword [bx+si]
vunpckhps xmm1,xmm2,xmm3
vmovhps xmm1,xmm2,qword [bx+si]
vandps xmm1,xmm2,oword [bx+si]
vandps xmm1,xmm2,xmm3
vandnps xmm1,xmm2,oword [bx+si]
vandnps xmm1,xmm2,xmm3
vorps xmm1,xmm2,oword [bx+si]
vorps xmm1,xmm2,xmm3
vxorps xmm1,xmm2,oword [bx+si]
vxorps xmm1,xmm2,xmm3
vaddps xmm1,xmm2,oword [bx+si]
vaddps xmm1,xmm2,xmm3
vmulps xmm1,xmm2,oword [bx+si]
vmulps xmm1,xmm2,xmm3
vsubps xmm1,xmm2,oword [bx+si]
vsubps xmm1,xmm2,xmm3
vminps xmm1,xmm2,oword [bx+si]
vminps xmm1,xmm2,xmm3
vdivps xmm1,xmm2,oword [bx+si]
vdivps xmm1,xmm2,xmm3
vmaxps xmm1,xmm2,oword [bx+si]
vmaxps xmm1,xmm2,xmm3
vmovlpd xmm1,xmm2,qword [bx+si]
vunpcklpd xmm1,xmm2,oword [bx+si]
vunpcklpd xmm1,xmm2,xmm3
vunpckhpd xmm1,xmm2,oword [bx+si]
vunpckhpd xmm1,xmm2,xmm3
vmovhpd xmm1,xmm2,qword [bx+si]
vandpd xmm1,xmm2,oword [bx+si]
vandpd xmm1,xmm2,xmm3
vandnpd xmm1,xmm2,oword [bx+si]
vandnpd xmm1,xmm2,xmm3
vorpd xmm1,xmm2,oword [bx+si]
vorpd xmm1,xmm2,xmm3
vxorpd xmm1,xmm2,oword [bx+si]
vxorpd xmm1,xmm2,xmm3
vaddpd xmm1,xmm2,oword [bx+si]
vaddpd xmm1,xmm2,xmm3
vmulpd xmm1,xmm2,oword [bx+si]
vmulpd xmm1,xmm2,xmm3
vsubpd xmm1,xmm2,oword [bx+si]
vsubpd xmm1,xmm2,xmm3
vminpd xmm1,xmm2,oword [bx+si]
vminpd xmm1,xmm2,xmm3
vdivpd xmm1,xmm2,oword [bx+si]
vdivpd xmm1,xmm2,xmm3
vmaxpd xmm1,xmm2,oword [bx+si]
vmaxpd xmm1,xmm2,xmm3
vpunpcklbw xmm1,xmm2,oword [bx+si]
vpunpcklbw xmm1,xmm2,xmm3
vpunpcklwd xmm1,xmm2,oword [bx+si]
vpunpcklwd xmm1,xmm2,xmm3
vpunpckldq xmm1,xmm2,oword [bx+si]
vpunpckldq xmm1,xmm2,xmm3
vpacksswb xmm1,xmm2,oword [bx+si]
vpacksswb xmm1,xmm2,xmm3
vpcmpgtb xmm1,xmm2,oword [bx+si]
vpcmpgtb xmm1,xmm2,xmm3
vpcmpgtw xmm1,xmm2,oword [bx+si]
vpcmpgtw xmm1,xmm2,xmm3
vpcmpgtd xmm1,xmm2,oword [bx+si]
vpcmpgtd xmm1,xmm2,xmm3
vpackuswb xmm1,xmm2,oword [bx+si]
vpackuswb xmm1,xmm2,xmm3
vpunpckhbw xmm1,xmm2,oword [bx+si]
vpunpckhbw xmm1,xmm2,xmm3
vpunpckhwd xmm1,xmm2,oword [bx+si]
vpunpckhwd xmm1,xmm2,xmm3
vpunpckhdq xmm1,xmm2,oword [bx+si]
vpunpckhdq xmm1,xmm2,xmm3
vpackssdw xmm1,xmm2,oword [bx+si]
vpackssdw xmm1,xmm2,xmm3
vpunpcklqdq xmm1,xmm2,oword [bx+si]
vpunpcklqdq xmm1,xmm2,xmm3
vpunpckhqdq xmm1,xmm2,oword [bx+si]
vpunpckhqdq xmm1,xmm2,xmm3
vpcmpeqb xmm1,xmm2,oword [bx+si]
vpcmpeqb xmm1,xmm2,xmm3
vpcmpeqw xmm1,xmm2,oword [bx+si]
vpcmpeqw xmm1,xmm2,xmm3
vpcmpeqd xmm1,xmm2,oword [bx+si]
vpcmpeqd xmm1,xmm2,xmm3
vhaddpd xmm1,xmm2,oword [bx+si]
vhaddpd xmm1,xmm2,xmm3
vhsubpd xmm1,xmm2,oword [bx+si]
vhsubpd xmm1,xmm2,xmm3
vpinsrw xmm1,xmm2,word [bx+si],byte 0x5
vpinsrw xmm1,xmm2,ax,byte 0x5
vaddsubpd xmm1,xmm2,oword [bx+si]
vaddsubpd xmm1,xmm2,xmm3
vpsrlw xmm1,xmm2,oword [bx+si]
vpsrlw xmm1,xmm2,xmm3
vpsrld xmm1,xmm2,oword [bx+si]
vpsrld xmm1,xmm2,xmm3
vpsrlq xmm1,xmm2,oword [bx+si]
vpsrlq xmm1,xmm2,xmm3
vpaddq xmm1,xmm2,oword [bx+si]
vpaddq xmm1,xmm2,xmm3
vpmullw xmm1,xmm2,oword [bx+si]
vpmullw xmm1,xmm2,xmm3
vpsubusb xmm1,xmm2,oword [bx+si]
vpsubusb xmm1,xmm2,xmm3
vpsubusw xmm1,xmm2,oword [bx+si]
vpsubusw xmm1,xmm2,xmm3
vpminub xmm1,xmm2,oword [bx+si]
vpminub xmm1,xmm2,xmm3
vpand xmm1,xmm2,oword [bx+si]
vpand xmm1,xmm2,xmm3
vpaddusb xmm1,xmm2,oword [bx+si]
vpaddusb xmm1,xmm2,xmm3
vpaddusw xmm1,xmm2,oword [bx+si]
vpaddusw xmm1,xmm2,xmm3
vpmaxub xmm1,xmm2,oword [bx+si]
vpmaxub xmm1,xmm2,xmm3
vpandn xmm1,xmm2,oword [bx+si]
vpandn xmm1,xmm2,xmm3
vpavgb xmm1,xmm2,oword [bx+si]
vpavgb xmm1,xmm2,xmm3
vpsraw xmm1,xmm2,oword [bx+si]
vpsraw xmm1,xmm2,xmm3
vpsrad xmm1,xmm2,oword [bx+si]
vpsrad xmm1,xmm2,xmm3
vpavgw xmm1,xmm2,oword [bx+si]
vpavgw xmm1,xmm2,xmm3
vpmulhuw xmm1,xmm2,oword [bx+si]
vpmulhuw xmm1,xmm2,xmm3
vpmulhw xmm1,xmm2,oword [bx+si]
vpmulhw xmm1,xmm2,xmm3
vpsubsb xmm1,xmm2,oword [bx+si]
vpsubsb xmm1,xmm2,xmm3
vpsubsw xmm1,xmm2,oword [bx+si]
vpsubsw xmm1,xmm2,xmm3
vpminsw xmm1,xmm2,oword [bx+si]
vpminsw xmm1,xmm2,xmm3
vpor xmm1,xmm2,oword [bx+si]
vpor xmm1,xmm2,xmm3
vpaddsb xmm1,xmm2,oword [bx+si]
vpaddsb xmm1,xmm2,xmm3
vpaddsw xmm1,xmm2,oword [bx+si]
vpaddsw xmm1,xmm2,xmm3
vpmaxsw xmm1,xmm2,oword [bx+si]
vpmaxsw xmm1,xmm2,xmm3
vpxor xmm1,xmm2,oword [bx+si]
vpxor xmm1,xmm2,xmm3
vpsllw xmm1,xmm2,oword [bx+si]
vpsllw xmm1,xmm2,xmm3
vpslld xmm1,xmm2,oword [bx+si]
vpslld xmm1,xmm2,xmm3
vpsllq xmm1,xmm2,oword [bx+si]
vpsllq xmm1,xmm2,xmm3
vpmuludq xmm1,xmm2,oword [bx+si]
vpmuludq xmm1,xmm2,xmm3
vpmaddwd xmm1,xmm2,oword [bx+si]
vpmaddwd xmm1,xmm2,xmm3
vpsadbw xmm1,xmm2,oword [bx+si]
vpsadbw xmm1,xmm2,xmm3
vpsubb xmm1,xmm2,oword [bx+si]
vpsubb xmm1,xmm2,xmm3
vpsubw xmm1,xmm2,oword [bx+si]
vpsubw xmm1,xmm2,xmm3
vpsubd xmm1,xmm2,oword [bx+si]
vpsubd xmm1,xmm2,xmm3
vpsubq xmm1,xmm2,oword [bx+si]
vpsubq xmm1,xmm2,xmm3
vpaddb xmm1,xmm2,oword [bx+si]
vpaddb xmm1,xmm2,xmm3
vpaddw xmm1,xmm2,oword [bx+si]
vpaddw xmm1,xmm2,xmm3
vpaddd xmm1,xmm2,oword [bx+si]
vpaddd xmm1,xmm2,xmm3
vmovss xmm1,xmm2,xmm3
vcvtsi2ss xmm1,xmm2,dword [bx+si]
vcvtsi2ss xmm1,xmm2,eax
vsqrtss xmm1,xmm2,dword [bx+si]
vsqrtss xmm1,xmm2,xmm3
vrsqrtss xmm1,xmm2,dword [bx+si]
vrsqrtss xmm1,xmm2,xmm3
vrcpss xmm1,xmm2,dword [bx+si]
vrcpss xmm1,xmm2,xmm3
vaddss xmm1,xmm2,dword [bx+si]
vaddss xmm1,xmm2,xmm3
vmulss xmm1,xmm2,dword [bx+si]
vmulss xmm1,xmm2,xmm3
vcvtss2sd xmm1,xmm2,dword [bx+si]
vcvtss2sd xmm1,xmm2,xmm3
vsubss xmm1,xmm2,dword [bx+si]
vsubss xmm1,xmm2,xmm3
vminss xmm1,xmm2,dword [bx+si]
vminss xmm1,xmm2,xmm3
vdivss xmm1,xmm2,dword [bx+si]
vdivss xmm1,xmm2,xmm3
vmaxss xmm1,xmm2,dword [bx+si]
vmaxss xmm1,xmm2,xmm3
vmovsd xmm1,xmm2,xmm3
vcvtsi2sd xmm1,xmm2,dword [bx+si]
vcvtsi2sd xmm1,xmm2,eax
vsqrtsd xmm1,xmm2,qword [bx+si]
vsqrtsd xmm1,xmm2,xmm3
vaddsd xmm1,xmm2,qword [bx+si]
vaddsd xmm1,xmm2,xmm3
vmulsd xmm1,xmm2,qword [bx+si]
vmulsd xmm1,xmm2,xmm3
vcvtsd2ss xmm1,xmm2,qword [bx+si]
vcvtsd2ss xmm1,xmm2,xmm3
vsubsd xmm1,xmm2,qword [bx+si]
vsubsd xmm1,xmm2,xmm3
vminsd xmm1,xmm2,qword [bx+si]
vminsd xmm1,xmm2,xmm3
vdivsd xmm1,xmm2,qword [bx+si]
vdivsd xmm1,xmm2,xmm3
vmaxsd xmm1,xmm2,qword [bx+si]
vmaxsd xmm1,xmm2,xmm3
vhaddps xmm1,xmm2,oword [bx+si]
vhaddps xmm1,xmm2,xmm3
vhsubps xmm1,xmm2,oword [bx+si]
vhsubps xmm1,xmm2,xmm3
vaddsubps xmm1,xmm2,oword [bx+si]
vaddsubps xmm1,xmm2,xmm3
vunpcklps ymm1,ymm2,yword [bx+si]
vunpcklps ymm1,ymm2,ymm3
vunpckhps ymm1,ymm2,yword [bx+si]
vunpckhps ymm1,ymm2,ymm3
vandps ymm1,ymm2,yword [bx+si]
vandps ymm1,ymm2,ymm3
vandnps ymm1,ymm2,yword [bx+si]
vandnps ymm1,ymm2,ymm3
vorps ymm1,ymm2,yword [bx+si]
vorps ymm1,ymm2,ymm3
vxorps ymm1,ymm2,yword [bx+si]
vxorps ymm1,ymm2,ymm3
vaddps ymm1,ymm2,yword [bx+si]
vaddps ymm1,ymm2,ymm3
vmulps ymm1,ymm2,yword [bx+si]
vmulps ymm1,ymm2,ymm3
vsubps ymm1,ymm2,yword [bx+si]
vsubps ymm1,ymm2,ymm3
vminps ymm1,ymm2,yword [bx+si]
vminps ymm1,ymm2,ymm3
vdivps ymm1,ymm2,yword [bx+si]
vdivps ymm1,ymm2,ymm3
vmaxps ymm1,ymm2,yword [bx+si]
vmaxps ymm1,ymm2,ymm3
vunpcklpd ymm1,ymm2,yword [bx+si]
vunpcklpd ymm1,ymm2,ymm3
vunpckhpd ymm1,ymm2,yword [bx+si]
vunpckhpd ymm1,ymm2,ymm3
vandpd ymm1,ymm2,yword [bx+si]
vandpd ymm1,ymm2,ymm3
vandnpd ymm1,ymm2,yword [bx+si]
vandnpd ymm1,ymm2,ymm3
vorpd ymm1,ymm2,yword [bx+si]
vorpd ymm1,ymm2,ymm3
vxorpd ymm1,ymm2,yword [bx+si]
vxorpd ymm1,ymm2,ymm3
vaddpd ymm1,ymm2,yword [bx+si]
vaddpd ymm1,ymm2,ymm3
vmulpd ymm1,ymm2,yword [bx+si]
vmulpd ymm1,ymm2,ymm3
vsubpd ymm1,ymm2,yword [bx+si]
vsubpd ymm1,ymm2,ymm3
vminpd ymm1,ymm2,yword [bx+si]
vminpd ymm1,ymm2,ymm3
vdivpd ymm1,ymm2,yword [bx+si]
vdivpd ymm1,ymm2,ymm3
vmaxpd ymm1,ymm2,yword [bx+si]
vmaxpd ymm1,ymm2,ymm3
vhaddpd ymm1,ymm2,yword [bx+si]
vhaddpd ymm1,ymm2,ymm3
vhsubpd ymm1,ymm2,yword [bx+si]
vhsubpd ymm1,ymm2,ymm3
vaddsubpd ymm1,ymm2,yword [bx+si]
vaddsubpd ymm1,ymm2,ymm3
vhaddps ymm1,ymm2,yword [bx+si]
vhaddps ymm1,ymm2,ymm3
vhsubps ymm1,ymm2,yword [bx+si]
vhsubps ymm1,ymm2,ymm3
vaddsubps ymm1,ymm2,yword [bx+si]
vaddsubps ymm1,ymm2,ymm3
vmovlps xmm1,xmm1,qword [bx+si]
vmovhlps xmm1,xmm1,xmm2
vunpcklps xmm1,xmm1,oword [bx+si]
vunpcklps xmm1,xmm1,xmm2
vunpckhps xmm1,xmm1,oword [bx+si]
vunpckhps xmm1,xmm1,xmm2
vmovhps xmm1,xmm1,qword [bx+si]
vandps xmm1,xmm1,oword [bx+si]
vandps xmm1,xmm1,xmm2
vandnps xmm1,xmm1,oword [bx+si]
vandnps xmm1,xmm1,xmm2
vorps xmm1,xmm1,oword [bx+si]
vorps xmm1,xmm1,xmm2
vxorps xmm1,xmm1,oword [bx+si]
vxorps xmm1,xmm1,xmm2
vaddps xmm1,xmm1,oword [bx+si]
vaddps xmm1,xmm1,xmm2
vmulps xmm1,xmm1,oword [bx+si]
vmulps xmm1,xmm1,xmm2
vsubps xmm1,xmm1,oword [bx+si]
vsubps xmm1,xmm1,xmm2
vminps xmm1,xmm1,oword [bx+si]
vminps xmm1,xmm1,xmm2
vdivps xmm1,xmm1,oword [bx+si]
vdivps xmm1,xmm1,xmm2
vmaxps xmm1,xmm1,oword [bx+si]
vmaxps xmm1,xmm1,xmm2
vmovlpd xmm1,xmm1,qword [bx+si]
vunpcklpd xmm1,xmm1,oword [bx+si]
vunpcklpd xmm1,xmm1,xmm2
vunpckhpd xmm1,xmm1,oword [bx+si]
vunpckhpd xmm1,xmm1,xmm2
vmovhpd xmm1,xmm1,qword [bx+si]
vandpd xmm1,xmm1,oword [bx+si]
vandpd xmm1,xmm1,xmm2
vandnpd xmm1,xmm1,oword [bx+si]
vandnpd xmm1,xmm1,xmm2
vorpd xmm1,xmm1,oword [bx+si]
vorpd xmm1,xmm1,xmm2
vxorpd xmm1,xmm1,oword [bx+si]
vxorpd xmm1,xmm1,xmm2
vaddpd xmm1,xmm1,oword [bx+si]
vaddpd xmm1,xmm1,xmm2
vmulpd xmm1,xmm1,oword [bx+si]
vmulpd xmm1,xmm1,xmm2
vsubpd xmm1,xmm1,oword [bx+si]
vsubpd xmm1,xmm1,xmm2
vminpd xmm1,xmm1,oword [bx+si]
vminpd xmm1,xmm1,xmm2
vdivpd xmm1,xmm1,oword [bx+si]
vdivpd xmm1,xmm1,xmm2
vmaxpd xmm1,xmm1,oword [bx+si]
vmaxpd xmm1,xmm1,xmm2
vpunpcklbw xmm1,xmm1,oword [bx+si]
vpunpcklbw xmm1,xmm1,xmm2
vpunpcklwd xmm1,xmm1,oword [bx+si]
vpunpcklwd xmm1,xmm1,xmm2
vpunpckldq xmm1,xmm1,oword [bx+si]
vpunpckldq xmm1,xmm1,xmm2
vpacksswb xmm1,xmm1,oword [bx+si]
vpacksswb xmm1,xmm1,xmm2
vpcmpgtb xmm1,xmm1,oword [bx+si]
vpcmpgtb xmm1,xmm1,xmm2
vpcmpgtw xmm1,xmm1,oword [bx+si]
vpcmpgtw xmm1,xmm1,xmm2
vpcmpgtd xmm1,xmm1,oword [bx+si]
vpcmpgtd xmm1,xmm1,xmm2
vpackuswb xmm1,xmm1,oword [bx+si]
vpackuswb xmm1,xmm1,xmm2
vpunpckhbw xmm1,xmm1,oword [bx+si]
vpunpckhbw xmm1,xmm1,xmm2
vpunpckhwd xmm1,xmm1,oword [bx+si]
vpunpckhwd xmm1,xmm1,xmm2
vpunpckhdq xmm1,xmm1,oword [bx+si]
vpunpckhdq xmm1,xmm1,xmm2
vpackssdw xmm1,xmm1,oword [bx+si]
vpackssdw xmm1,xmm1,xmm2
vpunpcklqdq xmm1,xmm1,oword [bx+si]
vpunpcklqdq xmm1,xmm1,xmm2
vpunpckhqdq xmm1,xmm1,oword [bx+si]
vpunpckhqdq xmm1,xmm1,xmm2
vpcmpeqb xmm1,xmm1,oword [bx+si]
vpcmpeqb xmm1,xmm1,xmm2
vpcmpeqw xmm1,xmm1,oword [bx+si]
vpcmpeqw xmm1,xmm1,xmm2
vpcmpeqd xmm1,xmm1,oword [bx+si]
vpcmpeqd xmm1,xmm1,xmm2
vhaddpd xmm1,xmm1,oword [bx+si]
vhaddpd xmm1,xmm1,xmm2
vhsubpd xmm1,xmm1,oword [bx+si]
vhsubpd xmm1,xmm1,xmm2
vpinsrw xmm1,xmm1,word [bx+si],byte 0x5
vpinsrw xmm1,xmm1,ax,byte 0x5
vaddsubpd xmm1,xmm1,oword [bx+si]
vaddsubpd xmm1,xmm1,xmm2
vpsrlw xmm1,xmm1,oword [bx+si]
vpsrlw xmm1,xmm1,xmm2
vpsrld xmm1,xmm1,oword [bx+si]
vpsrld xmm1,xmm1,xmm2
vpsrlq xmm1,xmm1,oword [bx+si]
vpsrlq xmm1,xmm1,xmm2
vpaddq xmm1,xmm1,oword [bx+si]
vpaddq xmm1,xmm1,xmm2
vpmullw xmm1,xmm1,oword [bx+si]
vpmullw xmm1,xmm1,xmm2
vpsubusb xmm1,xmm1,oword [bx+si]
vpsubusb xmm1,xmm1,xmm2
vpsubusw xmm1,xmm1,oword [bx+si]
vpsubusw xmm1,xmm1,xmm2
vpminub xmm1,xmm1,oword [bx+si]
vpminub xmm1,xmm1,xmm2
vpand xmm1,xmm1,oword [bx+si]
vpand xmm1,xmm1,xmm2
vpaddusb xmm1,xmm1,oword [bx+si]
vpaddusb xmm1,xmm1,xmm2
vpaddusw xmm1,xmm1,oword [bx+si]
vpaddusw xmm1,xmm1,xmm2
vpmaxub xmm1,xmm1,oword [bx+si]
vpmaxub xmm1,xmm1,xmm2
vpandn xmm1,xmm1,oword [bx+si]
vpandn xmm1,xmm1,xmm2
vpavgb xmm1,xmm1,oword [bx+si]
vpavgb xmm1,xmm1,xmm2
vpsraw xmm1,xmm1,oword [bx+si]
vpsraw xmm1,xmm1,xmm2
vpsrad xmm1,xmm1,oword [bx+si]
vpsrad xmm1,xmm1,xmm2
vpavgw xmm1,xmm1,oword [bx+si]
vpavgw xmm1,xmm1,xmm2
vpmulhuw xmm1,xmm1,oword [bx+si]
vpmulhuw xmm1,xmm1,xmm2
vpmulhw xmm1,xmm1,oword [bx+si]
vpmulhw xmm1,xmm1,xmm2
vpsubsb xmm1,xmm1,oword [bx+si]
vpsubsb xmm1,xmm1,xmm2
vpsubsw xmm1,xmm1,oword [bx+si]
vpsubsw xmm1,xmm1,xmm2
vpminsw xmm1,xmm1,oword [bx+si]
vpminsw xmm1,xmm1,xmm2
vpor xmm1,xmm1,oword [bx+si]
vpor xmm1,xmm1,xmm2
vpaddsb xmm1,xmm1,oword [bx+si]
vpaddsb xmm1,xmm1,xmm2
vpaddsw xmm1,xmm1,oword [bx+si]
vpaddsw xmm1,xmm1,xmm2
vpmaxsw xmm1,xmm1,oword [bx+si]
vpmaxsw xmm1,xmm1,xmm2
vpxor xmm1,xmm1,oword [bx+si]
vpxor xmm1,xmm1,xmm2
vpsllw xmm1,xmm1,oword [bx+si]
vpsllw xmm1,xmm1,xmm2
vpslld xmm1,xmm1,oword [bx+si]
vpslld xmm1,xmm1,xmm2
vpsllq xmm1,xmm1,oword [bx+si]
vpsllq xmm1,xmm1,xmm2
vpmuludq xmm1,xmm1,oword [bx+si]
vpmuludq xmm1,xmm1,xmm2
vpmaddwd xmm1,xmm1,oword [bx+si]
vpmaddwd xmm1,xmm1,xmm2
vpsadbw xmm1,xmm1,oword [bx+si]
vpsadbw xmm1,xmm1,xmm2
vpsubb xmm1,xmm1,oword [bx+si]
vpsubb xmm1,xmm1,xmm2
vpsubw xmm1,xmm1,oword [bx+si]
vpsubw xmm1,xmm1,xmm2
vpsubd xmm1,xmm1,oword [bx+si]
vpsubd xmm1,xmm1,xmm2
vpsubq xmm1,xmm1,oword [bx+si]
vpsubq xmm1,xmm1,xmm2
vpaddb xmm1,xmm1,oword [bx+si]
vpaddb xmm1,xmm1,xmm2
vpaddw xmm1,xmm1,oword [bx+si]
vpaddw xmm1,xmm1,xmm2
vpaddd xmm1,xmm1,oword [bx+si]
vpaddd xmm1,xmm1,xmm2
vmovss xmm1,xmm1,xmm2
vcvtsi2ss xmm1,xmm1,dword [bx+si]
vcvtsi2ss xmm1,xmm1,eax
vsqrtss xmm1,xmm1,dword [bx+si]
vsqrtss xmm1,xmm1,xmm2
vrsqrtss xmm1,xmm1,dword [bx+si]
vrsqrtss xmm1,xmm1,xmm2
vrcpss xmm1,xmm1,dword [bx+si]
vrcpss xmm1,xmm1,xmm2
vaddss xmm1,xmm1,dword [bx+si]
vaddss xmm1,xmm1,xmm2
vmulss xmm1,xmm1,dword [bx+si]
vmulss xmm1,xmm1,xmm2
vcvtss2sd xmm1,xmm1,dword [bx+si]
vcvtss2sd xmm1,xmm1,xmm2
vsubss xmm1,xmm1,dword [bx+si]
vsubss xmm1,xmm1,xmm2
vminss xmm1,xmm1,dword [bx+si]
vminss xmm1,xmm1,xmm2
vdivss xmm1,xmm1,dword [bx+si]
vdivss xmm1,xmm1,xmm2
vmaxss xmm1,xmm1,dword [bx+si]
vmaxss xmm1,xmm1,xmm2
vcmpeq_osss xmm1,xmm1,xmm2
vmovsd xmm1,xmm1,xmm2
vcvtsi2sd xmm1,xmm1,dword [bx+si]
vcvtsi2sd xmm1,xmm1,eax
vsqrtsd xmm1,xmm1,qword [bx+si]
vsqrtsd xmm1,xmm1,xmm2
vaddsd xmm1,xmm1,qword [bx+si]
vaddsd xmm1,xmm1,xmm2
vmulsd xmm1,xmm1,qword [bx+si]
vmulsd xmm1,xmm1,xmm2
vcvtsd2ss xmm1,xmm1,qword [bx+si]
vcvtsd2ss xmm1,xmm1,xmm2
vsubsd xmm1,xmm1,qword [bx+si]
vsubsd xmm1,xmm1,xmm2
vminsd xmm1,xmm1,qword [bx+si]
vminsd xmm1,xmm1,xmm2
vdivsd xmm1,xmm1,qword [bx+si]
vdivsd xmm1,xmm1,xmm2
vmaxsd xmm1,xmm1,qword [bx+si]
vmaxsd xmm1,xmm1,xmm2
vhaddps xmm1,xmm1,oword [bx+si]
vhaddps xmm1,xmm1,xmm2
vhsubps xmm1,xmm1,oword [bx+si]
vhsubps xmm1,xmm1,xmm2
vaddsubps xmm1,xmm1,oword [bx+si]
vaddsubps xmm1,xmm1,xmm2
vmovups xmm1,oword [bx+si]
vmovups xmm1,xmm2
vmovups oword [bx+si],xmm2
vmovlps qword [bx+si],xmm2
vmovhps qword [bx+si],xmm2
vmovaps xmm1,oword [bx+si]
vmovaps xmm1,xmm2
vmovaps oword [bx+si],xmm2
vmovntps oword [bx+si],xmm1
vucomiss xmm1,dword [bx+si]
vucomiss xmm1,xmm2
vcomiss xmm1,dword [bx+si]
vcomiss xmm1,xmm2
vmovmskps eax,xmm2
vsqrtps xmm1,oword [bx+si]
vsqrtps xmm1,xmm2
vrsqrtps xmm1,oword [bx+si]
vrsqrtps xmm1,xmm2
vrcpps xmm1,oword [bx+si]
vrcpps xmm1,xmm2
vcvtps2pd xmm1,qword [bx+si]
vcvtps2pd xmm1,xmm2
vcvtdq2ps xmm1,oword [bx+si]
vcvtdq2ps xmm1,xmm2
vzeroupper
vldmxcsr dword [bx+si]
vstmxcsr dword [bx+si]
vmovupd xmm1,oword [bx+si]
vmovupd xmm1,xmm2
vmovupd oword [bx+si],xmm2
vmovlpd qword [bx+si],xmm2
vmovhpd qword [bx+si],xmm2
vmovapd xmm1,oword [bx+si]
vmovapd xmm1,xmm2
vmovapd oword [bx+si],xmm2
vmovntpd oword [bx+si],xmm1
vucomisd xmm1,qword [bx+si]
vucomisd xmm1,xmm2
vcomisd xmm1,qword [bx+si]
vcomisd xmm1,xmm2
vmovmskpd eax,xmm2
vsqrtpd xmm1,oword [bx+si]
vsqrtpd xmm1,xmm2
vaddpd xmm0,xmm0,oword [bx+si]
vcvtpd2ps xmm1,oword [bx+si]
vcvtpd2ps xmm1,xmm2
vcvtps2dq xmm1,oword [bx+si]
vcvtps2dq xmm1,xmm2
vmovd xmm1,dword [bx+si]
vmovd xmm1,eax
vmovdqa xmm1,oword [bx+si]
vmovdqa xmm1,xmm2
vmovd dword [bx+si],xmm2
vmovd eax,xmm2
vmovdqa oword [bx+si],xmm2
vmovq qword [bx+si],xmm1
vmovq qword [bx+si],xmm2
vpmovmskb eax,xmm1
vcvttpd2dq xmm1,oword [bx+si]
vcvttpd2dq xmm1,xmm2
vmovntdq oword [bx+si],xmm1
vmaskmovdqu xmm1,xmm2
vmovss xmm1,qword [bx+si]
vmovsldup xmm1,oword [bx+si]
vmovsldup xmm1,xmm2
vmovshdup xmm1,oword [bx+si]
vmovshdup xmm1,xmm2
vcvttss2si eax,dword [bx+si]
vcvttss2si eax,xmm2
vcvtss2si eax,dword [bx+si]
vcvtss2si eax,xmm2
vcvttps2dq xmm1,oword [bx+si]
vcvttps2dq xmm1,xmm2
vmovdqu xmm1,oword [bx+si]
vmovdqu xmm1,xmm2
vmovq xmm1,qword [bx+si]
vmovq xmm1,xmm2
vmovdqu oword [bx+si],xmm2
vcvtdq2pd xmm1,qword [bx+si]
vcvtdq2pd xmm1,xmm2
vmovsd xmm1,qword [bx+si]
vmovddup xmm1,qword [bx+si]
vmovddup xmm1,xmm2
vcvttsd2si eax,qword [bx+si]
vcvttsd2si eax,xmm2
vcvtsd2si eax,qword [bx+si]
vcvtsd2si eax,xmm2
vcvtpd2dq xmm1,oword [bx+si]
vcvtpd2dq xmm1,xmm2
vlddqu xmm1,oword [bx+si]
vmovups ymm1,yword [bx+si]
vmovups ymm1,ymm2
vmovups yword [bx+si],ymm2
vmovaps ymm1,yword [bx+si]
vmovaps ymm1,ymm2
vmovaps yword [bx+si],ymm2
vmovntps oword [bx+si],ymm1
vmovmskps eax,ymm2
vsqrtps ymm1,yword [bx+si]
vsqrtps ymm1,ymm2
vrsqrtps ymm1,yword [bx+si]
vrsqrtps ymm1,ymm2
vrcpps ymm1,yword [bx+si]
vrcpps ymm1,ymm2
vcvtps2pd ymm1,oword [bx+si]
vcvtps2pd ymm1,xmm2
vcvtdq2ps ymm1,yword [bx+si]
vcvtdq2ps ymm1,ymm2
vzeroall
vmovupd ymm1,yword [bx+si]
vmovupd ymm1,ymm2
vmovupd yword [bx+si],ymm2
vmovapd ymm1,yword [bx+si]
vmovapd ymm1,ymm2
vmovapd yword [bx+si],ymm2
vmovntpd yword [bx+si],ymm1
vmovmskpd eax,ymm2
vsqrtpd ymm1,yword [bx+si]
vsqrtpd ymm1,ymm2
vaddpd ymm0,ymm0,ymm0
vcvtpd2ps xmm1,yword [bx+si]
vcvtpd2ps xmm1,ymm2
vcvtps2dq ymm1,yword [bx+si]
vcvtps2dq ymm1,ymm2
vmovqqa ymm1,yword [bx+si]
vmovqqa ymm1,ymm2
vmovqqa yword [bx+si],ymm2
vcvttpd2dq xmm1,yword [bx+si]
vcvttpd2dq xmm1,ymm2
vmovntqq yword [bx+si],ymm1
vmovsldup ymm1,yword [bx+si]
vmovsldup ymm1,ymm2
vmovshdup ymm1,yword [bx+si]
vmovshdup ymm1,ymm2
vcvttps2dq ymm1,yword [bx+si]
vcvttps2dq ymm1,ymm2
vmovqqu ymm1,yword [bx+si]
vmovqqu ymm1,ymm2
vmovqqu yword [bx+si],ymm2
vcvtdq2pd ymm1,oword [bx+si]
vcvtdq2pd ymm1,xmm2
vmovddup ymm1,yword [bx+si]
vmovddup ymm1,ymm2
vcvtpd2dq xmm1,yword [bx+si]
vcvtpd2dq xmm1,ymm2
vldqqu ymm1,yword [bx+si]
mov byte [bx+si],0x0
mov byte [0x0],0x1
mov word [0x1],0x2
enter 0xa,0x0
enter 0xa,0xc
enter 0x14,0x0
enter 0x17,0x8
enter 0x1a,0x3
enter 0x320,0x4
enter 0x28,0x2
enter 0x3141,0x59
enter 0x64,0x0
enter 0xc8,0x0
enter 0x3e8,0x1
leave
retf 0x10
retf 0x1234
retf
int3
int 0x1
int 0x3
int 0xa
into
iretw
shl bl,1
rcr dx,1
shr bx,1
rol byte [bx+si],cl
shl cl,cl
shr dh,cl
rol word [bx+si],cl
rol ax,cl
shr cx,cl
sar si,cl
aam
aam 0xff
aad 0x5
aad
aad 0xff
salc
xlatb
fadd dword [bx+si]
fadd dword [0xa]
fmul dword [bx+si]
fcom dword [bx+si]
fcom dword [0x0]
fcomp dword [bx+si]
fsub dword [bx+si]
fsubr dword [bx+si]
fdiv dword [bx+si]
fdivr dword [bx+si]
fadd st0
fadd st5
fmul st0
fcom st0
fcom st1
fcomp st0
fsub st0
fsub st1
fsubr st0
fsubr st1
fdiv st0
fdiv st1
fdivr st0
fdivr st1
fld dword [bx+si]
fld dword [0x0]
fst dword [bx+si]
fst dword [0x1]
fstp dword [bx+si]
fstp dword [0x0]
fldenv [bx+si]
fldcw [bx+si]
fldcw [0x0]
fnstenv [bx+si]
fnstcw [bx+si]
fnstcw [0x4]
fnstenv [bx+di+0x5]
fld st0
fld st2
fxch st0
fxch st1
fxch st2
fnop
fchs
fabs
ftst
fxam
fld1
fldl2t
fldl2e
fldpi
fldlg2
fldln2
fldz
f2xm1
fyl2x
fptan
fpatan
fxtract
fprem1
fdecstp
fincstp
fprem
fyl2xp1
fsqrt
fsincos
frndint
fscale
fsin
fcos
fiadd dword [bx+si]
fimul dword [bx+si]
ficom dword [bx+si]
ficomp dword [bx+si]
fisub dword [bx+si]
fisub dword [0x4]
fisubr dword [bx+si]
fidiv dword [bx+si]
fidivr dword [bx+si]
fcmovb st0
fcmove st0
fcmove st6
fcmovbe st0
fcmovu st0
fcmovu st5
fucompp
fild dword [bx+si]
fild dword [0x4]
fist dword [bx+si]
fistp dword [bx+si]
fld tword [bx+si]
fld tword [0x10]
fstp tword [bx+si]
fcmovnb st0
fcmovne st0
fcmovnbe st0
fcmovnu st0
fneni
fndisi
fnclex
fninit
fsetpm
fucomi st0
fucomi st2
fcomi st0
fadd qword [bx+si]
fadd qword [0x5]
fmul qword [bx+si]
fcom qword [bx+si]
fcom qword [0x8]
fcomp qword [bx+si]
fsub qword [bx+si]
fsubr qword [bx+si]
fdiv qword [bx+si]
fdivr qword [bx+si]
fadd to st6
fadd to st7
fld qword [bx+si]
fld qword [0x4]
fst qword [bx+si]
fst qword [0x8]
fstp qword [bx+si]
frstor [bx+si]
fnsave [bx+si]
fnstsw [bx+si]
fnstsw [0x0]
fnstsw [0x8]
ffree st0
ffree st1
fst st0
fst st1
fstp st0
fstp st4
fucom st0
fucom st2
fucom st7
fucomp st0
fucomp st3
fucomp st5
fiadd word [bx+si]
fiadd word [0xa]
fimul word [bx+si]
ficom word [bx+si]
ficomp word [bx+si]
fisub word [bx+si]
fisubr word [bx+si]
fidiv word [bx+si]
fidivr word [bx+si]
faddp st0
faddp st1
faddp st2
faddp st5
fmulp st0
fcompp
fsubrp st0
fsubrp st1
fsubp st0
fsubp st1
fdivrp st0
fdivrp st1
fdivp st0
fdivp st1
fild word [bx+si]
fild word [0x0]
fisttp word [bx+si]
fist word [bx+si]
fistp word [bx+si]
fbld tword [bx+si]
fbld tword [0xa]
fbld tword [0x64]
fild qword [bx+si]
fild qword [0x8]
fbstp tword [bx+si]
fistp qword [bx+si]
ffreep st0
fnstsw ax
fucomip st0
fcomip st0
loopne $+0xa
loope $+0xb
loop $+0x2
jcxz $+0xf
in al,0x37
in al,0xff
in ax,0x63
in ax,0x64
in ax,0xff
out 0x37,al
out 0xff,al
out 0x42,ax
out 0x4d,ax
out 0xff,ax
call word 0xfff3
jmp word 0xffe5
jmp word 0x1234:0x9abc
in al,dx
in ax,dx
out dx,al
out dx,ax
lock cmpxchg8b [bx+si]
lock mov [bx+si],ax
lock mov ax,ax
int1
movsd xmm0,[bx+si]
movsd xmm1,[bx+si]
movsd xmm1,[bp+di]
movsd xmm1,xmm2
movsd [bx+si],xmm0
movsd [bx+si],xmm2
movsd [bp+di],xmm2
movddup xmm0,[bx+si]
movddup xmm1,[bx+si]
movddup xmm1,[bp+di]
movddup xmm1,xmm2
movddup xmm7,xmm6
cvtsi2sd xmm0,dword [bx+si]
cvtsi2sd xmm1,dword [bx+si]
cvtsi2sd xmm1,dword [bp+di]
cvtsi2sd xmm0,eax
cvtsi2sd xmm1,eax
cvtsi2sd xmm1,ebx
cvtsi2sd xmm5,eax
movntsd [bx+si],xmm0
movntsd [bp+di],xmm2
cvttsd2si eax,[bx+si]
cvttsd2si eax,[bp+di]
cvttsd2si eax,xmm1
cvttsd2si eax,xmm2
cvttsd2si ecx,xmm0
cvtsd2si eax,[bx+si]
cvtsd2si ebx,[bp+di]
cvtsd2si eax,xmm2
cvtsd2si edx,xmm0
cvtsd2si ebx,xmm2
crc32 eax,byte [bx+si]
crc32 eax,bl
crc32 eax,bh
crc32 ecx,bl
crc32 eax,word [bx+si]
crc32 eax,cx
crc32 eax,dx
crc32 eax,bx
crc32 ecx,dx
crc32 ecx,bx
sqrtsd xmm0,[bx+si]
sqrtsd xmm1,[bx+si]
sqrtsd xmm1,[bp+di]
sqrtsd xmm1,xmm2
addsd xmm0,[bx+si]
addsd xmm1,[bx+si]
addsd xmm1,[bp+di]
addsd xmm1,xmm2
mulsd xmm0,[bx+si]
mulsd xmm1,[bx+si]
mulsd xmm1,[bp+di]
mulsd xmm1,xmm2
cvtsd2ss xmm0,[bx+si]
cvtsd2ss xmm1,[bx+si]
cvtsd2ss xmm1,[bp+di]
cvtsd2ss xmm1,xmm2
subsd xmm0,[bx+si]
subsd xmm1,[bx+si]
subsd xmm1,[bp+di]
subsd xmm1,xmm2
minsd xmm0,[bx+si]
minsd xmm1,[bx+si]
minsd xmm1,[bp+di]
minsd xmm1,xmm2
divsd xmm0,[bx+si]
divsd xmm1,[bx+si]
divsd xmm1,[bp+di]
divsd xmm1,xmm2
maxsd xmm0,[bx+si]
maxsd xmm1,[bx+si]
maxsd xmm1,[bp+di]
maxsd xmm1,xmm2
pshuflw xmm0,[bx+si],0x0
pshuflw xmm1,[bx+si],0x5
pshuflw xmm1,[bp+di],0x0
pshuflw xmm1,xmm2,0x0
pshuflw xmm1,xmm2,0x5
insertq xmm0,xmm1,0x5,0x4
insertq xmm1,xmm2,0x0,0x1
insertq xmm5,xmm6,0x0,0x7
insertq xmm1,xmm2
insertq xmm2,xmm3
haddps xmm0,[bx+si]
haddps xmm1,[bx+si]
haddps xmm1,[bp+di]
haddps xmm1,xmm2
haddps xmm6,xmm1
hsubps xmm0,[bx+si]
hsubps xmm1,[bx+si]
hsubps xmm1,[bp+di]
hsubps xmm1,xmm2
hsubps xmm4,xmm1
cmpeqsd xmm0,[bx+si]
cmpltsd xmm0,[bx+si]
cmplesd xmm0,[bx+si]
cmpunordsd xmm0,[bx+si]
cmpneqsd xmm0,[bx+si]
cmpnltsd xmm0,[bx+si]
cmpnlesd xmm0,[bx+si]
cmpordsd xmm0,[bx+si]
cmpnltsd xmm1,[bx+si]
cmpeqsd xmm1,[bp+di]
cmpeqsd xmm1,xmm2
cmpnltsd xmm1,xmm2
addsubps xmm0,[bx+si]
addsubps xmm1,[bx+si]
addsubps xmm1,[bp+di]
addsubps xmm3,[bp+si]
addsubps xmm1,xmm2
addsubps xmm1,xmm5
movdq2q mm0,xmm0
movdq2q mm1,xmm2
cvtpd2dq xmm0,[bx+si]
cvtpd2dq xmm1,[bx+si]
cvtpd2dq xmm1,[bp+di]
cvtpd2dq xmm0,xmm1
cvtpd2dq xmm1,xmm2
lddqu xmm0,[bx+si]
lddqu xmm1,[bx+si]
lddqu xmm1,[bp+di]
repne movsb
movss xmm0,[bx+si]
movss xmm1,[bx+si]
movss xmm1,[bp+di]
movss xmm1,xmm2
movss [bx+si],xmm0
movss [bx+si],xmm2
movss [bp+di],xmm2
movsldup xmm0,[bx+si]
movsldup xmm1,[bx+si]
movsldup xmm1,[bp+di]
movsldup xmm0,xmm7
movsldup xmm1,xmm2
movshdup xmm0,[bx+si]
movshdup xmm1,[bx+si]
movshdup xmm1,[bp+di]
movshdup xmm2,[0x0]
movshdup xmm2,[dword 0x0]
movshdup xmm1,xmm2
movshdup xmm3,xmm4
cvtsi2ss xmm0,dword [bx+si]
cvtsi2ss xmm1,dword [bx+si]
cvtsi2ss xmm1,dword [bp+di]
cvtsi2ss xmm0,edx
cvtsi2ss xmm1,eax
cvtsi2ss xmm1,ebx
movntss [bx+si],xmm0
movntss [bp+di],xmm2
cvttss2si eax,[bx+si]
cvttss2si eax,[bp+di]
cvttss2si eax,xmm1
cvttss2si eax,xmm2
cvttss2si esi,xmm3
cvtss2si eax,[bx+si]
cvtss2si ecx,[bp+di]
cvtss2si ebx,[bp+di]
cvtss2si eax,xmm2
cvtss2si ecx,xmm2
cvtss2si ebx,xmm2
cvtss2si ebx,xmm7
sqrtss xmm0,[bx+si]
sqrtss xmm1,[bx+si]
sqrtss xmm1,[bp+di]
sqrtss xmm1,xmm2
rsqrtss xmm0,[bx+si]
rsqrtss xmm1,[bx+si]
rsqrtss xmm1,[bp+di]
rsqrtss xmm1,xmm2
rcpss xmm0,[bx+si]
rcpss xmm1,[bx+si]
rcpss xmm1,[bp+di]
rcpss xmm1,xmm2
addss xmm0,[bx+si]
addss xmm1,[bx+si]
addss xmm1,[bp+di]
addss xmm1,xmm2
mulss xmm0,[bx+si]
mulss xmm1,[bx+si]
mulss xmm1,[bp+di]
mulss xmm1,xmm2
cvtss2sd xmm0,[bx+si]
cvtss2sd xmm1,[bx+si]
cvtss2sd xmm1,[bp+di]
cvtss2sd xmm1,xmm2
cvtss2sd xmm3,xmm4
cvttps2dq xmm0,[bx+si]
cvttps2dq xmm1,[bx+si]
cvttps2dq xmm1,[bp+di]
cvttps2dq xmm0,xmm1
cvttps2dq xmm1,xmm2
subss xmm0,[bx+si]
subss xmm1,[bx+si]
subss xmm1,[bp+di]
subss xmm1,xmm2
minss xmm0,[bx+si]
minss xmm1,[bx+si]
minss xmm1,[bp+di]
minss xmm1,xmm2
divss xmm0,[bx+si]
divss xmm1,[bx+si]
divss xmm1,[bp+di]
divss xmm1,xmm2
maxss xmm0,[bx+si]
maxss xmm1,[bx+si]
maxss xmm1,[bp+di]
maxss xmm1,xmm2
movdqu xmm0,[bx+si]
movdqu xmm0,[bp+si]
movdqu xmm1,[bx+si]
movdqu xmm1,[bp+di]
movdqu xmm1,xmm2
pshufhw xmm0,[bx+si],0x0
pshufhw xmm1,[bx+si],0x5
pshufhw xmm1,[bp+di],0x0
pshufhw xmm1,xmm2,0x0
pshufhw xmm1,xmm2,0x5
movq xmm0,[bx+si]
movq xmm1,[bx+si]
movq xmm1,[bp+di]
movq xmm1,xmm0
movq xmm1,xmm2
movdqu [bx+si],xmm0
movdqu [bp+si],xmm0
movdqu [bx+si],xmm2
movdqu [bp+di],xmm2
rep xstore
popcnt ax,word [bx+si]
popcnt ax,bx
popcnt cx,dx
popcnt bx,cx
lzcnt ax,word [bx+si]
lzcnt ax,bx
cmpeqss xmm0,[bx+si]
cmpltss xmm0,[bx+si]
cmpless xmm0,[bx+si]
cmpunordss xmm0,[bx+si]
cmpneqss xmm0,[bx+si]
cmpnltss xmm0,[bx+si]
cmpnless xmm0,[bx+si]
cmpordss xmm0,[bx+si]
cmpnltss xmm1,[bx+si]
cmpltss xmm1,[bx+di]
cmpeqss xmm1,[bp+di]
cmpneqss xmm1,[bp+di]
cmpnless xmm1,[bp+di]
cmpless xmm1,[bx]
cmpeqss xmm1,xmm2
cmpnltss xmm1,xmm2
vmxon [bx+si]
movq2dq xmm0,mm0
movq2dq xmm1,mm2
cvtdq2pd xmm0,[bx+si]
cvtdq2pd xmm1,[bx+si]
cvtdq2pd xmm1,[bp+di]
cvtdq2pd xmm1,xmm2
cvtdq2pd xmm5,xmm4
pause
rep movsb
rep montmul
rep xsha1
rep xsha256
rep xcryptecb
rep xcryptcbc
rep xcryptctr
rep xcryptcfb
rep xcryptofb
hlt
cmc
test byte [bx+si],0x0
not byte [bx+si]
neg byte [bx+si]
mul byte [bx+si]
imul byte [bx+si]
div byte [bx+si]
idiv byte [bx+si]
idiv byte [bp+di]
idiv byte [0x0]
idiv byte [bx]
mul bl
div ah
idiv al
not word [bx+si]
neg word [bx+si]
mul word [bx+si]
imul word [bx+si]
div word [bx+si]
idiv word [bx+si]
idiv word [di+0x0]
not ax
neg cx
mul cx
mul bx
idiv ax
clc
stc
cli
sti
cld
std
inc byte [bx+si]
dec byte [bx+si]
inc word [bx+si]
dec word [bx+si]
call word near [bx+si]
call word near [0x357]
call word far [bx+si]
call word far [0x357]
jmp word near [bx+si]
jmp word far [bx+si]
jmp word far [0x2]
jmp word far [0x357]
push word [bx+si]
inc bx
dec cx
