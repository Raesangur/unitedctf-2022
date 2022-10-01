
ret2libc:     file format elf64-x86-64


Disassembly of section .init:

00000000004005c8 <_init>:
  4005c8:	48 83 ec 08          	sub    $0x8,%rsp
  4005cc:	48 8b 05 0d 1a 00 00 	mov    0x1a0d(%rip),%rax        # 401fe0 <__gmon_start__@Base>
  4005d3:	48 85 c0             	test   %rax,%rax
  4005d6:	74 02                	je     4005da <_init+0x12>
  4005d8:	ff d0                	call   *%rax
  4005da:	48 83 c4 08          	add    $0x8,%rsp
  4005de:	c3                   	ret    

Disassembly of section .plt:

00000000004005e0 <puts@plt-0x10>:
  4005e0:	ff 35 0a 1a 00 00    	push   0x1a0a(%rip)        # 401ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005e6:	ff 25 0c 1a 00 00    	jmp    *0x1a0c(%rip)        # 401ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005f0 <puts@plt>:
  4005f0:	ff 25 0a 1a 00 00    	jmp    *0x1a0a(%rip)        # 402000 <puts@GLIBC_2.2.5>
  4005f6:	68 00 00 00 00       	push   $0x0
  4005fb:	e9 e0 ff ff ff       	jmp    4005e0 <_init+0x18>

0000000000400600 <printf@plt>:
  400600:	ff 25 02 1a 00 00    	jmp    *0x1a02(%rip)        # 402008 <printf@GLIBC_2.2.5>
  400606:	68 01 00 00 00       	push   $0x1
  40060b:	e9 d0 ff ff ff       	jmp    4005e0 <_init+0x18>

0000000000400610 <gets@plt>:
  400610:	ff 25 fa 19 00 00    	jmp    *0x19fa(%rip)        # 402010 <gets@GLIBC_2.2.5>
  400616:	68 02 00 00 00       	push   $0x2
  40061b:	e9 c0 ff ff ff       	jmp    4005e0 <_init+0x18>

0000000000400620 <setvbuf@plt>:
  400620:	ff 25 f2 19 00 00    	jmp    *0x19f2(%rip)        # 402018 <setvbuf@GLIBC_2.2.5>
  400626:	68 03 00 00 00       	push   $0x3
  40062b:	e9 b0 ff ff ff       	jmp    4005e0 <_init+0x18>

Disassembly of section .text:

0000000000400630 <_start>:
  400630:	31 ed                	xor    %ebp,%ebp
  400632:	49 89 d1             	mov    %rdx,%r9
  400635:	5e                   	pop    %rsi
  400636:	48 89 e2             	mov    %rsp,%rdx
  400639:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40063d:	50                   	push   %rax
  40063e:	54                   	push   %rsp
  40063f:	49 c7 c0 30 08 40 00 	mov    $0x400830,%r8
  400646:	48 c7 c1 d0 07 40 00 	mov    $0x4007d0,%rcx
  40064d:	48 c7 c7 86 07 40 00 	mov    $0x400786,%rdi
  400654:	ff 15 7e 19 00 00    	call   *0x197e(%rip)        # 401fd8 <__libc_start_main@GLIBC_2.2.5>
  40065a:	f4                   	hlt    
  40065b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400660 <_dl_relocate_static_pie>:
  400660:	c3                   	ret    
  400661:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400668:	00 00 00 
  40066b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400670 <deregister_tm_clones>:
  400670:	b8 30 20 40 00       	mov    $0x402030,%eax
  400675:	48 3d 30 20 40 00    	cmp    $0x402030,%rax
  40067b:	74 13                	je     400690 <deregister_tm_clones+0x20>
  40067d:	b8 00 00 00 00       	mov    $0x0,%eax
  400682:	48 85 c0             	test   %rax,%rax
  400685:	74 09                	je     400690 <deregister_tm_clones+0x20>
  400687:	bf 30 20 40 00       	mov    $0x402030,%edi
  40068c:	ff e0                	jmp    *%rax
  40068e:	66 90                	xchg   %ax,%ax
  400690:	c3                   	ret    
  400691:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  400698:	00 00 00 00 
  40069c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006a0 <register_tm_clones>:
  4006a0:	be 30 20 40 00       	mov    $0x402030,%esi
  4006a5:	48 81 ee 30 20 40 00 	sub    $0x402030,%rsi
  4006ac:	48 89 f0             	mov    %rsi,%rax
  4006af:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4006b3:	48 c1 f8 03          	sar    $0x3,%rax
  4006b7:	48 01 c6             	add    %rax,%rsi
  4006ba:	48 d1 fe             	sar    %rsi
  4006bd:	74 11                	je     4006d0 <register_tm_clones+0x30>
  4006bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4006c4:	48 85 c0             	test   %rax,%rax
  4006c7:	74 07                	je     4006d0 <register_tm_clones+0x30>
  4006c9:	bf 30 20 40 00       	mov    $0x402030,%edi
  4006ce:	ff e0                	jmp    *%rax
  4006d0:	c3                   	ret    
  4006d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4006d8:	00 00 00 00 
  4006dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006e0 <__do_global_dtors_aux>:
  4006e0:	f3 0f 1e fa          	endbr64 
  4006e4:	80 3d 7d 19 00 00 00 	cmpb   $0x0,0x197d(%rip)        # 402068 <completed.0>
  4006eb:	75 13                	jne    400700 <__do_global_dtors_aux+0x20>
  4006ed:	55                   	push   %rbp
  4006ee:	48 89 e5             	mov    %rsp,%rbp
  4006f1:	e8 7a ff ff ff       	call   400670 <deregister_tm_clones>
  4006f6:	c6 05 6b 19 00 00 01 	movb   $0x1,0x196b(%rip)        # 402068 <completed.0>
  4006fd:	5d                   	pop    %rbp
  4006fe:	c3                   	ret    
  4006ff:	90                   	nop
  400700:	c3                   	ret    
  400701:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  400708:	00 00 00 00 
  40070c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400710 <frame_dummy>:
  400710:	f3 0f 1e fa          	endbr64 
  400714:	eb 8a                	jmp    4006a0 <register_tm_clones>

0000000000400716 <init>:
  400716:	55                   	push   %rbp
  400717:	48 89 e5             	mov    %rsp,%rbp
  40071a:	48 8b 05 2f 19 00 00 	mov    0x192f(%rip),%rax        # 402050 <stdin@GLIBC_2.2.5>
  400721:	b9 00 00 00 00       	mov    $0x0,%ecx
  400726:	ba 02 00 00 00       	mov    $0x2,%edx
  40072b:	be 00 00 00 00       	mov    $0x0,%esi
  400730:	48 89 c7             	mov    %rax,%rdi
  400733:	e8 e8 fe ff ff       	call   400620 <setvbuf@plt>
  400738:	48 8b 05 01 19 00 00 	mov    0x1901(%rip),%rax        # 402040 <stdout@GLIBC_2.2.5>
  40073f:	b9 00 00 00 00       	mov    $0x0,%ecx
  400744:	ba 02 00 00 00       	mov    $0x2,%edx
  400749:	be 00 00 00 00       	mov    $0x0,%esi
  40074e:	48 89 c7             	mov    %rax,%rdi
  400751:	e8 ca fe ff ff       	call   400620 <setvbuf@plt>
  400756:	48 8b 05 03 19 00 00 	mov    0x1903(%rip),%rax        # 402060 <stderr@GLIBC_2.2.5>
  40075d:	b9 00 00 00 00       	mov    $0x0,%ecx
  400762:	ba 02 00 00 00       	mov    $0x2,%edx
  400767:	be 00 00 00 00       	mov    $0x0,%esi
  40076c:	48 89 c7             	mov    %rax,%rdi
  40076f:	e8 ac fe ff ff       	call   400620 <setvbuf@plt>
  400774:	48 8d 05 cd 00 00 00 	lea    0xcd(%rip),%rax        # 400848 <_IO_stdin_used+0x8>
  40077b:	48 89 c7             	mov    %rax,%rdi
  40077e:	e8 6d fe ff ff       	call   4005f0 <puts@plt>
  400783:	90                   	nop
  400784:	5d                   	pop    %rbp
  400785:	c3                   	ret    

