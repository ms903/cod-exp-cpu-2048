
2048:     file format elf32-littleriscv


Disassembly of section .text:

00000020 <merge_up>:
  20:	fc010113          	add	sp,sp,-64
  24:	02812e23          	sw	s0,60(sp)
  28:	04010413          	add	s0,sp,64
  2c:	fe042023          	sw	zero,-32(s0)
  30:	2f80006f          	j	328 <merge_up+0x308>
  34:	fe042623          	sw	zero,-20(s0)
  38:	fe042423          	sw	zero,-24(s0)
  3c:	00100793          	li	a5,1
  40:	fef42223          	sw	a5,-28(s0)
  44:	fc042e23          	sw	zero,-36(s0)
  48:	0240006f          	j	6c <merge_up+0x4c>
  4c:	fdc42783          	lw	a5,-36(s0)
  50:	00279793          	sll	a5,a5,0x2
  54:	ff078793          	add	a5,a5,-16
  58:	008787b3          	add	a5,a5,s0
  5c:	fc07ac23          	sw	zero,-40(a5)
  60:	fdc42783          	lw	a5,-36(s0)
  64:	00178793          	add	a5,a5,1
  68:	fcf42e23          	sw	a5,-36(s0)
  6c:	fdc42703          	lw	a4,-36(s0)
  70:	00300793          	li	a5,3
  74:	fce7dce3          	bge	a5,a4,4c <merge_up+0x2c>
  78:	1cc0006f          	j	244 <merge_up+0x224>
  7c:	000027b7          	lui	a5,0x2
  80:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
  84:	fe842783          	lw	a5,-24(s0)
  88:	00279693          	sll	a3,a5,0x2
  8c:	fe042783          	lw	a5,-32(s0)
  90:	00f687b3          	add	a5,a3,a5
  94:	00279793          	sll	a5,a5,0x2
  98:	00f707b3          	add	a5,a4,a5
  9c:	0007a783          	lw	a5,0(a5)
  a0:	02079063          	bnez	a5,c0 <merge_up+0xa0>
  a4:	fe842783          	lw	a5,-24(s0)
  a8:	00178793          	add	a5,a5,1
  ac:	fef42423          	sw	a5,-24(s0)
  b0:	fe442783          	lw	a5,-28(s0)
  b4:	00178793          	add	a5,a5,1
  b8:	fef42223          	sw	a5,-28(s0)
  bc:	1880006f          	j	244 <merge_up+0x224>
  c0:	000027b7          	lui	a5,0x2
  c4:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
  c8:	fe442783          	lw	a5,-28(s0)
  cc:	00279693          	sll	a3,a5,0x2
  d0:	fe042783          	lw	a5,-32(s0)
  d4:	00f687b3          	add	a5,a3,a5
  d8:	00279793          	sll	a5,a5,0x2
  dc:	00f707b3          	add	a5,a4,a5
  e0:	0007a783          	lw	a5,0(a5)
  e4:	00079a63          	bnez	a5,f8 <merge_up+0xd8>
  e8:	fe442783          	lw	a5,-28(s0)
  ec:	00178793          	add	a5,a5,1
  f0:	fef42223          	sw	a5,-28(s0)
  f4:	1500006f          	j	244 <merge_up+0x224>
  f8:	000027b7          	lui	a5,0x2
  fc:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 100:	fe842783          	lw	a5,-24(s0)
 104:	00279693          	sll	a3,a5,0x2
 108:	fe042783          	lw	a5,-32(s0)
 10c:	00f687b3          	add	a5,a3,a5
 110:	00279793          	sll	a5,a5,0x2
 114:	00f707b3          	add	a5,a4,a5
 118:	0007a703          	lw	a4,0(a5)
 11c:	000027b7          	lui	a5,0x2
 120:	f2878693          	add	a3,a5,-216 # 1f28 <__DATA_BEGIN__>
 124:	fe442783          	lw	a5,-28(s0)
 128:	00279613          	sll	a2,a5,0x2
 12c:	fe042783          	lw	a5,-32(s0)
 130:	00f607b3          	add	a5,a2,a5
 134:	00279793          	sll	a5,a5,0x2
 138:	00f687b3          	add	a5,a3,a5
 13c:	0007a783          	lw	a5,0(a5)
 140:	06f71263          	bne	a4,a5,1a4 <merge_up+0x184>
 144:	000027b7          	lui	a5,0x2
 148:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 14c:	fe842783          	lw	a5,-24(s0)
 150:	00279693          	sll	a3,a5,0x2
 154:	fe042783          	lw	a5,-32(s0)
 158:	00f687b3          	add	a5,a3,a5
 15c:	00279793          	sll	a5,a5,0x2
 160:	00f707b3          	add	a5,a4,a5
 164:	0007a703          	lw	a4,0(a5)
 168:	fec42783          	lw	a5,-20(s0)
 16c:	00178693          	add	a3,a5,1
 170:	fed42623          	sw	a3,-20(s0)
 174:	00171713          	sll	a4,a4,0x1
 178:	00279793          	sll	a5,a5,0x2
 17c:	ff078793          	add	a5,a5,-16
 180:	008787b3          	add	a5,a5,s0
 184:	fce7ac23          	sw	a4,-40(a5)
 188:	fe442783          	lw	a5,-28(s0)
 18c:	00178793          	add	a5,a5,1
 190:	fef42423          	sw	a5,-24(s0)
 194:	fe842783          	lw	a5,-24(s0)
 198:	00178793          	add	a5,a5,1
 19c:	fef42223          	sw	a5,-28(s0)
 1a0:	0a40006f          	j	244 <merge_up+0x224>
 1a4:	000027b7          	lui	a5,0x2
 1a8:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 1ac:	fe842783          	lw	a5,-24(s0)
 1b0:	00279693          	sll	a3,a5,0x2
 1b4:	fe042783          	lw	a5,-32(s0)
 1b8:	00f687b3          	add	a5,a3,a5
 1bc:	00279793          	sll	a5,a5,0x2
 1c0:	00f707b3          	add	a5,a4,a5
 1c4:	0007a703          	lw	a4,0(a5)
 1c8:	000027b7          	lui	a5,0x2
 1cc:	f2878693          	add	a3,a5,-216 # 1f28 <__DATA_BEGIN__>
 1d0:	fe442783          	lw	a5,-28(s0)
 1d4:	00279613          	sll	a2,a5,0x2
 1d8:	fe042783          	lw	a5,-32(s0)
 1dc:	00f607b3          	add	a5,a2,a5
 1e0:	00279793          	sll	a5,a5,0x2
 1e4:	00f687b3          	add	a5,a3,a5
 1e8:	0007a783          	lw	a5,0(a5)
 1ec:	04f70c63          	beq	a4,a5,244 <merge_up+0x224>
 1f0:	fec42783          	lw	a5,-20(s0)
 1f4:	00178713          	add	a4,a5,1
 1f8:	fee42623          	sw	a4,-20(s0)
 1fc:	00002737          	lui	a4,0x2
 200:	f2870693          	add	a3,a4,-216 # 1f28 <__DATA_BEGIN__>
 204:	fe842703          	lw	a4,-24(s0)
 208:	00271613          	sll	a2,a4,0x2
 20c:	fe042703          	lw	a4,-32(s0)
 210:	00e60733          	add	a4,a2,a4
 214:	00271713          	sll	a4,a4,0x2
 218:	00e68733          	add	a4,a3,a4
 21c:	00072703          	lw	a4,0(a4)
 220:	00279793          	sll	a5,a5,0x2
 224:	ff078793          	add	a5,a5,-16
 228:	008787b3          	add	a5,a5,s0
 22c:	fce7ac23          	sw	a4,-40(a5)
 230:	fe442783          	lw	a5,-28(s0)
 234:	fef42423          	sw	a5,-24(s0)
 238:	fe442783          	lw	a5,-28(s0)
 23c:	00178793          	add	a5,a5,1
 240:	fef42223          	sw	a5,-28(s0)
 244:	fe842703          	lw	a4,-24(s0)
 248:	00300793          	li	a5,3
 24c:	00e7c863          	blt	a5,a4,25c <merge_up+0x23c>
 250:	fe442703          	lw	a4,-28(s0)
 254:	00300793          	li	a5,3
 258:	e2e7d2e3          	bge	a5,a4,7c <merge_up+0x5c>
 25c:	000027b7          	lui	a5,0x2
 260:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 264:	fe842783          	lw	a5,-24(s0)
 268:	00279693          	sll	a3,a5,0x2
 26c:	fe042783          	lw	a5,-32(s0)
 270:	00f687b3          	add	a5,a3,a5
 274:	00279793          	sll	a5,a5,0x2
 278:	00f707b3          	add	a5,a4,a5
 27c:	0007a783          	lw	a5,0(a5)
 280:	04078263          	beqz	a5,2c4 <merge_up+0x2a4>
 284:	fec42783          	lw	a5,-20(s0)
 288:	00178713          	add	a4,a5,1
 28c:	fee42623          	sw	a4,-20(s0)
 290:	00002737          	lui	a4,0x2
 294:	f2870693          	add	a3,a4,-216 # 1f28 <__DATA_BEGIN__>
 298:	fe842703          	lw	a4,-24(s0)
 29c:	00271613          	sll	a2,a4,0x2
 2a0:	fe042703          	lw	a4,-32(s0)
 2a4:	00e60733          	add	a4,a2,a4
 2a8:	00271713          	sll	a4,a4,0x2
 2ac:	00e68733          	add	a4,a3,a4
 2b0:	00072703          	lw	a4,0(a4)
 2b4:	00279793          	sll	a5,a5,0x2
 2b8:	ff078793          	add	a5,a5,-16
 2bc:	008787b3          	add	a5,a5,s0
 2c0:	fce7ac23          	sw	a4,-40(a5)
 2c4:	fc042c23          	sw	zero,-40(s0)
 2c8:	0480006f          	j	310 <merge_up+0x2f0>
 2cc:	fd842783          	lw	a5,-40(s0)
 2d0:	00279793          	sll	a5,a5,0x2
 2d4:	ff078793          	add	a5,a5,-16
 2d8:	008787b3          	add	a5,a5,s0
 2dc:	fd87a703          	lw	a4,-40(a5)
 2e0:	000027b7          	lui	a5,0x2
 2e4:	f2878693          	add	a3,a5,-216 # 1f28 <__DATA_BEGIN__>
 2e8:	fd842783          	lw	a5,-40(s0)
 2ec:	00279613          	sll	a2,a5,0x2
 2f0:	fe042783          	lw	a5,-32(s0)
 2f4:	00f607b3          	add	a5,a2,a5
 2f8:	00279793          	sll	a5,a5,0x2
 2fc:	00f687b3          	add	a5,a3,a5
 300:	00e7a023          	sw	a4,0(a5)
 304:	fd842783          	lw	a5,-40(s0)
 308:	00178793          	add	a5,a5,1
 30c:	fcf42c23          	sw	a5,-40(s0)
 310:	fd842703          	lw	a4,-40(s0)
 314:	00300793          	li	a5,3
 318:	fae7dae3          	bge	a5,a4,2cc <merge_up+0x2ac>
 31c:	fe042783          	lw	a5,-32(s0)
 320:	00178793          	add	a5,a5,1
 324:	fef42023          	sw	a5,-32(s0)
 328:	fe042703          	lw	a4,-32(s0)
 32c:	00300793          	li	a5,3
 330:	d0e7d2e3          	bge	a5,a4,34 <merge_up+0x14>
 334:	00000013          	nop
 338:	03c12403          	lw	s0,60(sp)
 33c:	04010113          	add	sp,sp,64
 340:	00008067          	ret

