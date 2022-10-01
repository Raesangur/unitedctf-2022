
ret2shellcode:     file format elf32-i386


Disassembly of section .init:

0804836c <_init>:
 804836c:	53                   	push   %ebx
 804836d:	83 ec 08             	sub    $0x8,%esp
 8048370:	e8 cb 00 00 00       	call   8048440 <__x86.get_pc_thunk.bx>
 8048375:	81 c3 7f 1c 00 00    	add    $0x1c7f,%ebx
 804837b:	8b 83 f4 ff ff ff    	mov    -0xc(%ebx),%eax
 8048381:	85 c0                	test   %eax,%eax
 8048383:	74 02                	je     8048387 <_init+0x1b>
 8048385:	ff d0                	call   *%eax
 8048387:	83 c4 08             	add    $0x8,%esp
 804838a:	5b                   	pop    %ebx
 804838b:	c3                   	ret    

Disassembly of section .plt:

08048390 <printf@plt-0x10>:
 8048390:	ff 35 f8 9f 04 08    	push   0x8049ff8
 8048396:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 804839c:	00 00                	add    %al,(%eax)
	...

080483a0 <printf@plt>:
 80483a0:	ff 25 00 a0 04 08    	jmp    *0x804a000
 80483a6:	68 00 00 00 00       	push   $0x0
 80483ab:	e9 e0 ff ff ff       	jmp    8048390 <_init+0x24>

080483b0 <gets@plt>:
 80483b0:	ff 25 04 a0 04 08    	jmp    *0x804a004
 80483b6:	68 08 00 00 00       	push   $0x8
 80483bb:	e9 d0 ff ff ff       	jmp    8048390 <_init+0x24>

080483c0 <puts@plt>:
 80483c0:	ff 25 08 a0 04 08    	jmp    *0x804a008
 80483c6:	68 10 00 00 00       	push   $0x10
 80483cb:	e9 c0 ff ff ff       	jmp    8048390 <_init+0x24>

080483d0 <__libc_start_main@plt>:
 80483d0:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 80483d6:	68 18 00 00 00       	push   $0x18
 80483db:	e9 b0 ff ff ff       	jmp    8048390 <_init+0x24>

080483e0 <setvbuf@plt>:
 80483e0:	ff 25 10 a0 04 08    	jmp    *0x804a010
 80483e6:	68 20 00 00 00       	push   $0x20
 80483eb:	e9 a0 ff ff ff       	jmp    8048390 <_init+0x24>

Disassembly of section .text:

080483f0 <_start>:
 80483f0:	31 ed                	xor    %ebp,%ebp
 80483f2:	5e                   	pop    %esi
 80483f3:	89 e1                	mov    %esp,%ecx
 80483f5:	83 e4 f0             	and    $0xfffffff0,%esp
 80483f8:	50                   	push   %eax
 80483f9:	54                   	push   %esp
 80483fa:	52                   	push   %edx
 80483fb:	e8 23 00 00 00       	call   8048423 <_start+0x33>
 8048400:	81 c3 f4 1b 00 00    	add    $0x1bf4,%ebx
 8048406:	8d 83 4c e6 ff ff    	lea    -0x19b4(%ebx),%eax
 804840c:	50                   	push   %eax
 804840d:	8d 83 ec e5 ff ff    	lea    -0x1a14(%ebx),%eax
 8048413:	50                   	push   %eax
 8048414:	51                   	push   %ecx
 8048415:	56                   	push   %esi
 8048416:	c7 c0 bb 85 04 08    	mov    $0x80485bb,%eax
 804841c:	50                   	push   %eax
 804841d:	e8 ae ff ff ff       	call   80483d0 <__libc_start_main@plt>
 8048422:	f4                   	hlt    
 8048423:	8b 1c 24             	mov    (%esp),%ebx
 8048426:	c3                   	ret    
 8048427:	66 90                	xchg   %ax,%ax
 8048429:	66 90                	xchg   %ax,%ax
 804842b:	66 90                	xchg   %ax,%ax
 804842d:	66 90                	xchg   %ax,%ax
 804842f:	90                   	nop

