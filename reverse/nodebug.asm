
nodebug:     file format elf64-x86-64


Disassembly of section .text:

0000000000401000 <.text>:
  401000:	48 89 e5             	mov    %rsp,%rbp
  401003:	48 31 c0             	xor    %rax,%rax
  401006:	48 31 ff             	xor    %rdi,%rdi
  401009:	48 31 f6             	xor    %rsi,%rsi
  40100c:	48 31 d2             	xor    %rdx,%rdx
  40100f:	4d 31 d2             	xor    %r10,%r10
  401012:	b0 65                	mov    $0x65,%al
  401014:	0f 05                	syscall 
  401016:	48 85 c0             	test   %rax,%rax
  401019:	7c 02                	jl     0x40101d
  40101b:	eb 42                	jmp    0x40105f
  40101d:	b8 69 6e 67 0a       	mov    $0xa676e69,%eax
  401022:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401026:	48 b8 6f 20 64 65 62 	movabs $0x676775626564206f,%rax
  40102d:	75 67 67 
  401030:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401034:	48 b8 49 20 73 61 69 	movabs $0x6e20646961732049,%rax
  40103b:	64 20 6e 
  40103e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401042:	48 31 c0             	xor    %rax,%rax
  401045:	48 31 ff             	xor    %rdi,%rdi
  401048:	48 31 d2             	xor    %rdx,%rdx
  40104b:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  40104f:	b2 14                	mov    $0x14,%dl
  401051:	fe c0                	inc    %al
  401053:	0f 05                	syscall 
  401055:	e8 a1 00 00 00       	callq  0x4010fb
  40105a:	e9 9c 00 00 00       	jmpq   0x4010fb
  40105f:	48 31 c0             	xor    %rax,%rax
  401062:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401066:	48 b8 20 69 6e 70 75 	movabs $0x203a7475706e6920,%rax
  40106d:	74 3a 20 
  401070:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401074:	48 b8 20 6d 65 20 79 	movabs $0x72756f7920656d20,%rax
  40107b:	6f 75 72 
  40107e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401082:	48 b8 2e 33 37 0a 47 	movabs $0x657669470a37332e,%rax
  401089:	69 76 65 
  40108c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401090:	48 b8 63 6b 65 72 20 	movabs $0x3331762072656b63,%rax
  401097:	76 31 33 
  40109a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  40109e:	48 b8 46 6c 61 67 20 	movabs $0x6568632067616c46,%rax
  4010a5:	63 68 65 
  4010a8:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  4010ac:	48 31 c0             	xor    %rax,%rax
  4010af:	48 31 ff             	xor    %rdi,%rdi
  4010b2:	48 31 d2             	xor    %rdx,%rdx
  4010b5:	48 8d 75 d0          	lea    -0x30(%rbp),%rsi
  4010b9:	b2 28                	mov    $0x28,%dl
  4010bb:	fe c0                	inc    %al
  4010bd:	0f 05                	syscall 
  4010bf:	48 31 c0             	xor    %rax,%rax
  4010c2:	48 31 ff             	xor    %rdi,%rdi
  4010c5:	48 31 d2             	xor    %rdx,%rdx
  4010c8:	48 89 e6             	mov    %rsp,%rsi
  4010cb:	b2 ff                	mov    $0xff,%dl
  4010cd:	0f 05                	syscall 
  4010cf:	48 31 c9             	xor    %rcx,%rcx
  4010d2:	48 bf f1 8c 5c b6 e8 	movabs $0xae347ce8b65c8cf1,%rdi
  4010d9:	7c 34 ae 
  4010dc:	48 8d 35 1d 0f 00 00 	lea    0xf1d(%rip),%rsi        # 0x402000
  4010e3:	48 8b 04 ce          	mov    (%rsi,%rcx,8),%rax
  4010e7:	48 31 f8             	xor    %rdi,%rax
  4010ea:	48 89 04 ce          	mov    %rax,(%rsi,%rcx,8)
  4010ee:	48 ff c1             	inc    %rcx
  4010f1:	48 85 c0             	test   %rax,%rax
  4010f4:	75 ed                	jne    0x4010e3
  4010f6:	e9 05 0f 00 00       	jmpq   0x402000
  4010fb:	48 31 c0             	xor    %rax,%rax
  4010fe:	48 31 ff             	xor    %rdi,%rdi
  401101:	fe c2                	inc    %dl
  401103:	b0 3c                	mov    $0x3c,%al
  401105:	0f 05                	syscall 

Disassembly of section .data:

0000000000402000 <.data>:
  402000:	b9 bd 9c fe d9       	mov    $0xd9fe9cbd,%ecx
  402005:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
  402006:	7c 9f                	jl     0x401fa7
  402008:	38 c4                	cmp    %al,%ah
  40200a:	6d                   	insl   (%dx),%es:(%rdi)
  40200b:	49 a0 f5 d2 e6 7c 99 	rex.WB movabs 0xe8b679997ce6d2f5,%al
  402012:	79 b6 e8 
  402015:	7c 7c                	jl     0x402093
  402017:	51                   	push   %rcx
  402018:	36 04 97             	ss add $0x97,%al
  40201b:	48 2b fc             	sub    %rsp,%rdi
  40201e:	c7                   	(bad)  
  40201f:	5e                   	pop    %rsi
  402020:	7b 88                	jnp    0x401faa
  402022:	52                   	push   %rdx
  402023:	86 30                	xchg   %dh,(%rax)
  402025:	46 30 a4 84 86 a2 77 	xor    %r12b,0x6877a286(%rsp,%r8,4)
  40202c:	68 
  40202d:	85 2a                	test   %ebp,(%rdx)
  40202f:	d2 19                	rcrb   %cl,(%rcx)
  402031:	c4                   	(bad)  
  402032:	6d                   	insl   (%dx),%es:(%rdi)
  402033:	49 a0 4d f4 1e cd 83 	rex.WB movabs 0x56015983cd1ef44d,%al
  40203a:	59 01 56 
  40203d:	ce                   	(bad)  
  40203e:	87 76 63             	xchg   %esi,0x63(%rsi)
  402041:	4a c0 10 67          	rex.WX rclb $0x67,(%rax)
  402045:	d8 b8 67 38 10 d4    	fdivrs -0x2befc799(%rax)
  40204b:	08 7e f7             	or     %bh,-0x9(%rsi)
  40204e:	e3 14                	jrcxz  0x402064
  402050:	75 5a                	jne    0x4020ac
  402052:	da 6b 70             	fisubrl 0x70(%rbx)
  402055:	ee                   	out    %al,(%dx)
  402056:	e7 79                	out    %eax,$0x79
  402058:	36 8c 5c b6 e8       	mov    %ds,%ss:-0x18(%rsi,%rsi,4)
  40205d:	7c 34                	jl     0x402093
  40205f:	ae                   	scas   %es:(%rdi),%al
  402060:	f1                   	icebp  
  402061:	8c 5c b6 e8          	mov    %ds,-0x18(%rsi,%rsi,4)
  402065:	7c 34                	jl     0x40209b
  402067:	ae                   	scas   %es:(%rdi),%al
