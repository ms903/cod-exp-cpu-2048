
2048:     file format elf32-littleriscv

0x7F000113
0x6F010113
0x68D000EF
0x00000013
0x00000013
0x00000013
0x00000013
0x00000013


Disassembly of section .text:

00000020 <merge_up>:
  20:	fc010113          	add	sp,sp,-64
  24:	02812e23          	sw	s0,60(sp)
  28:	04010413          	add	s0,sp,64
  2c:	fe042023          	sw	zero,-32(s0)
  30:	3040006f          	j	334 <merge_up+0x314>
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
  80:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
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
  c4:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
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
  fc:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 100:	fe842783          	lw	a5,-24(s0)
 104:	00279693          	sll	a3,a5,0x2
 108:	fe042783          	lw	a5,-32(s0)
 10c:	00f687b3          	add	a5,a3,a5
 110:	00279793          	sll	a5,a5,0x2
 114:	00f707b3          	add	a5,a4,a5
 118:	0007a703          	lw	a4,0(a5)
 11c:	000027b7          	lui	a5,0x2
 120:	f7c78693          	add	a3,a5,-132 # 1f7c <__DATA_BEGIN__>
 124:	fe442783          	lw	a5,-28(s0)
 128:	00279613          	sll	a2,a5,0x2
 12c:	fe042783          	lw	a5,-32(s0)
 130:	00f607b3          	add	a5,a2,a5
 134:	00279793          	sll	a5,a5,0x2
 138:	00f687b3          	add	a5,a3,a5
 13c:	0007a783          	lw	a5,0(a5)
 140:	06f71263          	bne	a4,a5,1a4 <merge_up+0x184>
 144:	000027b7          	lui	a5,0x2
 148:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
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
 1a8:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 1ac:	fe842783          	lw	a5,-24(s0)
 1b0:	00279693          	sll	a3,a5,0x2
 1b4:	fe042783          	lw	a5,-32(s0)
 1b8:	00f687b3          	add	a5,a3,a5
 1bc:	00279793          	sll	a5,a5,0x2
 1c0:	00f707b3          	add	a5,a4,a5
 1c4:	0007a703          	lw	a4,0(a5)
 1c8:	000027b7          	lui	a5,0x2
 1cc:	f7c78693          	add	a3,a5,-132 # 1f7c <__DATA_BEGIN__>
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
 200:	f7c70693          	add	a3,a4,-132 # 1f7c <__DATA_BEGIN__>
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
 25c:	fe842703          	lw	a4,-24(s0)
 260:	00300793          	li	a5,3
 264:	06e7c663          	blt	a5,a4,2d0 <merge_up+0x2b0>
 268:	000027b7          	lui	a5,0x2
 26c:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 270:	fe842783          	lw	a5,-24(s0)
 274:	00279693          	sll	a3,a5,0x2
 278:	fe042783          	lw	a5,-32(s0)
 27c:	00f687b3          	add	a5,a3,a5
 280:	00279793          	sll	a5,a5,0x2
 284:	00f707b3          	add	a5,a4,a5
 288:	0007a783          	lw	a5,0(a5)
 28c:	04078263          	beqz	a5,2d0 <merge_up+0x2b0>
 290:	fec42783          	lw	a5,-20(s0)
 294:	00178713          	add	a4,a5,1
 298:	fee42623          	sw	a4,-20(s0)
 29c:	00002737          	lui	a4,0x2
 2a0:	f7c70693          	add	a3,a4,-132 # 1f7c <__DATA_BEGIN__>
 2a4:	fe842703          	lw	a4,-24(s0)
 2a8:	00271613          	sll	a2,a4,0x2
 2ac:	fe042703          	lw	a4,-32(s0)
 2b0:	00e60733          	add	a4,a2,a4
 2b4:	00271713          	sll	a4,a4,0x2
 2b8:	00e68733          	add	a4,a3,a4
 2bc:	00072703          	lw	a4,0(a4)
 2c0:	00279793          	sll	a5,a5,0x2
 2c4:	ff078793          	add	a5,a5,-16
 2c8:	008787b3          	add	a5,a5,s0
 2cc:	fce7ac23          	sw	a4,-40(a5)
 2d0:	fc042c23          	sw	zero,-40(s0)
 2d4:	0480006f          	j	31c <merge_up+0x2fc>
 2d8:	fd842783          	lw	a5,-40(s0)
 2dc:	00279793          	sll	a5,a5,0x2
 2e0:	ff078793          	add	a5,a5,-16
 2e4:	008787b3          	add	a5,a5,s0
 2e8:	fd87a703          	lw	a4,-40(a5)
 2ec:	000027b7          	lui	a5,0x2
 2f0:	f7c78693          	add	a3,a5,-132 # 1f7c <__DATA_BEGIN__>
 2f4:	fd842783          	lw	a5,-40(s0)
 2f8:	00279613          	sll	a2,a5,0x2
 2fc:	fe042783          	lw	a5,-32(s0)
 300:	00f607b3          	add	a5,a2,a5
 304:	00279793          	sll	a5,a5,0x2
 308:	00f687b3          	add	a5,a3,a5
 30c:	00e7a023          	sw	a4,0(a5)
 310:	fd842783          	lw	a5,-40(s0)
 314:	00178793          	add	a5,a5,1
 318:	fcf42c23          	sw	a5,-40(s0)
 31c:	fd842703          	lw	a4,-40(s0)
 320:	00300793          	li	a5,3
 324:	fae7dae3          	bge	a5,a4,2d8 <merge_up+0x2b8>
 328:	fe042783          	lw	a5,-32(s0)
 32c:	00178793          	add	a5,a5,1
 330:	fef42023          	sw	a5,-32(s0)
 334:	fe042703          	lw	a4,-32(s0)
 338:	00300793          	li	a5,3
 33c:	cee7dce3          	bge	a5,a4,34 <merge_up+0x14>
 340:	00000013          	nop
 344:	03c12403          	lw	s0,60(sp)
 348:	04010113          	add	sp,sp,64
 34c:	00008067          	ret