08048430 <_dl_relocate_static_pie>:
 8048430:	c3                   	ret    
 8048431:	66 90                	xchg   %ax,%ax
 8048433:	66 90                	xchg   %ax,%ax
 8048435:	66 90                	xchg   %ax,%ax
 8048437:	66 90                	xchg   %ax,%ax
 8048439:	66 90                	xchg   %ax,%ax
 804843b:	66 90                	xchg   %ax,%ax
 804843d:	66 90                	xchg   %ax,%ax
 804843f:	90                   	nop

08048440 <__x86.get_pc_thunk.bx>:
 8048440:	8b 1c 24             	mov    (%esp),%ebx
 8048443:	c3                   	ret    
 8048444:	66 90                	xchg   %ax,%ax
 8048446:	66 90                	xchg   %ax,%ax
 8048448:	66 90                	xchg   %ax,%ax
 804844a:	66 90                	xchg   %ax,%ax
 804844c:	66 90                	xchg   %ax,%ax
 804844e:	66 90                	xchg   %ax,%ax

08048450 <deregister_tm_clones>:
 8048450:	b8 1c a0 04 08       	mov    $0x804a01c,%eax
 8048455:	3d 1c a0 04 08       	cmp    $0x804a01c,%eax
 804845a:	74 24                	je     8048480 <deregister_tm_clones+0x30>
 804845c:	b8 00 00 00 00       	mov    $0x0,%eax
 8048461:	85 c0                	test   %eax,%eax
 8048463:	74 1b                	je     8048480 <deregister_tm_clones+0x30>
 8048465:	55                   	push   %ebp
 8048466:	89 e5                	mov    %esp,%ebp
 8048468:	83 ec 14             	sub    $0x14,%esp
 804846b:	68 1c a0 04 08       	push   $0x804a01c
 8048470:	ff d0                	call   *%eax
 8048472:	83 c4 10             	add    $0x10,%esp
 8048475:	c9                   	leave  
 8048476:	c3                   	ret    
 8048477:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804847e:	66 90                	xchg   %ax,%ax
 8048480:	c3                   	ret    
 8048481:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048488:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804848f:	90                   	nop

08048490 <register_tm_clones>:
 8048490:	b8 1c a0 04 08       	mov    $0x804a01c,%eax
 8048495:	2d 1c a0 04 08       	sub    $0x804a01c,%eax
 804849a:	89 c2                	mov    %eax,%edx
 804849c:	c1 e8 1f             	shr    $0x1f,%eax
 804849f:	c1 fa 02             	sar    $0x2,%edx
 80484a2:	01 d0                	add    %edx,%eax
 80484a4:	d1 f8                	sar    %eax
 80484a6:	74 20                	je     80484c8 <register_tm_clones+0x38>
 80484a8:	ba 00 00 00 00       	mov    $0x0,%edx
 80484ad:	85 d2                	test   %edx,%edx
 80484af:	74 17                	je     80484c8 <register_tm_clones+0x38>
 80484b1:	55                   	push   %ebp
 80484b2:	89 e5                	mov    %esp,%ebp
 80484b4:	83 ec 10             	sub    $0x10,%esp
 80484b7:	50                   	push   %eax
 80484b8:	68 1c a0 04 08       	push   $0x804a01c
 80484bd:	ff d2                	call   *%edx
 80484bf:	83 c4 10             	add    $0x10,%esp
 80484c2:	c9                   	leave  
 80484c3:	c3                   	ret    
 80484c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80484c8:	c3                   	ret    
 80484c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

