
sigsegv:     file format elf64-x86-64


Disassembly of section .init:

0000000000400718 <_init>:
  400718:	48 83 ec 08          	sub    $0x8,%rsp
  40071c:	48 8b 05 bd 28 00 00 	mov    0x28bd(%rip),%rax        # 402fe0 <__gmon_start__@Base>
  400723:	48 85 c0             	test   %rax,%rax
  400726:	74 02                	je     40072a <_init+0x12>
  400728:	ff d0                	callq  *%rax
  40072a:	48 83 c4 08          	add    $0x8,%rsp
  40072e:	c3                   	retq   

Disassembly of section .plt:

0000000000400730 <puts@plt-0x10>:
  400730:	ff 35 ba 28 00 00    	pushq  0x28ba(%rip)        # 402ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400736:	ff 25 bc 28 00 00    	jmpq   *0x28bc(%rip)        # 402ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40073c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400740 <puts@plt>:
  400740:	ff 25 ba 28 00 00    	jmpq   *0x28ba(%rip)        # 403000 <puts@GLIBC_2.2.5>
  400746:	68 00 00 00 00       	pushq  $0x0
  40074b:	e9 e0 ff ff ff       	jmpq   400730 <_init+0x18>

0000000000400750 <printf@plt>:
  400750:	ff 25 b2 28 00 00    	jmpq   *0x28b2(%rip)        # 403008 <printf@GLIBC_2.2.5>
  400756:	68 01 00 00 00       	pushq  $0x1
  40075b:	e9 d0 ff ff ff       	jmpq   400730 <_init+0x18>

0000000000400760 <close@plt>:
  400760:	ff 25 aa 28 00 00    	jmpq   *0x28aa(%rip)        # 403010 <close@GLIBC_2.2.5>
  400766:	68 02 00 00 00       	pushq  $0x2
  40076b:	e9 c0 ff ff ff       	jmpq   400730 <_init+0x18>

0000000000400770 <signal@plt>:
  400770:	ff 25 a2 28 00 00    	jmpq   *0x28a2(%rip)        # 403018 <signal@GLIBC_2.2.5>
  400776:	68 03 00 00 00       	pushq  $0x3
  40077b:	e9 b0 ff ff ff       	jmpq   400730 <_init+0x18>

0000000000400780 <gets@plt>:
  400780:	ff 25 9a 28 00 00    	jmpq   *0x289a(%rip)        # 403020 <gets@GLIBC_2.2.5>
  400786:	68 04 00 00 00       	pushq  $0x4
  40078b:	e9 a0 ff ff ff       	jmpq   400730 <_init+0x18>

0000000000400790 <sendfile@plt>:
  400790:	ff 25 92 28 00 00    	jmpq   *0x2892(%rip)        # 403028 <sendfile@GLIBC_2.2.5>
  400796:	68 05 00 00 00       	pushq  $0x5
  40079b:	e9 90 ff ff ff       	jmpq   400730 <_init+0x18>

00000000004007a0 <setvbuf@plt>:
  4007a0:	ff 25 8a 28 00 00    	jmpq   *0x288a(%rip)        # 403030 <setvbuf@GLIBC_2.2.5>
  4007a6:	68 06 00 00 00       	pushq  $0x6
  4007ab:	e9 80 ff ff ff       	jmpq   400730 <_init+0x18>

00000000004007b0 <open@plt>:
  4007b0:	ff 25 82 28 00 00    	jmpq   *0x2882(%rip)        # 403038 <open@GLIBC_2.2.5>
  4007b6:	68 07 00 00 00       	pushq  $0x7
  4007bb:	e9 70 ff ff ff       	jmpq   400730 <_init+0x18>

00000000004007c0 <perror@plt>:
  4007c0:	ff 25 7a 28 00 00    	jmpq   *0x287a(%rip)        # 403040 <perror@GLIBC_2.2.5>
  4007c6:	68 08 00 00 00       	pushq  $0x8
  4007cb:	e9 60 ff ff ff       	jmpq   400730 <_init+0x18>

