
eaas:     file format elf64-x86-64


Disassembly of section .init:

0000000000400600 <_init>:
  400600:	48 83 ec 08          	sub    $0x8,%rsp
  400604:	48 8b 05 d5 19 00 00 	mov    0x19d5(%rip),%rax        # 401fe0 <__gmon_start__@Base>
  40060b:	48 85 c0             	test   %rax,%rax
  40060e:	74 02                	je     400612 <_init+0x12>
  400610:	ff d0                	call   *%rax
  400612:	48 83 c4 08          	add    $0x8,%rsp
  400616:	c3                   	ret    

Disassembly of section .plt:

0000000000400620 <puts@plt-0x10>:
  400620:	ff 35 ca 19 00 00    	push   0x19ca(%rip)        # 401ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400626:	ff 25 cc 19 00 00    	jmp    *0x19cc(%rip)        # 401ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40062c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400630 <puts@plt>:
  400630:	ff 25 ca 19 00 00    	jmp    *0x19ca(%rip)        # 402000 <puts@GLIBC_2.2.5>
  400636:	68 00 00 00 00       	push   $0x0
  40063b:	e9 e0 ff ff ff       	jmp    400620 <_init+0x20>

0000000000400640 <system@plt>:
  400640:	ff 25 c2 19 00 00    	jmp    *0x19c2(%rip)        # 402008 <system@GLIBC_2.2.5>
  400646:	68 01 00 00 00       	push   $0x1
  40064b:	e9 d0 ff ff ff       	jmp    400620 <_init+0x20>

0000000000400650 <printf@plt>:
  400650:	ff 25 ba 19 00 00    	jmp    *0x19ba(%rip)        # 402010 <printf@GLIBC_2.2.5>
  400656:	68 02 00 00 00       	push   $0x2
  40065b:	e9 c0 ff ff ff       	jmp    400620 <_init+0x20>

0000000000400660 <fgets@plt>:
  400660:	ff 25 b2 19 00 00    	jmp    *0x19b2(%rip)        # 402018 <fgets@GLIBC_2.2.5>
  400666:	68 03 00 00 00       	push   $0x3
  40066b:	e9 b0 ff ff ff       	jmp    400620 <_init+0x20>

0000000000400670 <setvbuf@plt>:
  400670:	ff 25 aa 19 00 00    	jmp    *0x19aa(%rip)        # 402020 <setvbuf@GLIBC_2.2.5>
  400676:	68 04 00 00 00       	push   $0x4
  40067b:	e9 a0 ff ff ff       	jmp    400620 <_init+0x20>

Disassembly of section .text:

0000000000400680 <_start>:
  400680:	31 ed                	xor    %ebp,%ebp
  400682:	49 89 d1             	mov    %rdx,%r9
  400685:	5e                   	pop    %rsi
  400686:	48 89 e2             	mov    %rsp,%rdx
  400689:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40068d:	50                   	push   %rax
  40068e:	54                   	push   %rsp
  40068f:	49 c7 c0 b0 08 40 00 	mov    $0x4008b0,%r8
  400696:	48 c7 c1 50 08 40 00 	mov    $0x400850,%rcx
  40069d:	48 c7 c7 ec 07 40 00 	mov    $0x4007ec,%rdi
  4006a4:	ff 15 2e 19 00 00    	call   *0x192e(%rip)        # 401fd8 <__libc_start_main@GLIBC_2.2.5>
  4006aa:	f4                   	hlt    
  4006ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004006b0 <_dl_relocate_static_pie>:
  4006b0:	c3                   	ret    
  4006b1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4006b8:	00 00 00 
  4006bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004006c0 <deregister_tm_clones>:
  4006c0:	b8 38 20 40 00       	mov    $0x402038,%eax
  4006c5:	48 3d 38 20 40 00    	cmp    $0x402038,%rax
  4006cb:	74 13                	je     4006e0 <deregister_tm_clones+0x20>
  4006cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4006d2:	48 85 c0             	test   %rax,%rax
  4006d5:	74 09                	je     4006e0 <deregister_tm_clones+0x20>
  4006d7:	bf 38 20 40 00       	mov    $0x402038,%edi
  4006dc:	ff e0                	jmp    *%rax
  4006de:	66 90                	xchg   %ax,%ax
  4006e0:	c3                   	ret    
  4006e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4006e8:	00 00 00 00 
  4006ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006f0 <register_tm_clones>:
  4006f0:	be 38 20 40 00       	mov    $0x402038,%esi
  4006f5:	48 81 ee 38 20 40 00 	sub    $0x402038,%rsi
  4006fc:	48 89 f0             	mov    %rsi,%rax
  4006ff:	48 c1 ee 3f          	shr    $0x3f,%rsi
  400703:	48 c1 f8 03          	sar    $0x3,%rax
  400707:	48 01 c6             	add    %rax,%rsi
  40070a:	48 d1 fe             	sar    %rsi
  40070d:	74 11                	je     400720 <register_tm_clones+0x30>
  40070f:	b8 00 00 00 00       	mov    $0x0,%eax
  400714:	48 85 c0             	test   %rax,%rax
  400717:	74 07                	je     400720 <register_tm_clones+0x30>
  400719:	bf 38 20 40 00       	mov    $0x402038,%edi
  40071e:	ff e0                	jmp    *%rax
  400720:	c3                   	ret    
  400721:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  400728:	00 00 00 00 
  40072c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400730 <__do_global_dtors_aux>:
  400730:	f3 0f 1e fa          	endbr64 
  400734:	80 3d 2d 19 00 00 00 	cmpb   $0x0,0x192d(%rip)        # 402068 <completed.0>
  40073b:	75 13                	jne    400750 <__do_global_dtors_aux+0x20>
  40073d:	55                   	push   %rbp
  40073e:	48 89 e5             	mov    %rsp,%rbp
  400741:	e8 7a ff ff ff       	call   4006c0 <deregister_tm_clones>
  400746:	c6 05 1b 19 00 00 01 	movb   $0x1,0x191b(%rip)        # 402068 <completed.0>
  40074d:	5d                   	pop    %rbp
  40074e:	c3                   	ret    
  40074f:	90                   	nop
  400750:	c3                   	ret    
  400751:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  400758:	00 00 00 00 
  40075c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400760 <frame_dummy>:
  400760:	f3 0f 1e fa          	endbr64 
  400764:	eb 8a                	jmp    4006f0 <register_tm_clones>

0000000000400766 <init>:
  400766:	55                   	push   %rbp
  400767:	48 89 e5             	mov    %rsp,%rbp
  40076a:	48 8b 05 df 18 00 00 	mov    0x18df(%rip),%rax        # 402050 <stdin@GLIBC_2.2.5>
  400771:	b9 00 00 00 00       	mov    $0x0,%ecx
  400776:	ba 02 00 00 00       	mov    $0x2,%edx
  40077b:	be 00 00 00 00       	mov    $0x0,%esi
  400780:	48 89 c7             	mov    %rax,%rdi
  400783:	e8 e8 fe ff ff       	call   400670 <setvbuf@plt>
  400788:	48 8b 05 b1 18 00 00 	mov    0x18b1(%rip),%rax        # 402040 <stdout@GLIBC_2.2.5>
  40078f:	b9 00 00 00 00       	mov    $0x0,%ecx
  400794:	ba 02 00 00 00       	mov    $0x2,%edx
  400799:	be 00 00 00 00       	mov    $0x0,%esi
  40079e:	48 89 c7             	mov    %rax,%rdi
  4007a1:	e8 ca fe ff ff       	call   400670 <setvbuf@plt>
  4007a6:	48 8b 05 b3 18 00 00 	mov    0x18b3(%rip),%rax        # 402060 <stderr@GLIBC_2.2.5>
  4007ad:	b9 00 00 00 00       	mov    $0x0,%ecx
  4007b2:	ba 02 00 00 00       	mov    $0x2,%edx
  4007b7:	be 00 00 00 00       	mov    $0x0,%esi
  4007bc:	48 89 c7             	mov    %rax,%rdi
  4007bf:	e8 ac fe ff ff       	call   400670 <setvbuf@plt>
  4007c4:	48 8d 05 fd 00 00 00 	lea    0xfd(%rip),%rax        # 4008c8 <_IO_stdin_used+0x8>
  4007cb:	48 89 c7             	mov    %rax,%rdi
  4007ce:	e8 5d fe ff ff       	call   400630 <puts@plt>
  4007d3:	90                   	nop
  4007d4:	5d                   	pop    %rbp
  4007d5:	c3                   	ret    