080484d0 <__do_global_dtors_aux>:
 80484d0:	f3 0f 1e fb          	endbr32 
 80484d4:	80 3d 1c a0 04 08 00 	cmpb   $0x0,0x804a01c
 80484db:	75 1b                	jne    80484f8 <__do_global_dtors_aux+0x28>
 80484dd:	55                   	push   %ebp
 80484de:	89 e5                	mov    %esp,%ebp
 80484e0:	83 ec 08             	sub    $0x8,%esp
 80484e3:	e8 68 ff ff ff       	call   8048450 <deregister_tm_clones>
 80484e8:	c6 05 1c a0 04 08 01 	movb   $0x1,0x804a01c
 80484ef:	c9                   	leave  
 80484f0:	c3                   	ret    
 80484f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80484f8:	c3                   	ret    
 80484f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08048500 <frame_dummy>:
 8048500:	f3 0f 1e fb          	endbr32 
 8048504:	eb 8a                	jmp    8048490 <register_tm_clones>

08048506 <init>:
 8048506:	55                   	push   %ebp
 8048507:	89 e5                	mov    %esp,%ebp
 8048509:	53                   	push   %ebx
 804850a:	83 ec 04             	sub    $0x4,%esp
 804850d:	e8 2e ff ff ff       	call   8048440 <__x86.get_pc_thunk.bx>
 8048512:	81 c3 e2 1a 00 00    	add    $0x1ae2,%ebx
 8048518:	8b 83 f8 ff ff ff    	mov    -0x8(%ebx),%eax
 804851e:	8b 00                	mov    (%eax),%eax
 8048520:	6a 00                	push   $0x0
 8048522:	6a 02                	push   $0x2
 8048524:	6a 00                	push   $0x0
 8048526:	50                   	push   %eax
 8048527:	e8 b4 fe ff ff       	call   80483e0 <setvbuf@plt>
 804852c:	83 c4 10             	add    $0x10,%esp
 804852f:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048535:	8b 00                	mov    (%eax),%eax
 8048537:	6a 00                	push   $0x0
 8048539:	6a 02                	push   $0x2
 804853b:	6a 00                	push   $0x0
 804853d:	50                   	push   %eax
 804853e:	e8 9d fe ff ff       	call   80483e0 <setvbuf@plt>
 8048543:	83 c4 10             	add    $0x10,%esp
 8048546:	8b 83 f0 ff ff ff    	mov    -0x10(%ebx),%eax
 804854c:	8b 00                	mov    (%eax),%eax
 804854e:	6a 00                	push   $0x0
 8048550:	6a 02                	push   $0x2
 8048552:	6a 00                	push   $0x0
 8048554:	50                   	push   %eax
 8048555:	e8 86 fe ff ff       	call   80483e0 <setvbuf@plt>
 804855a:	83 c4 10             	add    $0x10,%esp
 804855d:	83 ec 0c             	sub    $0xc,%esp
 8048560:	8d 83 70 e6 ff ff    	lea    -0x1990(%ebx),%eax
 8048566:	50                   	push   %eax
 8048567:	e8 54 fe ff ff       	call   80483c0 <puts@plt>
 804856c:	83 c4 10             	add    $0x10,%esp
 804856f:	90                   	nop
 8048570:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048573:	c9                   	leave  
 8048574:	c3                   	ret    

08048575 <vuln>:
 8048575:	55                   	push   %ebp
 8048576:	89 e5                	mov    %esp,%ebp
 8048578:	53                   	push   %ebx
 8048579:	81 ec 84 00 00 00    	sub    $0x84,%esp
 804857f:	e8 bc fe ff ff       	call   8048440 <__x86.get_pc_thunk.bx>
 8048584:	81 c3 70 1a 00 00    	add    $0x1a70,%ebx
 804858a:	83 ec 08             	sub    $0x8,%esp
 804858d:	8d 85 78 ff ff ff    	lea    -0x88(%ebp),%eax
 8048593:	50                   	push   %eax
 8048594:	8d 83 38 e8 ff ff    	lea    -0x17c8(%ebx),%eax
 804859a:	50                   	push   %eax
 804859b:	e8 00 fe ff ff       	call   80483a0 <printf@plt>
 80485a0:	83 c4 10             	add    $0x10,%esp
 80485a3:	83 ec 0c             	sub    $0xc,%esp
 80485a6:	8d 85 78 ff ff ff    	lea    -0x88(%ebp),%eax
 80485ac:	50                   	push   %eax
 80485ad:	e8 fe fd ff ff       	call   80483b0 <gets@plt>
 80485b2:	83 c4 10             	add    $0x10,%esp
 80485b5:	90                   	nop
 80485b6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80485b9:	c9                   	leave  
 80485ba:	c3                   	ret    