00000000004007d0 <exit@plt>:
  4007d0:	ff 25 72 28 00 00    	jmpq   *0x2872(%rip)        # 403048 <exit@GLIBC_2.2.5>
  4007d6:	68 09 00 00 00       	pushq  $0x9
  4007db:	e9 50 ff ff ff       	jmpq   400730 <_init+0x18>

Disassembly of section .text:

00000000004007e0 <_start>:
  4007e0:	31 ed                	xor    %ebp,%ebp
  4007e2:	49 89 d1             	mov    %rdx,%r9
  4007e5:	5e                   	pop    %rsi
  4007e6:	48 89 e2             	mov    %rsp,%rdx
  4007e9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4007ed:	50                   	push   %rax
  4007ee:	54                   	push   %rsp
  4007ef:	49 c7 c0 90 0c 40 00 	mov    $0x400c90,%r8
  4007f6:	48 c7 c1 30 0c 40 00 	mov    $0x400c30,%rcx
  4007fd:	48 c7 c7 36 09 40 00 	mov    $0x400936,%rdi
  400804:	ff 15 ce 27 00 00    	callq  *0x27ce(%rip)        # 402fd8 <__libc_start_main@GLIBC_2.2.5>
  40080a:	f4                   	hlt    
  40080b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400810 <_dl_relocate_static_pie>:
  400810:	c3                   	retq   
  400811:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
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
  40083c:	ff e0                	jmpq   *%rax
  40083e:	66 90                	xchg   %ax,%ax
  400840:	c3                   	retq   
  400841:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
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
  40087e:	ff e0                	jmpq   *%rax
  400880:	c3                   	retq   
  400881:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400888:	00 00 00 00 
  40088c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400890 <__do_global_dtors_aux>:
  400890:	f3 0f 1e fa          	endbr64 
  400894:	80 3d ed 27 00 00 00 	cmpb   $0x0,0x27ed(%rip)        # 403088 <completed.0>
  40089b:	75 13                	jne    4008b0 <__do_global_dtors_aux+0x20>
  40089d:	55                   	push   %rbp
  40089e:	48 89 e5             	mov    %rsp,%rbp
  4008a1:	e8 7a ff ff ff       	callq  400820 <deregister_tm_clones>
  4008a6:	c6 05 db 27 00 00 01 	movb   $0x1,0x27db(%rip)        # 403088 <completed.0>
  4008ad:	5d                   	pop    %rbp
  4008ae:	c3                   	retq   
  4008af:	90                   	nop
  4008b0:	c3                   	retq   
  4008b1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4008b8:	00 00 00 00 
  4008bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004008c0 <frame_dummy>:
  4008c0:	f3 0f 1e fa          	endbr64 
  4008c4:	eb 8a                	jmp    400850 <register_tm_clones>

00000000004008c6 <init>:
  4008c6:	55                   	push   %rbp
  4008c7:	48 89 e5             	mov    %rsp,%rbp
  4008ca:	48 8b 05 9f 27 00 00 	mov    0x279f(%rip),%rax        # 403070 <stdin@@GLIBC_2.2.5>
  4008d1:	b9 00 00 00 00       	mov    $0x0,%ecx
  4008d6:	ba 02 00 00 00       	mov    $0x2,%edx
  4008db:	be 00 00 00 00       	mov    $0x0,%esi
  4008e0:	48 89 c7             	mov    %rax,%rdi
  4008e3:	e8 b8 fe ff ff       	callq  4007a0 <setvbuf@plt>
  4008e8:	48 8b 05 71 27 00 00 	mov    0x2771(%rip),%rax        # 403060 <stdout@@GLIBC_2.2.5>
  4008ef:	b9 00 00 00 00       	mov    $0x0,%ecx
  4008f4:	ba 02 00 00 00       	mov    $0x2,%edx
  4008f9:	be 00 00 00 00       	mov    $0x0,%esi
  4008fe:	48 89 c7             	mov    %rax,%rdi
  400901:	e8 9a fe ff ff       	callq  4007a0 <setvbuf@plt>
  400906:	48 8b 05 73 27 00 00 	mov    0x2773(%rip),%rax        # 403080 <stderr@@GLIBC_2.2.5>
  40090d:	b9 00 00 00 00       	mov    $0x0,%ecx
  400912:	ba 02 00 00 00       	mov    $0x2,%edx
  400917:	be 00 00 00 00       	mov    $0x0,%esi
  40091c:	48 89 c7             	mov    %rax,%rdi
  40091f:	e8 7c fe ff ff       	callq  4007a0 <setvbuf@plt>
  400924:	48 8d 05 7d 03 00 00 	lea    0x37d(%rip),%rax        # 400ca8 <_IO_stdin_used+0x8>
  40092b:	48 89 c7             	mov    %rax,%rdi
  40092e:	e8 0d fe ff ff       	callq  400740 <puts@plt>
  400933:	90                   	nop
  400934:	5d                   	pop    %rbp
  400935:	c3                   	retq   