0000000000400786 <main>:
  400786:	55                   	push   %rbp
  400787:	48 89 e5             	mov    %rsp,%rbp
  40078a:	48 83 ec 20          	sub    $0x20,%rsp
  40078e:	b8 00 00 00 00       	mov    $0x0,%eax
  400793:	e8 7e ff ff ff       	call   400716 <init>
  400798:	48 8d 05 70 02 00 00 	lea    0x270(%rip),%rax        # 400a0f <_IO_stdin_used+0x1cf>
  40079f:	48 89 c7             	mov    %rax,%rdi
  4007a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4007a7:	e8 54 fe ff ff       	call   400600 <printf@plt>
  4007ac:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4007b0:	48 89 c7             	mov    %rax,%rdi
  4007b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4007b8:	e8 53 fe ff ff       	call   400610 <gets@plt>
  4007bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4007c2:	c9                   	leave  
  4007c3:	c3                   	ret    
  4007c4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4007cb:	00 00 00 
  4007ce:	66 90                	xchg   %ax,%ax

00000000004007d0 <__libc_csu_init>:
  4007d0:	41 57                	push   %r15
  4007d2:	4c 8d 3d 1f 16 00 00 	lea    0x161f(%rip),%r15        # 401df8 <__frame_dummy_init_array_entry>
  4007d9:	41 56                	push   %r14
  4007db:	49 89 d6             	mov    %rdx,%r14
  4007de:	41 55                	push   %r13
  4007e0:	49 89 f5             	mov    %rsi,%r13
  4007e3:	41 54                	push   %r12
  4007e5:	41 89 fc             	mov    %edi,%r12d
  4007e8:	55                   	push   %rbp
  4007e9:	48 8d 2d 10 16 00 00 	lea    0x1610(%rip),%rbp        # 401e00 <__do_global_dtors_aux_fini_array_entry>
  4007f0:	53                   	push   %rbx
  4007f1:	4c 29 fd             	sub    %r15,%rbp
  4007f4:	48 83 ec 08          	sub    $0x8,%rsp
  4007f8:	e8 cb fd ff ff       	call   4005c8 <_init>
  4007fd:	48 c1 fd 03          	sar    $0x3,%rbp
  400801:	74 1b                	je     40081e <__libc_csu_init+0x4e>
  400803:	31 db                	xor    %ebx,%ebx
  400805:	0f 1f 00             	nopl   (%rax)
  400808:	4c 89 f2             	mov    %r14,%rdx
  40080b:	4c 89 ee             	mov    %r13,%rsi
  40080e:	44 89 e7             	mov    %r12d,%edi
  400811:	41 ff 14 df          	call   *(%r15,%rbx,8)
  400815:	48 83 c3 01          	add    $0x1,%rbx
  400819:	48 39 dd             	cmp    %rbx,%rbp
  40081c:	75 ea                	jne    400808 <__libc_csu_init+0x38>
  40081e:	48 83 c4 08          	add    $0x8,%rsp
  400822:	5b                   	pop    %rbx
  400823:	5d                   	pop    %rbp
  400824:	41 5c                	pop    %r12
  400826:	41 5d                	pop    %r13
  400828:	41 5e                	pop    %r14
  40082a:	41 5f                	pop    %r15
  40082c:	c3                   	ret    
  40082d:	0f 1f 00             	nopl   (%rax)

0000000000400830 <__libc_csu_fini>:
  400830:	c3                   	ret    

Disassembly of section .fini:

0000000000400834 <_fini>:
  400834:	48 83 ec 08          	sub    $0x8,%rsp
  400838:	48 83 c4 08          	add    $0x8,%rsp
  40083c:	c3                   	ret    