00000344 <merge_left>:
 344:	fc010113          	add	sp,sp,-64
 348:	02812e23          	sw	s0,60(sp)
 34c:	04010413          	add	s0,sp,64
 350:	fe042023          	sw	zero,-32(s0)
 354:	2f80006f          	j	64c <merge_left+0x308>
 358:	fe042623          	sw	zero,-20(s0)
 35c:	fe042423          	sw	zero,-24(s0)
 360:	00100793          	li	a5,1
 364:	fef42223          	sw	a5,-28(s0)
 368:	fc042e23          	sw	zero,-36(s0)
 36c:	0240006f          	j	390 <merge_left+0x4c>
 370:	fdc42783          	lw	a5,-36(s0)
 374:	00279793          	sll	a5,a5,0x2
 378:	ff078793          	add	a5,a5,-16
 37c:	008787b3          	add	a5,a5,s0
 380:	fc07ac23          	sw	zero,-40(a5)
 384:	fdc42783          	lw	a5,-36(s0)
 388:	00178793          	add	a5,a5,1
 38c:	fcf42e23          	sw	a5,-36(s0)
 390:	fdc42703          	lw	a4,-36(s0)
 394:	00300793          	li	a5,3
 398:	fce7dce3          	bge	a5,a4,370 <merge_left+0x2c>
 39c:	1cc0006f          	j	568 <merge_left+0x224>
 3a0:	000027b7          	lui	a5,0x2
 3a4:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 3a8:	fe042783          	lw	a5,-32(s0)
 3ac:	00279693          	sll	a3,a5,0x2
 3b0:	fe842783          	lw	a5,-24(s0)
 3b4:	00f687b3          	add	a5,a3,a5
 3b8:	00279793          	sll	a5,a5,0x2
 3bc:	00f707b3          	add	a5,a4,a5
 3c0:	0007a783          	lw	a5,0(a5)
 3c4:	02079063          	bnez	a5,3e4 <merge_left+0xa0>
 3c8:	fe842783          	lw	a5,-24(s0)
 3cc:	00178793          	add	a5,a5,1
 3d0:	fef42423          	sw	a5,-24(s0)
 3d4:	fe442783          	lw	a5,-28(s0)
 3d8:	00178793          	add	a5,a5,1
 3dc:	fef42223          	sw	a5,-28(s0)
 3e0:	1880006f          	j	568 <merge_left+0x224>
 3e4:	000027b7          	lui	a5,0x2
 3e8:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 3ec:	fe042783          	lw	a5,-32(s0)
 3f0:	00279693          	sll	a3,a5,0x2
 3f4:	fe442783          	lw	a5,-28(s0)
 3f8:	00f687b3          	add	a5,a3,a5
 3fc:	00279793          	sll	a5,a5,0x2
 400:	00f707b3          	add	a5,a4,a5
 404:	0007a783          	lw	a5,0(a5)
 408:	00079a63          	bnez	a5,41c <merge_left+0xd8>
 40c:	fe442783          	lw	a5,-28(s0)
 410:	00178793          	add	a5,a5,1
 414:	fef42223          	sw	a5,-28(s0)
 418:	1500006f          	j	568 <merge_left+0x224>
 41c:	000027b7          	lui	a5,0x2
 420:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 424:	fe042783          	lw	a5,-32(s0)
 428:	00279693          	sll	a3,a5,0x2
 42c:	fe842783          	lw	a5,-24(s0)
 430:	00f687b3          	add	a5,a3,a5
 434:	00279793          	sll	a5,a5,0x2
 438:	00f707b3          	add	a5,a4,a5
 43c:	0007a703          	lw	a4,0(a5)
 440:	000027b7          	lui	a5,0x2
 444:	f2878693          	add	a3,a5,-216 # 1f28 <__DATA_BEGIN__>
 448:	fe042783          	lw	a5,-32(s0)
 44c:	00279613          	sll	a2,a5,0x2
 450:	fe442783          	lw	a5,-28(s0)
 454:	00f607b3          	add	a5,a2,a5
 458:	00279793          	sll	a5,a5,0x2
 45c:	00f687b3          	add	a5,a3,a5
 460:	0007a783          	lw	a5,0(a5)
 464:	06f71263          	bne	a4,a5,4c8 <merge_left+0x184>
 468:	000027b7          	lui	a5,0x2
 46c:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 470:	fe042783          	lw	a5,-32(s0)
 474:	00279693          	sll	a3,a5,0x2
 478:	fe842783          	lw	a5,-24(s0)
 47c:	00f687b3          	add	a5,a3,a5
 480:	00279793          	sll	a5,a5,0x2
 484:	00f707b3          	add	a5,a4,a5
 488:	0007a703          	lw	a4,0(a5)
 48c:	fec42783          	lw	a5,-20(s0)
 490:	00178693          	add	a3,a5,1
 494:	fed42623          	sw	a3,-20(s0)
 498:	00171713          	sll	a4,a4,0x1
 49c:	00279793          	sll	a5,a5,0x2
 4a0:	ff078793          	add	a5,a5,-16
 4a4:	008787b3          	add	a5,a5,s0
 4a8:	fce7ac23          	sw	a4,-40(a5)
 4ac:	fe442783          	lw	a5,-28(s0)
 4b0:	00178793          	add	a5,a5,1
 4b4:	fef42423          	sw	a5,-24(s0)
 4b8:	fe842783          	lw	a5,-24(s0)
 4bc:	00178793          	add	a5,a5,1
 4c0:	fef42223          	sw	a5,-28(s0)
 4c4:	0a40006f          	j	568 <merge_left+0x224>
 4c8:	000027b7          	lui	a5,0x2
 4cc:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 4d0:	fe042783          	lw	a5,-32(s0)
 4d4:	00279693          	sll	a3,a5,0x2
 4d8:	fe842783          	lw	a5,-24(s0)
 4dc:	00f687b3          	add	a5,a3,a5
 4e0:	00279793          	sll	a5,a5,0x2
 4e4:	00f707b3          	add	a5,a4,a5
 4e8:	0007a703          	lw	a4,0(a5)
 4ec:	000027b7          	lui	a5,0x2
 4f0:	f2878693          	add	a3,a5,-216 # 1f28 <__DATA_BEGIN__>
 4f4:	fe042783          	lw	a5,-32(s0)
 4f8:	00279613          	sll	a2,a5,0x2
 4fc:	fe442783          	lw	a5,-28(s0)
 500:	00f607b3          	add	a5,a2,a5
 504:	00279793          	sll	a5,a5,0x2
 508:	00f687b3          	add	a5,a3,a5
 50c:	0007a783          	lw	a5,0(a5)
 510:	04f70c63          	beq	a4,a5,568 <merge_left+0x224>
 514:	fec42783          	lw	a5,-20(s0)
 518:	00178713          	add	a4,a5,1
 51c:	fee42623          	sw	a4,-20(s0)
 520:	00002737          	lui	a4,0x2
 524:	f2870693          	add	a3,a4,-216 # 1f28 <__DATA_BEGIN__>
 528:	fe042703          	lw	a4,-32(s0)
 52c:	00271613          	sll	a2,a4,0x2
 530:	fe842703          	lw	a4,-24(s0)
 534:	00e60733          	add	a4,a2,a4
 538:	00271713          	sll	a4,a4,0x2
 53c:	00e68733          	add	a4,a3,a4
 540:	00072703          	lw	a4,0(a4)
 544:	00279793          	sll	a5,a5,0x2
 548:	ff078793          	add	a5,a5,-16
 54c:	008787b3          	add	a5,a5,s0
 550:	fce7ac23          	sw	a4,-40(a5)
 554:	fe442783          	lw	a5,-28(s0)
 558:	fef42423          	sw	a5,-24(s0)
 55c:	fe442783          	lw	a5,-28(s0)
 560:	00178793          	add	a5,a5,1
 564:	fef42223          	sw	a5,-28(s0)
 568:	fe842703          	lw	a4,-24(s0)
 56c:	00300793          	li	a5,3
 570:	00e7c863          	blt	a5,a4,580 <merge_left+0x23c>
 574:	fe442703          	lw	a4,-28(s0)
 578:	00300793          	li	a5,3
 57c:	e2e7d2e3          	bge	a5,a4,3a0 <merge_left+0x5c>
 580:	000027b7          	lui	a5,0x2
 584:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 588:	fe042783          	lw	a5,-32(s0)
 58c:	00279693          	sll	a3,a5,0x2
 590:	fe842783          	lw	a5,-24(s0)
 594:	00f687b3          	add	a5,a3,a5
 598:	00279793          	sll	a5,a5,0x2
 59c:	00f707b3          	add	a5,a4,a5
 5a0:	0007a783          	lw	a5,0(a5)
 5a4:	04078263          	beqz	a5,5e8 <merge_left+0x2a4>
 5a8:	fec42783          	lw	a5,-20(s0)
 5ac:	00178713          	add	a4,a5,1
 5b0:	fee42623          	sw	a4,-20(s0)
 5b4:	00002737          	lui	a4,0x2
 5b8:	f2870693          	add	a3,a4,-216 # 1f28 <__DATA_BEGIN__>
 5bc:	fe042703          	lw	a4,-32(s0)
 5c0:	00271613          	sll	a2,a4,0x2
 5c4:	fe842703          	lw	a4,-24(s0)
 5c8:	00e60733          	add	a4,a2,a4
 5cc:	00271713          	sll	a4,a4,0x2
 5d0:	00e68733          	add	a4,a3,a4
 5d4:	00072703          	lw	a4,0(a4)
 5d8:	00279793          	sll	a5,a5,0x2
 5dc:	ff078793          	add	a5,a5,-16
 5e0:	008787b3          	add	a5,a5,s0
 5e4:	fce7ac23          	sw	a4,-40(a5)
 5e8:	fc042c23          	sw	zero,-40(s0)
 5ec:	0480006f          	j	634 <merge_left+0x2f0>
 5f0:	fd842783          	lw	a5,-40(s0)
 5f4:	00279793          	sll	a5,a5,0x2
 5f8:	ff078793          	add	a5,a5,-16
 5fc:	008787b3          	add	a5,a5,s0
 600:	fd87a703          	lw	a4,-40(a5)
 604:	000027b7          	lui	a5,0x2
 608:	f2878693          	add	a3,a5,-216 # 1f28 <__DATA_BEGIN__>
 60c:	fe042783          	lw	a5,-32(s0)
 610:	00279613          	sll	a2,a5,0x2
 614:	fd842783          	lw	a5,-40(s0)
 618:	00f607b3          	add	a5,a2,a5
 61c:	00279793          	sll	a5,a5,0x2
 620:	00f687b3          	add	a5,a3,a5
 624:	00e7a023          	sw	a4,0(a5)
 628:	fd842783          	lw	a5,-40(s0)
 62c:	00178793          	add	a5,a5,1
 630:	fcf42c23          	sw	a5,-40(s0)
 634:	fd842703          	lw	a4,-40(s0)
 638:	00300793          	li	a5,3
 63c:	fae7dae3          	bge	a5,a4,5f0 <merge_left+0x2ac>
 640:	fe042783          	lw	a5,-32(s0)
 644:	00178793          	add	a5,a5,1
 648:	fef42023          	sw	a5,-32(s0)
 64c:	fe042703          	lw	a4,-32(s0)
 650:	00300793          	li	a5,3
 654:	d0e7d2e3          	bge	a5,a4,358 <merge_left+0x14>
 658:	00000013          	nop
 65c:	03c12403          	lw	s0,60(sp)
 660:	04010113          	add	sp,sp,64
 664:	00008067          	ret