0000000000400936 <main>:
  400936:	55                   	push   %rbp
  400937:	48 89 e5             	mov    %rsp,%rbp
  40093a:	48 83 ec 20          	sub    $0x20,%rsp
  40093e:	b8 00 00 00 00       	mov    $0x0,%eax
  400943:	e8 7e ff ff ff       	callq  4008c6 <init>
  400948:	48 8d 05 84 00 00 00 	lea    0x84(%rip),%rax        # 4009d3 <sigsegv_handler>
  40094f:	48 89 c6             	mov    %rax,%rsi
  400952:	bf 0b 00 00 00       	mov    $0xb,%edi
  400957:	e8 14 fe ff ff       	callq  400770 <signal@plt>
  40095c:	48 8d 05 0d 05 00 00 	lea    0x50d(%rip),%rax        # 400e70 <_IO_stdin_used+0x1d0>
  400963:	48 89 c7             	mov    %rax,%rdi
  400966:	e8 d5 fd ff ff       	callq  400740 <puts@plt>
  40096b:	48 8d 05 56 05 00 00 	lea    0x556(%rip),%rax        # 400ec8 <_IO_stdin_used+0x228>
  400972:	48 89 c7             	mov    %rax,%rdi
  400975:	e8 c6 fd ff ff       	callq  400740 <puts@plt>
  40097a:	48 8d 05 77 05 00 00 	lea    0x577(%rip),%rax        # 400ef8 <_IO_stdin_used+0x258>
  400981:	48 89 c7             	mov    %rax,%rdi
  400984:	e8 b7 fd ff ff       	callq  400740 <puts@plt>
  400989:	48 8d 05 b8 05 00 00 	lea    0x5b8(%rip),%rax        # 400f48 <_IO_stdin_used+0x2a8>
  400990:	48 89 c7             	mov    %rax,%rdi
  400993:	e8 a8 fd ff ff       	callq  400740 <puts@plt>
  400998:	48 8d 05 21 06 00 00 	lea    0x621(%rip),%rax        # 400fc0 <_IO_stdin_used+0x320>
  40099f:	48 89 c7             	mov    %rax,%rdi
  4009a2:	e8 99 fd ff ff       	callq  400740 <puts@plt>
  4009a7:	48 8d 05 82 06 00 00 	lea    0x682(%rip),%rax        # 401030 <_IO_stdin_used+0x390>
  4009ae:	48 89 c7             	mov    %rax,%rdi
  4009b1:	b8 00 00 00 00       	mov    $0x0,%eax
  4009b6:	e8 95 fd ff ff       	callq  400750 <printf@plt>
  4009bb:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4009bf:	48 89 c7             	mov    %rax,%rdi
  4009c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4009c7:	e8 b4 fd ff ff       	callq  400780 <gets@plt>
  4009cc:	b8 00 00 00 00       	mov    $0x0,%eax
  4009d1:	c9                   	leaveq 
  4009d2:	c3                   	retq   