00000350 <merge_left>:
 350:	fc010113          	add	sp,sp,-64
 354:	02812e23          	sw	s0,60(sp)
 358:	04010413          	add	s0,sp,64
 35c:	fe042023          	sw	zero,-32(s0)
 360:	3040006f          	j	664 <merge_left+0x314>
 364:	fe042623          	sw	zero,-20(s0)
 368:	fe042423          	sw	zero,-24(s0)
 36c:	00100793          	li	a5,1
 370:	fef42223          	sw	a5,-28(s0)
 374:	fc042e23          	sw	zero,-36(s0)
 378:	0240006f          	j	39c <merge_left+0x4c>
 37c:	fdc42783          	lw	a5,-36(s0)
 380:	00279793          	sll	a5,a5,0x2
 384:	ff078793          	add	a5,a5,-16
 388:	008787b3          	add	a5,a5,s0
 38c:	fc07ac23          	sw	zero,-40(a5)
 390:	fdc42783          	lw	a5,-36(s0)
 394:	00178793          	add	a5,a5,1
 398:	fcf42e23          	sw	a5,-36(s0)
 39c:	fdc42703          	lw	a4,-36(s0)
 3a0:	00300793          	li	a5,3
 3a4:	fce7dce3          	bge	a5,a4,37c <merge_left+0x2c>
 3a8:	1cc0006f          	j	574 <merge_left+0x224>
 3ac:	000027b7          	lui	a5,0x2
 3b0:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 3b4:	fe042783          	lw	a5,-32(s0)
 3b8:	00279693          	sll	a3,a5,0x2
 3bc:	fe842783          	lw	a5,-24(s0)
 3c0:	00f687b3          	add	a5,a3,a5
 3c4:	00279793          	sll	a5,a5,0x2
 3c8:	00f707b3          	add	a5,a4,a5
 3cc:	0007a783          	lw	a5,0(a5)
 3d0:	02079063          	bnez	a5,3f0 <merge_left+0xa0>
 3d4:	fe842783          	lw	a5,-24(s0)
 3d8:	00178793          	add	a5,a5,1
 3dc:	fef42423          	sw	a5,-24(s0)
 3e0:	fe442783          	lw	a5,-28(s0)
 3e4:	00178793          	add	a5,a5,1
 3e8:	fef42223          	sw	a5,-28(s0)
 3ec:	1880006f          	j	574 <merge_left+0x224>
 3f0:	000027b7          	lui	a5,0x2
 3f4:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 3f8:	fe042783          	lw	a5,-32(s0)
 3fc:	00279693          	sll	a3,a5,0x2
 400:	fe442783          	lw	a5,-28(s0)
 404:	00f687b3          	add	a5,a3,a5
 408:	00279793          	sll	a5,a5,0x2
 40c:	00f707b3          	add	a5,a4,a5
 410:	0007a783          	lw	a5,0(a5)
 414:	00079a63          	bnez	a5,428 <merge_left+0xd8>
 418:	fe442783          	lw	a5,-28(s0)
 41c:	00178793          	add	a5,a5,1
 420:	fef42223          	sw	a5,-28(s0)
 424:	1500006f          	j	574 <merge_left+0x224>
 428:	000027b7          	lui	a5,0x2
 42c:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 430:	fe042783          	lw	a5,-32(s0)
 434:	00279693          	sll	a3,a5,0x2
 438:	fe842783          	lw	a5,-24(s0)
 43c:	00f687b3          	add	a5,a3,a5
 440:	00279793          	sll	a5,a5,0x2
 444:	00f707b3          	add	a5,a4,a5
 448:	0007a703          	lw	a4,0(a5)
 44c:	000027b7          	lui	a5,0x2
 450:	f7c78693          	add	a3,a5,-132 # 1f7c <__DATA_BEGIN__>
 454:	fe042783          	lw	a5,-32(s0)
 458:	00279613          	sll	a2,a5,0x2
 45c:	fe442783          	lw	a5,-28(s0)
 460:	00f607b3          	add	a5,a2,a5
 464:	00279793          	sll	a5,a5,0x2
 468:	00f687b3          	add	a5,a3,a5
 46c:	0007a783          	lw	a5,0(a5)
 470:	06f71263          	bne	a4,a5,4d4 <merge_left+0x184>
 474:	000027b7          	lui	a5,0x2
 478:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 47c:	fe042783          	lw	a5,-32(s0)
 480:	00279693          	sll	a3,a5,0x2
 484:	fe842783          	lw	a5,-24(s0)
 488:	00f687b3          	add	a5,a3,a5
 48c:	00279793          	sll	a5,a5,0x2
 490:	00f707b3          	add	a5,a4,a5
 494:	0007a703          	lw	a4,0(a5)
 498:	fec42783          	lw	a5,-20(s0)
 49c:	00178693          	add	a3,a5,1
 4a0:	fed42623          	sw	a3,-20(s0)
 4a4:	00171713          	sll	a4,a4,0x1
 4a8:	00279793          	sll	a5,a5,0x2
 4ac:	ff078793          	add	a5,a5,-16
 4b0:	008787b3          	add	a5,a5,s0
 4b4:	fce7ac23          	sw	a4,-40(a5)
 4b8:	fe442783          	lw	a5,-28(s0)
 4bc:	00178793          	add	a5,a5,1
 4c0:	fef42423          	sw	a5,-24(s0)
 4c4:	fe842783          	lw	a5,-24(s0)
 4c8:	00178793          	add	a5,a5,1
 4cc:	fef42223          	sw	a5,-28(s0)
 4d0:	0a40006f          	j	574 <merge_left+0x224>
 4d4:	000027b7          	lui	a5,0x2
 4d8:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 4dc:	fe042783          	lw	a5,-32(s0)
 4e0:	00279693          	sll	a3,a5,0x2
 4e4:	fe842783          	lw	a5,-24(s0)
 4e8:	00f687b3          	add	a5,a3,a5
 4ec:	00279793          	sll	a5,a5,0x2
 4f0:	00f707b3          	add	a5,a4,a5
 4f4:	0007a703          	lw	a4,0(a5)
 4f8:	000027b7          	lui	a5,0x2
 4fc:	f7c78693          	add	a3,a5,-132 # 1f7c <__DATA_BEGIN__>
 500:	fe042783          	lw	a5,-32(s0)
 504:	00279613          	sll	a2,a5,0x2
 508:	fe442783          	lw	a5,-28(s0)
 50c:	00f607b3          	add	a5,a2,a5
 510:	00279793          	sll	a5,a5,0x2
 514:	00f687b3          	add	a5,a3,a5
 518:	0007a783          	lw	a5,0(a5)
 51c:	04f70c63          	beq	a4,a5,574 <merge_left+0x224>
 520:	fec42783          	lw	a5,-20(s0)
 524:	00178713          	add	a4,a5,1
 528:	fee42623          	sw	a4,-20(s0)
 52c:	00002737          	lui	a4,0x2
 530:	f7c70693          	add	a3,a4,-132 # 1f7c <__DATA_BEGIN__>
 534:	fe042703          	lw	a4,-32(s0)
 538:	00271613          	sll	a2,a4,0x2
 53c:	fe842703          	lw	a4,-24(s0)
 540:	00e60733          	add	a4,a2,a4
 544:	00271713          	sll	a4,a4,0x2
 548:	00e68733          	add	a4,a3,a4
 54c:	00072703          	lw	a4,0(a4)
 550:	00279793          	sll	a5,a5,0x2
 554:	ff078793          	add	a5,a5,-16
 558:	008787b3          	add	a5,a5,s0
 55c:	fce7ac23          	sw	a4,-40(a5)
 560:	fe442783          	lw	a5,-28(s0)
 564:	fef42423          	sw	a5,-24(s0)
 568:	fe442783          	lw	a5,-28(s0)
 56c:	00178793          	add	a5,a5,1
 570:	fef42223          	sw	a5,-28(s0)
 574:	fe842703          	lw	a4,-24(s0)
 578:	00300793          	li	a5,3
 57c:	00e7c863          	blt	a5,a4,58c <merge_left+0x23c>
 580:	fe442703          	lw	a4,-28(s0)
 584:	00300793          	li	a5,3
 588:	e2e7d2e3          	bge	a5,a4,3ac <merge_left+0x5c>
 58c:	fe842703          	lw	a4,-24(s0)
 590:	00300793          	li	a5,3
 594:	06e7c663          	blt	a5,a4,600 <merge_left+0x2b0>
 598:	000027b7          	lui	a5,0x2
 59c:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 5a0:	fe042783          	lw	a5,-32(s0)
 5a4:	00279693          	sll	a3,a5,0x2
 5a8:	fe842783          	lw	a5,-24(s0)
 5ac:	00f687b3          	add	a5,a3,a5
 5b0:	00279793          	sll	a5,a5,0x2
 5b4:	00f707b3          	add	a5,a4,a5
 5b8:	0007a783          	lw	a5,0(a5)
 5bc:	04078263          	beqz	a5,600 <merge_left+0x2b0>
 5c0:	fec42783          	lw	a5,-20(s0)
 5c4:	00178713          	add	a4,a5,1
 5c8:	fee42623          	sw	a4,-20(s0)
 5cc:	00002737          	lui	a4,0x2
 5d0:	f7c70693          	add	a3,a4,-132 # 1f7c <__DATA_BEGIN__>
 5d4:	fe042703          	lw	a4,-32(s0)
 5d8:	00271613          	sll	a2,a4,0x2
 5dc:	fe842703          	lw	a4,-24(s0)
 5e0:	00e60733          	add	a4,a2,a4
 5e4:	00271713          	sll	a4,a4,0x2
 5e8:	00e68733          	add	a4,a3,a4
 5ec:	00072703          	lw	a4,0(a4)
 5f0:	00279793          	sll	a5,a5,0x2
 5f4:	ff078793          	add	a5,a5,-16
 5f8:	008787b3          	add	a5,a5,s0
 5fc:	fce7ac23          	sw	a4,-40(a5)
 600:	fc042c23          	sw	zero,-40(s0)
 604:	0480006f          	j	64c <merge_left+0x2fc>
 608:	fd842783          	lw	a5,-40(s0)
 60c:	00279793          	sll	a5,a5,0x2
 610:	ff078793          	add	a5,a5,-16
 614:	008787b3          	add	a5,a5,s0
 618:	fd87a703          	lw	a4,-40(a5)
 61c:	000027b7          	lui	a5,0x2
 620:	f7c78693          	add	a3,a5,-132 # 1f7c <__DATA_BEGIN__>
 624:	fe042783          	lw	a5,-32(s0)
 628:	00279613          	sll	a2,a5,0x2
 62c:	fd842783          	lw	a5,-40(s0)
 630:	00f607b3          	add	a5,a2,a5
 634:	00279793          	sll	a5,a5,0x2
 638:	00f687b3          	add	a5,a3,a5
 63c:	00e7a023          	sw	a4,0(a5)
 640:	fd842783          	lw	a5,-40(s0)
 644:	00178793          	add	a5,a5,1
 648:	fcf42c23          	sw	a5,-40(s0)
 64c:	fd842703          	lw	a4,-40(s0)
 650:	00300793          	li	a5,3
 654:	fae7dae3          	bge	a5,a4,608 <merge_left+0x2b8>
 658:	fe042783          	lw	a5,-32(s0)
 65c:	00178793          	add	a5,a5,1
 660:	fef42023          	sw	a5,-32(s0)
 664:	fe042703          	lw	a4,-32(s0)
 668:	00300793          	li	a5,3
 66c:	cee7dce3          	bge	a5,a4,364 <merge_left+0x14>
 670:	00000013          	nop
 674:	03c12403          	lw	s0,60(sp)
 678:	04010113          	add	sp,sp,64
 67c:	00008067          	ret

