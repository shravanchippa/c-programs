//arm-poky-linux-gnueabi-objdump -S  a.out > asm.S

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
   102c4:	0001038c 	.word	0x0001038c

000102c8 <printf@plt>:
   102c8:	e28fc600 	add	ip, pc, #0, 12
   102cc:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   102d0:	e5bcf38c 	ldr	pc, [ip, #908]!	; 0x38c

000102d4 <__libc_start_main@plt>:
   102d4:	e28fc600 	add	ip, pc, #0, 12
   102d8:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   102dc:	e5bcf384 	ldr	pc, [ip, #900]!	; 0x384

000102e0 <__gmon_start__@plt>:
   102e0:	e28fc600 	add	ip, pc, #0, 12
   102e4:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   102e8:	e5bcf37c 	ldr	pc, [ip, #892]!	; 0x37c

000102ec <abort@plt>:
   102ec:	e28fc600 	add	ip, pc, #0, 12
   102f0:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   102f4:	e5bcf374 	ldr	pc, [ip, #884]!	; 0x374

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
   10328:	00010528 	.word	0x00010528
   1032c:	00010460 	.word	0x00010460
   10330:	000104bc 	.word	0x000104bc

00010334 <call_weak_fn>:
   10334:	e59f3014 	ldr	r3, [pc, #20]	; 10350 <call_weak_fn+0x1c>
   10338:	e59f2014 	ldr	r2, [pc, #20]	; 10354 <call_weak_fn+0x20>
   1033c:	e08f3003 	add	r3, pc, r3
   10340:	e7932002 	ldr	r2, [r3, r2]
   10344:	e3520000 	cmp	r2, #0
   10348:	012fff1e 	bxeq	lr
   1034c:	eaffffe3 	b	102e0 <__gmon_start__@plt>
   10350:	0001030c 	.word	0x0001030c
   10354:	0000001c 	.word	0x0000001c

00010358 <deregister_tm_clones>:
   10358:	e59f3024 	ldr	r3, [pc, #36]	; 10384 <deregister_tm_clones+0x2c>
   1035c:	e3000678 	movw	r0, #1656	; 0x678
   10360:	e3400002 	movt	r0, #2
   10364:	e0433000 	sub	r3, r3, r0
   10368:	e3530006 	cmp	r3, #6
   1036c:	912fff1e 	bxls	lr
   10370:	e3003000 	movw	r3, #0
   10374:	e3403000 	movt	r3, #0
   10378:	e3530000 	cmp	r3, #0
   1037c:	012fff1e 	bxeq	lr
   10380:	e12fff13 	bx	r3
   10384:	0002067b 	.word	0x0002067b

00010388 <register_tm_clones>:
   10388:	e3003678 	movw	r3, #1656	; 0x678
   1038c:	e3000678 	movw	r0, #1656	; 0x678
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
   103c4:	e3004678 	movw	r4, #1656	; 0x678
   103c8:	e3404002 	movt	r4, #2
   103cc:	e5d43000 	ldrb	r3, [r4]
   103d0:	e3530000 	cmp	r3, #0
   103d4:	18bd8010 	popne	{r4, pc}
   103d8:	ebffffde 	bl	10358 <deregister_tm_clones>
   103dc:	e3a03001 	mov	r3, #1
   103e0:	e5c43000 	strb	r3, [r4]
   103e4:	e8bd8010 	pop	{r4, pc}

000103e8 <frame_dummy>:
   103e8:	e3000564 	movw	r0, #1380	; 0x564
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

00010420 <add>:
   10420:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10424:	e28db000 	add	fp, sp, #0
   10428:	e24dd014 	sub	sp, sp, #20
   1042c:	e50b0010 	str	r0, [fp, #-16]
   10430:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   10434:	e3a03000 	mov	r3, #0
   10438:	e50b3008 	str	r3, [fp, #-8]
   1043c:	e51b3010 	ldr	r3, [fp, #-16]
   10440:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   10444:	e0833002 	add	r3, r3, r2
   10448:	e50b3008 	str	r3, [fp, #-8]
   1044c:	e51b3008 	ldr	r3, [fp, #-8]
   10450:	e1a00003 	mov	r0, r3
   10454:	e24bd000 	sub	sp, fp, #0
   10458:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   1045c:	e12fff1e 	bx	lr

00010460 <main>:
   10460:	e92d4800 	push	{fp, lr}
   10464:	e28db004 	add	fp, sp, #4
   10468:	e24dd010 	sub	sp, sp, #16
   1046c:	e3a03001 	mov	r3, #1
   10470:	e50b3008 	str	r3, [fp, #-8]
   10474:	e3a03002 	mov	r3, #2
   10478:	e50b300c 	str	r3, [fp, #-12]
   1047c:	e3a03000 	mov	r3, #0
   10480:	e50b3010 	str	r3, [fp, #-16]
   10484:	e51b100c 	ldr	r1, [fp, #-12]
   10488:	e51b0008 	ldr	r0, [fp, #-8]
   1048c:	ebffffe3 	bl	10420 <add>
   10490:	e50b0010 	str	r0, [fp, #-16]
   10494:	e51b3010 	ldr	r3, [fp, #-16]
   10498:	e51b200c 	ldr	r2, [fp, #-12]
   1049c:	e51b1008 	ldr	r1, [fp, #-8]
   104a0:	e3000538 	movw	r0, #1336	; 0x538
   104a4:	e3400001 	movt	r0, #1
   104a8:	ebffff86 	bl	102c8 <printf@plt>
   104ac:	e3a03000 	mov	r3, #0
   104b0:	e1a00003 	mov	r0, r3
   104b4:	e24bd004 	sub	sp, fp, #4
   104b8:	e8bd8800 	pop	{fp, pc}

000104bc <__libc_csu_init>:
   104bc:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   104c0:	e1a06000 	mov	r6, r0
   104c4:	e1a07001 	mov	r7, r1
   104c8:	e1a08002 	mov	r8, r2
   104cc:	e59f5048 	ldr	r5, [pc, #72]	; 1051c <__libc_csu_init+0x60>
   104d0:	ebffff74 	bl	102a8 <_init>
   104d4:	e59f3044 	ldr	r3, [pc, #68]	; 10520 <__libc_csu_init+0x64>
   104d8:	e08f5005 	add	r5, pc, r5
   104dc:	e08f3003 	add	r3, pc, r3
   104e0:	e0455003 	sub	r5, r5, r3
   104e4:	e1b05145 	asrs	r5, r5, #2
   104e8:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   104ec:	e59f9030 	ldr	r9, [pc, #48]	; 10524 <__libc_csu_init+0x68>
   104f0:	e3a04000 	mov	r4, #0
   104f4:	e08f9009 	add	r9, pc, r9
   104f8:	e7993104 	ldr	r3, [r9, r4, lsl #2]
   104fc:	e1a02008 	mov	r2, r8
   10500:	e2844001 	add	r4, r4, #1
   10504:	e1a01007 	mov	r1, r7
   10508:	e1a00006 	mov	r0, r6
   1050c:	e12fff33 	blx	r3
   10510:	e1540005 	cmp	r4, r5
   10514:	1afffff7 	bne	104f8 <__libc_csu_init+0x3c>
   10518:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   1051c:	00010080 	.word	0x00010080
   10520:	00010078 	.word	0x00010078
   10524:	00010060 	.word	0x00010060

00010528 <__libc_csu_fini>:
   10528:	e12fff1e 	bx	lr

Disassembly of section .fini:

0001052c <_fini>:
   1052c:	e92d4008 	push	{r3, lr}
   10530:	e8bd8008 	pop	{r3, pc}
