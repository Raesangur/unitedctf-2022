
ltrace:     file format elf64-x86-64


Disassembly of section .init:

0000000000000670 <.init>:
 670:	48 83 ec 08          	sub    $0x8,%rsp
 674:	48 8b 05 55 19 00 00 	mov    0x1955(%rip),%rax        # 1fd0 <__cxa_finalize@plt+0x18e0>
 67b:	48 85 c0             	test   %rax,%rax
 67e:	74 02                	je     682 <memfrob@plt-0x1e>
 680:	ff d0                	call   *%rax
 682:	48 83 c4 08          	add    $0x8,%rsp
 686:	c3                   	ret    

Disassembly of section .plt:

0000000000000690 <memfrob@plt-0x10>:
 690:	ff 35 5a 19 00 00    	push   0x195a(%rip)        # 1ff0 <__cxa_finalize@plt+0x1900>
 696:	ff 25 5c 19 00 00    	jmp    *0x195c(%rip)        # 1ff8 <__cxa_finalize@plt+0x1908>
 69c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000006a0 <memfrob@plt>:
 6a0:	ff 25 5a 19 00 00    	jmp    *0x195a(%rip)        # 2000 <__cxa_finalize@plt+0x1910>
 6a6:	68 00 00 00 00       	push   $0x0
 6ab:	e9 e0 ff ff ff       	jmp    690 <memfrob@plt-0x10>

00000000000006b0 <write@plt>:
 6b0:	ff 25 52 19 00 00    	jmp    *0x1952(%rip)        # 2008 <__cxa_finalize@plt+0x1918>
 6b6:	68 01 00 00 00       	push   $0x1
 6bb:	e9 d0 ff ff ff       	jmp    690 <memfrob@plt-0x10>

00000000000006c0 <strcspn@plt>:
 6c0:	ff 25 4a 19 00 00    	jmp    *0x194a(%rip)        # 2010 <__cxa_finalize@plt+0x1920>
 6c6:	68 02 00 00 00       	push   $0x2
 6cb:	e9 c0 ff ff ff       	jmp    690 <memfrob@plt-0x10>

00000000000006d0 <read@plt>:
 6d0:	ff 25 42 19 00 00    	jmp    *0x1942(%rip)        # 2018 <__cxa_finalize@plt+0x1928>
 6d6:	68 03 00 00 00       	push   $0x3
 6db:	e9 b0 ff ff ff       	jmp    690 <memfrob@plt-0x10>

00000000000006e0 <strcmp@plt>:
 6e0:	ff 25 3a 19 00 00    	jmp    *0x193a(%rip)        # 2020 <__cxa_finalize@plt+0x1930>
 6e6:	68 04 00 00 00       	push   $0x4
 6eb:	e9 a0 ff ff ff       	jmp    690 <memfrob@plt-0x10>

Disassembly of section .plt.got:

00000000000006f0 <__cxa_finalize@plt>:
 6f0:	ff 25 ea 18 00 00    	jmp    *0x18ea(%rip)        # 1fe0 <__cxa_finalize@plt+0x18f0>
 6f6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000700 <.text>:
 700:	31 ed                	xor    %ebp,%ebp
 702:	49 89 d1             	mov    %rdx,%r9
 705:	5e                   	pop    %rsi
 706:	48 89 e2             	mov    %rsp,%rdx
 709:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 70d:	50                   	push   %rax
 70e:	54                   	push   %rsp
 70f:	4c 8d 05 3a 02 00 00 	lea    0x23a(%rip),%r8        # 950 <__cxa_finalize@plt+0x260>
 716:	48 8d 0d d3 01 00 00 	lea    0x1d3(%rip),%rcx        # 8f0 <__cxa_finalize@plt+0x200>
 71d:	48 8d 3d c5 00 00 00 	lea    0xc5(%rip),%rdi        # 7e9 <__cxa_finalize@plt+0xf9>
 724:	ff 15 9e 18 00 00    	call   *0x189e(%rip)        # 1fc8 <__cxa_finalize@plt+0x18d8>
 72a:	f4                   	hlt    
 72b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 730:	48 8d 3d 01 19 00 00 	lea    0x1901(%rip),%rdi        # 2038 <__cxa_finalize@plt+0x1948>
 737:	48 8d 05 fa 18 00 00 	lea    0x18fa(%rip),%rax        # 2038 <__cxa_finalize@plt+0x1948>
 73e:	48 39 f8             	cmp    %rdi,%rax
 741:	74 15                	je     758 <__cxa_finalize@plt+0x68>
 743:	48 8b 05 76 18 00 00 	mov    0x1876(%rip),%rax        # 1fc0 <__cxa_finalize@plt+0x18d0>
 74a:	48 85 c0             	test   %rax,%rax
 74d:	74 09                	je     758 <__cxa_finalize@plt+0x68>
 74f:	ff e0                	jmp    *%rax
 751:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 758:	c3                   	ret    
 759:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 760:	48 8d 3d d1 18 00 00 	lea    0x18d1(%rip),%rdi        # 2038 <__cxa_finalize@plt+0x1948>
 767:	48 8d 35 ca 18 00 00 	lea    0x18ca(%rip),%rsi        # 2038 <__cxa_finalize@plt+0x1948>
 76e:	48 29 fe             	sub    %rdi,%rsi
 771:	48 89 f0             	mov    %rsi,%rax
 774:	48 c1 ee 3f          	shr    $0x3f,%rsi
 778:	48 c1 f8 03          	sar    $0x3,%rax
 77c:	48 01 c6             	add    %rax,%rsi
 77f:	48 d1 fe             	sar    %rsi
 782:	74 14                	je     798 <__cxa_finalize@plt+0xa8>
 784:	48 8b 05 4d 18 00 00 	mov    0x184d(%rip),%rax        # 1fd8 <__cxa_finalize@plt+0x18e8>
 78b:	48 85 c0             	test   %rax,%rax
 78e:	74 08                	je     798 <__cxa_finalize@plt+0xa8>
 790:	ff e0                	jmp    *%rax
 792:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 798:	c3                   	ret    
 799:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 7a0:	f3 0f 1e fa          	endbr64 
 7a4:	80 3d 8d 18 00 00 00 	cmpb   $0x0,0x188d(%rip)        # 2038 <__cxa_finalize@plt+0x1948>
 7ab:	75 2b                	jne    7d8 <__cxa_finalize@plt+0xe8>
 7ad:	55                   	push   %rbp
 7ae:	48 83 3d 2a 18 00 00 	cmpq   $0x0,0x182a(%rip)        # 1fe0 <__cxa_finalize@plt+0x18f0>
 7b5:	00 
 7b6:	48 89 e5             	mov    %rsp,%rbp
 7b9:	74 0c                	je     7c7 <__cxa_finalize@plt+0xd7>
 7bb:	48 8b 3d 6e 18 00 00 	mov    0x186e(%rip),%rdi        # 2030 <__cxa_finalize@plt+0x1940>
 7c2:	e8 29 ff ff ff       	call   6f0 <__cxa_finalize@plt>
 7c7:	e8 64 ff ff ff       	call   730 <__cxa_finalize@plt+0x40>
 7cc:	c6 05 65 18 00 00 01 	movb   $0x1,0x1865(%rip)        # 2038 <__cxa_finalize@plt+0x1948>
 7d3:	5d                   	pop    %rbp
 7d4:	c3                   	ret    
 7d5:	0f 1f 00             	nopl   (%rax)
 7d8:	c3                   	ret    
 7d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 7e0:	f3 0f 1e fa          	endbr64 
 7e4:	e9 77 ff ff ff       	jmp    760 <__cxa_finalize@plt+0x70>
 7e9:	55                   	push   %rbp
 7ea:	48 89 e5             	mov    %rsp,%rbp
 7ed:	48 83 ec 40          	sub    $0x40,%rsp
 7f1:	48 b8 6c 66 6b 6d 07 	movabs $0x481b46076d6b666c,%rax
 7f8:	46 1b 48 
 7fb:	48 ba 58 1e 58 53 49 	movabs $0x46461e4953581e58,%rdx
 802:	1e 46 46 
 805:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
 809:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
 80d:	48 b8 5e 58 1e 49 1b 	movabs $0x4c4d441b491e585e,%rax
 814:	44 4d 4c 
 817:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 81b:	c7 45 f8 5e 5d 0b 00 	movl   $0xb5d5e,-0x8(%rbp)
 822:	ba 18 00 00 00       	mov    $0x18,%edx
 827:	48 8d 05 36 01 00 00 	lea    0x136(%rip),%rax        # 964 <__cxa_finalize@plt+0x274>
 82e:	48 89 c6             	mov    %rax,%rsi
 831:	bf 01 00 00 00       	mov    $0x1,%edi
 836:	e8 75 fe ff ff       	call   6b0 <write@plt>
 83b:	ba 14 00 00 00       	mov    $0x14,%edx
 840:	48 8d 05 36 01 00 00 	lea    0x136(%rip),%rax        # 97d <__cxa_finalize@plt+0x28d>
 847:	48 89 c6             	mov    %rax,%rsi
 84a:	bf 01 00 00 00       	mov    $0x1,%edi
 84f:	e8 5c fe ff ff       	call   6b0 <write@plt>
 854:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
 858:	ba 20 00 00 00       	mov    $0x20,%edx
 85d:	48 89 c6             	mov    %rax,%rsi
 860:	bf 00 00 00 00       	mov    $0x0,%edi
 865:	e8 66 fe ff ff       	call   6d0 <read@plt>
 86a:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
 86e:	48 8d 15 1d 01 00 00 	lea    0x11d(%rip),%rdx        # 992 <__cxa_finalize@plt+0x2a2>
 875:	48 89 d6             	mov    %rdx,%rsi
 878:	48 89 c7             	mov    %rax,%rdi
 87b:	e8 40 fe ff ff       	call   6c0 <strcspn@plt>
 880:	c6 44 05 c0 00       	movb   $0x0,-0x40(%rbp,%rax,1)
 885:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
 889:	be 1b 00 00 00       	mov    $0x1b,%esi
 88e:	48 89 c7             	mov    %rax,%rdi
 891:	e8 0a fe ff ff       	call   6a0 <memfrob@plt>
 896:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
 89a:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
 89e:	48 89 d6             	mov    %rdx,%rsi
 8a1:	48 89 c7             	mov    %rax,%rdi
 8a4:	e8 37 fe ff ff       	call   6e0 <strcmp@plt>
 8a9:	85 c0                	test   %eax,%eax
 8ab:	75 1b                	jne    8c8 <__cxa_finalize@plt+0x1d8>
 8ad:	ba 08 00 00 00       	mov    $0x8,%edx
 8b2:	48 8d 05 db 00 00 00 	lea    0xdb(%rip),%rax        # 994 <__cxa_finalize@plt+0x2a4>
 8b9:	48 89 c6             	mov    %rax,%rsi
 8bc:	bf 01 00 00 00       	mov    $0x1,%edi
 8c1:	e8 ea fd ff ff       	call   6b0 <write@plt>
 8c6:	eb 19                	jmp    8e1 <__cxa_finalize@plt+0x1f1>
 8c8:	ba 08 00 00 00       	mov    $0x8,%edx
 8cd:	48 8d 05 c9 00 00 00 	lea    0xc9(%rip),%rax        # 99d <__cxa_finalize@plt+0x2ad>
 8d4:	48 89 c6             	mov    %rax,%rsi
 8d7:	bf 01 00 00 00       	mov    $0x1,%edi
 8dc:	e8 cf fd ff ff       	call   6b0 <write@plt>
 8e1:	b8 00 00 00 00       	mov    $0x0,%eax
 8e6:	c9                   	leave  
 8e7:	c3                   	ret    
 8e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 8ef:	00 
 8f0:	41 57                	push   %r15
 8f2:	4c 8d 3d d7 14 00 00 	lea    0x14d7(%rip),%r15        # 1dd0 <__cxa_finalize@plt+0x16e0>
 8f9:	41 56                	push   %r14
 8fb:	49 89 d6             	mov    %rdx,%r14
 8fe:	41 55                	push   %r13
 900:	49 89 f5             	mov    %rsi,%r13
 903:	41 54                	push   %r12
 905:	41 89 fc             	mov    %edi,%r12d
 908:	55                   	push   %rbp
 909:	48 8d 2d c8 14 00 00 	lea    0x14c8(%rip),%rbp        # 1dd8 <__cxa_finalize@plt+0x16e8>
 910:	53                   	push   %rbx
 911:	4c 29 fd             	sub    %r15,%rbp
 914:	48 83 ec 08          	sub    $0x8,%rsp
 918:	e8 53 fd ff ff       	call   670 <memfrob@plt-0x30>
 91d:	48 c1 fd 03          	sar    $0x3,%rbp
 921:	74 1b                	je     93e <__cxa_finalize@plt+0x24e>
 923:	31 db                	xor    %ebx,%ebx
 925:	0f 1f 00             	nopl   (%rax)
 928:	4c 89 f2             	mov    %r14,%rdx
 92b:	4c 89 ee             	mov    %r13,%rsi
 92e:	44 89 e7             	mov    %r12d,%edi
 931:	41 ff 14 df          	call   *(%r15,%rbx,8)
 935:	48 83 c3 01          	add    $0x1,%rbx
 939:	48 39 dd             	cmp    %rbx,%rbp
 93c:	75 ea                	jne    928 <__cxa_finalize@plt+0x238>
 93e:	48 83 c4 08          	add    $0x8,%rsp
 942:	5b                   	pop    %rbx
 943:	5d                   	pop    %rbp
 944:	41 5c                	pop    %r12
 946:	41 5d                	pop    %r13
 948:	41 5e                	pop    %r14
 94a:	41 5f                	pop    %r15
 94c:	c3                   	ret    
 94d:	0f 1f 00             	nopl   (%rax)
 950:	c3                   	ret    

Disassembly of section .fini:

0000000000000954 <.fini>:
 954:	48 83 ec 08          	sub    $0x8,%rsp
 958:	48 83 c4 08          	add    $0x8,%rsp
 95c:	c3                   	ret    