00000668 <merge_down>:
 668:	fc010113          	add	sp,sp,-64
 66c:	02812e23          	sw	s0,60(sp)
 670:	04010413          	add	s0,sp,64
 674:	fe042023          	sw	zero,-32(s0)
 678:	2f80006f          	j	970 <merge_down+0x308>
 67c:	00300793          	li	a5,3
 680:	fef42623          	sw	a5,-20(s0)
 684:	00300793          	li	a5,3
 688:	fef42423          	sw	a5,-24(s0)
 68c:	00200793          	li	a5,2
 690:	fef42223          	sw	a5,-28(s0)
 694:	fc042e23          	sw	zero,-36(s0)
 698:	0240006f          	j	6bc <merge_down+0x54>
 69c:	fdc42783          	lw	a5,-36(s0)
 6a0:	00279793          	sll	a5,a5,0x2
 6a4:	ff078793          	add	a5,a5,-16
 6a8:	008787b3          	add	a5,a5,s0
 6ac:	fc07ac23          	sw	zero,-40(a5)
 6b0:	fdc42783          	lw	a5,-36(s0)
 6b4:	00178793          	add	a5,a5,1
 6b8:	fcf42e23          	sw	a5,-36(s0)
 6bc:	fdc42703          	lw	a4,-36(s0)
 6c0:	00300793          	li	a5,3
 6c4:	fce7dce3          	bge	a5,a4,69c <merge_down+0x34>
 6c8:	1cc0006f          	j	894 <merge_down+0x22c>
 6cc:	000027b7          	lui	a5,0x2
 6d0:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 6d4:	fe842783          	lw	a5,-24(s0)
 6d8:	00279693          	sll	a3,a5,0x2
 6dc:	fe042783          	lw	a5,-32(s0)
 6e0:	00f687b3          	add	a5,a3,a5
 6e4:	00279793          	sll	a5,a5,0x2
 6e8:	00f707b3          	add	a5,a4,a5
 6ec:	0007a783          	lw	a5,0(a5)
 6f0:	02079063          	bnez	a5,710 <merge_down+0xa8>
 6f4:	fe842783          	lw	a5,-24(s0)
 6f8:	fff78793          	add	a5,a5,-1
 6fc:	fef42423          	sw	a5,-24(s0)
 700:	fe442783          	lw	a5,-28(s0)
 704:	fff78793          	add	a5,a5,-1
 708:	fef42223          	sw	a5,-28(s0)
 70c:	1880006f          	j	894 <merge_down+0x22c>
 710:	000027b7          	lui	a5,0x2
 714:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 718:	fe442783          	lw	a5,-28(s0)
 71c:	00279693          	sll	a3,a5,0x2
 720:	fe042783          	lw	a5,-32(s0)
 724:	00f687b3          	add	a5,a3,a5
 728:	00279793          	sll	a5,a5,0x2
 72c:	00f707b3          	add	a5,a4,a5
 730:	0007a783          	lw	a5,0(a5)
 734:	00079a63          	bnez	a5,748 <merge_down+0xe0>
 738:	fe442783          	lw	a5,-28(s0)
 73c:	fff78793          	add	a5,a5,-1
 740:	fef42223          	sw	a5,-28(s0)
 744:	1500006f          	j	894 <merge_down+0x22c>
 748:	000027b7          	lui	a5,0x2
 74c:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 750:	fe842783          	lw	a5,-24(s0)
 754:	00279693          	sll	a3,a5,0x2
 758:	fe042783          	lw	a5,-32(s0)
 75c:	00f687b3          	add	a5,a3,a5
 760:	00279793          	sll	a5,a5,0x2
 764:	00f707b3          	add	a5,a4,a5
 768:	0007a703          	lw	a4,0(a5)
 76c:	000027b7          	lui	a5,0x2
 770:	f2878693          	add	a3,a5,-216 # 1f28 <__DATA_BEGIN__>
 774:	fe442783          	lw	a5,-28(s0)
 778:	00279613          	sll	a2,a5,0x2
 77c:	fe042783          	lw	a5,-32(s0)
 780:	00f607b3          	add	a5,a2,a5
 784:	00279793          	sll	a5,a5,0x2
 788:	00f687b3          	add	a5,a3,a5
 78c:	0007a783          	lw	a5,0(a5)
 790:	06f71263          	bne	a4,a5,7f4 <merge_down+0x18c>
 794:	000027b7          	lui	a5,0x2
 798:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 79c:	fe842783          	lw	a5,-24(s0)
 7a0:	00279693          	sll	a3,a5,0x2
 7a4:	fe042783          	lw	a5,-32(s0)
 7a8:	00f687b3          	add	a5,a3,a5
 7ac:	00279793          	sll	a5,a5,0x2
 7b0:	00f707b3          	add	a5,a4,a5
 7b4:	0007a703          	lw	a4,0(a5)
 7b8:	fec42783          	lw	a5,-20(s0)
 7bc:	fff78693          	add	a3,a5,-1
 7c0:	fed42623          	sw	a3,-20(s0)
 7c4:	00171713          	sll	a4,a4,0x1
 7c8:	00279793          	sll	a5,a5,0x2
 7cc:	ff078793          	add	a5,a5,-16
 7d0:	008787b3          	add	a5,a5,s0
 7d4:	fce7ac23          	sw	a4,-40(a5)
 7d8:	fe442783          	lw	a5,-28(s0)
 7dc:	fff78793          	add	a5,a5,-1
 7e0:	fef42423          	sw	a5,-24(s0)
 7e4:	fe842783          	lw	a5,-24(s0)
 7e8:	fff78793          	add	a5,a5,-1
 7ec:	fef42223          	sw	a5,-28(s0)
 7f0:	0a40006f          	j	894 <merge_down+0x22c>
 7f4:	000027b7          	lui	a5,0x2
 7f8:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 7fc:	fe842783          	lw	a5,-24(s0)
 800:	00279693          	sll	a3,a5,0x2
 804:	fe042783          	lw	a5,-32(s0)
 808:	00f687b3          	add	a5,a3,a5
 80c:	00279793          	sll	a5,a5,0x2
 810:	00f707b3          	add	a5,a4,a5
 814:	0007a703          	lw	a4,0(a5)
 818:	000027b7          	lui	a5,0x2
 81c:	f2878693          	add	a3,a5,-216 # 1f28 <__DATA_BEGIN__>
 820:	fe442783          	lw	a5,-28(s0)
 824:	00279613          	sll	a2,a5,0x2
 828:	fe042783          	lw	a5,-32(s0)
 82c:	00f607b3          	add	a5,a2,a5
 830:	00279793          	sll	a5,a5,0x2
 834:	00f687b3          	add	a5,a3,a5
 838:	0007a783          	lw	a5,0(a5)
 83c:	04f70c63          	beq	a4,a5,894 <merge_down+0x22c>
 840:	fec42783          	lw	a5,-20(s0)
 844:	fff78713          	add	a4,a5,-1
 848:	fee42623          	sw	a4,-20(s0)
 84c:	00002737          	lui	a4,0x2
 850:	f2870693          	add	a3,a4,-216 # 1f28 <__DATA_BEGIN__>
 854:	fe842703          	lw	a4,-24(s0)
 858:	00271613          	sll	a2,a4,0x2
 85c:	fe042703          	lw	a4,-32(s0)
 860:	00e60733          	add	a4,a2,a4
 864:	00271713          	sll	a4,a4,0x2
 868:	00e68733          	add	a4,a3,a4
 86c:	00072703          	lw	a4,0(a4)
 870:	00279793          	sll	a5,a5,0x2
 874:	ff078793          	add	a5,a5,-16
 878:	008787b3          	add	a5,a5,s0
 87c:	fce7ac23          	sw	a4,-40(a5)
 880:	fe442783          	lw	a5,-28(s0)
 884:	fef42423          	sw	a5,-24(s0)
 888:	fe442783          	lw	a5,-28(s0)
 88c:	fff78793          	add	a5,a5,-1
 890:	fef42223          	sw	a5,-28(s0)
 894:	fe842783          	lw	a5,-24(s0)
 898:	0007c663          	bltz	a5,8a4 <merge_down+0x23c>
 89c:	fe442783          	lw	a5,-28(s0)
 8a0:	e207d6e3          	bgez	a5,6cc <merge_down+0x64>
 8a4:	000027b7          	lui	a5,0x2
 8a8:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 8ac:	fe842783          	lw	a5,-24(s0)
 8b0:	00279693          	sll	a3,a5,0x2
 8b4:	fe042783          	lw	a5,-32(s0)
 8b8:	00f687b3          	add	a5,a3,a5
 8bc:	00279793          	sll	a5,a5,0x2
 8c0:	00f707b3          	add	a5,a4,a5
 8c4:	0007a783          	lw	a5,0(a5)
 8c8:	04078263          	beqz	a5,90c <merge_down+0x2a4>
 8cc:	fec42783          	lw	a5,-20(s0)
 8d0:	fff78713          	add	a4,a5,-1
 8d4:	fee42623          	sw	a4,-20(s0)
 8d8:	00002737          	lui	a4,0x2
 8dc:	f2870693          	add	a3,a4,-216 # 1f28 <__DATA_BEGIN__>
 8e0:	fe842703          	lw	a4,-24(s0)
 8e4:	00271613          	sll	a2,a4,0x2
 8e8:	fe042703          	lw	a4,-32(s0)
 8ec:	00e60733          	add	a4,a2,a4
 8f0:	00271713          	sll	a4,a4,0x2
 8f4:	00e68733          	add	a4,a3,a4
 8f8:	00072703          	lw	a4,0(a4)
 8fc:	00279793          	sll	a5,a5,0x2
 900:	ff078793          	add	a5,a5,-16
 904:	008787b3          	add	a5,a5,s0
 908:	fce7ac23          	sw	a4,-40(a5)
 90c:	00300793          	li	a5,3
 910:	fcf42c23          	sw	a5,-40(s0)
 914:	0480006f          	j	95c <merge_down+0x2f4>
 918:	fd842783          	lw	a5,-40(s0)
 91c:	00279793          	sll	a5,a5,0x2
 920:	ff078793          	add	a5,a5,-16
 924:	008787b3          	add	a5,a5,s0
 928:	fd87a703          	lw	a4,-40(a5)
 92c:	000027b7          	lui	a5,0x2
 930:	f2878693          	add	a3,a5,-216 # 1f28 <__DATA_BEGIN__>
 934:	fd842783          	lw	a5,-40(s0)
 938:	00279613          	sll	a2,a5,0x2
 93c:	fe042783          	lw	a5,-32(s0)
 940:	00f607b3          	add	a5,a2,a5
 944:	00279793          	sll	a5,a5,0x2
 948:	00f687b3          	add	a5,a3,a5
 94c:	00e7a023          	sw	a4,0(a5)
 950:	fd842783          	lw	a5,-40(s0)
 954:	fff78793          	add	a5,a5,-1
 958:	fcf42c23          	sw	a5,-40(s0)
 95c:	fd842783          	lw	a5,-40(s0)
 960:	fa07dce3          	bgez	a5,918 <merge_down+0x2b0>
 964:	fe042783          	lw	a5,-32(s0)
 968:	00178793          	add	a5,a5,1
 96c:	fef42023          	sw	a5,-32(s0)
 970:	fe042703          	lw	a4,-32(s0)
 974:	00300793          	li	a5,3
 978:	d0e7d2e3          	bge	a5,a4,67c <merge_down+0x14>
 97c:	00000013          	nop
 980:	03c12403          	lw	s0,60(sp)
 984:	04010113          	add	sp,sp,64
 988:	00008067          	ret

