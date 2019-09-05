
a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000400480 <_init>:
  400480:	48 83 ec 08          	sub    $0x8,%rsp
  400484:	48 8b 05 6d 0b 20 00 	mov    0x200b6d(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  40048b:	48 85 c0             	test   %rax,%rax
  40048e:	74 05                	je     400495 <_init+0x15>
  400490:	e8 5b 00 00 00       	callq  4004f0 <__isoc99_scanf@plt+0x10>
  400495:	48 83 c4 08          	add    $0x8,%rsp
  400499:	c3                   	retq   

Disassembly of section .plt:

00000000004004a0 <__stack_chk_fail@plt-0x10>:
  4004a0:	ff 35 62 0b 20 00    	pushq  0x200b62(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004a6:	ff 25 64 0b 20 00    	jmpq   *0x200b64(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004b0 <__stack_chk_fail@plt>:
  4004b0:	ff 25 62 0b 20 00    	jmpq   *0x200b62(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4004b6:	68 00 00 00 00       	pushq  $0x0
  4004bb:	e9 e0 ff ff ff       	jmpq   4004a0 <_init+0x20>

00000000004004c0 <printf@plt>:
  4004c0:	ff 25 5a 0b 20 00    	jmpq   *0x200b5a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4004c6:	68 01 00 00 00       	pushq  $0x1
  4004cb:	e9 d0 ff ff ff       	jmpq   4004a0 <_init+0x20>

00000000004004d0 <__libc_start_main@plt>:
  4004d0:	ff 25 52 0b 20 00    	jmpq   *0x200b52(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  4004d6:	68 02 00 00 00       	pushq  $0x2
  4004db:	e9 c0 ff ff ff       	jmpq   4004a0 <_init+0x20>

00000000004004e0 <__isoc99_scanf@plt>:
  4004e0:	ff 25 4a 0b 20 00    	jmpq   *0x200b4a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4004e6:	68 03 00 00 00       	pushq  $0x3
  4004eb:	e9 b0 ff ff ff       	jmpq   4004a0 <_init+0x20>

Disassembly of section .plt.got:

00000000004004f0 <.plt.got>:
  4004f0:	ff 25 02 0b 20 00    	jmpq   *0x200b02(%rip)        # 600ff8 <_DYNAMIC+0x1d0>
  4004f6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400500 <_start>:
  400500:	31 ed                	xor    %ebp,%ebp
  400502:	49 89 d1             	mov    %rdx,%r9
  400505:	5e                   	pop    %rsi
  400506:	48 89 e2             	mov    %rsp,%rdx
  400509:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40050d:	50                   	push   %rax
  40050e:	54                   	push   %rsp
  40050f:	49 c7 c0 60 07 40 00 	mov    $0x400760,%r8
  400516:	48 c7 c1 f0 06 40 00 	mov    $0x4006f0,%rcx
  40051d:	48 c7 c7 f6 05 40 00 	mov    $0x4005f6,%rdi
  400524:	e8 a7 ff ff ff       	callq  4004d0 <__libc_start_main@plt>
  400529:	f4                   	hlt    
  40052a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400530 <deregister_tm_clones>:
  400530:	b8 4f 10 60 00       	mov    $0x60104f,%eax
  400535:	55                   	push   %rbp
  400536:	48 2d 48 10 60 00    	sub    $0x601048,%rax
  40053c:	48 83 f8 0e          	cmp    $0xe,%rax
  400540:	48 89 e5             	mov    %rsp,%rbp
  400543:	76 1b                	jbe    400560 <deregister_tm_clones+0x30>
  400545:	b8 00 00 00 00       	mov    $0x0,%eax
  40054a:	48 85 c0             	test   %rax,%rax
  40054d:	74 11                	je     400560 <deregister_tm_clones+0x30>
  40054f:	5d                   	pop    %rbp
  400550:	bf 48 10 60 00       	mov    $0x601048,%edi
  400555:	ff e0                	jmpq   *%rax
  400557:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40055e:	00 00 
  400560:	5d                   	pop    %rbp
  400561:	c3                   	retq   
  400562:	0f 1f 40 00          	nopl   0x0(%rax)
  400566:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40056d:	00 00 00 

0000000000400570 <register_tm_clones>:
  400570:	be 48 10 60 00       	mov    $0x601048,%esi
  400575:	55                   	push   %rbp
  400576:	48 81 ee 48 10 60 00 	sub    $0x601048,%rsi
  40057d:	48 c1 fe 03          	sar    $0x3,%rsi
  400581:	48 89 e5             	mov    %rsp,%rbp
  400584:	48 89 f0             	mov    %rsi,%rax
  400587:	48 c1 e8 3f          	shr    $0x3f,%rax
  40058b:	48 01 c6             	add    %rax,%rsi
  40058e:	48 d1 fe             	sar    %rsi
  400591:	74 15                	je     4005a8 <register_tm_clones+0x38>
  400593:	b8 00 00 00 00       	mov    $0x0,%eax
  400598:	48 85 c0             	test   %rax,%rax
  40059b:	74 0b                	je     4005a8 <register_tm_clones+0x38>
  40059d:	5d                   	pop    %rbp
  40059e:	bf 48 10 60 00       	mov    $0x601048,%edi
  4005a3:	ff e0                	jmpq   *%rax
  4005a5:	0f 1f 00             	nopl   (%rax)
  4005a8:	5d                   	pop    %rbp
  4005a9:	c3                   	retq   
  4005aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005b0 <__do_global_dtors_aux>:
  4005b0:	80 3d 91 0a 20 00 00 	cmpb   $0x0,0x200a91(%rip)        # 601048 <__TMC_END__>
  4005b7:	75 11                	jne    4005ca <__do_global_dtors_aux+0x1a>
  4005b9:	55                   	push   %rbp
  4005ba:	48 89 e5             	mov    %rsp,%rbp
  4005bd:	e8 6e ff ff ff       	callq  400530 <deregister_tm_clones>
  4005c2:	5d                   	pop    %rbp
  4005c3:	c6 05 7e 0a 20 00 01 	movb   $0x1,0x200a7e(%rip)        # 601048 <__TMC_END__>
  4005ca:	f3 c3                	repz retq 
  4005cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005d0 <frame_dummy>:
  4005d0:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  4005d5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  4005d9:	75 05                	jne    4005e0 <frame_dummy+0x10>
  4005db:	eb 93                	jmp    400570 <register_tm_clones>
  4005dd:	0f 1f 00             	nopl   (%rax)
  4005e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4005e5:	48 85 c0             	test   %rax,%rax
  4005e8:	74 f1                	je     4005db <frame_dummy+0xb>
  4005ea:	55                   	push   %rbp
  4005eb:	48 89 e5             	mov    %rsp,%rbp
  4005ee:	ff d0                	callq  *%rax
  4005f0:	5d                   	pop    %rbp
  4005f1:	e9 7a ff ff ff       	jmpq   400570 <register_tm_clones>

00000000004005f6 <main>:
  4005f6:	55                   	push   %rbp
  4005f7:	48 89 e5             	mov    %rsp,%rbp
  4005fa:	53                   	push   %rbx
  4005fb:	48 83 ec 28          	sub    $0x28,%rsp
  4005ff:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400606:	00 00 
  400608:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40060c:	31 c0                	xor    %eax,%eax
  40060e:	bf 74 07 40 00       	mov    $0x400774,%edi
  400613:	b8 00 00 00 00       	mov    $0x0,%eax
  400618:	e8 a3 fe ff ff       	callq  4004c0 <printf@plt>
  40061d:	48 8d 55 d4          	lea    -0x2c(%rbp),%rdx
  400621:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  400625:	48 89 c6             	mov    %rax,%rsi
  400628:	bf 91 07 40 00       	mov    $0x400791,%edi
  40062d:	b8 00 00 00 00       	mov    $0x0,%eax
  400632:	e8 a9 fe ff ff       	callq  4004e0 <__isoc99_scanf@plt>
  400637:	8b 45 d0             	mov    -0x30(%rbp),%eax
  40063a:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  40063d:	89 d3                	mov    %edx,%ebx
  40063f:	01 d8                	add    %ebx,%eax
  400641:	89 45 d8             	mov    %eax,-0x28(%rbp)
  400644:	8b 45 d0             	mov    -0x30(%rbp),%eax
  400647:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  40064a:	89 d3                	mov    %edx,%ebx
  40064c:	29 d8                	sub    %ebx,%eax
  40064e:	89 45 dc             	mov    %eax,-0x24(%rbp)
  400651:	8b 45 d0             	mov    -0x30(%rbp),%eax
  400654:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  400657:	89 d3                	mov    %edx,%ebx
  400659:	0f af c3             	imul   %ebx,%eax
  40065c:	89 45 e0             	mov    %eax,-0x20(%rbp)
  40065f:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  400662:	8b 45 d0             	mov    -0x30(%rbp),%eax
  400665:	8b 4d d8             	mov    -0x28(%rbp),%ecx
  400668:	89 c6                	mov    %eax,%esi
  40066a:	bf 96 07 40 00       	mov    $0x400796,%edi
  40066f:	b8 00 00 00 00       	mov    $0x0,%eax
  400674:	e8 47 fe ff ff       	callq  4004c0 <printf@plt>
  400679:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  40067c:	8b 45 d0             	mov    -0x30(%rbp),%eax
  40067f:	8b 4d dc             	mov    -0x24(%rbp),%ecx
  400682:	89 c6                	mov    %eax,%esi
  400684:	bf a4 07 40 00       	mov    $0x4007a4,%edi
  400689:	b8 00 00 00 00       	mov    $0x0,%eax
  40068e:	e8 2d fe ff ff       	callq  4004c0 <printf@plt>
  400693:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  400696:	8b 45 d0             	mov    -0x30(%rbp),%eax
  400699:	8b 4d e0             	mov    -0x20(%rbp),%ecx
  40069c:	89 c6                	mov    %eax,%esi
  40069e:	bf b2 07 40 00       	mov    $0x4007b2,%edi
  4006a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4006a8:	e8 13 fe ff ff       	callq  4004c0 <printf@plt>
  4006ad:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  4006b0:	8b 45 d0             	mov    -0x30(%rbp),%eax
  4006b3:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
  4006b6:	89 c6                	mov    %eax,%esi
  4006b8:	bf c0 07 40 00       	mov    $0x4007c0,%edi
  4006bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4006c2:	e8 f9 fd ff ff       	callq  4004c0 <printf@plt>
  4006c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4006cc:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  4006d0:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4006d7:	00 00 
  4006d9:	74 05                	je     4006e0 <main+0xea>
  4006db:	e8 d0 fd ff ff       	callq  4004b0 <__stack_chk_fail@plt>
  4006e0:	48 83 c4 28          	add    $0x28,%rsp
  4006e4:	5b                   	pop    %rbx
  4006e5:	5d                   	pop    %rbp
  4006e6:	c3                   	retq   
  4006e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4006ee:	00 00 

00000000004006f0 <__libc_csu_init>:
  4006f0:	41 57                	push   %r15
  4006f2:	41 56                	push   %r14
  4006f4:	41 89 ff             	mov    %edi,%r15d
  4006f7:	41 55                	push   %r13
  4006f9:	41 54                	push   %r12
  4006fb:	4c 8d 25 0e 07 20 00 	lea    0x20070e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400702:	55                   	push   %rbp
  400703:	48 8d 2d 0e 07 20 00 	lea    0x20070e(%rip),%rbp        # 600e18 <__init_array_end>
  40070a:	53                   	push   %rbx
  40070b:	49 89 f6             	mov    %rsi,%r14
  40070e:	49 89 d5             	mov    %rdx,%r13
  400711:	4c 29 e5             	sub    %r12,%rbp
  400714:	48 83 ec 08          	sub    $0x8,%rsp
  400718:	48 c1 fd 03          	sar    $0x3,%rbp
  40071c:	e8 5f fd ff ff       	callq  400480 <_init>
  400721:	48 85 ed             	test   %rbp,%rbp
  400724:	74 20                	je     400746 <__libc_csu_init+0x56>
  400726:	31 db                	xor    %ebx,%ebx
  400728:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40072f:	00 
  400730:	4c 89 ea             	mov    %r13,%rdx
  400733:	4c 89 f6             	mov    %r14,%rsi
  400736:	44 89 ff             	mov    %r15d,%edi
  400739:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40073d:	48 83 c3 01          	add    $0x1,%rbx
  400741:	48 39 eb             	cmp    %rbp,%rbx
  400744:	75 ea                	jne    400730 <__libc_csu_init+0x40>
  400746:	48 83 c4 08          	add    $0x8,%rsp
  40074a:	5b                   	pop    %rbx
  40074b:	5d                   	pop    %rbp
  40074c:	41 5c                	pop    %r12
  40074e:	41 5d                	pop    %r13
  400750:	41 5e                	pop    %r14
  400752:	41 5f                	pop    %r15
  400754:	c3                   	retq   
  400755:	90                   	nop
  400756:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40075d:	00 00 00 

0000000000400760 <__libc_csu_fini>:
  400760:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400764 <_fini>:
  400764:	48 83 ec 08          	sub    $0x8,%rsp
  400768:	48 83 c4 08          	add    $0x8,%rsp
  40076c:	c3                   	retq   