00000680 <merge_down>:
 680:	fc010113          	add	sp,sp,-64
 684:	02812e23          	sw	s0,60(sp)
 688:	04010413          	add	s0,sp,64
 68c:	fe042023          	sw	zero,-32(s0)
 690:	3000006f          	j	990 <merge_down+0x310>
 694:	00300793          	li	a5,3
 698:	fef42623          	sw	a5,-20(s0)
 69c:	00300793          	li	a5,3
 6a0:	fef42423          	sw	a5,-24(s0)
 6a4:	00200793          	li	a5,2
 6a8:	fef42223          	sw	a5,-28(s0)
 6ac:	fc042e23          	sw	zero,-36(s0)
 6b0:	0240006f          	j	6d4 <merge_down+0x54>
 6b4:	fdc42783          	lw	a5,-36(s0)
 6b8:	00279793          	sll	a5,a5,0x2
 6bc:	ff078793          	add	a5,a5,-16
 6c0:	008787b3          	add	a5,a5,s0
 6c4:	fc07ac23          	sw	zero,-40(a5)
 6c8:	fdc42783          	lw	a5,-36(s0)
 6cc:	00178793          	add	a5,a5,1
 6d0:	fcf42e23          	sw	a5,-36(s0)
 6d4:	fdc42703          	lw	a4,-36(s0)
 6d8:	00300793          	li	a5,3
 6dc:	fce7dce3          	bge	a5,a4,6b4 <merge_down+0x34>
 6e0:	1cc0006f          	j	8ac <merge_down+0x22c>
 6e4:	000027b7          	lui	a5,0x2
 6e8:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 6ec:	fe842783          	lw	a5,-24(s0)
 6f0:	00279693          	sll	a3,a5,0x2
 6f4:	fe042783          	lw	a5,-32(s0)
 6f8:	00f687b3          	add	a5,a3,a5
 6fc:	00279793          	sll	a5,a5,0x2
 700:	00f707b3          	add	a5,a4,a5
 704:	0007a783          	lw	a5,0(a5)
 708:	02079063          	bnez	a5,728 <merge_down+0xa8>
 70c:	fe842783          	lw	a5,-24(s0)
 710:	fff78793          	add	a5,a5,-1
 714:	fef42423          	sw	a5,-24(s0)
 718:	fe442783          	lw	a5,-28(s0)
 71c:	fff78793          	add	a5,a5,-1
 720:	fef42223          	sw	a5,-28(s0)
 724:	1880006f          	j	8ac <merge_down+0x22c>
 728:	000027b7          	lui	a5,0x2
 72c:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 730:	fe442783          	lw	a5,-28(s0)
 734:	00279693          	sll	a3,a5,0x2
 738:	fe042783          	lw	a5,-32(s0)
 73c:	00f687b3          	add	a5,a3,a5
 740:	00279793          	sll	a5,a5,0x2
 744:	00f707b3          	add	a5,a4,a5
 748:	0007a783          	lw	a5,0(a5)
 74c:	00079a63          	bnez	a5,760 <merge_down+0xe0>
 750:	fe442783          	lw	a5,-28(s0)
 754:	fff78793          	add	a5,a5,-1
 758:	fef42223          	sw	a5,-28(s0)
 75c:	1500006f          	j	8ac <merge_down+0x22c>
 760:	000027b7          	lui	a5,0x2
 764:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 768:	fe842783          	lw	a5,-24(s0)
 76c:	00279693          	sll	a3,a5,0x2
 770:	fe042783          	lw	a5,-32(s0)
 774:	00f687b3          	add	a5,a3,a5
 778:	00279793          	sll	a5,a5,0x2
 77c:	00f707b3          	add	a5,a4,a5
 780:	0007a703          	lw	a4,0(a5)
 784:	000027b7          	lui	a5,0x2
 788:	f7c78693          	add	a3,a5,-132 # 1f7c <__DATA_BEGIN__>
 78c:	fe442783          	lw	a5,-28(s0)
 790:	00279613          	sll	a2,a5,0x2
 794:	fe042783          	lw	a5,-32(s0)
 798:	00f607b3          	add	a5,a2,a5
 79c:	00279793          	sll	a5,a5,0x2
 7a0:	00f687b3          	add	a5,a3,a5
 7a4:	0007a783          	lw	a5,0(a5)
 7a8:	06f71263          	bne	a4,a5,80c <merge_down+0x18c>
 7ac:	000027b7          	lui	a5,0x2
 7b0:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 7b4:	fe842783          	lw	a5,-24(s0)
 7b8:	00279693          	sll	a3,a5,0x2
 7bc:	fe042783          	lw	a5,-32(s0)
 7c0:	00f687b3          	add	a5,a3,a5
 7c4:	00279793          	sll	a5,a5,0x2
 7c8:	00f707b3          	add	a5,a4,a5
 7cc:	0007a703          	lw	a4,0(a5)
 7d0:	fec42783          	lw	a5,-20(s0)
 7d4:	fff78693          	add	a3,a5,-1
 7d8:	fed42623          	sw	a3,-20(s0)
 7dc:	00171713          	sll	a4,a4,0x1
 7e0:	00279793          	sll	a5,a5,0x2
 7e4:	ff078793          	add	a5,a5,-16
 7e8:	008787b3          	add	a5,a5,s0
 7ec:	fce7ac23          	sw	a4,-40(a5)
 7f0:	fe442783          	lw	a5,-28(s0)
 7f4:	fff78793          	add	a5,a5,-1
 7f8:	fef42423          	sw	a5,-24(s0)
 7fc:	fe842783          	lw	a5,-24(s0)
 800:	fff78793          	add	a5,a5,-1
 804:	fef42223          	sw	a5,-28(s0)
 808:	0a40006f          	j	8ac <merge_down+0x22c>
 80c:	000027b7          	lui	a5,0x2
 810:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 814:	fe842783          	lw	a5,-24(s0)
 818:	00279693          	sll	a3,a5,0x2
 81c:	fe042783          	lw	a5,-32(s0)
 820:	00f687b3          	add	a5,a3,a5
 824:	00279793          	sll	a5,a5,0x2
 828:	00f707b3          	add	a5,a4,a5
 82c:	0007a703          	lw	a4,0(a5)
 830:	000027b7          	lui	a5,0x2
 834:	f7c78693          	add	a3,a5,-132 # 1f7c <__DATA_BEGIN__>
 838:	fe442783          	lw	a5,-28(s0)
 83c:	00279613          	sll	a2,a5,0x2
 840:	fe042783          	lw	a5,-32(s0)
 844:	00f607b3          	add	a5,a2,a5
 848:	00279793          	sll	a5,a5,0x2
 84c:	00f687b3          	add	a5,a3,a5
 850:	0007a783          	lw	a5,0(a5)
 854:	04f70c63          	beq	a4,a5,8ac <merge_down+0x22c>
 858:	fec42783          	lw	a5,-20(s0)
 85c:	fff78713          	add	a4,a5,-1
 860:	fee42623          	sw	a4,-20(s0)
 864:	00002737          	lui	a4,0x2
 868:	f7c70693          	add	a3,a4,-132 # 1f7c <__DATA_BEGIN__>
 86c:	fe842703          	lw	a4,-24(s0)
 870:	00271613          	sll	a2,a4,0x2
 874:	fe042703          	lw	a4,-32(s0)
 878:	00e60733          	add	a4,a2,a4
 87c:	00271713          	sll	a4,a4,0x2
 880:	00e68733          	add	a4,a3,a4
 884:	00072703          	lw	a4,0(a4)
 888:	00279793          	sll	a5,a5,0x2
 88c:	ff078793          	add	a5,a5,-16
 890:	008787b3          	add	a5,a5,s0
 894:	fce7ac23          	sw	a4,-40(a5)
 898:	fe442783          	lw	a5,-28(s0)
 89c:	fef42423          	sw	a5,-24(s0)
 8a0:	fe442783          	lw	a5,-28(s0)
 8a4:	fff78793          	add	a5,a5,-1
 8a8:	fef42223          	sw	a5,-28(s0)
 8ac:	fe842783          	lw	a5,-24(s0)
 8b0:	0007c663          	bltz	a5,8bc <merge_down+0x23c>
 8b4:	fe442783          	lw	a5,-28(s0)
 8b8:	e207d6e3          	bgez	a5,6e4 <merge_down+0x64>
 8bc:	fe842783          	lw	a5,-24(s0)
 8c0:	0607c663          	bltz	a5,92c <merge_down+0x2ac>
 8c4:	000027b7          	lui	a5,0x2
 8c8:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 8cc:	fe842783          	lw	a5,-24(s0)
 8d0:	00279693          	sll	a3,a5,0x2
 8d4:	fe042783          	lw	a5,-32(s0)
 8d8:	00f687b3          	add	a5,a3,a5
 8dc:	00279793          	sll	a5,a5,0x2
 8e0:	00f707b3          	add	a5,a4,a5
 8e4:	0007a783          	lw	a5,0(a5)
 8e8:	04078263          	beqz	a5,92c <merge_down+0x2ac>
 8ec:	fec42783          	lw	a5,-20(s0)
 8f0:	fff78713          	add	a4,a5,-1
 8f4:	fee42623          	sw	a4,-20(s0)
 8f8:	00002737          	lui	a4,0x2
 8fc:	f7c70693          	add	a3,a4,-132 # 1f7c <__DATA_BEGIN__>
 900:	fe842703          	lw	a4,-24(s0)
 904:	00271613          	sll	a2,a4,0x2
 908:	fe042703          	lw	a4,-32(s0)
 90c:	00e60733          	add	a4,a2,a4
 910:	00271713          	sll	a4,a4,0x2
 914:	00e68733          	add	a4,a3,a4
 918:	00072703          	lw	a4,0(a4)
 91c:	00279793          	sll	a5,a5,0x2
 920:	ff078793          	add	a5,a5,-16
 924:	008787b3          	add	a5,a5,s0
 928:	fce7ac23          	sw	a4,-40(a5)
 92c:	00300793          	li	a5,3
 930:	fcf42c23          	sw	a5,-40(s0)
 934:	0480006f          	j	97c <merge_down+0x2fc>
 938:	fd842783          	lw	a5,-40(s0)
 93c:	00279793          	sll	a5,a5,0x2
 940:	ff078793          	add	a5,a5,-16
 944:	008787b3          	add	a5,a5,s0
 948:	fd87a703          	lw	a4,-40(a5)
 94c:	000027b7          	lui	a5,0x2
 950:	f7c78693          	add	a3,a5,-132 # 1f7c <__DATA_BEGIN__>
 954:	fd842783          	lw	a5,-40(s0)
 958:	00279613          	sll	a2,a5,0x2
 95c:	fe042783          	lw	a5,-32(s0)
 960:	00f607b3          	add	a5,a2,a5
 964:	00279793          	sll	a5,a5,0x2
 968:	00f687b3          	add	a5,a3,a5
 96c:	00e7a023          	sw	a4,0(a5)
 970:	fd842783          	lw	a5,-40(s0)
 974:	fff78793          	add	a5,a5,-1
 978:	fcf42c23          	sw	a5,-40(s0)
 97c:	fd842783          	lw	a5,-40(s0)
 980:	fa07dce3          	bgez	a5,938 <merge_down+0x2b8>
 984:	fe042783          	lw	a5,-32(s0)
 988:	00178793          	add	a5,a5,1
 98c:	fef42023          	sw	a5,-32(s0)
 990:	fe042703          	lw	a4,-32(s0)
 994:	00300793          	li	a5,3
 998:	cee7dee3          	bge	a5,a4,694 <merge_down+0x14>
 99c:	00000013          	nop
 9a0:	03c12403          	lw	s0,60(sp)
 9a4:	04010113          	add	sp,sp,64
 9a8:	00008067          	ret