0000098c <merge_right>:
 98c:	fc010113          	add	sp,sp,-64
 990:	02812e23          	sw	s0,60(sp)
 994:	04010413          	add	s0,sp,64
 998:	fe042023          	sw	zero,-32(s0)
 99c:	2f80006f          	j	c94 <merge_right+0x308>
 9a0:	00300793          	li	a5,3
 9a4:	fef42623          	sw	a5,-20(s0)
 9a8:	00300793          	li	a5,3
 9ac:	fef42423          	sw	a5,-24(s0)
 9b0:	00200793          	li	a5,2
 9b4:	fef42223          	sw	a5,-28(s0)
 9b8:	fc042e23          	sw	zero,-36(s0)
 9bc:	0240006f          	j	9e0 <merge_right+0x54>
 9c0:	fdc42783          	lw	a5,-36(s0)
 9c4:	00279793          	sll	a5,a5,0x2
 9c8:	ff078793          	add	a5,a5,-16
 9cc:	008787b3          	add	a5,a5,s0
 9d0:	fc07ac23          	sw	zero,-40(a5)
 9d4:	fdc42783          	lw	a5,-36(s0)
 9d8:	00178793          	add	a5,a5,1
 9dc:	fcf42e23          	sw	a5,-36(s0)
 9e0:	fdc42703          	lw	a4,-36(s0)
 9e4:	00300793          	li	a5,3
 9e8:	fce7dce3          	bge	a5,a4,9c0 <merge_right+0x34>
 9ec:	1cc0006f          	j	bb8 <merge_right+0x22c>
 9f0:	000027b7          	lui	a5,0x2
 9f4:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 9f8:	fe042783          	lw	a5,-32(s0)
 9fc:	00279693          	sll	a3,a5,0x2
 a00:	fe842783          	lw	a5,-24(s0)
 a04:	00f687b3          	add	a5,a3,a5
 a08:	00279793          	sll	a5,a5,0x2
 a0c:	00f707b3          	add	a5,a4,a5
 a10:	0007a783          	lw	a5,0(a5)
 a14:	02079063          	bnez	a5,a34 <merge_right+0xa8>
 a18:	fe842783          	lw	a5,-24(s0)
 a1c:	fff78793          	add	a5,a5,-1
 a20:	fef42423          	sw	a5,-24(s0)
 a24:	fe442783          	lw	a5,-28(s0)
 a28:	fff78793          	add	a5,a5,-1
 a2c:	fef42223          	sw	a5,-28(s0)
 a30:	1880006f          	j	bb8 <merge_right+0x22c>
 a34:	000027b7          	lui	a5,0x2
 a38:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 a3c:	fe042783          	lw	a5,-32(s0)
 a40:	00279693          	sll	a3,a5,0x2
 a44:	fe442783          	lw	a5,-28(s0)
 a48:	00f687b3          	add	a5,a3,a5
 a4c:	00279793          	sll	a5,a5,0x2
 a50:	00f707b3          	add	a5,a4,a5
 a54:	0007a783          	lw	a5,0(a5)
 a58:	00079a63          	bnez	a5,a6c <merge_right+0xe0>
 a5c:	fe442783          	lw	a5,-28(s0)
 a60:	fff78793          	add	a5,a5,-1
 a64:	fef42223          	sw	a5,-28(s0)
 a68:	1500006f          	j	bb8 <merge_right+0x22c>
 a6c:	000027b7          	lui	a5,0x2
 a70:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 a74:	fe042783          	lw	a5,-32(s0)
 a78:	00279693          	sll	a3,a5,0x2
 a7c:	fe842783          	lw	a5,-24(s0)
 a80:	00f687b3          	add	a5,a3,a5
 a84:	00279793          	sll	a5,a5,0x2
 a88:	00f707b3          	add	a5,a4,a5
 a8c:	0007a703          	lw	a4,0(a5)
 a90:	000027b7          	lui	a5,0x2
 a94:	f2878693          	add	a3,a5,-216 # 1f28 <__DATA_BEGIN__>
 a98:	fe042783          	lw	a5,-32(s0)
 a9c:	00279613          	sll	a2,a5,0x2
 aa0:	fe442783          	lw	a5,-28(s0)
 aa4:	00f607b3          	add	a5,a2,a5
 aa8:	00279793          	sll	a5,a5,0x2
 aac:	00f687b3          	add	a5,a3,a5
 ab0:	0007a783          	lw	a5,0(a5)
 ab4:	06f71263          	bne	a4,a5,b18 <merge_right+0x18c>
 ab8:	000027b7          	lui	a5,0x2
 abc:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 ac0:	fe042783          	lw	a5,-32(s0)
 ac4:	00279693          	sll	a3,a5,0x2
 ac8:	fe842783          	lw	a5,-24(s0)
 acc:	00f687b3          	add	a5,a3,a5
 ad0:	00279793          	sll	a5,a5,0x2
 ad4:	00f707b3          	add	a5,a4,a5
 ad8:	0007a703          	lw	a4,0(a5)
 adc:	fec42783          	lw	a5,-20(s0)
 ae0:	fff78693          	add	a3,a5,-1
 ae4:	fed42623          	sw	a3,-20(s0)
 ae8:	00171713          	sll	a4,a4,0x1
 aec:	00279793          	sll	a5,a5,0x2
 af0:	ff078793          	add	a5,a5,-16
 af4:	008787b3          	add	a5,a5,s0
 af8:	fce7ac23          	sw	a4,-40(a5)
 afc:	fe442783          	lw	a5,-28(s0)
 b00:	fff78793          	add	a5,a5,-1
 b04:	fef42423          	sw	a5,-24(s0)
 b08:	fe842783          	lw	a5,-24(s0)
 b0c:	fff78793          	add	a5,a5,-1
 b10:	fef42223          	sw	a5,-28(s0)
 b14:	0a40006f          	j	bb8 <merge_right+0x22c>
 b18:	000027b7          	lui	a5,0x2
 b1c:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 b20:	fe042783          	lw	a5,-32(s0)
 b24:	00279693          	sll	a3,a5,0x2
 b28:	fe842783          	lw	a5,-24(s0)
 b2c:	00f687b3          	add	a5,a3,a5
 b30:	00279793          	sll	a5,a5,0x2
 b34:	00f707b3          	add	a5,a4,a5
 b38:	0007a703          	lw	a4,0(a5)
 b3c:	000027b7          	lui	a5,0x2
 b40:	f2878693          	add	a3,a5,-216 # 1f28 <__DATA_BEGIN__>
 b44:	fe042783          	lw	a5,-32(s0)
 b48:	00279613          	sll	a2,a5,0x2
 b4c:	fe442783          	lw	a5,-28(s0)
 b50:	00f607b3          	add	a5,a2,a5
 b54:	00279793          	sll	a5,a5,0x2
 b58:	00f687b3          	add	a5,a3,a5
 b5c:	0007a783          	lw	a5,0(a5)
 b60:	04f70c63          	beq	a4,a5,bb8 <merge_right+0x22c>
 b64:	fec42783          	lw	a5,-20(s0)
 b68:	fff78713          	add	a4,a5,-1
 b6c:	fee42623          	sw	a4,-20(s0)
 b70:	00002737          	lui	a4,0x2
 b74:	f2870693          	add	a3,a4,-216 # 1f28 <__DATA_BEGIN__>
 b78:	fe042703          	lw	a4,-32(s0)
 b7c:	00271613          	sll	a2,a4,0x2
 b80:	fe842703          	lw	a4,-24(s0)
 b84:	00e60733          	add	a4,a2,a4
 b88:	00271713          	sll	a4,a4,0x2
 b8c:	00e68733          	add	a4,a3,a4
 b90:	00072703          	lw	a4,0(a4)
 b94:	00279793          	sll	a5,a5,0x2
 b98:	ff078793          	add	a5,a5,-16
 b9c:	008787b3          	add	a5,a5,s0
 ba0:	fce7ac23          	sw	a4,-40(a5)
 ba4:	fe442783          	lw	a5,-28(s0)
 ba8:	fef42423          	sw	a5,-24(s0)
 bac:	fe442783          	lw	a5,-28(s0)
 bb0:	fff78793          	add	a5,a5,-1
 bb4:	fef42223          	sw	a5,-28(s0)
 bb8:	fe842783          	lw	a5,-24(s0)
 bbc:	0007c663          	bltz	a5,bc8 <merge_right+0x23c>
 bc0:	fe442783          	lw	a5,-28(s0)
 bc4:	e207d6e3          	bgez	a5,9f0 <merge_right+0x64>
 bc8:	000027b7          	lui	a5,0x2
 bcc:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 bd0:	fe042783          	lw	a5,-32(s0)
 bd4:	00279693          	sll	a3,a5,0x2
 bd8:	fe842783          	lw	a5,-24(s0)
 bdc:	00f687b3          	add	a5,a3,a5
 be0:	00279793          	sll	a5,a5,0x2
 be4:	00f707b3          	add	a5,a4,a5
 be8:	0007a783          	lw	a5,0(a5)
 bec:	04078263          	beqz	a5,c30 <merge_right+0x2a4>
 bf0:	fec42783          	lw	a5,-20(s0)
 bf4:	fff78713          	add	a4,a5,-1
 bf8:	fee42623          	sw	a4,-20(s0)
 bfc:	00002737          	lui	a4,0x2
 c00:	f2870693          	add	a3,a4,-216 # 1f28 <__DATA_BEGIN__>
 c04:	fe042703          	lw	a4,-32(s0)
 c08:	00271613          	sll	a2,a4,0x2
 c0c:	fe842703          	lw	a4,-24(s0)
 c10:	00e60733          	add	a4,a2,a4
 c14:	00271713          	sll	a4,a4,0x2
 c18:	00e68733          	add	a4,a3,a4
 c1c:	00072703          	lw	a4,0(a4)
 c20:	00279793          	sll	a5,a5,0x2
 c24:	ff078793          	add	a5,a5,-16
 c28:	008787b3          	add	a5,a5,s0
 c2c:	fce7ac23          	sw	a4,-40(a5)
 c30:	00300793          	li	a5,3
 c34:	fcf42c23          	sw	a5,-40(s0)
 c38:	0480006f          	j	c80 <merge_right+0x2f4>
 c3c:	fd842783          	lw	a5,-40(s0)
 c40:	00279793          	sll	a5,a5,0x2
 c44:	ff078793          	add	a5,a5,-16
 c48:	008787b3          	add	a5,a5,s0
 c4c:	fd87a703          	lw	a4,-40(a5)
 c50:	000027b7          	lui	a5,0x2
 c54:	f2878693          	add	a3,a5,-216 # 1f28 <__DATA_BEGIN__>
 c58:	fe042783          	lw	a5,-32(s0)
 c5c:	00279613          	sll	a2,a5,0x2
 c60:	fd842783          	lw	a5,-40(s0)
 c64:	00f607b3          	add	a5,a2,a5
 c68:	00279793          	sll	a5,a5,0x2
 c6c:	00f687b3          	add	a5,a3,a5
 c70:	00e7a023          	sw	a4,0(a5)
 c74:	fd842783          	lw	a5,-40(s0)
 c78:	fff78793          	add	a5,a5,-1
 c7c:	fcf42c23          	sw	a5,-40(s0)
 c80:	fd842783          	lw	a5,-40(s0)
 c84:	fa07dce3          	bgez	a5,c3c <merge_right+0x2b0>
 c88:	fe042783          	lw	a5,-32(s0)
 c8c:	00178793          	add	a5,a5,1
 c90:	fef42023          	sw	a5,-32(s0)
 c94:	fe042703          	lw	a4,-32(s0)
 c98:	00300793          	li	a5,3
 c9c:	d0e7d2e3          	bge	a5,a4,9a0 <merge_right+0x14>
 ca0:	00000013          	nop
 ca4:	03c12403          	lw	s0,60(sp)
 ca8:	04010113          	add	sp,sp,64
 cac:	00008067          	ret

