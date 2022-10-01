
rodata:     file format elf64-x86-64


Disassembly of section .init:

0000000000000638 <.init>:
 638:	48 83 ec 08          	sub    $0x8,%rsp
 63c:	48 8b 05 8d 19 00 00 	mov    0x198d(%rip),%rax        # 1fd0 <__cxa_finalize@plt+0x1930>
 643:	48 85 c0             	test   %rax,%rax
 646:	74 02                	je     64a <write@plt-0x16>
 648:	ff d0                	call   *%rax
 64a:	48 83 c4 08          	add    $0x8,%rsp
 64e:	c3                   	ret    

Disassembly of section .plt:

0000000000000650 <write@plt-0x10>:
 650:	ff 35 9a 19 00 00    	push   0x199a(%rip)        # 1ff0 <__cxa_finalize@plt+0x1950>
 656:	ff 25 9c 19 00 00    	jmp    *0x199c(%rip)        # 1ff8 <__cxa_finalize@plt+0x1958>
 65c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000660 <write@plt>:
 660:	ff 25 9a 19 00 00    	jmp    *0x199a(%rip)        # 2000 <__cxa_finalize@plt+0x1960>
 666:	68 00 00 00 00       	push   $0x0
 66b:	e9 e0 ff ff ff       	jmp    650 <write@plt-0x10>

0000000000000670 <strcspn@plt>:
 670:	ff 25 92 19 00 00    	jmp    *0x1992(%rip)        # 2008 <__cxa_finalize@plt+0x1968>
 676:	68 01 00 00 00       	push   $0x1
 67b:	e9 d0 ff ff ff       	jmp    650 <write@plt-0x10>

0000000000000680 <read@plt>:
 680:	ff 25 8a 19 00 00    	jmp    *0x198a(%rip)        # 2010 <__cxa_finalize@plt+0x1970>
 686:	68 02 00 00 00       	push   $0x2
 68b:	e9 c0 ff ff ff       	jmp    650 <write@plt-0x10>

0000000000000690 <strcmp@plt>:
 690:	ff 25 82 19 00 00    	jmp    *0x1982(%rip)        # 2018 <__cxa_finalize@plt+0x1978>
 696:	68 03 00 00 00       	push   $0x3
 69b:	e9 b0 ff ff ff       	jmp    650 <write@plt-0x10>

Disassembly of section .plt.got:

00000000000006a0 <__cxa_finalize@plt>:
 6a0:	ff 25 3a 19 00 00    	jmp    *0x193a(%rip)        # 1fe0 <__cxa_finalize@plt+0x1940>
 6a6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000006b0 <.text>:
 6b0:	31 ed                	xor    %ebp,%ebp
 6b2:	49 89 d1             	mov    %rdx,%r9
 6b5:	5e                   	pop    %rsi
 6b6:	48 89 e2             	mov    %rsp,%rdx
 6b9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 6bd:	50                   	push   %rax
 6be:	54                   	push   %rsp
 6bf:	4c 8d 05 0a 02 00 00 	lea    0x20a(%rip),%r8        # 8d0 <__cxa_finalize@plt+0x230>
 6c6:	48 8d 0d a3 01 00 00 	lea    0x1a3(%rip),%rcx        # 870 <__cxa_finalize@plt+0x1d0>
 6cd:	48 8d 3d c5 00 00 00 	lea    0xc5(%rip),%rdi        # 799 <__cxa_finalize@plt+0xf9>
 6d4:	ff 15 ee 18 00 00    	call   *0x18ee(%rip)        # 1fc8 <__cxa_finalize@plt+0x1928>
 6da:	f4                   	hlt    
 6db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 6e0:	48 8d 3d 49 19 00 00 	lea    0x1949(%rip),%rdi        # 2030 <__cxa_finalize@plt+0x1990>
 6e7:	48 8d 05 42 19 00 00 	lea    0x1942(%rip),%rax        # 2030 <__cxa_finalize@plt+0x1990>
 6ee:	48 39 f8             	cmp    %rdi,%rax
 6f1:	74 15                	je     708 <__cxa_finalize@plt+0x68>
 6f3:	48 8b 05 c6 18 00 00 	mov    0x18c6(%rip),%rax        # 1fc0 <__cxa_finalize@plt+0x1920>
 6fa:	48 85 c0             	test   %rax,%rax
 6fd:	74 09                	je     708 <__cxa_finalize@plt+0x68>
 6ff:	ff e0                	jmp    *%rax
 701:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 708:	c3                   	ret    
 709:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 710:	48 8d 3d 19 19 00 00 	lea    0x1919(%rip),%rdi        # 2030 <__cxa_finalize@plt+0x1990>
 717:	48 8d 35 12 19 00 00 	lea    0x1912(%rip),%rsi        # 2030 <__cxa_finalize@plt+0x1990>
 71e:	48 29 fe             	sub    %rdi,%rsi
 721:	48 89 f0             	mov    %rsi,%rax
 724:	48 c1 ee 3f          	shr    $0x3f,%rsi
 728:	48 c1 f8 03          	sar    $0x3,%rax
 72c:	48 01 c6             	add    %rax,%rsi
 72f:	48 d1 fe             	sar    %rsi
 732:	74 14                	je     748 <__cxa_finalize@plt+0xa8>
 734:	48 8b 05 9d 18 00 00 	mov    0x189d(%rip),%rax        # 1fd8 <__cxa_finalize@plt+0x1938>
 73b:	48 85 c0             	test   %rax,%rax
 73e:	74 08                	je     748 <__cxa_finalize@plt+0xa8>
 740:	ff e0                	jmp    *%rax
 742:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 748:	c3                   	ret    
 749:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 750:	f3 0f 1e fa          	endbr64 
 754:	80 3d d5 18 00 00 00 	cmpb   $0x0,0x18d5(%rip)        # 2030 <__cxa_finalize@plt+0x1990>
 75b:	75 2b                	jne    788 <__cxa_finalize@plt+0xe8>
 75d:	55                   	push   %rbp
 75e:	48 83 3d 7a 18 00 00 	cmpq   $0x0,0x187a(%rip)        # 1fe0 <__cxa_finalize@plt+0x1940>
 765:	00 
 766:	48 89 e5             	mov    %rsp,%rbp
 769:	74 0c                	je     777 <__cxa_finalize@plt+0xd7>
 76b:	48 8b 3d b6 18 00 00 	mov    0x18b6(%rip),%rdi        # 2028 <__cxa_finalize@plt+0x1988>
 772:	e8 29 ff ff ff       	call   6a0 <__cxa_finalize@plt>
 777:	e8 64 ff ff ff       	call   6e0 <__cxa_finalize@plt+0x40>
 77c:	c6 05 ad 18 00 00 01 	movb   $0x1,0x18ad(%rip)        # 2030 <__cxa_finalize@plt+0x1990>
 783:	5d                   	pop    %rbp
 784:	c3                   	ret    
 785:	0f 1f 00             	nopl   (%rax)
 788:	c3                   	ret    
 789:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 790:	f3 0f 1e fa          	endbr64 
 794:	e9 77 ff ff ff       	jmp    710 <__cxa_finalize@plt+0x70>
 799:	55                   	push   %rbp
 79a:	48 89 e5             	mov    %rsp,%rbp
 79d:	48 83 ec 30          	sub    $0x30,%rsp
 7a1:	48 8d 05 3c 01 00 00 	lea    0x13c(%rip),%rax        # 8e4 <__cxa_finalize@plt+0x244>
 7a8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 7ac:	ba 18 00 00 00       	mov    $0x18,%edx
 7b1:	48 8d 05 3d 01 00 00 	lea    0x13d(%rip),%rax        # 8f5 <__cxa_finalize@plt+0x255>
 7b8:	48 89 c6             	mov    %rax,%rsi
 7bb:	bf 01 00 00 00       	mov    $0x1,%edi
 7c0:	e8 9b fe ff ff       	call   660 <write@plt>
 7c5:	ba 14 00 00 00       	mov    $0x14,%edx
 7ca:	48 8d 05 3d 01 00 00 	lea    0x13d(%rip),%rax        # 90e <__cxa_finalize@plt+0x26e>
 7d1:	48 89 c6             	mov    %rax,%rsi
 7d4:	bf 01 00 00 00       	mov    $0x1,%edi
 7d9:	e8 82 fe ff ff       	call   660 <write@plt>
 7de:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 7e2:	ba 20 00 00 00       	mov    $0x20,%edx
 7e7:	48 89 c6             	mov    %rax,%rsi
 7ea:	bf 00 00 00 00       	mov    $0x0,%edi
 7ef:	e8 8c fe ff ff       	call   680 <read@plt>
 7f4:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 7f8:	48 8d 15 24 01 00 00 	lea    0x124(%rip),%rdx        # 923 <__cxa_finalize@plt+0x283>
 7ff:	48 89 d6             	mov    %rdx,%rsi
 802:	48 89 c7             	mov    %rax,%rdi
 805:	e8 66 fe ff ff       	call   670 <strcspn@plt>
 80a:	c6 44 05 d0 00       	movb   $0x0,-0x30(%rbp,%rax,1)
 80f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 813:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 817:	48 89 d6             	mov    %rdx,%rsi
 81a:	48 89 c7             	mov    %rax,%rdi
 81d:	e8 6e fe ff ff       	call   690 <strcmp@plt>
 822:	85 c0                	test   %eax,%eax
 824:	75 1b                	jne    841 <__cxa_finalize@plt+0x1a1>
 826:	ba 08 00 00 00       	mov    $0x8,%edx
 82b:	48 8d 05 f3 00 00 00 	lea    0xf3(%rip),%rax        # 925 <__cxa_finalize@plt+0x285>
 832:	48 89 c6             	mov    %rax,%rsi
 835:	bf 01 00 00 00       	mov    $0x1,%edi
 83a:	e8 21 fe ff ff       	call   660 <write@plt>
 83f:	eb 19                	jmp    85a <__cxa_finalize@plt+0x1ba>
 841:	ba 08 00 00 00       	mov    $0x8,%edx
 846:	48 8d 05 e1 00 00 00 	lea    0xe1(%rip),%rax        # 92e <__cxa_finalize@plt+0x28e>
 84d:	48 89 c6             	mov    %rax,%rsi
 850:	bf 01 00 00 00       	mov    $0x1,%edi
 855:	e8 06 fe ff ff       	call   660 <write@plt>
 85a:	b8 00 00 00 00       	mov    $0x0,%eax
 85f:	c9                   	leave  
 860:	c3                   	ret    
 861:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
 868:	00 00 00 
 86b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 870:	41 57                	push   %r15
 872:	4c 8d 3d 57 15 00 00 	lea    0x1557(%rip),%r15        # 1dd0 <__cxa_finalize@plt+0x1730>
 879:	41 56                	push   %r14
 87b:	49 89 d6             	mov    %rdx,%r14
 87e:	41 55                	push   %r13
 880:	49 89 f5             	mov    %rsi,%r13
 883:	41 54                	push   %r12
 885:	41 89 fc             	mov    %edi,%r12d
 888:	55                   	push   %rbp
 889:	48 8d 2d 48 15 00 00 	lea    0x1548(%rip),%rbp        # 1dd8 <__cxa_finalize@plt+0x1738>
 890:	53                   	push   %rbx
 891:	4c 29 fd             	sub    %r15,%rbp
 894:	48 83 ec 08          	sub    $0x8,%rsp
 898:	e8 9b fd ff ff       	call   638 <write@plt-0x28>
 89d:	48 c1 fd 03          	sar    $0x3,%rbp
 8a1:	74 1b                	je     8be <__cxa_finalize@plt+0x21e>
 8a3:	31 db                	xor    %ebx,%ebx
 8a5:	0f 1f 00             	nopl   (%rax)
 8a8:	4c 89 f2             	mov    %r14,%rdx
 8ab:	4c 89 ee             	mov    %r13,%rsi
 8ae:	44 89 e7             	mov    %r12d,%edi
 8b1:	41 ff 14 df          	call   *(%r15,%rbx,8)
 8b5:	48 83 c3 01          	add    $0x1,%rbx
 8b9:	48 39 dd             	cmp    %rbx,%rbp
 8bc:	75 ea                	jne    8a8 <__cxa_finalize@plt+0x208>
 8be:	48 83 c4 08          	add    $0x8,%rsp
 8c2:	5b                   	pop    %rbx
 8c3:	5d                   	pop    %rbp
 8c4:	41 5c                	pop    %r12
 8c6:	41 5d                	pop    %r13
 8c8:	41 5e                	pop    %r14
 8ca:	41 5f                	pop    %r15
 8cc:	c3                   	ret    
 8cd:	0f 1f 00             	nopl   (%rax)
 8d0:	c3                   	ret    

Disassembly of section .fini:

00000000000008d4 <.fini>:
 8d4:	48 83 ec 08          	sub    $0x8,%rsp
 8d8:	48 83 c4 08          	add    $0x8,%rsp
 8dc:	c3                   	ret    
