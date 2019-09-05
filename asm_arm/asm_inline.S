//arm-poky-linux-gnueabi-objdump -S  a.out > asm_inline.S

a.out:     file format elf32-littlearm


Disassembly of section .init:

000102a8 <_init>:
   102a8:	e92d4008 	push	{r3, lr}
   102ac:	eb000020 	bl	10334 <call_weak_fn>
   102b0:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

000102b4 <printf@plt-0x14>:
   102b4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   102b8:	e59fe004 	ldr	lr, [pc, #4]	; 102c4 <_init+0x1c>
   102bc:	e08fe00e 	add	lr, pc, lr
   102c0:	e5bef008 	ldr	pc, [lr, #8]!
   102c4:	000103a8 	.word	0x000103a8

000102c8 <printf@plt>:
   102c8:	e28fc600 	add	ip, pc, #0, 12
   102cc:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   102d0:	e5bcf3a8 	ldr	pc, [ip, #936]!	; 0x3a8

000102d4 <__libc_start_main@plt>:
   102d4:	e28fc600 	add	ip, pc, #0, 12
   102d8:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   102dc:	e5bcf3a0 	ldr	pc, [ip, #928]!	; 0x3a0

000102e0 <__gmon_start__@plt>:
   102e0:	e28fc600 	add	ip, pc, #0, 12
   102e4:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   102e8:	e5bcf398 	ldr	pc, [ip, #920]!	; 0x398

000102ec <abort@plt>:
   102ec:	e28fc600 	add	ip, pc, #0, 12
   102f0:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   102f4:	e5bcf390 	ldr	pc, [ip, #912]!	; 0x390

Disassembly of section .text:

000102f8 <_start>:
   102f8:	e3a0b000 	mov	fp, #0
   102fc:	e3a0e000 	mov	lr, #0
   10300:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   10304:	e1a0200d 	mov	r2, sp
   10308:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   1030c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10310:	e59fc010 	ldr	ip, [pc, #16]	; 10328 <_start+0x30>
   10314:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10318:	e59f000c 	ldr	r0, [pc, #12]	; 1032c <_start+0x34>
   1031c:	e59f300c 	ldr	r3, [pc, #12]	; 10330 <_start+0x38>
   10320:	ebffffeb 	bl	102d4 <__libc_start_main@plt>
   10324:	ebfffff0 	bl	102ec <abort@plt>
   10328:	0001054c 	.word	0x0001054c
   1032c:	00010460 	.word	0x00010460
   10330:	000104e0 	.word	0x000104e0

00010334 <call_weak_fn>:
   10334:	e59f3014 	ldr	r3, [pc, #20]	; 10350 <call_weak_fn+0x1c>
   10338:	e59f2014 	ldr	r2, [pc, #20]	; 10354 <call_weak_fn+0x20>
   1033c:	e08f3003 	add	r3, pc, r3
   10340:	e7932002 	ldr	r2, [r3, r2]
   10344:	e3520000 	cmp	r2, #0
   10348:	012fff1e 	bxeq	lr
   1034c:	eaffffe3 	b	102e0 <__gmon_start__@plt>
   10350:	00010328 	.word	0x00010328
   10354:	0000001c 	.word	0x0000001c

00010358 <deregister_tm_clones>:
   10358:	e59f3024 	ldr	r3, [pc, #36]	; 10384 <deregister_tm_clones+0x2c>
   1035c:	e3000694 	movw	r0, #1684	; 0x694
   10360:	e3400002 	movt	r0, #2
   10364:	e0433000 	sub	r3, r3, r0
   10368:	e3530006 	cmp	r3, #6
   1036c:	912fff1e 	bxls	lr
   10370:	e3003000 	movw	r3, #0
   10374:	e3403000 	movt	r3, #0
   10378:	e3530000 	cmp	r3, #0
   1037c:	012fff1e 	bxeq	lr
   10380:	e12fff13 	bx	r3
   10384:	00020697 	.word	0x00020697

00010388 <register_tm_clones>:
   10388:	e3003694 	movw	r3, #1684	; 0x694
   1038c:	e3000694 	movw	r0, #1684	; 0x694
   10390:	e3403002 	movt	r3, #2
   10394:	e3400002 	movt	r0, #2
   10398:	e0431000 	sub	r1, r3, r0
   1039c:	e1a01141 	asr	r1, r1, #2
   103a0:	e0811fa1 	add	r1, r1, r1, lsr #31
   103a4:	e1b010c1 	asrs	r1, r1, #1
   103a8:	012fff1e 	bxeq	lr
   103ac:	e3003000 	movw	r3, #0
   103b0:	e3403000 	movt	r3, #0
   103b4:	e3530000 	cmp	r3, #0
   103b8:	012fff1e 	bxeq	lr
   103bc:	e12fff13 	bx	r3

000103c0 <__do_global_dtors_aux>:
   103c0:	e92d4010 	push	{r4, lr}
   103c4:	e3004694 	movw	r4, #1684	; 0x694
   103c8:	e3404002 	movt	r4, #2
   103cc:	e5d43000 	ldrb	r3, [r4]
   103d0:	e3530000 	cmp	r3, #0
   103d4:	18bd8010 	popne	{r4, pc}
   103d8:	ebffffde 	bl	10358 <deregister_tm_clones>
   103dc:	e3a03001 	mov	r3, #1
   103e0:	e5c43000 	strb	r3, [r4]
   103e4:	e8bd8010 	pop	{r4, pc}

000103e8 <frame_dummy>:
   103e8:	e3000580 	movw	r0, #1408	; 0x580
   103ec:	e3400002 	movt	r0, #2
   103f0:	e5903000 	ldr	r3, [r0]
   103f4:	e3530000 	cmp	r3, #0
   103f8:	1a000000 	bne	10400 <frame_dummy+0x18>
   103fc:	eaffffe1 	b	10388 <register_tm_clones>
   10400:	e3003000 	movw	r3, #0
   10404:	e3403000 	movt	r3, #0
   10408:	e3530000 	cmp	r3, #0
   1040c:	0afffffa 	beq	103fc <frame_dummy+0x14>
   10410:	e92d4010 	push	{r4, lr}
   10414:	e12fff33 	blx	r3
   10418:	e8bd4010 	pop	{r4, lr}
   1041c:	eaffffd9 	b	10388 <register_tm_clones>

00010420 <ByteSwap>:
   10420:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10424:	e28db000 	add	fp, sp, #0
   10428:	e24dd00c 	sub	sp, sp, #12
   1042c:	e50b0008 	str	r0, [fp, #-8]
   10430:	e51b3008 	ldr	r3, [fp, #-8]
   10434:	e1a02003 	mov	r2, r3
   10438:	e0223862 	eor	r3, r2, r2, ror #16
   1043c:	e3c338ff 	bic	r3, r3, #16711680	; 0xff0000
   10440:	e1a02462 	ror	r2, r2, #8
   10444:	e0222423 	eor	r2, r2, r3, lsr #8
   10448:	e50b2008 	str	r2, [fp, #-8]
   1044c:	e51b3008 	ldr	r3, [fp, #-8]
   10450:	e1a00003 	mov	r0, r3
   10454:	e24bd000 	sub	sp, fp, #0
   10458:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   1045c:	e12fff1e 	bx	lr

00010460 <main>:
   10460:	e92d4800 	push	{fp, lr}
   10464:	e28db004 	add	fp, sp, #4
   10468:	e24dd008 	sub	sp, sp, #8
   1046c:	e30535aa 	movw	r3, #21930	; 0x55aa
   10470:	e34535aa 	movt	r3, #21930	; 0x55aa
   10474:	e50b3008 	str	r3, [fp, #-8]
   10478:	e51b1008 	ldr	r1, [fp, #-8]
   1047c:	e300055c 	movw	r0, #1372	; 0x55c
   10480:	e3400001 	movt	r0, #1
   10484:	ebffff8f 	bl	102c8 <printf@plt>
   10488:	e51b3008 	ldr	r3, [fp, #-8]
   1048c:	e1a02003 	mov	r2, r3
   10490:	e0223862 	eor	r3, r2, r2, ror #16
   10494:	e3c338ff 	bic	r3, r3, #16711680	; 0xff0000
   10498:	e1a02462 	ror	r2, r2, #8
   1049c:	e0222423 	eor	r2, r2, r3, lsr #8
   104a0:	e50b2008 	str	r2, [fp, #-8]
   104a4:	e51b1008 	ldr	r1, [fp, #-8]
   104a8:	e300055c 	movw	r0, #1372	; 0x55c
   104ac:	e3400001 	movt	r0, #1
   104b0:	ebffff84 	bl	102c8 <printf@plt>
   104b4:	e51b0008 	ldr	r0, [fp, #-8]
   104b8:	ebffffd8 	bl	10420 <ByteSwap>
   104bc:	e50b000c 	str	r0, [fp, #-12]
   104c0:	e51b100c 	ldr	r1, [fp, #-12]
   104c4:	e3000564 	movw	r0, #1380	; 0x564
   104c8:	e3400001 	movt	r0, #1
   104cc:	ebffff7d 	bl	102c8 <printf@plt>
   104d0:	e3a03000 	mov	r3, #0
   104d4:	e1a00003 	mov	r0, r3
   104d8:	e24bd004 	sub	sp, fp, #4
   104dc:	e8bd8800 	pop	{fp, pc}

000104e0 <__libc_csu_init>:
   104e0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   104e4:	e1a06000 	mov	r6, r0
   104e8:	e1a07001 	mov	r7, r1
   104ec:	e1a08002 	mov	r8, r2
   104f0:	e59f5048 	ldr	r5, [pc, #72]	; 10540 <__libc_csu_init+0x60>
   104f4:	ebffff6b 	bl	102a8 <_init>
   104f8:	e59f3044 	ldr	r3, [pc, #68]	; 10544 <__libc_csu_init+0x64>
   104fc:	e08f5005 	add	r5, pc, r5
   10500:	e08f3003 	add	r3, pc, r3
   10504:	e0455003 	sub	r5, r5, r3
   10508:	e1b05145 	asrs	r5, r5, #2
   1050c:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10510:	e59f9030 	ldr	r9, [pc, #48]	; 10548 <__libc_csu_init+0x68>
   10514:	e3a04000 	mov	r4, #0
   10518:	e08f9009 	add	r9, pc, r9
   1051c:	e7993104 	ldr	r3, [r9, r4, lsl #2]
   10520:	e1a02008 	mov	r2, r8
   10524:	e2844001 	add	r4, r4, #1
   10528:	e1a01007 	mov	r1, r7
   1052c:	e1a00006 	mov	r0, r6
   10530:	e12fff33 	blx	r3
   10534:	e1540005 	cmp	r4, r5
   10538:	1afffff7 	bne	1051c <__libc_csu_init+0x3c>
   1053c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10540:	00010078 	.word	0x00010078
   10544:	00010070 	.word	0x00010070
   10548:	00010058 	.word	0x00010058

0001054c <__libc_csu_fini>:
   1054c:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010550 <_fini>:
   10550:	e92d4008 	push	{r3, lr}
   10554:	e8bd8008 	pop	{r3, pc}