000009ac <merge_right>:
 9ac:	fc010113          	add	sp,sp,-64
 9b0:	02812e23          	sw	s0,60(sp)
 9b4:	04010413          	add	s0,sp,64
 9b8:	fe042023          	sw	zero,-32(s0)
 9bc:	3000006f          	j	cbc <merge_right+0x310>
 9c0:	00300793          	li	a5,3
 9c4:	fef42623          	sw	a5,-20(s0)
 9c8:	00300793          	li	a5,3
 9cc:	fef42423          	sw	a5,-24(s0)
 9d0:	00200793          	li	a5,2
 9d4:	fef42223          	sw	a5,-28(s0)
 9d8:	fc042e23          	sw	zero,-36(s0)
 9dc:	0240006f          	j	a00 <merge_right+0x54>
 9e0:	fdc42783          	lw	a5,-36(s0)
 9e4:	00279793          	sll	a5,a5,0x2
 9e8:	ff078793          	add	a5,a5,-16
 9ec:	008787b3          	add	a5,a5,s0
 9f0:	fc07ac23          	sw	zero,-40(a5)
 9f4:	fdc42783          	lw	a5,-36(s0)
 9f8:	00178793          	add	a5,a5,1
 9fc:	fcf42e23          	sw	a5,-36(s0)
 a00:	fdc42703          	lw	a4,-36(s0)
 a04:	00300793          	li	a5,3
 a08:	fce7dce3          	bge	a5,a4,9e0 <merge_right+0x34>
 a0c:	1cc0006f          	j	bd8 <merge_right+0x22c>
 a10:	000027b7          	lui	a5,0x2
 a14:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 a18:	fe042783          	lw	a5,-32(s0)
 a1c:	00279693          	sll	a3,a5,0x2
 a20:	fe842783          	lw	a5,-24(s0)
 a24:	00f687b3          	add	a5,a3,a5
 a28:	00279793          	sll	a5,a5,0x2
 a2c:	00f707b3          	add	a5,a4,a5
 a30:	0007a783          	lw	a5,0(a5)
 a34:	02079063          	bnez	a5,a54 <merge_right+0xa8>
 a38:	fe842783          	lw	a5,-24(s0)
 a3c:	fff78793          	add	a5,a5,-1
 a40:	fef42423          	sw	a5,-24(s0)
 a44:	fe442783          	lw	a5,-28(s0)
 a48:	fff78793          	add	a5,a5,-1
 a4c:	fef42223          	sw	a5,-28(s0)
 a50:	1880006f          	j	bd8 <merge_right+0x22c>
 a54:	000027b7          	lui	a5,0x2
 a58:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 a5c:	fe042783          	lw	a5,-32(s0)
 a60:	00279693          	sll	a3,a5,0x2
 a64:	fe442783          	lw	a5,-28(s0)
 a68:	00f687b3          	add	a5,a3,a5
 a6c:	00279793          	sll	a5,a5,0x2
 a70:	00f707b3          	add	a5,a4,a5
 a74:	0007a783          	lw	a5,0(a5)
 a78:	00079a63          	bnez	a5,a8c <merge_right+0xe0>
 a7c:	fe442783          	lw	a5,-28(s0)
 a80:	fff78793          	add	a5,a5,-1
 a84:	fef42223          	sw	a5,-28(s0)
 a88:	1500006f          	j	bd8 <merge_right+0x22c>
 a8c:	000027b7          	lui	a5,0x2
 a90:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 a94:	fe042783          	lw	a5,-32(s0)
 a98:	00279693          	sll	a3,a5,0x2
 a9c:	fe842783          	lw	a5,-24(s0)
 aa0:	00f687b3          	add	a5,a3,a5
 aa4:	00279793          	sll	a5,a5,0x2
 aa8:	00f707b3          	add	a5,a4,a5
 aac:	0007a703          	lw	a4,0(a5)
 ab0:	000027b7          	lui	a5,0x2
 ab4:	f7c78693          	add	a3,a5,-132 # 1f7c <__DATA_BEGIN__>
 ab8:	fe042783          	lw	a5,-32(s0)
 abc:	00279613          	sll	a2,a5,0x2
 ac0:	fe442783          	lw	a5,-28(s0)
 ac4:	00f607b3          	add	a5,a2,a5
 ac8:	00279793          	sll	a5,a5,0x2
 acc:	00f687b3          	add	a5,a3,a5
 ad0:	0007a783          	lw	a5,0(a5)
 ad4:	06f71263          	bne	a4,a5,b38 <merge_right+0x18c>
 ad8:	000027b7          	lui	a5,0x2
 adc:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 ae0:	fe042783          	lw	a5,-32(s0)
 ae4:	00279693          	sll	a3,a5,0x2
 ae8:	fe842783          	lw	a5,-24(s0)
 aec:	00f687b3          	add	a5,a3,a5
 af0:	00279793          	sll	a5,a5,0x2
 af4:	00f707b3          	add	a5,a4,a5
 af8:	0007a703          	lw	a4,0(a5)
 afc:	fec42783          	lw	a5,-20(s0)
 b00:	fff78693          	add	a3,a5,-1
 b04:	fed42623          	sw	a3,-20(s0)
 b08:	00171713          	sll	a4,a4,0x1
 b0c:	00279793          	sll	a5,a5,0x2
 b10:	ff078793          	add	a5,a5,-16
 b14:	008787b3          	add	a5,a5,s0
 b18:	fce7ac23          	sw	a4,-40(a5)
 b1c:	fe442783          	lw	a5,-28(s0)
 b20:	fff78793          	add	a5,a5,-1
 b24:	fef42423          	sw	a5,-24(s0)
 b28:	fe842783          	lw	a5,-24(s0)
 b2c:	fff78793          	add	a5,a5,-1
 b30:	fef42223          	sw	a5,-28(s0)
 b34:	0a40006f          	j	bd8 <merge_right+0x22c>
 b38:	000027b7          	lui	a5,0x2
 b3c:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 b40:	fe042783          	lw	a5,-32(s0)
 b44:	00279693          	sll	a3,a5,0x2
 b48:	fe842783          	lw	a5,-24(s0)
 b4c:	00f687b3          	add	a5,a3,a5
 b50:	00279793          	sll	a5,a5,0x2
 b54:	00f707b3          	add	a5,a4,a5
 b58:	0007a703          	lw	a4,0(a5)
 b5c:	000027b7          	lui	a5,0x2
 b60:	f7c78693          	add	a3,a5,-132 # 1f7c <__DATA_BEGIN__>
 b64:	fe042783          	lw	a5,-32(s0)
 b68:	00279613          	sll	a2,a5,0x2
 b6c:	fe442783          	lw	a5,-28(s0)
 b70:	00f607b3          	add	a5,a2,a5
 b74:	00279793          	sll	a5,a5,0x2
 b78:	00f687b3          	add	a5,a3,a5
 b7c:	0007a783          	lw	a5,0(a5)
 b80:	04f70c63          	beq	a4,a5,bd8 <merge_right+0x22c>
 b84:	fec42783          	lw	a5,-20(s0)
 b88:	fff78713          	add	a4,a5,-1
 b8c:	fee42623          	sw	a4,-20(s0)
 b90:	00002737          	lui	a4,0x2
 b94:	f7c70693          	add	a3,a4,-132 # 1f7c <__DATA_BEGIN__>
 b98:	fe042703          	lw	a4,-32(s0)
 b9c:	00271613          	sll	a2,a4,0x2
 ba0:	fe842703          	lw	a4,-24(s0)
 ba4:	00e60733          	add	a4,a2,a4
 ba8:	00271713          	sll	a4,a4,0x2
 bac:	00e68733          	add	a4,a3,a4
 bb0:	00072703          	lw	a4,0(a4)
 bb4:	00279793          	sll	a5,a5,0x2
 bb8:	ff078793          	add	a5,a5,-16
 bbc:	008787b3          	add	a5,a5,s0
 bc0:	fce7ac23          	sw	a4,-40(a5)
 bc4:	fe442783          	lw	a5,-28(s0)
 bc8:	fef42423          	sw	a5,-24(s0)
 bcc:	fe442783          	lw	a5,-28(s0)
 bd0:	fff78793          	add	a5,a5,-1
 bd4:	fef42223          	sw	a5,-28(s0)
 bd8:	fe842783          	lw	a5,-24(s0)
 bdc:	0007c663          	bltz	a5,be8 <merge_right+0x23c>
 be0:	fe442783          	lw	a5,-28(s0)
 be4:	e207d6e3          	bgez	a5,a10 <merge_right+0x64>
 be8:	fe842783          	lw	a5,-24(s0)
 bec:	0607c663          	bltz	a5,c58 <merge_right+0x2ac>
 bf0:	000027b7          	lui	a5,0x2
 bf4:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 bf8:	fe042783          	lw	a5,-32(s0)
 bfc:	00279693          	sll	a3,a5,0x2
 c00:	fe842783          	lw	a5,-24(s0)
 c04:	00f687b3          	add	a5,a3,a5
 c08:	00279793          	sll	a5,a5,0x2
 c0c:	00f707b3          	add	a5,a4,a5
 c10:	0007a783          	lw	a5,0(a5)
 c14:	04078263          	beqz	a5,c58 <merge_right+0x2ac>
 c18:	fec42783          	lw	a5,-20(s0)
 c1c:	fff78713          	add	a4,a5,-1
 c20:	fee42623          	sw	a4,-20(s0)
 c24:	00002737          	lui	a4,0x2
 c28:	f7c70693          	add	a3,a4,-132 # 1f7c <__DATA_BEGIN__>
 c2c:	fe042703          	lw	a4,-32(s0)
 c30:	00271613          	sll	a2,a4,0x2
 c34:	fe842703          	lw	a4,-24(s0)
 c38:	00e60733          	add	a4,a2,a4
 c3c:	00271713          	sll	a4,a4,0x2
 c40:	00e68733          	add	a4,a3,a4
 c44:	00072703          	lw	a4,0(a4)
 c48:	00279793          	sll	a5,a5,0x2
 c4c:	ff078793          	add	a5,a5,-16
 c50:	008787b3          	add	a5,a5,s0
 c54:	fce7ac23          	sw	a4,-40(a5)
 c58:	00300793          	li	a5,3
 c5c:	fcf42c23          	sw	a5,-40(s0)
 c60:	0480006f          	j	ca8 <merge_right+0x2fc>
 c64:	fd842783          	lw	a5,-40(s0)
 c68:	00279793          	sll	a5,a5,0x2
 c6c:	ff078793          	add	a5,a5,-16
 c70:	008787b3          	add	a5,a5,s0
 c74:	fd87a703          	lw	a4,-40(a5)
 c78:	000027b7          	lui	a5,0x2
 c7c:	f7c78693          	add	a3,a5,-132 # 1f7c <__DATA_BEGIN__>
 c80:	fe042783          	lw	a5,-32(s0)
 c84:	00279613          	sll	a2,a5,0x2
 c88:	fd842783          	lw	a5,-40(s0)
 c8c:	00f607b3          	add	a5,a2,a5
 c90:	00279793          	sll	a5,a5,0x2
 c94:	00f687b3          	add	a5,a3,a5
 c98:	00e7a023          	sw	a4,0(a5)
 c9c:	fd842783          	lw	a5,-40(s0)
 ca0:	fff78793          	add	a5,a5,-1
 ca4:	fcf42c23          	sw	a5,-40(s0)
 ca8:	fd842783          	lw	a5,-40(s0)
 cac:	fa07dce3          	bgez	a5,c64 <merge_right+0x2b8>
 cb0:	fe042783          	lw	a5,-32(s0)
 cb4:	00178793          	add	a5,a5,1
 cb8:	fef42023          	sw	a5,-32(s0)
 cbc:	fe042703          	lw	a4,-32(s0)
 cc0:	00300793          	li	a5,3
 cc4:	cee7dee3          	bge	a5,a4,9c0 <merge_right+0x14>
 cc8:	00000013          	nop
 ccc:	03c12403          	lw	s0,60(sp)
 cd0:	04010113          	add	sp,sp,64
 cd4:	00008067          	ret