00000cb0 <add>:
 cb0:	fd010113          	add	sp,sp,-48
 cb4:	02812623          	sw	s0,44(sp)
 cb8:	03010413          	add	s0,sp,48
 cbc:	fca42e23          	sw	a0,-36(s0)
 cc0:	0d40006f          	j	d94 <add+0xe4>
 cc4:	fe042623          	sw	zero,-20(s0)
 cc8:	0c00006f          	j	d88 <add+0xd8>
 ccc:	fe042423          	sw	zero,-24(s0)
 cd0:	0a00006f          	j	d70 <add+0xc0>
 cd4:	fdc42783          	lw	a5,-36(s0)
 cd8:	04079c63          	bnez	a5,d30 <add+0x80>
 cdc:	000027b7          	lui	a5,0x2
 ce0:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 ce4:	fec42783          	lw	a5,-20(s0)
 ce8:	00279693          	sll	a3,a5,0x2
 cec:	fe842783          	lw	a5,-24(s0)
 cf0:	00f687b3          	add	a5,a3,a5
 cf4:	00279793          	sll	a5,a5,0x2
 cf8:	00f707b3          	add	a5,a4,a5
 cfc:	0007a783          	lw	a5,0(a5)
 d00:	02078863          	beqz	a5,d30 <add+0x80>
 d04:	000027b7          	lui	a5,0x2
 d08:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 d0c:	fec42783          	lw	a5,-20(s0)
 d10:	00279693          	sll	a3,a5,0x2
 d14:	fe842783          	lw	a5,-24(s0)
 d18:	00f687b3          	add	a5,a3,a5
 d1c:	00279793          	sll	a5,a5,0x2
 d20:	00f707b3          	add	a5,a4,a5
 d24:	00200713          	li	a4,2
 d28:	00e7a023          	sw	a4,0(a5)
 d2c:	0700006f          	j	d9c <add+0xec>
 d30:	000027b7          	lui	a5,0x2
 d34:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 d38:	fec42783          	lw	a5,-20(s0)
 d3c:	00279693          	sll	a3,a5,0x2
 d40:	fe842783          	lw	a5,-24(s0)
 d44:	00f687b3          	add	a5,a3,a5
 d48:	00279793          	sll	a5,a5,0x2
 d4c:	00f707b3          	add	a5,a4,a5
 d50:	0007a783          	lw	a5,0(a5)
 d54:	00079863          	bnez	a5,d64 <add+0xb4>
 d58:	fdc42783          	lw	a5,-36(s0)
 d5c:	fff78793          	add	a5,a5,-1
 d60:	fcf42e23          	sw	a5,-36(s0)
 d64:	fe842783          	lw	a5,-24(s0)
 d68:	00178793          	add	a5,a5,1
 d6c:	fef42423          	sw	a5,-24(s0)
 d70:	fe842703          	lw	a4,-24(s0)
 d74:	00300793          	li	a5,3
 d78:	f4e7dee3          	bge	a5,a4,cd4 <add+0x24>
 d7c:	fec42783          	lw	a5,-20(s0)
 d80:	00178793          	add	a5,a5,1
 d84:	fef42623          	sw	a5,-20(s0)
 d88:	fec42703          	lw	a4,-20(s0)
 d8c:	00300793          	li	a5,3
 d90:	f2e7dee3          	bge	a5,a4,ccc <add+0x1c>
 d94:	fdc42783          	lw	a5,-36(s0)
 d98:	f207d6e3          	bgez	a5,cc4 <add+0x14>
 d9c:	02c12403          	lw	s0,44(sp)
 da0:	03010113          	add	sp,sp,48
 da4:	00008067          	ret

