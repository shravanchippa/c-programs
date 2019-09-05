
a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000400390 <_init>:
  400390:	48 83 ec 08          	sub    $0x8,%rsp
  400394:	48 8b 05 5d 0c 20 00 	mov    0x200c5d(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  40039b:	48 85 c0             	test   %rax,%rax
  40039e:	74 05                	je     4003a5 <_init+0x15>
  4003a0:	e8 2b 00 00 00       	callq  4003d0 <__libc_start_main@plt+0x10>
  4003a5:	48 83 c4 08          	add    $0x8,%rsp
  4003a9:	c3                   	retq   

Disassembly of section .plt:

00000000004003b0 <__libc_start_main@plt-0x10>:
  4003b0:	ff 35 52 0c 20 00    	pushq  0x200c52(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4003b6:	ff 25 54 0c 20 00    	jmpq   *0x200c54(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4003bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004003c0 <__libc_start_main@plt>:
  4003c0:	ff 25 52 0c 20 00    	jmpq   *0x200c52(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4003c6:	68 00 00 00 00       	pushq  $0x0
  4003cb:	e9 e0 ff ff ff       	jmpq   4003b0 <_init+0x20>

Disassembly of section .plt.got:

00000000004003d0 <.plt.got>:
  4003d0:	ff 25 22 0c 20 00    	jmpq   *0x200c22(%rip)        # 600ff8 <_DYNAMIC+0x1d0>
  4003d6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000004003e0 <_start>:
  4003e0:	31 ed                	xor    %ebp,%ebp
  4003e2:	49 89 d1             	mov    %rdx,%r9
  4003e5:	5e                   	pop    %rsi
  4003e6:	48 89 e2             	mov    %rsp,%rdx
  4003e9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4003ed:	50                   	push   %rax
  4003ee:	54                   	push   %rsp
  4003ef:	49 c7 c0 d0 05 40 00 	mov    $0x4005d0,%r8
  4003f6:	48 c7 c1 60 05 40 00 	mov    $0x400560,%rcx
  4003fd:	48 c7 c7 1b 05 40 00 	mov    $0x40051b,%rdi
  400404:	e8 b7 ff ff ff       	callq  4003c0 <__libc_start_main@plt>
  400409:	f4                   	hlt    
  40040a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400410 <deregister_tm_clones>:
  400410:	b8 37 10 60 00       	mov    $0x601037,%eax
  400415:	55                   	push   %rbp
  400416:	48 2d 30 10 60 00    	sub    $0x601030,%rax
  40041c:	48 83 f8 0e          	cmp    $0xe,%rax
  400420:	48 89 e5             	mov    %rsp,%rbp
  400423:	76 1b                	jbe    400440 <deregister_tm_clones+0x30>
  400425:	b8 00 00 00 00       	mov    $0x0,%eax
  40042a:	48 85 c0             	test   %rax,%rax
  40042d:	74 11                	je     400440 <deregister_tm_clones+0x30>
  40042f:	5d                   	pop    %rbp
  400430:	bf 30 10 60 00       	mov    $0x601030,%edi
  400435:	ff e0                	jmpq   *%rax
  400437:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40043e:	00 00 
  400440:	5d                   	pop    %rbp
  400441:	c3                   	retq   
  400442:	0f 1f 40 00          	nopl   0x0(%rax)
  400446:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40044d:	00 00 00 

0000000000400450 <register_tm_clones>:
  400450:	be 30 10 60 00       	mov    $0x601030,%esi
  400455:	55                   	push   %rbp
  400456:	48 81 ee 30 10 60 00 	sub    $0x601030,%rsi
  40045d:	48 c1 fe 03          	sar    $0x3,%rsi
  400461:	48 89 e5             	mov    %rsp,%rbp
  400464:	48 89 f0             	mov    %rsi,%rax
  400467:	48 c1 e8 3f          	shr    $0x3f,%rax
  40046b:	48 01 c6             	add    %rax,%rsi
  40046e:	48 d1 fe             	sar    %rsi
  400471:	74 15                	je     400488 <register_tm_clones+0x38>
  400473:	b8 00 00 00 00       	mov    $0x0,%eax
  400478:	48 85 c0             	test   %rax,%rax
  40047b:	74 0b                	je     400488 <register_tm_clones+0x38>
  40047d:	5d                   	pop    %rbp
  40047e:	bf 30 10 60 00       	mov    $0x601030,%edi
  400483:	ff e0                	jmpq   *%rax
  400485:	0f 1f 00             	nopl   (%rax)
  400488:	5d                   	pop    %rbp
  400489:	c3                   	retq   
  40048a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400490 <__do_global_dtors_aux>:
  400490:	80 3d 99 0b 20 00 00 	cmpb   $0x0,0x200b99(%rip)        # 601030 <__TMC_END__>
  400497:	75 11                	jne    4004aa <__do_global_dtors_aux+0x1a>
  400499:	55                   	push   %rbp
  40049a:	48 89 e5             	mov    %rsp,%rbp
  40049d:	e8 6e ff ff ff       	callq  400410 <deregister_tm_clones>
  4004a2:	5d                   	pop    %rbp
  4004a3:	c6 05 86 0b 20 00 01 	movb   $0x1,0x200b86(%rip)        # 601030 <__TMC_END__>
  4004aa:	f3 c3                	repz retq 
  4004ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004b0 <frame_dummy>:
  4004b0:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  4004b5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  4004b9:	75 05                	jne    4004c0 <frame_dummy+0x10>
  4004bb:	eb 93                	jmp    400450 <register_tm_clones>
  4004bd:	0f 1f 00             	nopl   (%rax)
  4004c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4004c5:	48 85 c0             	test   %rax,%rax
  4004c8:	74 f1                	je     4004bb <frame_dummy+0xb>
  4004ca:	55                   	push   %rbp
  4004cb:	48 89 e5             	mov    %rsp,%rbp
  4004ce:	ff d0                	callq  *%rax
  4004d0:	5d                   	pop    %rbp
  4004d1:	e9 7a ff ff ff       	jmpq   400450 <register_tm_clones>

00000000004004d6 <add>:
  4004d6:	55                   	push   %rbp
  4004d7:	48 89 e5             	mov    %rsp,%rbp
  4004da:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4004dd:	89 75 f8             	mov    %esi,-0x8(%rbp)
  4004e0:	89 55 f4             	mov    %edx,-0xc(%rbp)
  4004e3:	89 4d f0             	mov    %ecx,-0x10(%rbp)
  4004e6:	44 89 45 ec          	mov    %r8d,-0x14(%rbp)
  4004ea:	44 89 4d e8          	mov    %r9d,-0x18(%rbp)
  4004ee:	8b 55 fc             	mov    -0x4(%rbp),%edx
  4004f1:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4004f4:	01 c2                	add    %eax,%edx
  4004f6:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4004f9:	01 c2                	add    %eax,%edx
  4004fb:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4004fe:	01 c2                	add    %eax,%edx
  400500:	8b 45 ec             	mov    -0x14(%rbp),%eax
  400503:	01 c2                	add    %eax,%edx
  400505:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400508:	01 c2                	add    %eax,%edx
  40050a:	8b 45 10             	mov    0x10(%rbp),%eax
  40050d:	01 c2                	add    %eax,%edx
  40050f:	8b 45 18             	mov    0x18(%rbp),%eax
  400512:	01 c2                	add    %eax,%edx
  400514:	8b 45 20             	mov    0x20(%rbp),%eax
  400517:	01 d0                	add    %edx,%eax
  400519:	5d                   	pop    %rbp
  40051a:	c3                   	retq   

000000000040051b <main>:
  40051b:	55                   	push   %rbp
  40051c:	48 89 e5             	mov    %rsp,%rbp
  40051f:	48 83 ec 10          	sub    $0x10,%rsp
  400523:	6a 09                	pushq  $0x9
  400525:	6a 08                	pushq  $0x8
  400527:	6a 07                	pushq  $0x7
  400529:	41 b9 06 00 00 00    	mov    $0x6,%r9d
  40052f:	41 b8 05 00 00 00    	mov    $0x5,%r8d
  400535:	b9 04 00 00 00       	mov    $0x4,%ecx
  40053a:	ba 03 00 00 00       	mov    $0x3,%edx
  40053f:	be 02 00 00 00       	mov    $0x2,%esi
  400544:	bf 01 00 00 00       	mov    $0x1,%edi
  400549:	e8 88 ff ff ff       	callq  4004d6 <add>
  40054e:	48 83 c4 18          	add    $0x18,%rsp
  400552:	89 45 fc             	mov    %eax,-0x4(%rbp)
  400555:	90                   	nop
  400556:	c9                   	leaveq 
  400557:	c3                   	retq   
  400558:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40055f:	00 

0000000000400560 <__libc_csu_init>:
  400560:	41 57                	push   %r15
  400562:	41 56                	push   %r14
  400564:	41 89 ff             	mov    %edi,%r15d
  400567:	41 55                	push   %r13
  400569:	41 54                	push   %r12
  40056b:	4c 8d 25 9e 08 20 00 	lea    0x20089e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400572:	55                   	push   %rbp
  400573:	48 8d 2d 9e 08 20 00 	lea    0x20089e(%rip),%rbp        # 600e18 <__init_array_end>
  40057a:	53                   	push   %rbx
  40057b:	49 89 f6             	mov    %rsi,%r14
  40057e:	49 89 d5             	mov    %rdx,%r13
  400581:	4c 29 e5             	sub    %r12,%rbp
  400584:	48 83 ec 08          	sub    $0x8,%rsp
  400588:	48 c1 fd 03          	sar    $0x3,%rbp
  40058c:	e8 ff fd ff ff       	callq  400390 <_init>
  400591:	48 85 ed             	test   %rbp,%rbp
  400594:	74 20                	je     4005b6 <__libc_csu_init+0x56>
  400596:	31 db                	xor    %ebx,%ebx
  400598:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40059f:	00 
  4005a0:	4c 89 ea             	mov    %r13,%rdx
  4005a3:	4c 89 f6             	mov    %r14,%rsi
  4005a6:	44 89 ff             	mov    %r15d,%edi
  4005a9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4005ad:	48 83 c3 01          	add    $0x1,%rbx
  4005b1:	48 39 eb             	cmp    %rbp,%rbx
  4005b4:	75 ea                	jne    4005a0 <__libc_csu_init+0x40>
  4005b6:	48 83 c4 08          	add    $0x8,%rsp
  4005ba:	5b                   	pop    %rbx
  4005bb:	5d                   	pop    %rbp
  4005bc:	41 5c                	pop    %r12
  4005be:	41 5d                	pop    %r13
  4005c0:	41 5e                	pop    %r14
  4005c2:	41 5f                	pop    %r15
  4005c4:	c3                   	retq   
  4005c5:	90                   	nop
  4005c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005cd:	00 00 00 

00000000004005d0 <__libc_csu_fini>:
  4005d0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004005d4 <_fini>:
  4005d4:	48 83 ec 08          	sub    $0x8,%rsp
  4005d8:	48 83 c4 08          	add    $0x8,%rsp
  4005dc:	c3                   	retq   