080485bb <main>:
 80485bb:	55                   	push   %ebp
 80485bc:	89 e5                	mov    %esp,%ebp
 80485be:	83 e4 f0             	and    $0xfffffff0,%esp
 80485c1:	e8 16 00 00 00       	call   80485dc <__x86.get_pc_thunk.ax>
 80485c6:	05 2e 1a 00 00       	add    $0x1a2e,%eax
 80485cb:	e8 36 ff ff ff       	call   8048506 <init>
 80485d0:	e8 a0 ff ff ff       	call   8048575 <vuln>
 80485d5:	b8 00 00 00 00       	mov    $0x0,%eax
 80485da:	c9                   	leave  
 80485db:	c3                   	ret    

080485dc <__x86.get_pc_thunk.ax>:
 80485dc:	8b 04 24             	mov    (%esp),%eax
 80485df:	c3                   	ret    

080485e0 <__libc_csu_init>:
 80485e0:	55                   	push   %ebp
 80485e1:	e8 5b 00 00 00       	call   8048641 <__x86.get_pc_thunk.bp>
 80485e6:	81 c5 0e 1a 00 00    	add    $0x1a0e,%ebp
 80485ec:	57                   	push   %edi
 80485ed:	56                   	push   %esi
 80485ee:	53                   	push   %ebx
 80485ef:	83 ec 0c             	sub    $0xc,%esp
 80485f2:	89 eb                	mov    %ebp,%ebx
 80485f4:	8b 7c 24 28          	mov    0x28(%esp),%edi
 80485f8:	e8 6f fd ff ff       	call   804836c <_init>
 80485fd:	8d 9d 04 ff ff ff    	lea    -0xfc(%ebp),%ebx
 8048603:	8d 85 00 ff ff ff    	lea    -0x100(%ebp),%eax
 8048609:	29 c3                	sub    %eax,%ebx
 804860b:	c1 fb 02             	sar    $0x2,%ebx
 804860e:	74 25                	je     8048635 <__libc_csu_init+0x55>
 8048610:	31 f6                	xor    %esi,%esi
 8048612:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048618:	83 ec 04             	sub    $0x4,%esp
 804861b:	57                   	push   %edi
 804861c:	ff 74 24 2c          	push   0x2c(%esp)
 8048620:	ff 74 24 2c          	push   0x2c(%esp)
 8048624:	ff 94 b5 00 ff ff ff 	call   *-0x100(%ebp,%esi,4)
 804862b:	83 c6 01             	add    $0x1,%esi
 804862e:	83 c4 10             	add    $0x10,%esp
 8048631:	39 f3                	cmp    %esi,%ebx
 8048633:	75 e3                	jne    8048618 <__libc_csu_init+0x38>
 8048635:	83 c4 0c             	add    $0xc,%esp
 8048638:	5b                   	pop    %ebx
 8048639:	5e                   	pop    %esi
 804863a:	5f                   	pop    %edi
 804863b:	5d                   	pop    %ebp
 804863c:	c3                   	ret    
 804863d:	8d 76 00             	lea    0x0(%esi),%esi

08048640 <__libc_csu_fini>:
 8048640:	c3                   	ret    

08048641 <__x86.get_pc_thunk.bp>:
 8048641:	8b 2c 24             	mov    (%esp),%ebp
 8048644:	c3                   	ret    

Disassembly of section .fini:

08048648 <_fini>:
 8048648:	53                   	push   %ebx
 8048649:	83 ec 08             	sub    $0x8,%esp
 804864c:	e8 ef fd ff ff       	call   8048440 <__x86.get_pc_thunk.bx>
 8048651:	81 c3 a3 19 00 00    	add    $0x19a3,%ebx
 8048657:	83 c4 08             	add    $0x8,%esp
 804865a:	5b                   	pop    %ebx
 804865b:	c3                   	ret    