00000000004007d6 <banner>:
  4007d6:	55                   	push   %rbp
  4007d7:	48 89 e5             	mov    %rsp,%rbp
  4007da:	48 8d 05 af 02 00 00 	lea    0x2af(%rip),%rax        # 400a90 <_IO_stdin_used+0x1d0>
  4007e1:	48 89 c7             	mov    %rax,%rdi
  4007e4:	e8 57 fe ff ff       	call   400640 <system@plt>
  4007e9:	90                   	nop
  4007ea:	5d                   	pop    %rbp
  4007eb:	c3                   	ret    

00000000004007ec <main>:
  4007ec:	55                   	push   %rbp
  4007ed:	48 89 e5             	mov    %rsp,%rbp
  4007f0:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  4007f7:	89 bd 7c ff ff ff    	mov    %edi,-0x84(%rbp)
  4007fd:	48 89 b5 70 ff ff ff 	mov    %rsi,-0x90(%rbp)
  400804:	48 89 95 68 ff ff ff 	mov    %rdx,-0x98(%rbp)
  40080b:	b8 00 00 00 00       	mov    $0x0,%eax
  400810:	e8 51 ff ff ff       	call   400766 <init>
  400815:	b8 00 00 00 00       	mov    $0x0,%eax
  40081a:	e8 b7 ff ff ff       	call   4007d6 <banner>
  40081f:	48 8b 15 2a 18 00 00 	mov    0x182a(%rip),%rdx        # 402050 <stdin@GLIBC_2.2.5>
  400826:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  40082a:	be 80 00 00 00       	mov    $0x80,%esi
  40082f:	48 89 c7             	mov    %rax,%rdi
  400832:	e8 29 fe ff ff       	call   400660 <fgets@plt>
  400837:	48 89 c7             	mov    %rax,%rdi
  40083a:	b8 00 00 00 00       	mov    $0x0,%eax
  40083f:	e8 0c fe ff ff       	call   400650 <printf@plt>
  400844:	eb d9                	jmp    40081f <main+0x33>
  400846:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40084d:	00 00 00 

0000000000400850 <__libc_csu_init>:
  400850:	41 57                	push   %r15
  400852:	4c 8d 3d 9f 15 00 00 	lea    0x159f(%rip),%r15        # 401df8 <__frame_dummy_init_array_entry>
  400859:	41 56                	push   %r14
  40085b:	49 89 d6             	mov    %rdx,%r14
  40085e:	41 55                	push   %r13
  400860:	49 89 f5             	mov    %rsi,%r13
  400863:	41 54                	push   %r12
  400865:	41 89 fc             	mov    %edi,%r12d
  400868:	55                   	push   %rbp
  400869:	48 8d 2d 90 15 00 00 	lea    0x1590(%rip),%rbp        # 401e00 <__do_global_dtors_aux_fini_array_entry>
  400870:	53                   	push   %rbx
  400871:	4c 29 fd             	sub    %r15,%rbp
  400874:	48 83 ec 08          	sub    $0x8,%rsp
  400878:	e8 83 fd ff ff       	call   400600 <_init>
  40087d:	48 c1 fd 03          	sar    $0x3,%rbp
  400881:	74 1b                	je     40089e <__libc_csu_init+0x4e>
  400883:	31 db                	xor    %ebx,%ebx
  400885:	0f 1f 00             	nopl   (%rax)
  400888:	4c 89 f2             	mov    %r14,%rdx
  40088b:	4c 89 ee             	mov    %r13,%rsi
  40088e:	44 89 e7             	mov    %r12d,%edi
  400891:	41 ff 14 df          	call   *(%r15,%rbx,8)
  400895:	48 83 c3 01          	add    $0x1,%rbx
  400899:	48 39 dd             	cmp    %rbx,%rbp
  40089c:	75 ea                	jne    400888 <__libc_csu_init+0x38>
  40089e:	48 83 c4 08          	add    $0x8,%rsp
  4008a2:	5b                   	pop    %rbx
  4008a3:	5d                   	pop    %rbp
  4008a4:	41 5c                	pop    %r12
  4008a6:	41 5d                	pop    %r13
  4008a8:	41 5e                	pop    %r14
  4008aa:	41 5f                	pop    %r15
  4008ac:	c3                   	ret    
  4008ad:	0f 1f 00             	nopl   (%rax)

00000000004008b0 <__libc_csu_fini>:
  4008b0:	c3                   	ret    

Disassembly of section .fini:

00000000004008b4 <_fini>:
  4008b4:	48 83 ec 08          	sub    $0x8,%rsp
  4008b8:	48 83 c4 08          	add    $0x8,%rsp
  4008bc:	c3                   	ret    