00000000004009d3 <sigsegv_handler>:
  4009d3:	55                   	push   %rbp
  4009d4:	48 89 e5             	mov    %rsp,%rbp
  4009d7:	48 83 ec 10          	sub    $0x10,%rsp
  4009db:	be 00 00 00 00       	mov    $0x0,%esi
  4009e0:	48 8d 05 69 06 00 00 	lea    0x669(%rip),%rax        # 401050 <_IO_stdin_used+0x3b0>
  4009e7:	48 89 c7             	mov    %rax,%rdi
  4009ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4009ef:	e8 bc fd ff ff       	callq  4007b0 <open@plt>
  4009f4:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4009f7:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  4009fb:	75 19                	jne    400a16 <sigsegv_handler+0x43>
  4009fd:	48 8d 05 53 06 00 00 	lea    0x653(%rip),%rax        # 401057 <_IO_stdin_used+0x3b7>
  400a04:	48 89 c7             	mov    %rax,%rdi
  400a07:	e8 b4 fd ff ff       	callq  4007c0 <perror@plt>
  400a0c:	bf 01 00 00 00       	mov    $0x1,%edi
  400a11:	e8 ba fd ff ff       	callq  4007d0 <exit@plt>
  400a16:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400a19:	b9 36 00 00 00       	mov    $0x36,%ecx
  400a1e:	ba 00 00 00 00       	mov    $0x0,%edx
  400a23:	89 c6                	mov    %eax,%esi
  400a25:	bf 01 00 00 00       	mov    $0x1,%edi
  400a2a:	e8 61 fd ff ff       	callq  400790 <sendfile@plt>
  400a2f:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400a32:	89 c7                	mov    %eax,%edi
  400a34:	e8 27 fd ff ff       	callq  400760 <close@plt>
  400a39:	bf 00 00 00 00       	mov    $0x0,%edi
  400a3e:	e8 8d fd ff ff       	callq  4007d0 <exit@plt>
  400a43:	90                   	nop
  400a44:	90                   	nop
  400a45:	90                   	nop
  400a46:	90                   	nop
  400a47:	90                   	nop
  400a48:	90                   	nop
  400a49:	90                   	nop
  400a4a:	90                   	nop
  400a4b:	90                   	nop
  400a4c:	90                   	nop
  400a4d:	90                   	nop
  400a4e:	90                   	nop
  400a4f:	90                   	nop
  400a50:	90                   	nop
  400a51:	90                   	nop
  400a52:	90                   	nop
  400a53:	90                   	nop
  400a54:	90                   	nop
  400a55:	90                   	nop
  400a56:	90                   	nop
  400a57:	90                   	nop
  400a58:	90                   	nop
  400a59:	90                   	nop
  400a5a:	90                   	nop
  400a5b:	90                   	nop
  400a5c:	90                   	nop
  400a5d:	90                   	nop
  400a5e:	90                   	nop
  400a5f:	90                   	nop
  400a60:	90                   	nop
  400a61:	90                   	nop
  400a62:	90                   	nop
  400a63:	90                   	nop
  400a64:	90                   	nop
  400a65:	90                   	nop
  400a66:	90                   	nop
  400a67:	90                   	nop
  400a68:	90                   	nop
  400a69:	90                   	nop
  400a6a:	90                   	nop
  400a6b:	90                   	nop
  400a6c:	90                   	nop
  400a6d:	90                   	nop
  400a6e:	90                   	nop
  400a6f:	90                   	nop
  400a70:	90                   	nop
  400a71:	90                   	nop
  400a72:	90                   	nop
  400a73:	90                   	nop
  400a74:	90                   	nop
  400a75:	90                   	nop
  400a76:	90                   	nop
  400a77:	90                   	nop
  400a78:	90                   	nop
  400a79:	90                   	nop
  400a7a:	90                   	nop
  400a7b:	90                   	nop
  400a7c:	90                   	nop
  400a7d:	90                   	nop
  400a7e:	90                   	nop
  400a7f:	90                   	nop
  400a80:	90                   	nop
  400a81:	90                   	nop
  400a82:	90                   	nop
  400a83:	90                   	nop
  400a84:	90                   	nop
  400a85:	90                   	nop
  400a86:	90                   	nop
  400a87:	90                   	nop
  400a88:	90                   	nop
  400a89:	90                   	nop
  400a8a:	90                   	nop
  400a8b:	90                   	nop
  400a8c:	90                   	nop
  400a8d:	90                   	nop
  400a8e:	90                   	nop
  400a8f:	90                   	nop
  400a90:	90                   	nop
  400a91:	90                   	nop
  400a92:	90                   	nop
  400a93:	90                   	nop
  400a94:	90                   	nop
  400a95:	90                   	nop
  400a96:	90                   	nop
  400a97:	90                   	nop
  400a98:	90                   	nop
  400a99:	90                   	nop
  400a9a:	90                   	nop
  400a9b:	90                   	nop
  400a9c:	90                   	nop
  400a9d:	90                   	nop
  400a9e:	90                   	nop
  400a9f:	90                   	nop
  400aa0:	90                   	nop
  400aa1:	90                   	nop
  400aa2:	90                   	nop
  400aa3:	90                   	nop
  400aa4:	90                   	nop
  400aa5:	90                   	nop
  400aa6:	90                   	nop
  400aa7:	90                   	nop
  400aa8:	90                   	nop
  400aa9:	90                   	nop
  400aaa:	90                   	nop
  400aab:	90                   	nop
  400aac:	90                   	nop
  400aad:	90                   	nop
  400aae:	90                   	nop
  400aaf:	90                   	nop
  400ab0:	90                   	nop
  400ab1:	90                   	nop
  400ab2:	90                   	nop
  400ab3:	90                   	nop
  400ab4:	90                   	nop
  400ab5:	90                   	nop
  400ab6:	90                   	nop
  400ab7:	90                   	nop
  400ab8:	90                   	nop
  400ab9:	90                   	nop
  400aba:	90                   	nop
  400abb:	90                   	nop
  400abc:	90                   	nop
  400abd:	90                   	nop
  400abe:	90                   	nop
  400abf:	90                   	nop
  400ac0:	90                   	nop
  400ac1:	90                   	nop
  400ac2:	90                   	nop
  400ac3:	90                   	nop
  400ac4:	90                   	nop
  400ac5:	90                   	nop
  400ac6:	90                   	nop
  400ac7:	90                   	nop
  400ac8:	90                   	nop
  400ac9:	90                   	nop
  400aca:	90                   	nop
  400acb:	90                   	nop
  400acc:	90                   	nop
  400acd:	90                   	nop
  400ace:	90                   	nop
  400acf:	90                   	nop
  400ad0:	90                   	nop
  400ad1:	90                   	nop
  400ad2:	90                   	nop
  400ad3:	90                   	nop
  400ad4:	90                   	nop
  400ad5:	90                   	nop
  400ad6:	90                   	nop
  400ad7:	90                   	nop
  400ad8:	90                   	nop
  400ad9:	90                   	nop
  400ada:	90                   	nop
  400adb:	90                   	nop
  400adc:	90                   	nop
  400add:	90                   	nop
  400ade:	90                   	nop
  400adf:	90                   	nop
  400ae0:	90                   	nop
  400ae1:	90                   	nop
  400ae2:	90                   	nop
  400ae3:	90                   	nop
  400ae4:	90                   	nop
  400ae5:	90                   	nop
  400ae6:	90                   	nop
  400ae7:	90                   	nop
  400ae8:	90                   	nop
  400ae9:	90                   	nop
  400aea:	90                   	nop
  400aeb:	90                   	nop
  400aec:	90                   	nop
  400aed:	90                   	nop
  400aee:	90                   	nop
  400aef:	90                   	nop
  400af0:	90                   	nop
  400af1:	90                   	nop
  400af2:	90                   	nop
  400af3:	90                   	nop
  400af4:	90                   	nop
  400af5:	90                   	nop
  400af6:	90                   	nop
  400af7:	90                   	nop
  400af8:	90                   	nop
  400af9:	90                   	nop
  400afa:	90                   	nop
  400afb:	90                   	nop
  400afc:	90                   	nop
  400afd:	90                   	nop
  400afe:	90                   	nop
  400aff:	90                   	nop
  400b00:	90                   	nop
  400b01:	90                   	nop
  400b02:	90                   	nop
  400b03:	90                   	nop
  400b04:	90                   	nop
  400b05:	90                   	nop
  400b06:	90                   	nop
  400b07:	90                   	nop
  400b08:	90                   	nop
  400b09:	90                   	nop
  400b0a:	90                   	nop
  400b0b:	90                   	nop
  400b0c:	90                   	nop
  400b0d:	90                   	nop
  400b0e:	90                   	nop
  400b0f:	90                   	nop
  400b10:	90                   	nop
  400b11:	90                   	nop
  400b12:	90                   	nop
  400b13:	90                   	nop
  400b14:	90                   	nop
  400b15:	90                   	nop
  400b16:	90                   	nop
  400b17:	90                   	nop

