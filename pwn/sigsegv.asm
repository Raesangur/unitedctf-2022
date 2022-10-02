
sigsegv:     file format elf64-x86-64


Disassembly of section .init:

0000000000400718 <_init>:
  400718:	48 83 ec 08          	sub    $0x8,%rsp
  40071c:	48 8b 05 bd 28 00 00 	mov    0x28bd(%rip),%rax        # 402fe0 <__gmon_start__@Base>
  400723:	48 85 c0             	test   %rax,%rax
  400726:	74 02                	je     40072a <_init+0x12>
  400728:	ff d0                	call   *%rax
  40072a:	48 83 c4 08          	add    $0x8,%rsp
  40072e:	c3                   	ret    

Disassembly of section .plt:

0000000000400730 <puts@plt-0x10>:
  400730:	ff 35 ba 28 00 00    	push   0x28ba(%rip)        # 402ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400736:	ff 25 bc 28 00 00    	jmp    *0x28bc(%rip)        # 402ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40073c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400740 <puts@plt>:
  400740:	ff 25 ba 28 00 00    	jmp    *0x28ba(%rip)        # 403000 <puts@GLIBC_2.2.5>
  400746:	68 00 00 00 00       	push   $0x0
  40074b:	e9 e0 ff ff ff       	jmp    400730 <_init+0x18>

0000000000400750 <printf@plt>:
  400750:	ff 25 b2 28 00 00    	jmp    *0x28b2(%rip)        # 403008 <printf@GLIBC_2.2.5>
  400756:	68 01 00 00 00       	push   $0x1
  40075b:	e9 d0 ff ff ff       	jmp    400730 <_init+0x18>

0000000000400760 <close@plt>:
  400760:	ff 25 aa 28 00 00    	jmp    *0x28aa(%rip)        # 403010 <close@GLIBC_2.2.5>
  400766:	68 02 00 00 00       	push   $0x2
  40076b:	e9 c0 ff ff ff       	jmp    400730 <_init+0x18>

0000000000400770 <signal@plt>:
  400770:	ff 25 a2 28 00 00    	jmp    *0x28a2(%rip)        # 403018 <signal@GLIBC_2.2.5>
  400776:	68 03 00 00 00       	push   $0x3
  40077b:	e9 b0 ff ff ff       	jmp    400730 <_init+0x18>

0000000000400780 <gets@plt>:
  400780:	ff 25 9a 28 00 00    	jmp    *0x289a(%rip)        # 403020 <gets@GLIBC_2.2.5>
  400786:	68 04 00 00 00       	push   $0x4
  40078b:	e9 a0 ff ff ff       	jmp    400730 <_init+0x18>

0000000000400790 <sendfile@plt>:
  400790:	ff 25 92 28 00 00    	jmp    *0x2892(%rip)        # 403028 <sendfile@GLIBC_2.2.5>
  400796:	68 05 00 00 00       	push   $0x5
  40079b:	e9 90 ff ff ff       	jmp    400730 <_init+0x18>

00000000004007a0 <setvbuf@plt>:
  4007a0:	ff 25 8a 28 00 00    	jmp    *0x288a(%rip)        # 403030 <setvbuf@GLIBC_2.2.5>
  4007a6:	68 06 00 00 00       	push   $0x6
  4007ab:	e9 80 ff ff ff       	jmp    400730 <_init+0x18>

00000000004007b0 <open@plt>:
  4007b0:	ff 25 82 28 00 00    	jmp    *0x2882(%rip)        # 403038 <open@GLIBC_2.2.5>
  4007b6:	68 07 00 00 00       	push   $0x7
  4007bb:	e9 70 ff ff ff       	jmp    400730 <_init+0x18>

00000000004007c0 <perror@plt>:
  4007c0:	ff 25 7a 28 00 00    	jmp    *0x287a(%rip)        # 403040 <perror@GLIBC_2.2.5>
  4007c6:	68 08 00 00 00       	push   $0x8
  4007cb:	e9 60 ff ff ff       	jmp    400730 <_init+0x18>

00000000004007d0 <exit@plt>:
  4007d0:	ff 25 72 28 00 00    	jmp    *0x2872(%rip)        # 403048 <exit@GLIBC_2.2.5>
  4007d6:	68 09 00 00 00       	push   $0x9
  4007db:	e9 50 ff ff ff       	jmp    400730 <_init+0x18>

Disassembly of section .text:

00000000004007e0 <_start>:
  4007e0:	31 ed                	xor    %ebp,%ebp
  4007e2:	49 89 d1             	mov    %rdx,%r9
  4007e5:	5e                   	pop    %rsi
  4007e6:	48 89 e2             	mov    %rsp,%rdx
  4007e9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4007ed:	50                   	push   %rax
  4007ee:	54                   	push   %rsp
  4007ef:	49 c7 c0 b0 0b 40 00 	mov    $0x400bb0,%r8
  4007f6:	48 c7 c1 50 0b 40 00 	mov    $0x400b50,%rcx
  4007fd:	48 c7 c7 af 0a 40 00 	mov    $0x400aaf,%rdi
  400804:	ff 15 ce 27 00 00    	call   *0x27ce(%rip)        # 402fd8 <__libc_start_main@GLIBC_2.2.5>
  40080a:	f4                   	hlt    
  40080b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400810 <_dl_relocate_static_pie>:
  400810:	c3                   	ret    
  400811:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400818:	00 00 00 
  40081b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400820 <deregister_tm_clones>:
  400820:	b8 60 30 40 00       	mov    $0x403060,%eax
  400825:	48 3d 60 30 40 00    	cmp    $0x403060,%rax
  40082b:	74 13                	je     400840 <deregister_tm_clones+0x20>
  40082d:	b8 00 00 00 00       	mov    $0x0,%eax
  400832:	48 85 c0             	test   %rax,%rax
  400835:	74 09                	je     400840 <deregister_tm_clones+0x20>
  400837:	bf 60 30 40 00       	mov    $0x403060,%edi
  40083c:	ff e0                	jmp    *%rax
  40083e:	66 90                	xchg   %ax,%ax
  400840:	c3                   	ret    
  400841:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  400848:	00 00 00 00 
  40084c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400850 <register_tm_clones>:
  400850:	be 60 30 40 00       	mov    $0x403060,%esi
  400855:	48 81 ee 60 30 40 00 	sub    $0x403060,%rsi
  40085c:	48 89 f0             	mov    %rsi,%rax
  40085f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  400863:	48 c1 f8 03          	sar    $0x3,%rax
  400867:	48 01 c6             	add    %rax,%rsi
  40086a:	48 d1 fe             	sar    %rsi
  40086d:	74 11                	je     400880 <register_tm_clones+0x30>
  40086f:	b8 00 00 00 00       	mov    $0x0,%eax
  400874:	48 85 c0             	test   %rax,%rax
  400877:	74 07                	je     400880 <register_tm_clones+0x30>
  400879:	bf 60 30 40 00       	mov    $0x403060,%edi
  40087e:	ff e0                	jmp    *%rax
  400880:	c3                   	ret    
  400881:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  400888:	00 00 00 00 
  40088c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400890 <__do_global_dtors_aux>:
  400890:	f3 0f 1e fa          	endbr64 
  400894:	80 3d ed 27 00 00 00 	cmpb   $0x0,0x27ed(%rip)        # 403088 <completed.0>
  40089b:	75 13                	jne    4008b0 <__do_global_dtors_aux+0x20>
  40089d:	55                   	push   %rbp
  40089e:	48 89 e5             	mov    %rsp,%rbp
  4008a1:	e8 7a ff ff ff       	call   400820 <deregister_tm_clones>
  4008a6:	c6 05 db 27 00 00 01 	movb   $0x1,0x27db(%rip)        # 403088 <completed.0>
  4008ad:	5d                   	pop    %rbp
  4008ae:	c3                   	ret    
  4008af:	90                   	nop
  4008b0:	c3                   	ret    
  4008b1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4008b8:	00 00 00 00 
  4008bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004008c0 <frame_dummy>:
  4008c0:	f3 0f 1e fa          	endbr64 
  4008c4:	eb 8a                	jmp    400850 <register_tm_clones>

