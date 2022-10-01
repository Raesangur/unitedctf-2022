#include <stdint.h>

typedef uintptr_t uintptr;
typedef int64_t  __int64;
typedef uint64_t __uint64;
typedef uint16_t _QWORD;
typedef uint8_t _BYTE;

char* aLLADwDa = "l_l_A_DW_DA+/$%";

// main.decrypto
uintptr * main_decrypto()
{
  __int64 v0; // r14
  __int64 v1; // rax
  __uint64 v2; // rcx
  char *v3; // rdx
  uintptr *v4; // rbx
  char *v5; // rsi
  char v6; // r8
  uintptr *v7; // rax
  __int64 i; // rax
  char *v9; // rsi
  char v10; // r8
  uintptr *v11; // rax
  void* v13; // [rsp-46h] [rbp-88h]
  void* *v14; // [rsp-2Eh] [rbp-70h]
  __int64 v15; // [rsp-26h] [rbp-68h]
  char v16; // [rsp+1h] [rbp-41h]
  char v17; // [rsp+1h] [rbp-41h]
  __int64 v18; // [rsp+2h] [rbp-40h]
  __int64 v19; // [rsp+Ah] [rbp-38h]
  char *v20; // [rsp+12h] [rbp-30h]
  char *v21; // [rsp+12h] [rbp-30h]
  __int64 v22; // [rsp+1Ah] [rbp-28h]
  _QWORD v23[3]; // [rsp+22h] [rbp-20h]
  __int64 v24; // [rsp+3Ah] [rbp-8h] BYREF

  if ( (__uint64)&v24 <= *(_QWORD *)(v0 + 16) )
  v22 = 0x3617246C182D132ALL;
  v23[0] = 0x4C68414342072129LL;
  v23[1] = 0x3D2147252A3F3E3ELL;
  v23[2] = 0x315F3608390F4140LL;
  v1 = 0LL;
  v2 = 0LL;
  v3 = 0LL;
  v4 = (uintptr_t*)0x00007FF717B4F020;;
  while ( v1 < 15 )
  {
    v5 = v3 + 1;
    v6 = aLLADwDa[v1] ^ *((_BYTE *)&v23[-1] + v1);
    if ( v2 < (__uint64)(v3 + 1) )
    {
      v20 = v3;
      v19 = v1;
      v16 = aLLADwDa[v1] ^ *((_BYTE *)&v23[-1] + v1);
      runtime_growslice(v13, v14, v15);
      v5 = (char *)v4 + 1;
      v3 = v20;
      v6 = v16;
      v4 = v7;
      v1 = v19;
    }
    v3[(_QWORD)v4] = v6;
    ++v1;
    v3 = v5;
  }
  for ( i = 0LL; i < 17; ++i )
  {
    v9 = v3 + 1;
    v10 = aPwoIUtFjdL[i] ^ *((_BYTE *)v23 + i + 7);
    if ( v2 < (unsigned __int64)(v3 + 1) )
    {
      v21 = v3;
      v18 = i;
      v17 = aPwoIUtFjdL[i] ^ *((_BYTE *)v23 + i + 7);
      runtime_growslice(v13, v14, v15);
      v9 = (char *)v4 + 1;
      v3 = v21;
      v10 = v17;
      v4 = v11;
      i = v18;
    }
    v3[(_QWORD)v4] = v10;
    v3 = v9;
  }
  return v4;
}