0000000000400b18 <win1>:
  400b18:	55                   	push   %rbp
  400b19:	48 89 e5             	mov    %rsp,%rbp
  400b1c:	48 83 ec 10          	sub    $0x10,%rsp
  400b20:	be 00 00 00 00       	mov    $0x0,%esi
  400b25:	48 8d 05 30 05 00 00 	lea    0x530(%rip),%rax        # 40105c <_IO_stdin_used+0x3bc>
  400b2c:	48 89 c7             	mov    %rax,%rdi
  400b2f:	b8 00 00 00 00       	mov    $0x0,%eax
  400b34:	e8 77 fc ff ff       	callq  4007b0 <open@plt>
  400b39:	89 45 fc             	mov    %eax,-0x4(%rbp)
  400b3c:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  400b40:	75 19                	jne    400b5b <win1+0x43>
  400b42:	48 8d 05 0e 05 00 00 	lea    0x50e(%rip),%rax        # 401057 <_IO_stdin_used+0x3b7>
  400b49:	48 89 c7             	mov    %rax,%rdi
  400b4c:	e8 6f fc ff ff       	callq  4007c0 <perror@plt>
  400b51:	bf 01 00 00 00       	mov    $0x1,%edi
  400b56:	e8 75 fc ff ff       	callq  4007d0 <exit@plt>
  400b5b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400b5e:	b9 36 00 00 00       	mov    $0x36,%ecx
  400b63:	ba 00 00 00 00       	mov    $0x0,%edx
  400b68:	89 c6                	mov    %eax,%esi
  400b6a:	bf 01 00 00 00       	mov    $0x1,%edi
  400b6f:	e8 1c fc ff ff       	callq  400790 <sendfile@plt>
  400b74:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400b77:	89 c7                	mov    %eax,%edi
  400b79:	e8 e2 fb ff ff       	callq  400760 <close@plt>
  400b7e:	bf 00 00 00 00       	mov    $0x0,%edi
  400b83:	e8 48 fc ff ff       	callq  4007d0 <exit@plt>