00000da8 <init>:
 da8:	fe010113          	add	sp,sp,-32
 dac:	00112e23          	sw	ra,28(sp)
 db0:	00812c23          	sw	s0,24(sp)
 db4:	02010413          	add	s0,sp,32
 db8:	fe042623          	sw	zero,-20(s0)
 dbc:	0540006f          	j	e10 <init+0x68>
 dc0:	fe042423          	sw	zero,-24(s0)
 dc4:	0340006f          	j	df8 <init+0x50>
 dc8:	000027b7          	lui	a5,0x2
 dcc:	f2878713          	add	a4,a5,-216 # 1f28 <__DATA_BEGIN__>
 dd0:	fec42783          	lw	a5,-20(s0)
 dd4:	00279693          	sll	a3,a5,0x2
 dd8:	fe842783          	lw	a5,-24(s0)
 ddc:	00f687b3          	add	a5,a3,a5
 de0:	00279793          	sll	a5,a5,0x2
 de4:	00f707b3          	add	a5,a4,a5
 de8:	0007a023          	sw	zero,0(a5)
 dec:	fe842783          	lw	a5,-24(s0)
 df0:	00178793          	add	a5,a5,1
 df4:	fef42423          	sw	a5,-24(s0)
 df8:	fe842703          	lw	a4,-24(s0)
 dfc:	00300793          	li	a5,3
 e00:	fce7d4e3          	bge	a5,a4,dc8 <init+0x20>
 e04:	fec42783          	lw	a5,-20(s0)
 e08:	00178793          	add	a5,a5,1
 e0c:	fef42623          	sw	a5,-20(s0)
 e10:	fec42703          	lw	a4,-20(s0)
 e14:	00300793          	li	a5,3
 e18:	fae7d4e3          	bge	a5,a4,dc0 <init+0x18>
 e1c:	00000513          	li	a0,0
 e20:	e91ff0ef          	jal	cb0 <add>
 e24:	00700513          	li	a0,7
 e28:	e89ff0ef          	jal	cb0 <add>
 e2c:	00000013          	nop
 e30:	01c12083          	lw	ra,28(sp)
 e34:	01812403          	lw	s0,24(sp)
 e38:	02010113          	add	sp,sp,32
 e3c:	00008067          	ret