00000000004008c6 <init>:
  4008c6:	55                   	push   %rbp
  4008c7:	48 89 e5             	mov    %rsp,%rbp
  4008ca:	48 8b 05 9f 27 00 00 	mov    0x279f(%rip),%rax        # 403070 <stdin@GLIBC_2.2.5>
  4008d1:	b9 00 00 00 00       	mov    $0x0,%ecx
  4008d6:	ba 02 00 00 00       	mov    $0x2,%edx
  4008db:	be 00 00 00 00       	mov    $0x0,%esi
  4008e0:	48 89 c7             	mov    %rax,%rdi
  4008e3:	e8 b8 fe ff ff       	call   4007a0 <setvbuf@plt>
  4008e8:	48 8b 05 71 27 00 00 	mov    0x2771(%rip),%rax        # 403060 <stdout@GLIBC_2.2.5>
  4008ef:	b9 00 00 00 00       	mov    $0x0,%ecx
  4008f4:	ba 02 00 00 00       	mov    $0x2,%edx
  4008f9:	be 00 00 00 00       	mov    $0x0,%esi
  4008fe:	48 89 c7             	mov    %rax,%rdi
  400901:	e8 9a fe ff ff       	call   4007a0 <setvbuf@plt>
  400906:	48 8b 05 73 27 00 00 	mov    0x2773(%rip),%rax        # 403080 <stderr@GLIBC_2.2.5>
  40090d:	b9 00 00 00 00       	mov    $0x0,%ecx
  400912:	ba 02 00 00 00       	mov    $0x2,%edx
  400917:	be 00 00 00 00       	mov    $0x0,%esi
  40091c:	48 89 c7             	mov    %rax,%rdi
  40091f:	e8 7c fe ff ff       	call   4007a0 <setvbuf@plt>
  400924:	48 8d 05 9d 02 00 00 	lea    0x29d(%rip),%rax        # 400bc8 <_IO_stdin_used+0x8>
  40092b:	48 89 c7             	mov    %rax,%rdi
  40092e:	e8 0d fe ff ff       	call   400740 <puts@plt>
  400933:	90                   	nop
  400934:	5d                   	pop    %rbp
  400935:	c3                   	ret    

0000000000400936 <sigsegv_handler>:
  400936:	55                   	push   %rbp
  400937:	48 89 e5             	mov    %rsp,%rbp
  40093a:	48 83 ec 10          	sub    $0x10,%rsp
  40093e:	be 00 00 00 00       	mov    $0x0,%esi
  400943:	48 8d 05 45 04 00 00 	lea    0x445(%rip),%rax        # 400d8f <_IO_stdin_used+0x1cf>
  40094a:	48 89 c7             	mov    %rax,%rdi
  40094d:	b8 00 00 00 00       	mov    $0x0,%eax
  400952:	e8 59 fe ff ff       	call   4007b0 <open@plt>
  400957:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40095a:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  40095e:	75 19                	jne    400979 <sigsegv_handler+0x43>
  400960:	48 8d 05 2f 04 00 00 	lea    0x42f(%rip),%rax        # 400d96 <_IO_stdin_used+0x1d6>
  400967:	48 89 c7             	mov    %rax,%rdi
  40096a:	e8 51 fe ff ff       	call   4007c0 <perror@plt>
  40096f:	bf 01 00 00 00       	mov    $0x1,%edi
  400974:	e8 57 fe ff ff       	call   4007d0 <exit@plt>
  400979:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40097c:	b9 36 00 00 00       	mov    $0x36,%ecx
  400981:	ba 00 00 00 00       	mov    $0x0,%edx
  400986:	89 c6                	mov    %eax,%esi
  400988:	bf 01 00 00 00       	mov    $0x1,%edi
  40098d:	e8 fe fd ff ff       	call   400790 <sendfile@plt>
  400992:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400995:	89 c7                	mov    %eax,%edi
  400997:	e8 c4 fd ff ff       	call   400760 <close@plt>
  40099c:	bf 00 00 00 00       	mov    $0x0,%edi
  4009a1:	e8 2a fe ff ff       	call   4007d0 <exit@plt>

00000000004009a6 <win1>:
  4009a6:	55                   	push   %rbp
  4009a7:	48 89 e5             	mov    %rsp,%rbp
  4009aa:	48 83 ec 10          	sub    $0x10,%rsp
  4009ae:	be 00 00 00 00       	mov    $0x0,%esi
  4009b3:	48 8d 05 e1 03 00 00 	lea    0x3e1(%rip),%rax        # 400d9b <_IO_stdin_used+0x1db>
  4009ba:	48 89 c7             	mov    %rax,%rdi
  4009bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4009c2:	e8 e9 fd ff ff       	call   4007b0 <open@plt>
  4009c7:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4009ca:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  4009ce:	75 19                	jne    4009e9 <win1+0x43>
  4009d0:	48 8d 05 bf 03 00 00 	lea    0x3bf(%rip),%rax        # 400d96 <_IO_stdin_used+0x1d6>
  4009d7:	48 89 c7             	mov    %rax,%rdi
  4009da:	e8 e1 fd ff ff       	call   4007c0 <perror@plt>
  4009df:	bf 01 00 00 00       	mov    $0x1,%edi
  4009e4:	e8 e7 fd ff ff       	call   4007d0 <exit@plt>
  4009e9:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4009ec:	b9 36 00 00 00       	mov    $0x36,%ecx
  4009f1:	ba 00 00 00 00       	mov    $0x0,%edx
  4009f6:	89 c6                	mov    %eax,%esi
  4009f8:	bf 01 00 00 00       	mov    $0x1,%edi
  4009fd:	e8 8e fd ff ff       	call   400790 <sendfile@plt>
  400a02:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400a05:	89 c7                	mov    %eax,%edi
  400a07:	e8 54 fd ff ff       	call   400760 <close@plt>
  400a0c:	bf 00 00 00 00       	mov    $0x0,%edi
  400a11:	e8 ba fd ff ff       	call   4007d0 <exit@plt>

