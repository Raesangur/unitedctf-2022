
strace:     file format elf64-x86-64


Disassembly of section .init:

00000000000005c8 <.init>:
 5c8:	48 83 ec 08          	sub    $0x8,%rsp
 5cc:	48 8b 05 fd 19 00 00 	mov    0x19fd(%rip),%rax        # 1fd0 <__cxa_finalize@plt+0x19c0>
 5d3:	48 85 c0             	test   %rax,%rax
 5d6:	74 02                	je     5da <write@plt-0x16>
 5d8:	ff d0                	call   *%rax
 5da:	48 83 c4 08          	add    $0x8,%rsp
 5de:	c3                   	ret    

Disassembly of section .plt:

00000000000005e0 <write@plt-0x10>:
 5e0:	ff 35 0a 1a 00 00    	push   0x1a0a(%rip)        # 1ff0 <__cxa_finalize@plt+0x19e0>
 5e6:	ff 25 0c 1a 00 00    	jmp    *0x1a0c(%rip)        # 1ff8 <__cxa_finalize@plt+0x19e8>
 5ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000005f0 <write@plt>:
 5f0:	ff 25 0a 1a 00 00    	jmp    *0x1a0a(%rip)        # 2000 <__cxa_finalize@plt+0x19f0>
 5f6:	68 00 00 00 00       	push   $0x0
 5fb:	e9 e0 ff ff ff       	jmp    5e0 <write@plt-0x10>

0000000000000600 <mprotect@plt>:
 600:	ff 25 02 1a 00 00    	jmp    *0x1a02(%rip)        # 2008 <__cxa_finalize@plt+0x19f8>
 606:	68 01 00 00 00       	push   $0x1
 60b:	e9 d0 ff ff ff       	jmp    5e0 <write@plt-0x10>

Disassembly of section .plt.got:

0000000000000610 <__cxa_finalize@plt>:
 610:	ff 25 ca 19 00 00    	jmp    *0x19ca(%rip)        # 1fe0 <__cxa_finalize@plt+0x19d0>
 616:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000620 <.text>:
 620:	31 ed                	xor    %ebp,%ebp
 622:	49 89 d1             	mov    %rdx,%r9
 625:	5e                   	pop    %rsi
 626:	48 89 e2             	mov    %rsp,%rdx
 629:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 62d:	50                   	push   %rax
 62e:	54                   	push   %rsp
 62f:	4c 8d 05 aa 01 00 00 	lea    0x1aa(%rip),%r8        # 7e0 <__cxa_finalize@plt+0x1d0>
 636:	48 8d 0d 43 01 00 00 	lea    0x143(%rip),%rcx        # 780 <__cxa_finalize@plt+0x170>
 63d:	48 8d 3d c5 00 00 00 	lea    0xc5(%rip),%rdi        # 709 <__cxa_finalize@plt+0xf9>
 644:	ff 15 7e 19 00 00    	call   *0x197e(%rip)        # 1fc8 <__cxa_finalize@plt+0x19b8>
 64a:	f4                   	hlt    
 64b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 650:	48 8d 3d 61 1a 00 00 	lea    0x1a61(%rip),%rdi        # 20b8 <__cxa_finalize@plt+0x1aa8>
 657:	48 8d 05 5a 1a 00 00 	lea    0x1a5a(%rip),%rax        # 20b8 <__cxa_finalize@plt+0x1aa8>
 65e:	48 39 f8             	cmp    %rdi,%rax
 661:	74 15                	je     678 <__cxa_finalize@plt+0x68>
 663:	48 8b 05 56 19 00 00 	mov    0x1956(%rip),%rax        # 1fc0 <__cxa_finalize@plt+0x19b0>
 66a:	48 85 c0             	test   %rax,%rax
 66d:	74 09                	je     678 <__cxa_finalize@plt+0x68>
 66f:	ff e0                	jmp    *%rax
 671:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 678:	c3                   	ret    
 679:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 680:	48 8d 3d 31 1a 00 00 	lea    0x1a31(%rip),%rdi        # 20b8 <__cxa_finalize@plt+0x1aa8>
 687:	48 8d 35 2a 1a 00 00 	lea    0x1a2a(%rip),%rsi        # 20b8 <__cxa_finalize@plt+0x1aa8>
 68e:	48 29 fe             	sub    %rdi,%rsi
 691:	48 89 f0             	mov    %rsi,%rax
 694:	48 c1 ee 3f          	shr    $0x3f,%rsi
 698:	48 c1 f8 03          	sar    $0x3,%rax
 69c:	48 01 c6             	add    %rax,%rsi
 69f:	48 d1 fe             	sar    %rsi
 6a2:	74 14                	je     6b8 <__cxa_finalize@plt+0xa8>
 6a4:	48 8b 05 2d 19 00 00 	mov    0x192d(%rip),%rax        # 1fd8 <__cxa_finalize@plt+0x19c8>
 6ab:	48 85 c0             	test   %rax,%rax
 6ae:	74 08                	je     6b8 <__cxa_finalize@plt+0xa8>
 6b0:	ff e0                	jmp    *%rax
 6b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 6b8:	c3                   	ret    
 6b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 6c0:	f3 0f 1e fa          	endbr64 
 6c4:	80 3d e9 19 00 00 00 	cmpb   $0x0,0x19e9(%rip)        # 20b4 <__cxa_finalize@plt+0x1aa4>
 6cb:	75 2b                	jne    6f8 <__cxa_finalize@plt+0xe8>
 6cd:	55                   	push   %rbp
 6ce:	48 83 3d 0a 19 00 00 	cmpq   $0x0,0x190a(%rip)        # 1fe0 <__cxa_finalize@plt+0x19d0>
 6d5:	00 
 6d6:	48 89 e5             	mov    %rsp,%rbp
 6d9:	74 0c                	je     6e7 <__cxa_finalize@plt+0xd7>
 6db:	48 8b 3d 46 19 00 00 	mov    0x1946(%rip),%rdi        # 2028 <__cxa_finalize@plt+0x1a18>
 6e2:	e8 29 ff ff ff       	call   610 <__cxa_finalize@plt>
 6e7:	e8 64 ff ff ff       	call   650 <__cxa_finalize@plt+0x40>
 6ec:	c6 05 c1 19 00 00 01 	movb   $0x1,0x19c1(%rip)        # 20b4 <__cxa_finalize@plt+0x1aa4>
 6f3:	5d                   	pop    %rbp
 6f4:	c3                   	ret    
 6f5:	0f 1f 00             	nopl   (%rax)
 6f8:	c3                   	ret    
 6f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 700:	f3 0f 1e fa          	endbr64 
 704:	e9 77 ff ff ff       	jmp    680 <__cxa_finalize@plt+0x70>
 709:	55                   	push   %rbp
 70a:	48 89 e5             	mov    %rsp,%rbp
 70d:	48 8d 05 2c 19 00 00 	lea    0x192c(%rip),%rax        # 2040 <__cxa_finalize@plt+0x1a30>
 714:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
 71a:	ba 07 00 00 00       	mov    $0x7,%edx
 71f:	be 00 10 00 00       	mov    $0x1000,%esi
 724:	48 89 c7             	mov    %rax,%rdi
 727:	e8 d4 fe ff ff       	call   600 <mprotect@plt>
 72c:	ba 36 00 00 00       	mov    $0x36,%edx
 731:	48 8d 05 c0 00 00 00 	lea    0xc0(%rip),%rax        # 7f8 <__cxa_finalize@plt+0x1e8>
 738:	48 89 c6             	mov    %rax,%rsi
 73b:	bf 01 00 00 00       	mov    $0x1,%edi
 740:	e8 ab fe ff ff       	call   5f0 <write@plt>
 745:	48 8d 15 f4 18 00 00 	lea    0x18f4(%rip),%rdx        # 2040 <__cxa_finalize@plt+0x1a30>
 74c:	b8 00 00 00 00       	mov    $0x0,%eax
 751:	ff d2                	call   *%rdx
 753:	ba 25 00 00 00       	mov    $0x25,%edx
 758:	48 8d 05 d1 00 00 00 	lea    0xd1(%rip),%rax        # 830 <__cxa_finalize@plt+0x220>
 75f:	48 89 c6             	mov    %rax,%rsi
 762:	bf 01 00 00 00       	mov    $0x1,%edi
 767:	e8 84 fe ff ff       	call   5f0 <write@plt>
 76c:	b8 00 00 00 00       	mov    $0x0,%eax
 771:	5d                   	pop    %rbp
 772:	c3                   	ret    
 773:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
 77a:	00 00 00 
 77d:	0f 1f 00             	nopl   (%rax)
 780:	41 57                	push   %r15
 782:	4c 8d 3d 47 16 00 00 	lea    0x1647(%rip),%r15        # 1dd0 <__cxa_finalize@plt+0x17c0>
 789:	41 56                	push   %r14
 78b:	49 89 d6             	mov    %rdx,%r14
 78e:	41 55                	push   %r13
 790:	49 89 f5             	mov    %rsi,%r13
 793:	41 54                	push   %r12
 795:	41 89 fc             	mov    %edi,%r12d
 798:	55                   	push   %rbp
 799:	48 8d 2d 38 16 00 00 	lea    0x1638(%rip),%rbp        # 1dd8 <__cxa_finalize@plt+0x17c8>
 7a0:	53                   	push   %rbx
 7a1:	4c 29 fd             	sub    %r15,%rbp
 7a4:	48 83 ec 08          	sub    $0x8,%rsp
 7a8:	e8 1b fe ff ff       	call   5c8 <write@plt-0x28>
 7ad:	48 c1 fd 03          	sar    $0x3,%rbp
 7b1:	74 1b                	je     7ce <__cxa_finalize@plt+0x1be>
 7b3:	31 db                	xor    %ebx,%ebx
 7b5:	0f 1f 00             	nopl   (%rax)
 7b8:	4c 89 f2             	mov    %r14,%rdx
 7bb:	4c 89 ee             	mov    %r13,%rsi
 7be:	44 89 e7             	mov    %r12d,%edi
 7c1:	41 ff 14 df          	call   *(%r15,%rbx,8)
 7c5:	48 83 c3 01          	add    $0x1,%rbx
 7c9:	48 39 dd             	cmp    %rbx,%rbp
 7cc:	75 ea                	jne    7b8 <__cxa_finalize@plt+0x1a8>
 7ce:	48 83 c4 08          	add    $0x8,%rsp
 7d2:	5b                   	pop    %rbx
 7d3:	5d                   	pop    %rbp
 7d4:	41 5c                	pop    %r12
 7d6:	41 5d                	pop    %r13
 7d8:	41 5e                	pop    %r14
 7da:	41 5f                	pop    %r15
 7dc:	c3                   	ret    
 7dd:	0f 1f 00             	nopl   (%rax)
 7e0:	c3                   	ret    

Disassembly of section .fini:

00000000000007e4 <.fini>:
 7e4:	48 83 ec 08          	sub    $0x8,%rsp
 7e8:	48 83 c4 08          	add    $0x8,%rsp
 7ec:	c3                   	ret    