00000e40 <main>:
 e40:	ff010113          	add	sp,sp,-16
 e44:	00112623          	sw	ra,12(sp)
 e48:	00812423          	sw	s0,8(sp)
 e4c:	01010413          	add	s0,sp,16
 e50:	f59ff0ef          	jal	da8 <init>
 e54:	014000ef          	jal	e68 <int1>
 e58:	010000ef          	jal	e68 <int1>
 e5c:	00c000ef          	jal	e68 <int1>
 e60:	008000ef          	jal	e68 <int1>
 e64:	ff1ff06f          	j	e54 <main+0x14>

00000e68 <int1>:
 e68:	ff010113          	add	sp,sp,-16
 e6c:	00112623          	sw	ra,12(sp)
 e70:	00812423          	sw	s0,8(sp)
 e74:	01010413          	add	s0,sp,16
 e78:	9a8ff0ef          	jal	20 <merge_up>
 e7c:	00a00513          	li	a0,10
 e80:	e31ff0ef          	jal	cb0 <add>
 e84:	00000013          	nop
 e88:	00c12083          	lw	ra,12(sp)
 e8c:	00812403          	lw	s0,8(sp)
 e90:	01010113          	add	sp,sp,16
 e94:	00008067          	ret

00000e98 <int2>:
 e98:	ff010113          	add	sp,sp,-16
 e9c:	00112623          	sw	ra,12(sp)
 ea0:	00812423          	sw	s0,8(sp)
 ea4:	01010413          	add	s0,sp,16
 ea8:	c9cff0ef          	jal	344 <merge_left>
 eac:	00300513          	li	a0,3
 eb0:	e01ff0ef          	jal	cb0 <add>
 eb4:	00000013          	nop
 eb8:	00c12083          	lw	ra,12(sp)
 ebc:	00812403          	lw	s0,8(sp)
 ec0:	01010113          	add	sp,sp,16
 ec4:	00008067          	ret

00000ec8 <int3>:
 ec8:	ff010113          	add	sp,sp,-16
 ecc:	00112623          	sw	ra,12(sp)
 ed0:	00812423          	sw	s0,8(sp)
 ed4:	01010413          	add	s0,sp,16
 ed8:	f90ff0ef          	jal	668 <merge_down>
 edc:	01900513          	li	a0,25
 ee0:	dd1ff0ef          	jal	cb0 <add>
 ee4:	00000013          	nop
 ee8:	00c12083          	lw	ra,12(sp)
 eec:	00812403          	lw	s0,8(sp)
 ef0:	01010113          	add	sp,sp,16
 ef4:	00008067          	ret

00000ef8 <int4>:
 ef8:	ff010113          	add	sp,sp,-16
 efc:	00112623          	sw	ra,12(sp)
 f00:	00812423          	sw	s0,8(sp)
 f04:	01010413          	add	s0,sp,16
 f08:	a85ff0ef          	jal	98c <merge_right>
 f0c:	02100513          	li	a0,33
 f10:	da1ff0ef          	jal	cb0 <add>
 f14:	00000013          	nop
 f18:	00c12083          	lw	ra,12(sp)
 f1c:	00812403          	lw	s0,8(sp)
 f20:	01010113          	add	sp,sp,16
 f24:	00008067          	ret