0000000000400a16 <win2>:
  400a16:	55                   	push   %rbp
  400a17:	48 89 e5             	mov    %rsp,%rbp
  400a1a:	48 83 ec 20          	sub    $0x20,%rsp
  400a1e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400a22:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400a26:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400a2a:	48 33 45 e0          	xor    -0x20(%rbp),%rax
  400a2e:	48 ba 37 13 37 13 37 	movabs $0x1337133713371337,%rdx
  400a35:	13 37 13 
  400a38:	48 39 d0             	cmp    %rdx,%rax
  400a3b:	74 0a                	je     400a47 <win2+0x31>
  400a3d:	bf 01 00 00 00       	mov    $0x1,%edi
  400a42:	e8 89 fd ff ff       	call   4007d0 <exit@plt>
  400a47:	be 00 00 00 00       	mov    $0x0,%esi
  400a4c:	48 8d 05 4f 03 00 00 	lea    0x34f(%rip),%rax        # 400da2 <_IO_stdin_used+0x1e2>
  400a53:	48 89 c7             	mov    %rax,%rdi
  400a56:	b8 00 00 00 00       	mov    $0x0,%eax
  400a5b:	e8 50 fd ff ff       	call   4007b0 <open@plt>
  400a60:	89 45 fc             	mov    %eax,-0x4(%rbp)
  400a63:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  400a67:	75 19                	jne    400a82 <win2+0x6c>
  400a69:	48 8d 05 26 03 00 00 	lea    0x326(%rip),%rax        # 400d96 <_IO_stdin_used+0x1d6>
  400a70:	48 89 c7             	mov    %rax,%rdi
  400a73:	e8 48 fd ff ff       	call   4007c0 <perror@plt>
  400a78:	bf 01 00 00 00       	mov    $0x1,%edi
  400a7d:	e8 4e fd ff ff       	call   4007d0 <exit@plt>
  400a82:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400a85:	b9 36 00 00 00       	mov    $0x36,%ecx
  400a8a:	ba 00 00 00 00       	mov    $0x0,%edx
  400a8f:	89 c6                	mov    %eax,%esi
  400a91:	bf 01 00 00 00       	mov    $0x1,%edi
  400a96:	e8 f5 fc ff ff       	call   400790 <sendfile@plt>
  400a9b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400a9e:	89 c7                	mov    %eax,%edi
  400aa0:	e8 bb fc ff ff       	call   400760 <close@plt>
  400aa5:	bf 00 00 00 00       	mov    $0x0,%edi
  400aaa:	e8 21 fd ff ff       	call   4007d0 <exit@plt>