00000cd8 <add>:
 cd8:	fd010113          	add	sp,sp,-48
 cdc:	02812623          	sw	s0,44(sp)
 ce0:	03010413          	add	s0,sp,48
 ce4:	fca42e23          	sw	a0,-36(s0)
 ce8:	fe042623          	sw	zero,-20(s0)
 cec:	0f40006f          	j	de0 <add+0x108>
 cf0:	fe042423          	sw	zero,-24(s0)
 cf4:	0c00006f          	j	db4 <add+0xdc>
 cf8:	fe042223          	sw	zero,-28(s0)
 cfc:	0a00006f          	j	d9c <add+0xc4>
 d00:	fdc42783          	lw	a5,-36(s0)
 d04:	04079c63          	bnez	a5,d5c <add+0x84>
 d08:	000027b7          	lui	a5,0x2
 d0c:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 d10:	fe842783          	lw	a5,-24(s0)
 d14:	00279693          	sll	a3,a5,0x2
 d18:	fe442783          	lw	a5,-28(s0)
 d1c:	00f687b3          	add	a5,a3,a5
 d20:	00279793          	sll	a5,a5,0x2
 d24:	00f707b3          	add	a5,a4,a5
 d28:	0007a783          	lw	a5,0(a5)
 d2c:	02079863          	bnez	a5,d5c <add+0x84>
 d30:	000027b7          	lui	a5,0x2
 d34:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 d38:	fe842783          	lw	a5,-24(s0)
 d3c:	00279693          	sll	a3,a5,0x2
 d40:	fe442783          	lw	a5,-28(s0)
 d44:	00f687b3          	add	a5,a3,a5
 d48:	00279793          	sll	a5,a5,0x2
 d4c:	00f707b3          	add	a5,a4,a5
 d50:	00200713          	li	a4,2
 d54:	00e7a023          	sw	a4,0(a5)
 d58:	0980006f          	j	df0 <add+0x118>
 d5c:	000027b7          	lui	a5,0x2
 d60:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 d64:	fe842783          	lw	a5,-24(s0)
 d68:	00279693          	sll	a3,a5,0x2
 d6c:	fe442783          	lw	a5,-28(s0)
 d70:	00f687b3          	add	a5,a3,a5
 d74:	00279793          	sll	a5,a5,0x2
 d78:	00f707b3          	add	a5,a4,a5
 d7c:	0007a783          	lw	a5,0(a5)
 d80:	00079863          	bnez	a5,d90 <add+0xb8>
 d84:	fdc42783          	lw	a5,-36(s0)
 d88:	fff78793          	add	a5,a5,-1
 d8c:	fcf42e23          	sw	a5,-36(s0)
 d90:	fe442783          	lw	a5,-28(s0)
 d94:	00178793          	add	a5,a5,1
 d98:	fef42223          	sw	a5,-28(s0)
 d9c:	fe442703          	lw	a4,-28(s0)
 da0:	00300793          	li	a5,3
 da4:	f4e7dee3          	bge	a5,a4,d00 <add+0x28>
 da8:	fe842783          	lw	a5,-24(s0)
 dac:	00178793          	add	a5,a5,1
 db0:	fef42423          	sw	a5,-24(s0)
 db4:	fe842703          	lw	a4,-24(s0)
 db8:	00300793          	li	a5,3
 dbc:	f2e7dee3          	bge	a5,a4,cf8 <add+0x20>
 dc0:	fec42783          	lw	a5,-20(s0)
 dc4:	00178793          	add	a5,a5,1
 dc8:	fef42623          	sw	a5,-20(s0)
 dcc:	fec42703          	lw	a4,-20(s0)
 dd0:	03100793          	li	a5,49
 dd4:	00e7d663          	bge	a5,a4,de0 <add+0x108>
 dd8:	fdc42783          	lw	a5,-36(s0)
 ddc:	0007d863          	bgez	a5,dec <add+0x114>
 de0:	fdc42783          	lw	a5,-36(s0)
 de4:	f007d6e3          	bgez	a5,cf0 <add+0x18>
 de8:	0080006f          	j	df0 <add+0x118>
 dec:	00000013          	nop
 df0:	02c12403          	lw	s0,44(sp)
 df4:	03010113          	add	sp,sp,48
 df8:	00008067          	ret

