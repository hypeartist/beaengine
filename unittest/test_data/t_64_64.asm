BITS 64
vmrun
vmmcall
vmload
vmsave
stgi
clgi
skinit
swapgs
pcmpgtb mm0,[ebx+edi]
movbe dword [ebp+0x5],ebx
xchg rbx,rax
xchg eax,ebx
xchg r8d,r9d
prefetch [r8+r12*2]
movq mm2,[r11+r13*4+0x12345678]
cvtpi2ps xmm10,[0x0]
movntps [0x0],xmm10
cvtps2pd xmm10,[0x0]
cvtdq2ps xmm10,[0x8]
xchg r8b,al
mov bl,r8b
mov sil,r9b
movbe dword [r8+0x5],r10d
xorps xmm10,xmm10
mov r15d,r12d
add rax,0x1000
add rax,0x55667788
o64 loadall
movbe rax,qword [rax]
movbe qword [rax+0x5],rbx
o64 movd mm0,eax
o64 movd mm5,eax
o64 movd eax,mm0
bswap rax
mov rcx,[rel 0xc]
mov rdx,[rsp]
mov rcx,[rbp+0x0]
cdqe
mov [qword 0x1122334455667788],rax
mov rax,0x1000
mov rax,0x1122334455667788
mov qword [rax],0x1000
mov qword [rax],0x55667788
mov rax,0x1000
o64 retf 0x10
o64 retf
movbe rcx,qword [r12+0x5]
bswap r8
mov rax,[r12]
mov rbx,[r13+0x0]
xchg rax,r8
xchg rax,r9
movbe r9,qword [r14+0x5]
mov r13,r14
mov r8,[r9]
movbe qword [rsi+r9+0x5],r10
movbe qword [r12+r15+0x5],r10
mov [fs:0x1000],rax
mov rax,[rel fs:0x8]
idiv word [fs:edi+0x5]
lock and [fs:eax],esi
mov [fs:ebx+esi],ax
mov ax,[fs:edi+0x0]
mov gs,[fs:0x0]
idiv dword [fs:0x5]
pcmpgtb xmm0,[ebx+esi]
pcmpgtb xmm1,[ebx+esi]
pcmpgtb xmm1,[ebp+edi]
pcmpgtb xmm1,xmm2
cvtpd2pi mm4,xmm10
movbe word [r13+0x5],bx
movmskpd edx,xmm11
cvtps2dq xmm6,xmm11
pslldq xmm11,0x5
cvttpd2dq xmm4,xmm10
xchg ax,r8w
xchg ax,r9w
cvtpi2pd xmm11,[0x4]
cvtpi2pd xmm10,mm6
aesenc xmm10,oword [rdx+rcx*4]
aesenc xmm10,oword [rax+rdi*4]
aesenc xmm10,xmm6
movd xmm10,[0x0]
movd xmm8,eax
movdqa xmm10,xmm1
hsubpd xmm10,xmm3
cvttpd2dq xmm11,[0x8]
addpd xmm10,xmm12
addsubpd xmm10,xmm11
mov r10w,r11w
movq rax,xmm0
movq r9,xmm0
movq xmm9,rax
movq xmm8,r10
in eax,0x64
lzcnt ax,r10w
popcnt r10w,word [0x4]
popcnt r11w,word [rax]
popcnt r9w,bx
lzcnt r13w,word [r9]
a32 vmrun
a32 vmload
a32 vmsave
movbe eax,dword [r8d]
movbe dword [r11d+0x5],ebx
adc byte [r8d],0x12
movbe dword [r8d+0x5],r10d
movbe rax,qword [eax]
movbe qword [eax+edx+0x5],rbx
cmpxchg16b [eax]
mov rbx,[esi]
movbe rax,qword [r8d]
movbe rcx,qword [r14d+0x5]
movbe r9,qword [r12d+0x5]
pcmpgtb xmm1,[eax]
pcmpgtb xmm1,[ebx]
movbe ax,word [r8d]
movbe cx,word [r15d]
movbe word [r13d+0x5],bx
addpd xmm10,[eax+edi*4]
addpd xmm10,[esi+edi*4]
haddpd xmm11,[ecx+0x4]
pextrd dword [eax],xmm0,0x0
pinsrd xmm0,[eax],0x0
vaddpd xmm10,xmm12,oword [eax+edi*4]
vaddpd xmm10,xmm12,oword [esi+edi*4]
vaddpd xmm10,xmm10,oword [eax+edi*4]
vaddpd xmm10,xmm10,oword [esi+edi*4]
vpcmpgtb xmm1,xmm2,oword [eax]
vpcmpgtb xmm1,xmm1,oword [eax]
movsldup xmm10,[eax+ebx]
cmpeqss xmm8,[eax]
vpcmov xmm14,xmm15,oword [rax+r14*8+0x12345678],xmm4
vpcmov ymm14,ymm15,yword [r13+0x0],ymm4
vphaddbw xmm8,xmm9
vphaddubd xmm8,xmm9
vfrczps ymm8,ymm9
vpcmov xmm11,xmm12,oword [0x0],xmm13
vpcmov ymm11,ymm12,yword [0x0],ymm13
vpmacssww xmm8,xmm9,oword [rdx+rax*4+0x12],xmm10
vpmacsswd xmm8,xmm9,oword [rdx+rax*4+0x12],xmm10
vpmacssdql xmm8,xmm9,oword [rdx+rax*4+0x12],xmm10
vpmacssdd xmm8,xmm9,oword [rdx+rax*4+0x12],xmm10
vpmacssdqh xmm8,xmm9,oword [rdx+rax*4+0x12],xmm10
vpmacsww xmm8,xmm9,oword [rdx+rax*4+0x12],xmm10
vpmacswd xmm8,xmm9,oword [rdx+rax*4+0x12],xmm10
vpmacsdql xmm8,xmm9,oword [rdx+rax*4+0x12],xmm10
vpmacsdd xmm8,xmm9,oword [0x0],xmm10
vpmacsdqh xmm8,xmm9,oword [rsi+rdx*2+0x12345678],xmm10
vpmadcsswd xmm8,xmm9,oword [rdx+rax*4+0x12],xmm10
vpmadcswd xmm8,xmm9,oword [rdx+rax*4+0x12],xmm10
vpcmov xmm8,xmm9,xmm10,oword [rax]
vpcmov ymm8,ymm9,ymm10,yword [rax]
vfrczps xmm8,oword [0x0]
vfrczpd xmm8,oword [0x0]
vfrczpd xmm9,oword [0x0]
vfrczsd xmm11,qword [rdi+rsi*4+0x12345678]
vphaddbw xmm8,oword [0x0]
vphaddwd xmm10,oword [0x0]
vphaddwd xmm10,xmm2
vphaddubd xmm8,oword [0x0]
vphadduwd xmm9,oword [0x0]
vphadduwd xmm9,xmm2
vphsubbw xmm12,oword [0x0]
vphsubbw xmm12,xmm2
vphsubwd xmm13,oword [0x0]
vphsubwd xmm13,xmm2
vfrczps ymm10,yword [0x0]
mov al,[qword 0xfedcba9876543210]
vaddpd xmm10,xmm12,xmm11
vaddpd xmm10,xmm10,xmm12
vpblendvb xmm8,xmm9,oword [0x0],xmm10
vpcmpgtb xmm1,xmm2,oword [ebx+esi]
vpcmpgtb xmm1,xmm2,xmm3
vpcmpgtb xmm1,xmm1,oword [ebx+esi]
vpcmpgtb xmm1,xmm1,xmm2
enter 0x64,0x0
fbld tword [0x64]
fbld tword [dword 0x64]
fbld tword [0x64]
in ax,0x64
addsubps xmm1,xmm10
movddup xmm11,xmm6
cvtsi2sd xmm11,dword [0x0]
cvtsi2sd xmm10,eax
movntsd [r14],xmm9
cmpeqsd xmm11,[r8]
cvttsd2si rax,xmm0
cvtsd2si rax,xmm0
cvtsi2sd xmm8,rax
movsldup xmm0,xmm11
cvtss2si ebx,xmm11
movq xmm0,xmm12
popcnt ecx,dword [r11]
popcnt edx,dword [r12]
popcnt ecx,dword [r13+0x0]
popcnt eax,r14d
lzcnt eax,r8d
lzcnt ecx,dword [r11+r10*2]
movntss [rax],xmm8
movntss [0x4],xmm13
cvtss2sd xmm10,[0x4]
movq xmm11,[0x0]
popcnt r8d,ebx
lzcnt r11d,dword [rax]
cvtdq2pd xmm10,xmm4
cvtsi2ss xmm0,rax
cvttss2si rax,xmm8
cvtss2si rax,xmm8
lzcnt r15,qword [0x4]