0000000000400aaf <main>:
  400aaf:	55                   	push   %rbp
  400ab0:	48 89 e5             	mov    %rsp,%rbp
  400ab3:	48 83 ec 20          	sub    $0x20,%rsp
  400ab7:	b8 00 00 00 00       	mov    $0x0,%eax
  400abc:	e8 05 fe ff ff       	call   4008c6 <init>
  400ac1:	48 8d 05 6e fe ff ff 	lea    -0x192(%rip),%rax        # 400936 <sigsegv_handler>
  400ac8:	48 89 c6             	mov    %rax,%rsi
  400acb:	bf 0b 00 00 00       	mov    $0xb,%edi
  400ad0:	e8 9b fc ff ff       	call   400770 <signal@plt>
  400ad5:	48 8d 05 d4 02 00 00 	lea    0x2d4(%rip),%rax        # 400db0 <_IO_stdin_used+0x1f0>
  400adc:	48 89 c7             	mov    %rax,%rdi
  400adf:	e8 5c fc ff ff       	call   400740 <puts@plt>
  400ae4:	48 8d 05 1d 03 00 00 	lea    0x31d(%rip),%rax        # 400e08 <_IO_stdin_used+0x248>
  400aeb:	48 89 c7             	mov    %rax,%rdi
  400aee:	e8 4d fc ff ff       	call   400740 <puts@plt>
  400af3:	48 8d 05 3e 03 00 00 	lea    0x33e(%rip),%rax        # 400e38 <_IO_stdin_used+0x278>
  400afa:	48 89 c7             	mov    %rax,%rdi
  400afd:	e8 3e fc ff ff       	call   400740 <puts@plt>
  400b02:	48 8d 05 7f 03 00 00 	lea    0x37f(%rip),%rax        # 400e88 <_IO_stdin_used+0x2c8>
  400b09:	48 89 c7             	mov    %rax,%rdi
  400b0c:	e8 2f fc ff ff       	call   400740 <puts@plt>
  400b11:	48 8d 05 e8 03 00 00 	lea    0x3e8(%rip),%rax        # 400f00 <_IO_stdin_used+0x340>
  400b18:	48 89 c7             	mov    %rax,%rdi
  400b1b:	e8 20 fc ff ff       	call   400740 <puts@plt>
  400b20:	48 8d 05 49 04 00 00 	lea    0x449(%rip),%rax        # 400f70 <_IO_stdin_used+0x3b0>
  400b27:	48 89 c7             	mov    %rax,%rdi
  400b2a:	b8 00 00 00 00       	mov    $0x0,%eax
  400b2f:	e8 1c fc ff ff       	call   400750 <printf@plt>
  400b34:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400b38:	48 89 c7             	mov    %rax,%rdi
  400b3b:	b8 00 00 00 00       	mov    $0x0,%eax
  400b40:	e8 3b fc ff ff       	call   400780 <gets@plt>
  400b45:	b8 00 00 00 00       	mov    $0x0,%eax
  400b4a:	c9                   	leave  
  400b4b:	c3                   	ret    
  400b4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b50 <__libc_csu_init>:
  400b50:	41 57                	push   %r15
  400b52:	4c 8d 3d 9f 22 00 00 	lea    0x229f(%rip),%r15        # 402df8 <__frame_dummy_init_array_entry>
  400b59:	41 56                	push   %r14
  400b5b:	49 89 d6             	mov    %rdx,%r14
  400b5e:	41 55                	push   %r13
  400b60:	49 89 f5             	mov    %rsi,%r13
  400b63:	41 54                	push   %r12
  400b65:	41 89 fc             	mov    %edi,%r12d
  400b68:	55                   	push   %rbp
  400b69:	48 8d 2d 90 22 00 00 	lea    0x2290(%rip),%rbp        # 402e00 <__do_global_dtors_aux_fini_array_entry>
  400b70:	53                   	push   %rbx
  400b71:	4c 29 fd             	sub    %r15,%rbp
  400b74:	48 83 ec 08          	sub    $0x8,%rsp
  400b78:	e8 9b fb ff ff       	call   400718 <_init>
  400b7d:	48 c1 fd 03          	sar    $0x3,%rbp
  400b81:	74 1b                	je     400b9e <__libc_csu_init+0x4e>
  400b83:	31 db                	xor    %ebx,%ebx
  400b85:	0f 1f 00             	nopl   (%rax)
  400b88:	4c 89 f2             	mov    %r14,%rdx
  400b8b:	4c 89 ee             	mov    %r13,%rsi
  400b8e:	44 89 e7             	mov    %r12d,%edi
  400b91:	41 ff 14 df          	call   *(%r15,%rbx,8)
  400b95:	48 83 c3 01          	add    $0x1,%rbx
  400b99:	48 39 dd             	cmp    %rbx,%rbp
  400b9c:	75 ea                	jne    400b88 <__libc_csu_init+0x38>
  400b9e:	48 83 c4 08          	add    $0x8,%rsp
  400ba2:	5b                   	pop    %rbx
  400ba3:	5d                   	pop    %rbp
  400ba4:	41 5c                	pop    %r12
  400ba6:	41 5d                	pop    %r13
  400ba8:	41 5e                	pop    %r14
  400baa:	41 5f                	pop    %r15
  400bac:	c3                   	ret    
  400bad:	0f 1f 00             	nopl   (%rax)

0000000000400bb0 <__libc_csu_fini>:
  400bb0:	c3                   	ret    

Disassembly of section .fini:

0000000000400bb4 <_fini>:
  400bb4:	48 83 ec 08          	sub    $0x8,%rsp
  400bb8:	48 83 c4 08          	add    $0x8,%rsp
  400bbc:	c3                   	ret    