00000dfc <init>:
 dfc:	fe010113          	add	sp,sp,-32
 e00:	00112e23          	sw	ra,28(sp)
 e04:	00812c23          	sw	s0,24(sp)
 e08:	02010413          	add	s0,sp,32
 e0c:	fe042623          	sw	zero,-20(s0)
 e10:	0540006f          	j	e64 <init+0x68>
 e14:	fe042423          	sw	zero,-24(s0)
 e18:	0340006f          	j	e4c <init+0x50>
 e1c:	000027b7          	lui	a5,0x2
 e20:	f7c78713          	add	a4,a5,-132 # 1f7c <__DATA_BEGIN__>
 e24:	fec42783          	lw	a5,-20(s0)
 e28:	00279693          	sll	a3,a5,0x2
 e2c:	fe842783          	lw	a5,-24(s0)
 e30:	00f687b3          	add	a5,a3,a5
 e34:	00279793          	sll	a5,a5,0x2
 e38:	00f707b3          	add	a5,a4,a5
 e3c:	0007a023          	sw	zero,0(a5)
 e40:	fe842783          	lw	a5,-24(s0)
 e44:	00178793          	add	a5,a5,1
 e48:	fef42423          	sw	a5,-24(s0)
 e4c:	fe842703          	lw	a4,-24(s0)
 e50:	00300793          	li	a5,3
 e54:	fce7d4e3          	bge	a5,a4,e1c <init+0x20>
 e58:	fec42783          	lw	a5,-20(s0)
 e5c:	00178793          	add	a5,a5,1
 e60:	fef42623          	sw	a5,-20(s0)
 e64:	fec42703          	lw	a4,-20(s0)
 e68:	00300793          	li	a5,3
 e6c:	fae7d4e3          	bge	a5,a4,e14 <init+0x18>
 e70:	00000513          	li	a0,0
 e74:	e65ff0ef          	jal	cd8 <add>
 e78:	00700513          	li	a0,7
 e7c:	e5dff0ef          	jal	cd8 <add>
 e80:	00000013          	nop
 e84:	01c12083          	lw	ra,28(sp)
 e88:	01812403          	lw	s0,24(sp)
 e8c:	02010113          	add	sp,sp,32
 e90:	00008067          	ret

