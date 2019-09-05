
a.out:     file format elf32-littlearm


Disassembly of section .init:

0001027c <_init>:
   1027c:	e92d4008 	push	{r3, lr}
   10280:	eb00001d 	bl	102fc <call_weak_fn>
   10284:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

00010288 <__libc_start_main@plt-0x14>:
   10288:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   1028c:	e59fe004 	ldr	lr, [pc, #4]	; 10298 <_init+0x1c>
   10290:	e08fe00e 	add	lr, pc, lr
   10294:	e5bef008 	ldr	pc, [lr, #8]!
   10298:	00010394 	.word	0x00010394

0001029c <__libc_start_main@plt>:
   1029c:	e28fc600 	add	ip, pc, #0, 12
   102a0:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   102a4:	e5bcf394 	ldr	pc, [ip, #916]!	; 0x394

000102a8 <__gmon_start__@plt>:
   102a8:	e28fc600 	add	ip, pc, #0, 12
   102ac:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   102b0:	e5bcf38c 	ldr	pc, [ip, #908]!	; 0x38c

000102b4 <abort@plt>:
   102b4:	e28fc600 	add	ip, pc, #0, 12
   102b8:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   102bc:	e5bcf384 	ldr	pc, [ip, #900]!	; 0x384

Disassembly of section .text:

000102c0 <_start>:
   102c0:	e3a0b000 	mov	fp, #0
   102c4:	e3a0e000 	mov	lr, #0
   102c8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   102cc:	e1a0200d 	mov	r2, sp
   102d0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   102d4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   102d8:	e59fc010 	ldr	ip, [pc, #16]	; 102f0 <_start+0x30>
   102dc:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   102e0:	e59f000c 	ldr	r0, [pc, #12]	; 102f4 <_start+0x34>
   102e4:	e59f300c 	ldr	r3, [pc, #12]	; 102f8 <_start+0x38>
   102e8:	ebffffeb 	bl	1029c <__libc_start_main@plt>
   102ec:	ebfffff0 	bl	102b4 <abort@plt>
   102f0:	0001051c 	.word	0x0001051c
   102f4:	00010458 	.word	0x00010458
   102f8:	000104b0 	.word	0x000104b0

000102fc <call_weak_fn>:
   102fc:	e59f3014 	ldr	r3, [pc, #20]	; 10318 <call_weak_fn+0x1c>
   10300:	e59f2014 	ldr	r2, [pc, #20]	; 1031c <call_weak_fn+0x20>
   10304:	e08f3003 	add	r3, pc, r3
   10308:	e7932002 	ldr	r2, [r3, r2]
   1030c:	e3520000 	cmp	r2, #0
   10310:	012fff1e 	bxeq	lr
   10314:	eaffffe3 	b	102a8 <__gmon_start__@plt>
   10318:	00010320 	.word	0x00010320
   1031c:	00000018 	.word	0x00000018

00010320 <deregister_tm_clones>:
   10320:	e59f3024 	ldr	r3, [pc, #36]	; 1034c <deregister_tm_clones+0x2c>
   10324:	e3000650 	movw	r0, #1616	; 0x650
   10328:	e3400002 	movt	r0, #2
   1032c:	e0433000 	sub	r3, r3, r0
   10330:	e3530006 	cmp	r3, #6
   10334:	912fff1e 	bxls	lr
   10338:	e3003000 	movw	r3, #0
   1033c:	e3403000 	movt	r3, #0
   10340:	e3530000 	cmp	r3, #0
   10344:	012fff1e 	bxeq	lr
   10348:	e12fff13 	bx	r3
   1034c:	00020653 	.word	0x00020653

00010350 <register_tm_clones>:
   10350:	e3003650 	movw	r3, #1616	; 0x650
   10354:	e3000650 	movw	r0, #1616	; 0x650
   10358:	e3403002 	movt	r3, #2
   1035c:	e3400002 	movt	r0, #2
   10360:	e0431000 	sub	r1, r3, r0
   10364:	e1a01141 	asr	r1, r1, #2
   10368:	e0811fa1 	add	r1, r1, r1, lsr #31
   1036c:	e1b010c1 	asrs	r1, r1, #1
   10370:	012fff1e 	bxeq	lr
   10374:	e3003000 	movw	r3, #0
   10378:	e3403000 	movt	r3, #0
   1037c:	e3530000 	cmp	r3, #0
   10380:	012fff1e 	bxeq	lr
   10384:	e12fff13 	bx	r3

00010388 <__do_global_dtors_aux>:
   10388:	e92d4010 	push	{r4, lr}
   1038c:	e3004650 	movw	r4, #1616	; 0x650
   10390:	e3404002 	movt	r4, #2
   10394:	e5d43000 	ldrb	r3, [r4]
   10398:	e3530000 	cmp	r3, #0
   1039c:	18bd8010 	popne	{r4, pc}
   103a0:	ebffffde 	bl	10320 <deregister_tm_clones>
   103a4:	e3a03001 	mov	r3, #1
   103a8:	e5c43000 	strb	r3, [r4]
   103ac:	e8bd8010 	pop	{r4, pc}

000103b0 <frame_dummy>:
   103b0:	e3000540 	movw	r0, #1344	; 0x540
   103b4:	e3400002 	movt	r0, #2
   103b8:	e5903000 	ldr	r3, [r0]
   103bc:	e3530000 	cmp	r3, #0
   103c0:	1a000000 	bne	103c8 <frame_dummy+0x18>
   103c4:	eaffffe1 	b	10350 <register_tm_clones>
   103c8:	e3003000 	movw	r3, #0
   103cc:	e3403000 	movt	r3, #0
   103d0:	e3530000 	cmp	r3, #0
   103d4:	0afffffa 	beq	103c4 <frame_dummy+0x14>
   103d8:	e92d4010 	push	{r4, lr}
   103dc:	e12fff33 	blx	r3
   103e0:	e8bd4010 	pop	{r4, lr}
   103e4:	eaffffd9 	b	10350 <register_tm_clones>

000103e8 <add>:
   103e8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   103ec:	e28db000 	add	fp, sp, #0
   103f0:	e24dd014 	sub	sp, sp, #20
   103f4:	e50b0008 	str	r0, [fp, #-8]
   103f8:	e50b100c 	str	r1, [fp, #-12]
   103fc:	e50b2010 	str	r2, [fp, #-16]
   10400:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10404:	e51b2008 	ldr	r2, [fp, #-8]
   10408:	e51b300c 	ldr	r3, [fp, #-12]
   1040c:	e0822003 	add	r2, r2, r3
   10410:	e51b3010 	ldr	r3, [fp, #-16]
   10414:	e0822003 	add	r2, r2, r3
   10418:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   1041c:	e0822003 	add	r2, r2, r3
   10420:	e59b3004 	ldr	r3, [fp, #4]
   10424:	e0822003 	add	r2, r2, r3
   10428:	e59b3008 	ldr	r3, [fp, #8]
   1042c:	e0822003 	add	r2, r2, r3
   10430:	e59b300c 	ldr	r3, [fp, #12]
   10434:	e0822003 	add	r2, r2, r3
   10438:	e59b3010 	ldr	r3, [fp, #16]
   1043c:	e0822003 	add	r2, r2, r3
   10440:	e59b3014 	ldr	r3, [fp, #20]
   10444:	e0823003 	add	r3, r2, r3
   10448:	e1a00003 	mov	r0, r3
   1044c:	e24bd000 	sub	sp, fp, #0
   10450:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   10454:	e12fff1e 	bx	lr

00010458 <main>:
   10458:	e92d4800 	push	{fp, lr}
   1045c:	e28db004 	add	fp, sp, #4
   10460:	e24dd020 	sub	sp, sp, #32
   10464:	e3a03009 	mov	r3, #9
   10468:	e58d3010 	str	r3, [sp, #16]
   1046c:	e3a03008 	mov	r3, #8
   10470:	e58d300c 	str	r3, [sp, #12]
   10474:	e3a03007 	mov	r3, #7
   10478:	e58d3008 	str	r3, [sp, #8]
   1047c:	e3a03006 	mov	r3, #6
   10480:	e58d3004 	str	r3, [sp, #4]
   10484:	e3a03005 	mov	r3, #5
   10488:	e58d3000 	str	r3, [sp]
   1048c:	e3a03004 	mov	r3, #4
   10490:	e3a02003 	mov	r2, #3
   10494:	e3a01002 	mov	r1, #2
   10498:	e3a00001 	mov	r0, #1
   1049c:	ebffffd1 	bl	103e8 <add>
   104a0:	e50b0008 	str	r0, [fp, #-8]
   104a4:	e1a00000 	nop			; (mov r0, r0)
   104a8:	e24bd004 	sub	sp, fp, #4
   104ac:	e8bd8800 	pop	{fp, pc}

000104b0 <__libc_csu_init>:
   104b0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   104b4:	e1a06000 	mov	r6, r0
   104b8:	e1a07001 	mov	r7, r1
   104bc:	e1a08002 	mov	r8, r2
   104c0:	e59f5048 	ldr	r5, [pc, #72]	; 10510 <__libc_csu_init+0x60>
   104c4:	ebffff6c 	bl	1027c <_init>
   104c8:	e59f3044 	ldr	r3, [pc, #68]	; 10514 <__libc_csu_init+0x64>
   104cc:	e08f5005 	add	r5, pc, r5
   104d0:	e08f3003 	add	r3, pc, r3
   104d4:	e0455003 	sub	r5, r5, r3
   104d8:	e1b05145 	asrs	r5, r5, #2
   104dc:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   104e0:	e59f9030 	ldr	r9, [pc, #48]	; 10518 <__libc_csu_init+0x68>
   104e4:	e3a04000 	mov	r4, #0
   104e8:	e08f9009 	add	r9, pc, r9
   104ec:	e7993104 	ldr	r3, [r9, r4, lsl #2]
   104f0:	e1a02008 	mov	r2, r8
   104f4:	e2844001 	add	r4, r4, #1
   104f8:	e1a01007 	mov	r1, r7
   104fc:	e1a00006 	mov	r0, r6
   10500:	e12fff33 	blx	r3
   10504:	e1540005 	cmp	r4, r5
   10508:	1afffff7 	bne	104ec <__libc_csu_init+0x3c>
   1050c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10510:	00010068 	.word	0x00010068
   10514:	00010060 	.word	0x00010060
   10518:	00010048 	.word	0x00010048

0001051c <__libc_csu_fini>:
   1051c:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010520 <_fini>:
   10520:	e92d4008 	push	{r3, lr}
   10524:	e8bd8008 	pop	{r3, pc}
