BITS 16
pcmpgtb mm0,[ebx+edi]
movbe dword [ebp+0x5],ebx
xchg eax,ebx
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
in eax,0x64
pcmpgtb xmm1,[eax]
pcmpgtb xmm1,[ebx]
pextrd dword [eax],xmm0,0x0
pinsrd xmm0,[eax],0x0
vpcmpgtb xmm1,xmm2,oword [eax]
vpcmpgtb xmm1,xmm1,oword [eax]
vpcmpgtb xmm1,xmm2,oword [ebx+esi]
vpcmpgtb xmm1,xmm2,xmm3
vpcmpgtb xmm1,xmm1,oword [ebx+esi]
vpcmpgtb xmm1,xmm1,xmm2
enter 0x64,0x0
fbld tword [0x64]
fbld tword [dword 0x64]
fbld tword [0x64]
in ax,0x64