00000e94 <main>:
 e94:	ff010113          	add	sp,sp,-16
 e98:	00112623          	sw	ra,12(sp)
 e9c:	00812423          	sw	s0,8(sp)
 ea0:	01010413          	add	s0,sp,16
 ea4:	f59ff0ef          	jal	dfc <init>
;  ea8:	014000ef          	jal	ebc <int1>
 ---->  00000013            nop
;  eac:	040000ef          	jal	eec <int2>
 ---->  00000013            nop
;  eb0:	06c000ef          	jal	f1c <int3>
 ---->  00000013            nop
;  eb4:	098000ef          	jal	f4c <int4>
 eb8:	ff1ff06f          	j	ea8 <main+0x14>

00000ebc <int1>:
 ebc:	ff010113          	add	sp,sp,-16
 ec0:	00112623          	sw	ra,12(sp)
 ec4:	00812423          	sw	s0,8(sp)
 ec8:	01010413          	add	s0,sp,16
 ecc:	954ff0ef          	jal	20 <merge_up>
 ed0:	00a00513          	li	a0,10
 ed4:	e05ff0ef          	jal	cd8 <add>
 ed8:	00000013          	nop
 edc:	00c12083          	lw	ra,12(sp)
 ee0:	00812403          	lw	s0,8(sp)
 ee4:	01010113          	add	sp,sp,16
 ee8:	00008067          	ret
 ---->  FD5FF06F            jal x0, -0x2C

