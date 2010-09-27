BITS 32
add eax,0x12345678
or eax,0x12345678
sldt [ebx+esi]
str [ebx+esi]
lldt [ebx+esi]
ltr [ebx+esi]
verr [ebx+esi]
verw [ebx+esi]
sgdt [ebx+esi]
sidt [ebx+esi]
lgdt [ebx+esi]
lidt [ebx+esi]
smsw [ebx+esi]
invlpg [ebx+esi]
prefetch [dword 0x0]
prefetchw [0xc]
prefetchw [dword 0xc]
pfadd mm0,[0x1e]
pfadd mm0,[dword 0x1e]
pi2fd mm2,[0x0]
pf2id mm2,[0x28]
pi2fd mm2,[dword 0x0]
pf2id mm2,[dword 0x28]
pfmax mm3,[0x3c]
pfmax mm3,[dword 0x3c]
pavgusb mm4,[0x26]
pavgusb mm4,[dword 0x26]
prefetchnta [0x0]
prefetchnta [dword 0x0]
prefetcht0 [0x20]
prefetcht0 [dword 0x20]
prefetcht1 [0x10]
prefetcht1 [dword 0x10]
prefetcht2 [0x8]
prefetcht2 [dword 0x8]
nop dword [eax+eax+0x0]
nop dword [eax+0x0]
nop dword [eax+eax+0x0]
cvtpi2ps xmm4,[0x4]
cvtpi2ps xmm4,[dword 0x4]
cvtpi2ps xmm5,[dword 0x0]
movntps [0x0],xmm4
movntps [dword 0x0],xmm4
movntps [dword 0x0],xmm5
cvttps2pi mm6,[0x4]
cvttps2pi mm6,[dword 0x4]
cvttps2pi mm7,[0x8]
cvttps2pi mm7,[dword 0x8]
cvtps2pi mm0,[0x4]
cvtps2pi mm0,[dword 0x4]
cvtps2pi mm1,[0x0]
cvtps2pi mm1,[dword 0x0]
rdmsr
movbe eax,dword [dword 0x5]
movbe edx,dword [dword 0x5]
movbe dword [dword 0x5],ebx
movbe dword [dword 0x5],esp
movbe dword [dword 0x5],ebp
movbe dword [dword 0x5],esi
movbe dword [dword 0x5],edi
cvtps2pd xmm4,[0x4]
cvtps2pd xmm4,[dword 0x4]
cvtps2pd xmm5,[dword 0x0]
cvtdq2ps xmm4,[0x4]
cvtdq2ps xmm4,[dword 0x4]
cvtdq2ps xmm5,[dword 0x8]
movd mm0,[0x0]
movd mm0,[dword 0x0]
movd mm6,[0x0]
movd mm0,[edx+eax*8+0xc]
movq mm0,[0x0]
movq mm2,[0xc]
movq mm2,[dword 0x4]
movq mm2,[dword 0xc]
movd [0x0],mm0
movd [0x8],mm0
movd [dword 0x8],mm0
movq [0x0],mm0
movq [0x8],mm0
movq [dword 0x8],mm0
fxsave [eax+ebx]
fxsave [0x0]
fxsave [dword 0x0]
fxrstor [0x0]
fxrstor [edi+eax*2]
fxrstor [dword 0x0]
xsave [0x4]
xsave [dword 0x4]
xrstor [0x8]
xrstor [dword 0x8]
lss esp,[dword 0xb]
btr [bx+si],bp
lfs eax,[0x0]
lfs eax,[0x1]
lfs eax,[0x7]
lfs ecx,[0xd]
lfs ecx,[dword 0xd]
lgs eax,[0x1]
lgs edx,[0xf]
lgs edx,[dword 0xf]
lgs ebx,[0x9]
lgs esp,[0xb]
movzx eax,word [eax]
movzx ebx,word [eax]
movsx eax,word [eax]
pinsrw mm3,[0x0],0x4
pinsrw mm3,[dword 0x0],0x4
vmptrld [0x8]
vmptrld [dword 0x8]
bswap eax
bswap ecx
bswap edx
bswap ebx
bswap esp
bswap ebp
bswap esi
bswap edi
movntq [0xc],mm2
movntq [0x10],mm2
movntq [0x50],mm2
movntq [dword 0xc],mm2
movntq [dword 0x10],mm2
movntq [dword 0x50],mm2
movntq [0x8],mm6
movntq [dword 0x8],mm6
movntq [0x8],mm7
movntq [dword 0x8],mm7
adc eax,0x12345678
sbb eax,0x12345678
and eax,0xe00
and eax,0x12345678
idiv dword [dword es:0x5]
sub eax,0x12345678
mov es,[dword cs:0x0]
idiv dword [dword cs:0x5]
xor al,[bx+si]
xor eax,[ebp+ecx*4+0x0]
xor ebx,[ebp+ecx*4+0x4]
xor esi,[ebp+ecx*4+0x8]
xor edi,[ebp+ecx*4+0xc]
xor eax,0x12345678
idiv word [ss:edi+0x5]
mov ds,[dword ss:0x10]
call dword far [dword ss:0x0]
cmp eax,0x12345678
idiv word [fs:edi+0x5]
mov gs,[fs:0x0]
idiv dword [fs:0x5]
mov fs,[gs:0x10]
idiv dword [gs:0x5]
o32 push cs
lar ax,[ebx+esi]
lsl ax,[ebx+esi]
nop word [eax+eax+0x0]
nop word [eax+eax+0x0]
cvtpi2pd xmm0,[0x0]
cvtpi2pd xmm0,[dword 0x0]
cvtpi2pd xmm7,[dword 0x4]
cvttpd2pi mm2,[0x4]
cvttpd2pi mm2,[dword 0x4]
cvttpd2pi mm3,[0x8]
cvttpd2pi mm3,[dword 0x8]
cvtpd2pi mm6,[0x4]
cvtpd2pi mm6,[dword 0x4]
cvtpd2pi mm7,[0x8]
cvtpd2pi mm7,[dword 0x8]
pblendvb xmm1,[0x4],xmm0
pblendvb xmm1,[dword 0x4],xmm0
blendvps xmm1,[0x4],xmm0
blendvps xmm1,[dword 0x4],xmm0
blendvpd xmm1,[0x4],xmm0
blendvpd xmm1,[dword 0x4],xmm0
ptest xmm1,[0x4]
ptest xmm1,[dword 0x4]
pmovsxbw xmm1,[0x4]
pmovsxbw xmm1,[dword 0x4]
pmovsxbd xmm1,[0x4]
pmovsxbd xmm1,[dword 0x4]
pmovsxbq xmm1,[0x4]
pmovsxbq xmm1,[dword 0x4]
pmovsxwd xmm1,[0x4]
pmovsxwd xmm1,[dword 0x4]
pmuldq xmm1,[0x4]
pmuldq xmm1,[dword 0x4]
pcmpeqq xmm1,[0x4]
pcmpeqq xmm1,[dword 0x4]
movntdqa xmm1,[0x4]
movntdqa xmm1,[dword 0x4]
packusdw xmm1,[0x4]
packusdw xmm1,[dword 0x4]
pmovzxbw xmm1,[0x4]
pmovzxbw xmm1,[dword 0x4]
pmovzxbd xmm1,[0x4]
pmovzxbd xmm1,[dword 0x4]
pmovzxbq xmm1,[bx+si]
pmovzxbq xmm0,xmm0
pmovzxbq xmm1,xmm2
pmovzxwd xmm1,[0x4]
pmovzxwd xmm1,[dword 0x4]
pmovzxwq xmm1,[0x4]
pmovzxwq xmm1,[dword 0x4]
pcmpgtq xmm1,[0x4]
pcmpgtq xmm1,[dword 0x4]
pminsb xmm1,[0x4]
pminsb xmm1,[dword 0x4]
pminsd xmm1,[0x4]
pminsd xmm1,[dword 0x4]
pminuw xmm1,[0x4]
pminuw xmm1,[dword 0x4]
pminud xmm1,[0x4]
pminud xmm1,[dword 0x4]
pmaxsb xmm1,[0x4]
pmaxsb xmm1,[dword 0x4]
pmaxsd xmm1,[0x4]
pmaxsd xmm1,[dword 0x4]
pmaxuw xmm1,[0x4]
pmaxuw xmm1,[dword 0x4]
pmaxud xmm1,[0x4]
pmaxud xmm1,[dword 0x4]
pmulld xmm1,[0x4]
pmulld xmm1,[dword 0x4]
phminposuw xmm1,[0x4]
phminposuw xmm1,[dword 0x4]
invept edi,[esi]
aesenc xmm5,oword [edx+ecx*4]
aesenc xmm5,oword [eax+edi*4]
movbe ax,word [dword 0x5]
movbe cx,word [eax+ecx]
movbe cx,word [ebx+ecx]
movbe dx,word [dword 0x5]
movbe word [dword 0x5],bx
roundps xmm1,[0x4],0x5
roundps xmm1,[dword 0x4],0x5
roundpd xmm1,[0x4],0x5
roundpd xmm1,[dword 0x4],0x5
roundss xmm1,[0x4],0x5
roundss xmm1,[dword 0x4],0x5
roundsd xmm1,[0x4],0x5
roundsd xmm1,[dword 0x4],0x5
blendps xmm1,[0x4],0x5
blendps xmm1,[dword 0x4],0x5
blendpd xmm1,[0x4],0x5
blendpd xmm1,[dword 0x4],0x5
pblendw xmm1,[0x4],0x5
pblendw xmm1,[dword 0x4],0x5
pextrb byte [0x4],xmm1,0x5
pextrb byte [dword 0x4],xmm1,0x5
pextrw word [0x4],xmm1,0x5
pextrw word [dword 0x4],xmm1,0x5
pextrd dword [0x4],xmm1,0x5
pextrd dword [dword 0x4],xmm1,0x5
extractps dword [0x4],xmm1,0x5
extractps dword [dword 0x4],xmm1,0x5
pinsrb xmm1,[0x4],0x5
pinsrb xmm1,[dword 0x4],0x5
insertps xmm1,[0x4],0x5
insertps xmm1,[dword 0x4],0x5
pinsrd xmm1,[0x4],0x5
pinsrd xmm1,[dword 0x4],0x5
dpps xmm1,[0x4],0x5
dpps xmm1,[dword 0x4],0x5
dppd xmm1,[0x4],0x5
dppd xmm1,[dword 0x4],0x5
mpsadbw xmm1,[0x4],0x5
mpsadbw xmm1,[dword 0x4],0x5
pcmpestrm xmm1,[0x4],0x5
pcmpestrm xmm1,[dword 0x4],0x5
pcmpestri xmm1,[0x4],0x5
pcmpestri xmm1,[dword 0x4],0x5
pcmpistrm xmm1,[0x4],0x5
pcmpistrm xmm1,[dword 0x4],0x5
pcmpistri xmm1,[0x4],0x5
pcmpistri xmm1,[dword 0x4],0x5
addpd xmm5,[eax+edi*4]
addpd xmm5,[esi+edi*4]
cvtpd2ps xmm3,[0x4]
cvtpd2ps xmm3,[dword 0x4]
cvtpd2ps xmm4,[0x8]
cvtpd2ps xmm4,[dword 0x8]
cvtps2dq xmm0,[0x4]
cvtps2dq xmm0,[dword 0x4]
cvtps2dq xmm1,[0x8]
cvtps2dq xmm1,[dword 0x8]
movd [0x0],xmm0
bt [ebx+esi],di
bts [ebx+esi],dx
btr [ebx+esi],bp
lfs ax,[0x1]
lfs si,[0x0]
lgs ax,[0x1]
lgs di,[0x5]
bsf dx,[ebx+esi]
bsr bx,[ebx+esi]
xadd [ebx+esi],di
pinsrw xmm1,[0x0],0x2
pinsrw xmm1,[dword 0x0],0x2
vmclear [0xc]
vmclear [dword 0xc]
movq [0x0],xmm0
cvttpd2dq xmm6,[0x4]
cvttpd2dq xmm6,[dword 0x4]
cvttpd2dq xmm7,[dword 0x8]
bound sp,[dword 0x4]
nop word [cs:eax+eax+0x0]
nop word [cs:eax+eax+0x0]
nop word [cs:eax+eax+0x0]
nop word [cs:eax+eax+0x0]
nop word [cs:eax+eax+0x0]
push word 0x80
xor cx,0xe00
xor si,0xe00
xchg ax,[0x0]
xchg ax,[dword 0x0]
xchg cx,[0x0]
xchg cx,[dword 0x0]
mov ax,[ebx+ecx]
mov ax,[ecx+ebx]
mov ax,[0x2]
lea bx,[0x5]
lea bx,[dword 0x5]
mov ax,[0x2]
mov ax,0x2
mov ax,0x6261
mov ax,0xffff
mov bx,0x1
les di,[dword 0x5]
lds ax,[dword 0x1]
lds si,[dword 0x0]
mov word [0x1],0x2
mov word [dword 0x1],0x2
crc32 eax,word [0x4]
crc32 eax,word [dword 0x4]
crc32 ecx,word [0x4]
crc32 ecx,word [dword 0x4]
crc32 eax,ebx
crc32 ecx,ebx
popcnt ax,word [0x4]
popcnt ax,word [dword 0x4]
popcnt cx,word [dword 0x4]
popcnt dx,word [dword 0x4]
lzcnt cx,word [dword 0x4]
lzcnt dx,word [0x4]
lzcnt dx,word [dword 0x4]
idiv word [ebx+esi]
call word far [dword 0x443]
movzx ebx,word [bx+si]
pmovzxbq xmm1,[eax]
btr [eax],ebp
vfmadd132ss xmm1,xmm3,dword [ebx]
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
vfmaddsub132ps ymm1,ymm2,yword [eax]
vfmsubadd132ps ymm1,ymm2,yword [eax]
vfmadd132ps ymm1,ymm2,yword [dword esp+0x101]
vfmadd132ps ymm1,ymm2,yword [ebp+0x101]
vfnmadd132ps ymm1,ymm2,yword [eax]
vfnmsub132ps ymm1,ymm2,yword [eax]
vfmadd231ps ymm1,ymm2,yword [dword ebx+eax*2+0x12c]
vpmovzxbq xmm1,word [eax]
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
vfmaddsub132pd ymm1,ymm2,yword [eax]
vfmsubadd132pd ymm1,ymm2,yword [eax]
vfmadd132pd ymm1,ymm2,yword [dword esi+edx*4+0x258]
vfmadd132pd ymm1,ymm2,yword [dword edi+esi*4+0x258]
vfmsub132pd ymm1,ymm2,yword [eax]
vfnmadd132pd ymm1,ymm2,yword [eax]
vfnmsub132pd ymm1,ymm2,yword [eax]
vcvtsi2sd xmm1,xmm1,dword [eax]
idiv byte [word 0x0]
push dword 0xd4a51000
push dword 0x1234578
push dword 0x80
imul eax,[eax],dword 0x12345678
or edx,0x23
or ebx,0x23
or ebp,0xe00
xor ecx,0xe00
xchg al,[0x0]
xchg al,[dword 0x0]
xchg eax,[0x0]
xchg eax,[dword 0x0]
xchg ecx,[0x0]
xchg ecx,[dword 0x0]
mov [0x0],al
mov [0x1],al
mov [0x0],bl
mov [0x1],bl
mov [dword 0x0],bl
mov [dword 0x1],bl
mov al,[0x76543210]
mov ah,[dword 0x0]
mov eax,[eax+eax]
mov eax,[esp]
mov eax,[esi+ebp]
mov eax,[eax*2+0x0]
mov edx,[dword 0x0]
mov eax,[esp+0x8]
mov eax,[ebp+esi+0x0]
mov edx,[esp+0x4]
mov eax,[eax+0x0]
mov [dword 0x8],es
mov [dword 0x0],ds
mov [0x8],fs
mov [0x0],gs
lea ebx,[0x20]
lea ebx,[dword 0x20]
lea edi,[eax+edi*8+0x443]
mov ds,[dword 0x4]
mov gs,[0x4]
vpmacssww xmm3,xmm6,oword [dword 0x0],xmm2
vpmacssww xmm5,xmm6,oword [eax+edx+0x12345678],xmm7
vpmacsswd xmm3,xmm6,oword [dword 0x0],xmm2
vpmacsswd xmm5,xmm6,oword [eax+edx+0x12345678],xmm7
vpmacssdql xmm3,xmm6,oword [dword 0x0],xmm2
vpmacssdql xmm5,xmm6,oword [eax+edx+0x12345678],xmm7
vpmacssdd xmm3,xmm6,oword [dword 0x0],xmm2
vpmacssdd xmm5,xmm6,oword [eax+edx+0x12345678],xmm7
vpmacssdqh xmm3,xmm6,oword [dword 0x0],xmm2
vpmacssdqh xmm5,xmm6,oword [eax+edx+0x12345678],xmm7
vpmacsww xmm3,xmm6,oword [dword 0x0],xmm2
vpmacsww xmm5,xmm6,oword [eax+edx+0x12345678],xmm7
vpmacswd xmm3,xmm6,oword [dword 0x0],xmm2
vpmacswd xmm5,xmm6,oword [eax+edx+0x12345678],xmm7
vpmacsdql xmm3,xmm6,oword [dword 0x0],xmm2
vpmacsdql xmm5,xmm6,oword [eax+edx+0x12345678],xmm7
vpmacsdd xmm3,xmm6,oword [dword 0x0],xmm2
vpmacsdd xmm5,xmm6,oword [0x0],xmm7
vpmacsdqh xmm3,xmm6,oword [dword 0x0],xmm2
vpmacsdqh xmm5,xmm6,oword [esi+edx*4+0xc],xmm7
vpmadcsswd xmm3,xmm6,oword [dword 0x0],xmm2
vpmadcsswd xmm5,xmm6,oword [eax+edx+0x12345678],xmm7
vpmadcswd xmm3,xmm6,oword [dword 0x0],xmm2
vpmadcswd xmm5,xmm6,oword [eax+edx+0x12345678],xmm7
vpmacssww xmm2,xmm5,oword [dword 0x0],xmm0
vpmacsswd xmm2,xmm5,oword [dword 0x0],xmm0
vpmacssdql xmm2,xmm5,oword [dword 0x0],xmm0
vpmacssdd xmm2,xmm5,oword [dword 0x0],xmm0
vpmacssdqh xmm2,xmm5,oword [dword 0x0],xmm0
vpmacsww xmm2,xmm5,oword [dword 0x0],xmm0
vpmacswd xmm2,xmm5,oword [dword 0x0],xmm0
vpmacsdql xmm2,xmm5,oword [dword 0x0],xmm0
vpmacsdd xmm2,xmm5,oword [dword 0x0],xmm0
vpmacsdqh xmm2,xmm5,oword [dword 0x0],xmm0
vpmadcsswd xmm2,xmm5,oword [dword 0x0],xmm0
vpmadcswd xmm2,xmm5,oword [dword 0x0],xmm0
vpcmov xmm1,xmm2,oword [dword 0x0],xmm4
vpperm xmm1,xmm2,oword [0x0],xmm4
vpperm xmm1,xmm2,oword [dword 0x0],xmm4
vpcmov ymm1,ymm2,yword [dword 0x0],ymm4
vpcmov xmm5,xmm6,xmm7,oword [0x0]
vpcmov ymm5,ymm6,ymm7,yword [0x0]
vpcmov xmm1,xmm2,xmm3,oword [dword 0x0]
vpperm xmm1,xmm2,xmm3,oword [0x0]
vpperm xmm1,xmm2,xmm3,oword [dword 0x0]
vpcmov ymm1,ymm2,ymm3,yword [dword 0x0]
vprotb xmm1,oword [0x0],xmm3
vprotb xmm1,oword [dword 0x0],xmm3
vprotw xmm1,oword [0x0],xmm3
vprotw xmm1,oword [dword 0x0],xmm3
vprotd xmm1,oword [0x0],xmm3
vprotd xmm1,oword [dword 0x0],xmm3
vprotq xmm1,oword [0x0],xmm3
vprotq xmm1,oword [dword 0x0],xmm3
vpshlb xmm1,oword [0x0],xmm3
vpshlb xmm1,oword [dword 0x0],xmm3
vpshlw xmm1,oword [0x0],xmm3
vpshlw xmm1,oword [dword 0x0],xmm3
vpshld xmm1,oword [0x0],xmm3
vpshld xmm1,oword [dword 0x0],xmm3
vpshlq xmm1,oword [0x0],xmm3
vpshlq xmm1,oword [dword 0x0],xmm3
vpshab xmm1,oword [0x0],xmm3
vpshab xmm1,oword [dword 0x0],xmm3
vpshaw xmm1,oword [0x0],xmm3
vpshaw xmm1,oword [dword 0x0],xmm3
vpshad xmm1,oword [0x0],xmm3
vpshad xmm1,oword [dword 0x0],xmm3
vpshaq xmm1,oword [0x0],xmm3
vpshaq xmm1,oword [dword 0x0],xmm3
vfrczps xmm1,oword [0x0]
vfrczps xmm1,oword [dword 0x0]
vfrczpd xmm1,oword [dword 0x0]
vfrczss xmm1,dword [0x0]
vfrczss xmm1,dword [dword 0x0]
vfrczsd xmm1,qword [dword 0x0]
vfrczsd xmm1,qword [ebx+eax*2+0x12]
vphaddbw xmm1,oword [dword 0x0]
vphaddbd xmm1,oword [0x0]
vphaddbd xmm1,oword [dword 0x0]
vphaddbq xmm1,oword [0x0]
vphaddbq xmm1,oword [dword 0x0]
vphaddwd xmm1,oword [dword 0x0]
vphaddwq xmm1,oword [0x0]
vphaddwq xmm1,oword [dword 0x0]
vphadddq xmm1,oword [0x0]
vphadddq xmm1,oword [dword 0x0]
vphaddubd xmm1,oword [dword 0x0]
vphaddubq xmm1,oword [0x0]
vphaddubq xmm1,oword [dword 0x0]
vphadduwd xmm1,oword [dword 0x0]
vphadduwq xmm1,oword [0x0]
vphadduwq xmm1,oword [dword 0x0]
vphsubbw xmm1,oword [dword 0x0]
vphsubwd xmm1,oword [dword 0x0]
vphsubdq xmm1,oword [0x0]
vphsubdq xmm1,oword [dword 0x0]
vfrczps ymm1,yword [0x0]
vfrczps ymm1,yword [dword 0x0]
vfrczpd ymm1,yword [0x0]
vfrczpd ymm1,yword [dword 0x0]
vprotb xmm1,xmm2,oword [0x0]
vprotb xmm1,xmm2,oword [dword 0x0]
vprotw xmm1,xmm2,oword [0x0]
vprotw xmm1,xmm2,oword [dword 0x0]
vprotd xmm1,xmm2,oword [0x0]
vprotd xmm1,xmm2,oword [dword 0x0]
vprotq xmm1,xmm2,oword [0x0]
vprotq xmm1,xmm2,oword [dword 0x0]
vpshlb xmm1,xmm2,oword [0x0]
vpshlb xmm1,xmm2,oword [dword 0x0]
vpshlw xmm1,xmm2,oword [0x0]
vpshlw xmm1,xmm2,oword [dword 0x0]
vpshld xmm1,xmm2,oword [0x0]
vpshld xmm1,xmm2,oword [dword 0x0]
vpshlq xmm1,xmm2,oword [0x0]
vpshlq xmm1,xmm2,oword [dword 0x0]
vpshab xmm1,xmm2,oword [0x0]
vpshab xmm1,xmm2,oword [dword 0x0]
vpshaw xmm1,xmm2,oword [0x0]
vpshaw xmm1,xmm2,oword [dword 0x0]
vpshad xmm1,xmm2,oword [0x0]
vpshad xmm1,xmm2,oword [dword 0x0]
vpshaq xmm1,xmm2,oword [0x0]
vpshaq xmm1,xmm2,oword [dword 0x0]
call dword 0x0:0x0
call dword 0x1234:0x56789abc
mov al,[0x0]
mov eax,[0x0]
mov [0x0],al
mov [0x1],al
mov [0x0],eax
test eax,0x0
mov eax,0x0
mov eax,0x1
mov eax,0x2
mov eax,0x4
mov eax,0x8
mov eax,0x11111111
mov ecx,0x0
mov edx,0x0
mov ebx,0x0
mov esp,0x0
mov ebp,0x0
mov esi,0x0
mov edi,0x0
les ebx,[dword 0x9]
vfmadd132ss xmm1,xmm3,dword [bp+di]
vfmaddsub132ps xmm1,xmm2,oword [bx+si]
vfmaddsub132ps xmm1,xmm2,xmm3
vfmsubadd132ps xmm1,xmm2,oword [bx+si]
vfmsubadd132ps xmm1,xmm2,xmm3
vfmadd132ps xmm1,xmm2,oword [edx+0x101]
vfmadd132ps xmm1,xmm2,xmm3
vfmadd132ss xmm1,xmm2,dword [bx+si]
vfmadd132ss xmm1,xmm2,xmm3
vfmsub132ps xmm1,xmm2,oword [bp+0x8]
vfmsub132ps xmm1,xmm2,xmm3
vfmsub132ss xmm1,xmm2,dword [ecx*8+0x0]
vfmsub132ss xmm1,xmm2,dword [ebx*8+0x0]
vfmsub132ss xmm1,xmm2,xmm3
vfnmadd132ps xmm1,xmm2,oword [bx+si]
vfnmadd132ps xmm1,xmm2,xmm3
vfnmadd132ss xmm1,xmm2,dword [bx+si]
vfnmadd132ss xmm1,xmm2,xmm3
vfnmsub132ps xmm1,xmm2,oword [bx+si]
vfnmsub132ps xmm1,xmm2,xmm3
vfnmsub132ss xmm1,xmm2,dword [bx+si]
vfnmsub132ss xmm1,xmm2,xmm3
vfmadd213ps xmm1,xmm2,oword [edi+0x101]
vfmadd213ss xmm1,xmm2,dword [esi]
vfmsub213ps xmm1,xmm2,oword [esp+0x8]
vfmsub213ss xmm1,xmm2,dword [ebp*8+0x0]
vfmsub213ss xmm1,xmm2,dword [esi*8+0x0]
vfmadd231ps xmm1,xmm2,oword [esi+0x101]
vfmsub231ss xmm1,xmm2,dword [edx*8+0x0]
vfmsub231ss xmm1,xmm2,dword [edi*8+0x0]
vfmaddsub132ps ymm1,ymm2,yword [bx+si]
vfmaddsub132ps ymm1,ymm2,ymm3
vfmsubadd132ps ymm1,ymm2,yword [bx+si]
vfmsubadd132ps ymm1,ymm2,ymm3
vfmadd132ps ymm1,ymm2,yword [esp+0x101]
vfmadd132ps ymm1,ymm2,yword [ebp+0x101]
vfmadd132ps ymm1,ymm2,ymm3
vfmsub132ps ymm1,ymm2,yword [0x8]
vfmsub132ps ymm1,ymm2,yword [dword 0x8]
vfmsub132ps ymm1,ymm2,ymm3
vfnmadd132ps ymm1,ymm2,yword [bx+si]
vfnmadd132ps ymm1,ymm2,ymm3
vfnmsub132ps ymm1,ymm2,yword [bx+si]
vfnmsub132ps ymm1,ymm2,ymm3
vfmadd213ps ymm1,ymm2,yword [esi+edx*2+0x12c]
vfmadd213ps ymm1,ymm2,yword [edi+esi*2+0x12c]
vfmsub213ps ymm1,ymm2,yword [0x8]
vfmsub213ps ymm1,ymm2,yword [dword 0x8]
vfmadd231ps ymm1,ymm2,yword [ebx+eax*2+0x12c]
vfmadd231ps ymm1,ymm2,yword [ecx+ebx*2+0x12c]
vfmsub231ps ymm1,ymm2,yword [0x8]
vfmsub231ps ymm1,ymm2,yword [dword 0x8]
vpmovzxbq xmm1,word [bx+si]
vpmovzxbq xmm1,xmm2
vpermilps ymm0,ymm0,yword [dword 0x0]
vpermilpd ymm0,ymm0,yword [dword 0x0]
vbroadcastsd ymm0,qword [dword 0x0]
vbroadcastf128 ymm0,oword [dword 0x0]
vmaskmovps ymm0,ymm0,yword [dword 0x0]
vmaskmovpd ymm0,ymm0,yword [dword 0x0]
vfmaddsub132pd xmm1,xmm2,oword [bx+si]
vfmaddsub132pd xmm1,xmm2,xmm3
vfmsubadd132pd xmm1,xmm2,oword [bx+si]
vfmsubadd132pd xmm1,xmm2,xmm3
vfmadd132pd xmm1,xmm2,oword [ebp+esi*2+0x12c]
vfmadd132pd xmm1,xmm2,oword [ebp+edi*2+0x12c]
vfmadd132pd xmm1,xmm2,xmm3
vfmadd132sd xmm1,xmm2,qword [esp]
vfmadd132sd xmm1,xmm2,qword [di+0x0]
vfmadd132sd xmm1,xmm2,xmm3
vfmsub132pd xmm1,xmm2,oword [0x8]
vfmsub132pd xmm1,xmm2,oword [dword 0x8]
vfmsub132pd xmm1,xmm2,xmm3
vfmsub132sd xmm1,xmm2,qword [esp]
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
vfmadd213pd xmm1,xmm2,oword [ebx+eax*4+0x258]
vfmadd213pd xmm1,xmm2,oword [ecx+ebx*4+0x258]
vfmadd213sd xmm1,xmm2,qword [ecx+0x101]
vfmadd213sd xmm1,xmm2,qword [ebx+0x101]
vfmsub213pd xmm1,xmm2,oword [0x8]
vfmsub213pd xmm1,xmm2,oword [dword 0x8]
vfmadd231pd xmm1,xmm2,oword [esp+eax+0x12c]
vfmadd231pd xmm1,xmm2,oword [esp+ebp*2+0x12c]
vfmadd231sd xmm1,xmm2,qword [eax+0x101]
vfmsub231pd xmm1,xmm2,oword [0x8]
vfmsub231pd xmm1,xmm2,oword [dword 0x8]
vfmaddsub132pd ymm1,ymm2,yword [bx+si]
vfmaddsub132pd ymm1,ymm2,ymm3
vfmsubadd132pd ymm1,ymm2,yword [bx+si]
vfmsubadd132pd ymm1,ymm2,ymm3
vfmadd132pd ymm1,ymm2,yword [esi+edx*4+0x258]
vfmadd132pd ymm1,ymm2,yword [edi+esi*4+0x258]
vfmadd132pd ymm1,ymm2,ymm3
vfmsub132pd ymm1,ymm2,yword [bx+si]
vfmsub132pd ymm1,ymm2,ymm3
vfnmadd132pd ymm1,ymm2,yword [bx+si]
vfnmadd132pd ymm1,ymm2,ymm3
vfnmsub132pd ymm1,ymm2,yword [bx+si]
vfnmsub132pd ymm1,ymm2,ymm3
vfmadd213pd ymm1,ymm2,yword [eax*8+0x0]
vfmadd213pd ymm1,ymm2,yword [esp+eax*4+0x258]
vfmadd231pd ymm1,ymm2,yword [esp+ebp*4+0x258]
vfmadd231pd ymm1,ymm2,yword [esp+edi*4+0x258]
vfmadd132pd xmm0,xmm0,xmm0
lds eax,[dword 0x1]
lds eax,[dword 0x7]
vaddpd xmm5,xmm6,oword [eax+edi*4]
vaddpd xmm5,xmm6,oword [esi+edi*4]
vaddpd ymm5,ymm6,yword [eax+edi*4]
vaddpd ymm5,ymm6,yword [esi+edi*4]
vaddpd xmm5,xmm5,oword [eax+edi*4]
vaddpd xmm5,xmm5,oword [esi+edi*4]
vcvtsi2sd xmm1,xmm1,dword [bx+si]
vcvtsi2sd xmm1,xmm1,eax
mov byte [0x0],0x1
mov byte [dword 0x0],0x1
mov dword [eax],0x0
mov dword [0x2],0x3
mov dword [dword 0x2],0x3
enter 0x320,0x4
fadd dword [0xa]
fadd dword [dword 0xa]
fcom dword [0x0]
fcom dword [dword 0x0]
fld dword [0x0]
fld dword [dword 0x0]
fst dword [0x1]
fst dword [dword 0x1]
fstp dword [0x0]
fstp dword [dword 0x0]
fldcw [0x0]
fldcw [dword 0x0]
fnstcw [0x4]
fnstcw [dword 0x4]
fisub dword [0x4]
fisub dword [dword 0x4]
fild dword [0x4]
fild dword [dword 0x4]
fisttp dword [0x4]
fisttp dword [dword 0x4]
fld tword [0x10]
fld tword [dword 0x10]
fadd qword [0x5]
fadd qword [dword 0x5]
fcom qword [0x8]
fcom qword [dword 0x8]
fld qword [0x4]
fld qword [dword 0x4]
fisttp qword [0x8]
fisttp qword [dword 0x8]
fst qword [0x8]
fst qword [dword 0x8]
fnstsw [0x0]
fnstsw [0x8]
fnstsw [dword 0x0]
fnstsw [dword 0x8]
fiadd word [0xa]
fiadd word [dword 0xa]
fild word [0x0]
fild word [dword 0x0]
fisttp word [0x0]
fisttp word [dword 0x0]
fbld tword [0xa]
fbld tword [0x64]
fbld tword [dword 0xa]
fbld tword [dword 0x64]
fild qword [0x8]
fild qword [dword 0x8]
call dword 0x5
call dword 0x123454cc
call dword 0xfffffff0
call dword 0xfffffff1
call dword 0x0
jmp dword 0x5
jmp dword 0xffffffdb
jmp dword 0xffffffde
jmp dword 0x0
jmp dword 0x0:0x0
jmp dword 0x1234:0x56789abc
movddup xmm1,[0x4]
movddup xmm1,[dword 0x4]
cvtsi2sd xmm6,dword [0x4]
cvtsi2sd xmm6,dword [dword 0x4]
cvtsi2sd xmm7,dword [dword 0x0]
movntsd [0x4],xmm1
movntsd [dword 0x4],xmm1
movntsd [dword 0x4],xmm5
cvttsd2si ebx,[0x4]
cvttsd2si ebx,[dword 0x4]
cvttsd2si edi,[0x8]
cvttsd2si edi,[dword 0x8]
cvtsd2si eax,[0x4]
cvtsd2si eax,[dword 0x4]
cvtsd2si ebx,[0x0]
cvtsd2si ebx,[dword 0x0]
crc32 eax,byte [bx+si]
crc32 eax,byte [0x4]
crc32 eax,byte [dword 0x4]
crc32 ecx,byte [0x4]
crc32 ecx,byte [dword 0x4]
crc32 eax,bl
crc32 eax,bh
crc32 ecx,bl
crc32 eax,word [bx+si]
crc32 eax,dword [0x4]
crc32 eax,dword [dword 0x4]
crc32 ecx,dword [0x4]
crc32 ecx,dword [dword 0x4]
crc32 eax,cx
crc32 eax,dx
crc32 eax,bx
crc32 ecx,dx
crc32 ecx,bx
cvtsd2ss xmm3,[0x4]
cvtsd2ss xmm3,[dword 0x4]
cvtsd2ss xmm4,[0x0]
cvtsd2ss xmm4,[dword 0x0]
haddps xmm0,[0x0]
haddps xmm0,[dword 0x0]
hsubps xmm2,[esp]
cvtpd2dq xmm2,[0x4]
cvtpd2dq xmm2,[dword 0x4]
cvtpd2dq xmm3,[0x8]
cvtpd2dq xmm3,[dword 0x8]
lddqu xmm3,[ecx+edx*4+0x8]
movss xmm0,[0x0]
movss xmm0,[dword 0x0]
movss xmm1,[0x8]
movss xmm1,[dword 0x8]
movss [0x0],xmm2
movss [dword 0x0],xmm2
movss [0x8],xmm3
movss [dword 0x8],xmm3
movsldup xmm5,[eax+ebx]
movshdup xmm2,[0x0]
movshdup xmm2,[dword 0x0]
cvtsi2ss xmm1,dword [0x4]
cvtsi2ss xmm1,dword [dword 0x4]
cvtsi2ss xmm2,dword [0x0]
cvtsi2ss xmm2,dword [dword 0x0]
movntss [dword 0x4],xmm3
movntss [dword 0x4],xmm7
cvttss2si eax,[0x8]
cvttss2si eax,[dword 0x8]
cvttss2si ebp,[0x4]
cvttss2si ebp,[dword 0x4]
cvtss2si eax,[0x0]
cvtss2si eax,[dword 0x0]
cvtss2si ecx,[0x4]
cvtss2si ecx,[dword 0x4]
cvtss2sd xmm5,[dword 0x4]
cvtss2sd xmm6,[0x0]
cvtss2sd xmm6,[dword 0x0]
cvttps2dq xmm2,[0x4]
cvttps2dq xmm2,[dword 0x4]
cvttps2dq xmm3,[0x8]
cvttps2dq xmm3,[dword 0x8]
popcnt ecx,dword [0x4]
popcnt ecx,dword [dword 0x4]
popcnt edx,dword [0x4]
popcnt edx,dword [dword 0x4]
popcnt ebx,dword [0x4]
popcnt ebx,dword [dword 0x4]
lzcnt ecx,dword [dword 0x4]
lzcnt edx,dword [dword 0x4]
lzcnt ecx,dword [edx+ecx*4+0x78563412]
cmpordss xmm1,[0x0]
cmpunordss xmm1,[0x4]
cmpeqss xmm1,[0x8]
cmpordss xmm1,[dword 0x0]
cmpunordss xmm1,[dword 0x4]
cmpeqss xmm1,[dword 0x8]
vmxon [edi+esi*4+0x190]
cvtdq2pd xmm2,[0x8]
cvtdq2pd xmm2,[dword 0x8]
cvtdq2pd xmm3,[0x4]
cvtdq2pd xmm3,[dword 0x4]
idiv byte [0x0]
idiv byte [0xffffffff]
idiv byte [dword 0x0]
idiv byte [dword 0xffffffff]
test dword [eax],0x0
call dword near [0x0]
call dword near [0x8]
call dword near [dword 0x443]
jmp dword far [0x2]
jmp dword far [dword 0x2]
jmp dword far [dword 0x443]
push dword [0x2]
push dword [dword 0x2]