0000000000400b88 <win2>:
  400b88:	55                   	push   %rbp
  400b89:	48 89 e5             	mov    %rsp,%rbp
  400b8c:	48 83 ec 20          	sub    $0x20,%rsp
  400b90:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400b94:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400b98:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400b9c:	48 33 45 e0          	xor    -0x20(%rbp),%rax
  400ba0:	48 ba 37 13 37 13 37 	movabs $0x1337133713371337,%rdx
  400ba7:	13 37 13 
  400baa:	48 39 d0             	cmp    %rdx,%rax
  400bad:	74 0a                	je     400bb9 <win2+0x31>
  400baf:	bf 01 00 00 00       	mov    $0x1,%edi
  400bb4:	e8 17 fc ff ff       	callq  4007d0 <exit@plt>
  400bb9:	be 00 00 00 00       	mov    $0x0,%esi
  400bbe:	48 8d 05 9e 04 00 00 	lea    0x49e(%rip),%rax        # 401063 <_IO_stdin_used+0x3c3>
  400bc5:	48 89 c7             	mov    %rax,%rdi
  400bc8:	b8 00 00 00 00       	mov    $0x0,%eax
  400bcd:	e8 de fb ff ff       	callq  4007b0 <open@plt>
  400bd2:	89 45 fc             	mov    %eax,-0x4(%rbp)
  400bd5:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  400bd9:	75 19                	jne    400bf4 <win2+0x6c>
  400bdb:	48 8d 05 75 04 00 00 	lea    0x475(%rip),%rax        # 401057 <_IO_stdin_used+0x3b7>
  400be2:	48 89 c7             	mov    %rax,%rdi
  400be5:	e8 d6 fb ff ff       	callq  4007c0 <perror@plt>
  400bea:	bf 01 00 00 00       	mov    $0x1,%edi
  400bef:	e8 dc fb ff ff       	callq  4007d0 <exit@plt>
  400bf4:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400bf7:	b9 36 00 00 00       	mov    $0x36,%ecx
  400bfc:	ba 00 00 00 00       	mov    $0x0,%edx
  400c01:	89 c6                	mov    %eax,%esi
  400c03:	bf 01 00 00 00       	mov    $0x1,%edi
  400c08:	e8 83 fb ff ff       	callq  400790 <sendfile@plt>
  400c0d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400c10:	89 c7                	mov    %eax,%edi
  400c12:	e8 49 fb ff ff       	callq  400760 <close@plt>
  400c17:	bf 00 00 00 00       	mov    $0x0,%edi
  400c1c:	e8 af fb ff ff       	callq  4007d0 <exit@plt>
  400c21:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c28:	00 00 00 
  400c2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400c30 <__libc_csu_init>:
  400c30:	41 57                	push   %r15
  400c32:	4c 8d 3d bf 21 00 00 	lea    0x21bf(%rip),%r15        # 402df8 <__frame_dummy_init_array_entry>
  400c39:	41 56                	push   %r14
  400c3b:	49 89 d6             	mov    %rdx,%r14
  400c3e:	41 55                	push   %r13
  400c40:	49 89 f5             	mov    %rsi,%r13
  400c43:	41 54                	push   %r12
  400c45:	41 89 fc             	mov    %edi,%r12d
  400c48:	55                   	push   %rbp
  400c49:	48 8d 2d b0 21 00 00 	lea    0x21b0(%rip),%rbp        # 402e00 <__do_global_dtors_aux_fini_array_entry>
  400c50:	53                   	push   %rbx
  400c51:	4c 29 fd             	sub    %r15,%rbp
  400c54:	48 83 ec 08          	sub    $0x8,%rsp
  400c58:	e8 bb fa ff ff       	callq  400718 <_init>
  400c5d:	48 c1 fd 03          	sar    $0x3,%rbp
  400c61:	74 1b                	je     400c7e <__libc_csu_init+0x4e>
  400c63:	31 db                	xor    %ebx,%ebx
  400c65:	0f 1f 00             	nopl   (%rax)
  400c68:	4c 89 f2             	mov    %r14,%rdx
  400c6b:	4c 89 ee             	mov    %r13,%rsi
  400c6e:	44 89 e7             	mov    %r12d,%edi
  400c71:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  400c75:	48 83 c3 01          	add    $0x1,%rbx
  400c79:	48 39 dd             	cmp    %rbx,%rbp
  400c7c:	75 ea                	jne    400c68 <__libc_csu_init+0x38>
  400c7e:	48 83 c4 08          	add    $0x8,%rsp
  400c82:	5b                   	pop    %rbx
  400c83:	5d                   	pop    %rbp
  400c84:	41 5c                	pop    %r12
  400c86:	41 5d                	pop    %r13
  400c88:	41 5e                	pop    %r14
  400c8a:	41 5f                	pop    %r15
  400c8c:	c3                   	retq   
  400c8d:	0f 1f 00             	nopl   (%rax)

0000000000400c90 <__libc_csu_fini>:
  400c90:	c3                   	retq   

Disassembly of section .fini:

0000000000400c94 <_fini>:
  400c94:	48 83 ec 08          	sub    $0x8,%rsp
  400c98:	48 83 c4 08          	add    $0x8,%rsp
  400c9c:	c3                   	retq   