00000eec <int2>:
 eec:	ff010113          	add	sp,sp,-16
 ef0:	00112623          	sw	ra,12(sp)
 ef4:	00812423          	sw	s0,8(sp)
 ef8:	01010413          	add	s0,sp,16
 efc:	c54ff0ef          	jal	350 <merge_left>
 f00:	00300513          	li	a0,3
 f04:	dd5ff0ef          	jal	cd8 <add>
 f08:	00000013          	nop
 f0c:	00c12083          	lw	ra,12(sp)
 f10:	00812403          	lw	s0,8(sp)
 f14:	01010113          	add	sp,sp,16
 f18:	00008067          	ret
 ---->  FA1FF06F            jal x0, -0x60


00000f1c <int3>:
 f1c:	ff010113          	add	sp,sp,-16
 f20:	00112623          	sw	ra,12(sp)
 f24:	00812423          	sw	s0,8(sp)
 f28:	01010413          	add	s0,sp,16
 f2c:	f54ff0ef          	jal	680 <merge_down>
 f30:	01900513          	li	a0,25
 f34:	da5ff0ef          	jal	cd8 <add>
 f38:	00000013          	nop
 f3c:	00c12083          	lw	ra,12(sp)
 f40:	00812403          	lw	s0,8(sp)
 f44:	01010113          	add	sp,sp,16
 f48:	00008067          	ret
 ---->  F71FF06F            jal x0, -0x90


00000f4c <int4>:
 f4c:	ff010113          	add	sp,sp,-16
 f50:	00112623          	sw	ra,12(sp)
 f54:	00812423          	sw	s0,8(sp)
 f58:	01010413          	add	s0,sp,16
 f5c:	a51ff0ef          	jal	9ac <merge_right>
 f60:	02100513          	li	a0,33
 f64:	d75ff0ef          	jal	cd8 <add>
 f68:	00000013          	nop
 f6c:	00c12083          	lw	ra,12(sp)
 f70:	00812403          	lw	s0,8(sp)
 f74:	01010113          	add	sp,sp,16
 f78:	00008067          	ret
 ---->  F41FF06F            jal x0, -0xc0