; fc010113,02812e23,04010413,fe042023,2f80006f,fe042623,fe042423,00100793,fef42223,fc042e23,0240006f,fdc42783,00279793,ff078793,008787b3,fc07ac23,fdc42783,00178793,fcf42e23,fdc42703,00300793,fce7dce3,1cc0006f,000027b7,f2878713,fe842783,00279693,fe042783,00f687b3,00279793,00f707b3,0007a783,02079063,fe842783,00178793,fef42423,fe442783,00178793,fef42223,1880006f,000027b7,f2878713,fe442783,00279693,fe042783,00f687b3,00279793,00f707b3,0007a783,00079a63,fe442783,00178793,fef42223,1500006f,000027b7,f2878713,fe842783,00279693,fe042783,00f687b3,00279793,00f707b3,0007a703,000027b7,f2878693,fe442783,00279613,fe042783,00f607b3,00279793,00f687b3,0007a783,06f71263,000027b7,f2878713,fe842783,00279693,fe042783,00f687b3,00279793,00f707b3,0007a703,fec42783,00178693,fed42623,00171713,00279793,ff078793,008787b3,fce7ac23,fe442783,00178793,fef42423,fe842783,00178793,fef42223,0a40006f,000027b7,f2878713,fe842783,00279693,fe042783,00f687b3,00279793,00f707b3,0007a703,000027b7,f2878693,fe442783,00279613,fe042783,00f607b3,00279793,00f687b3,0007a783,04f70c63,fec42783,00178713,fee42623,00002737,f2870693,fe842703,00271613,fe042703,00e60733,00271713,00e68733,00072703,00279793,ff078793,008787b3,fce7ac23,fe442783,fef42423,fe442783,00178793,fef42223,fe842703,00300793,00e7c863,fe442703,00300793,e2e7d2e3,000027b7,f2878713,fe842783,00279693,fe042783,00f687b3,00279793,00f707b3,0007a783,04078263,fec42783,00178713,fee42623,00002737,f2870693,fe842703,00271613,fe042703,00e60733,00271713,00e68733,00072703,00279793,ff078793,008787b3,fce7ac23,fc042c23,0480006f,fd842783,00279793,ff078793,008787b3,fd87a703,000027b7,f2878693,fd842783,00279613,fe042783,00f607b3,00279793,00f687b3,00e7a023,fd842783,00178793,fcf42c23,fd842703,00300793,fae7dae3,fe042783,00178793,fef42023,fe042703,00300793,d0e7d2e3,00000013,03c12403,04010113,00008067,
; fc010113,02812e23,04010413,fe042023,2f80006f,fe042623,fe042423,00100793,fef42223,fc042e23,0240006f,fdc42783,00279793,ff078793,008787b3,fc07ac23,fdc42783,00178793,fcf42e23,fdc42703,00300793,fce7dce3,1cc0006f,000027b7,f2878713,fe042783,00279693,fe842783,00f687b3,00279793,00f707b3,0007a783,02079063,fe842783,00178793,fef42423,fe442783,00178793,fef42223,1880006f,000027b7,f2878713,fe042783,00279693,fe442783,00f687b3,00279793,00f707b3,0007a783,00079a63,fe442783,00178793,fef42223,1500006f,000027b7,f2878713,fe042783,00279693,fe842783,00f687b3,00279793,00f707b3,0007a703,000027b7,f2878693,fe042783,00279613,fe442783,00f607b3,00279793,00f687b3,0007a783,06f71263,000027b7,f2878713,fe042783,00279693,fe842783,00f687b3,00279793,00f707b3,0007a703,fec42783,00178693,fed42623,00171713,00279793,ff078793,008787b3,fce7ac23,fe442783,00178793,fef42423,fe842783,00178793,fef42223,0a40006f,000027b7,f2878713,fe042783,00279693,fe842783,00f687b3,00279793,00f707b3,0007a703,000027b7,f2878693,fe042783,00279613,fe442783,00f607b3,00279793,00f687b3,0007a783,04f70c63,fec42783,00178713,fee42623,00002737,f2870693,fe042703,00271613,fe842703,00e60733,00271713,00e68733,00072703,00279793,ff078793,008787b3,fce7ac23,fe442783,fef42423,fe442783,00178793,fef42223,fe842703,00300793,00e7c863,fe442703,00300793,e2e7d2e3,000027b7,f2878713,fe042783,00279693,fe842783,00f687b3,00279793,00f707b3,0007a783,04078263,fec42783,00178713,fee42623,00002737,f2870693,fe042703,00271613,fe842703,00e60733,00271713,00e68733,00072703,00279793,ff078793,008787b3,fce7ac23,fc042c23,0480006f,fd842783,00279793,ff078793,008787b3,fd87a703,000027b7,f2878693,fe042783,00279613,fd842783,00f607b3,00279793,00f687b3,00e7a023,fd842783,00178793,fcf42c23,fd842703,00300793,fae7dae3,fe042783,00178793,fef42023,fe042703,00300793,d0e7d2e3,00000013,03c12403,04010113,00008067,
; fc010113,02812e23,04010413,fe042023,2f80006f,00300793,fef42623,00300793,fef42423,00200793,fef42223,fc042e23,0240006f,fdc42783,00279793,ff078793,008787b3,fc07ac23,fdc42783,00178793,fcf42e23,fdc42703,00300793,fce7dce3,1cc0006f,000027b7,f2878713,fe842783,00279693,fe042783,00f687b3,00279793,00f707b3,0007a783,02079063,fe842783,fff78793,fef42423,fe442783,fff78793,fef42223,1880006f,000027b7,f2878713,fe442783,00279693,fe042783,00f687b3,00279793,00f707b3,0007a783,00079a63,fe442783,fff78793,fef42223,1500006f,000027b7,f2878713,fe842783,00279693,fe042783,00f687b3,00279793,00f707b3,0007a703,000027b7,f2878693,fe442783,00279613,fe042783,00f607b3,00279793,00f687b3,0007a783,06f71263,000027b7,f2878713,fe842783,00279693,fe042783,00f687b3,00279793,00f707b3,0007a703,fec42783,fff78693,fed42623,00171713,00279793,ff078793,008787b3,fce7ac23,fe442783,fff78793,fef42423,fe842783,fff78793,fef42223,0a40006f,000027b7,f2878713,fe842783,00279693,fe042783,00f687b3,00279793,00f707b3,0007a703,000027b7,f2878693,fe442783,00279613,fe042783,00f607b3,00279793,00f687b3,0007a783,04f70c63,fec42783,fff78713,fee42623,00002737,f2870693,fe842703,00271613,fe042703,00e60733,00271713,00e68733,00072703,00279793,ff078793,008787b3,fce7ac23,fe442783,fef42423,fe442783,fff78793,fef42223,fe842783,0007c663,fe442783,e207d6e3,000027b7,f2878713,fe842783,00279693,fe042783,00f687b3,00279793,00f707b3,0007a783,04078263,fec42783,fff78713,fee42623,00002737,f2870693,fe842703,00271613,fe042703,00e60733,00271713,00e68733,00072703,00279793,ff078793,008787b3,fce7ac23,00300793,fcf42c23,0480006f,fd842783,00279793,ff078793,008787b3,fd87a703,000027b7,f2878693,fd842783,00279613,fe042783,00f607b3,00279793,00f687b3,00e7a023,fd842783,fff78793,fcf42c23,fd842783,fa07dce3,fe042783,00178793,fef42023,fe042703,00300793,d0e7d2e3,00000013,03c12403,04010113,00008067,
; fc010113,02812e23,04010413,fe042023,2f80006f,00300793,fef42623,00300793,fef42423,00200793,fef42223,fc042e23,0240006f,fdc42783,00279793,ff078793,008787b3,fc07ac23,fdc42783,00178793,fcf42e23,fdc42703,00300793,fce7dce3,1cc0006f,000027b7,f2878713,fe042783,00279693,fe842783,00f687b3,00279793,00f707b3,0007a783,02079063,fe842783,fff78793,fef42423,fe442783,fff78793,fef42223,1880006f,000027b7,f2878713,fe042783,00279693,fe442783,00f687b3,00279793,00f707b3,0007a783,00079a63,fe442783,fff78793,fef42223,1500006f,000027b7,f2878713,fe042783,00279693,fe842783,00f687b3,00279793,00f707b3,0007a703,000027b7,f2878693,fe042783,00279613,fe442783,00f607b3,00279793,00f687b3,0007a783,06f71263,000027b7,f2878713,fe042783,00279693,fe842783,00f687b3,00279793,00f707b3,0007a703,fec42783,fff78693,fed42623,00171713,00279793,ff078793,008787b3,fce7ac23,fe442783,fff78793,fef42423,fe842783,fff78793,fef42223,0a40006f,000027b7,f2878713,fe042783,00279693,fe842783,00f687b3,00279793,00f707b3,0007a703,000027b7,f2878693,fe042783,00279613,fe442783,00f607b3,00279793,00f687b3,0007a783,04f70c63,fec42783,fff78713,fee42623,00002737,f2870693,fe042703,00271613,fe842703,00e60733,00271713,00e68733,00072703,00279793,ff078793,008787b3,fce7ac23,fe442783,fef42423,fe442783,fff78793,fef42223,fe842783,0007c663,fe442783,e207d6e3,000027b7,f2878713,fe042783,00279693,fe842783,00f687b3,00279793,00f707b3,0007a783,04078263,fec42783,fff78713,fee42623,00002737,f2870693,fe042703,00271613,fe842703,00e60733,00271713,00e68733,00072703,00279793,ff078793,008787b3,fce7ac23,00300793,fcf42c23,0480006f,fd842783,00279793,ff078793,008787b3,fd87a703,000027b7,f2878693,fe042783,00279613,fd842783,00f607b3,00279793,00f687b3,00e7a023,fd842783,fff78793,fcf42c23,fd842783,fa07dce3,fe042783,00178793,fef42023,fe042703,00300793,d0e7d2e3,00000013,03c12403,04010113,00008067,
; fd010113,02812623,03010413,fca42e23,0d40006f,fe042623,0c00006f,fe042423,0a00006f,fdc42783,04079c63,000027b7,f2878713,fec42783,00279693,fe842783,00f687b3,00279793,00f707b3,0007a783,02078863,000027b7,f2878713,fec42783,00279693,fe842783,00f687b3,00279793,00f707b3,00200713,00e7a023,0700006f,000027b7,f2878713,fec42783,00279693,fe842783,00f687b3,00279793,00f707b3,0007a783,00079863,fdc42783,fff78793,fcf42e23,fe842783,00178793,fef42423,fe842703,00300793,f4e7dee3,fec42783,00178793,fef42623,fec42703,00300793,f2e7dee3,fdc42783,f207d6e3,02c12403,03010113,00008067,
; fe010113,00112e23,00812c23,02010413,fe042623,0540006f,fe042423,0340006f,000027b7,f2878713,fec42783,00279693,fe842783,00f687b3,00279793,00f707b3,0007a023,fe842783,00178793,fef42423,fe842703,00300793,fce7d4e3,fec42783,00178793,fef42623,fec42703,00300793,fae7d4e3,00000513,e91ff0ef,00700513,e89ff0ef,00000013,01c12083,01812403,02010113,00008067,
; ff010113,00112623,00812423,01010413,f59ff0ef,014000ef,010000ef,00c000ef,008000ef,ff1ff06f,
; ff010113,00112623,00812423,01010413,9a8ff0ef,00a00513,e31ff0ef,00000013,00c12083,00812403,01010113,00008067,
; ff010113,00112623,00812423,01010413,c9cff0ef,00300513,e01ff0ef,00000013,00c12083,00812403,01010113,00008067,
; ff010113,00112623,00812423,01010413,f90ff0ef,01900513,dd1ff0ef,00000013,00c12083,00812403,01010113,00008067,
; ff010113,00112623,00812423,01010413,a85ff0ef,02100513,da1ff0ef,00000013,00c12083,00812403,01010113,00008067;
