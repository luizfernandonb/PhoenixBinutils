#as: -a32 -mvle
#objdump: -d -Mspe
#name: Validate SPE instructions

.*: +file format elf.*-powerpc.*


Disassembly of section .text:

00000000 <.text>:
   0:	10 01 12 00 	evaddw  r0,r1,r2
   4:	10 1f 12 02 	evaddiw r0,r2,31
   8:	10 01 12 04 	evsubfw r0,r1,r2
   c:	10 01 12 04 	evsubfw r0,r1,r2
  10:	10 1f 12 06 	evsubifw r0,31,r2
  14:	10 1f 12 06 	evsubifw r0,31,r2
  18:	10 01 02 08 	evabs   r0,r1
  1c:	10 01 02 09 	evneg   r0,r1
  20:	10 01 02 0a 	evextsb r0,r1
  24:	10 01 02 0b 	evextsh r0,r1
  28:	10 01 02 0c 	evrndw  r0,r1
  2c:	10 01 02 0d 	evcntlzw r0,r1
  30:	10 01 02 0e 	evcntlsw r0,r1
  34:	10 01 12 0f 	brinc   r0,r1,r2
  38:	10 01 12 11 	evand   r0,r1,r2
  3c:	10 01 12 12 	evandc  r0,r1,r2
  40:	10 01 12 16 	evxor   r0,r1,r2
  44:	10 01 0a 17 	evmr    r0,r1
  48:	10 01 12 17 	evor    r0,r1,r2
  4c:	10 01 12 18 	evnor   r0,r1,r2
  50:	10 01 0a 18 	evnor   r0,r1,r1
  54:	10 01 12 19 	eveqv   r0,r1,r2
  58:	10 01 12 1b 	evorc   r0,r1,r2
  5c:	10 01 12 1e 	evnand  r0,r1,r2
  60:	10 01 12 20 	evsrwu  r0,r1,r2
  64:	10 01 12 21 	evsrws  r0,r1,r2
  68:	10 01 fa 22 	evsrwiu r0,r1,31
  6c:	10 01 fa 23 	evsrwis r0,r1,31
  70:	10 01 12 24 	evslw   r0,r1,r2
  74:	10 01 fa 26 	evslwi  r0,r1,31
  78:	10 01 12 28 	evrlw   r0,r1,r2
  7c:	10 10 02 29 	evsplati r0,-16
  80:	10 01 fa 2a 	evrlwi  r0,r1,31
  84:	10 10 02 2b 	evsplatfi r0,-16
  88:	10 01 12 2c 	evmergehi r0,r1,r2
  8c:	10 01 12 2d 	evmergelo r0,r1,r2
  90:	10 01 12 2e 	evmergehilo r0,r1,r2
  94:	10 01 12 2f 	evmergelohi r0,r1,r2
  98:	10 01 12 30 	evcmpgtu cr0,r1,r2
  9c:	10 01 12 31 	evcmpgts cr0,r1,r2
  a0:	10 01 12 32 	evcmpltu cr0,r1,r2
  a4:	10 01 12 33 	evcmplts cr0,r1,r2
  a8:	10 01 12 34 	evcmpeq cr0,r1,r2
  ac:	10 01 12 78 	evsel   r0,r1,r2,cr0
  b0:	10 01 12 80 	evfsadd r0,r1,r2
  b4:	10 01 12 81 	evfssub r0,r1,r2
  b8:	10 01 12 82 	evfsmadd r0,r1,r2
  bc:	10 01 12 83 	evfsmsub r0,r1,r2
  c0:	10 01 02 84 	evfsabs r0,r1
  c4:	10 01 02 85 	evfsnabs r0,r1
  c8:	10 01 02 86 	evfsneg r0,r1
  cc:	10 01 12 88 	evfsmul r0,r1,r2
  d0:	10 01 12 89 	evfsdiv r0,r1,r2
  d4:	10 01 12 8a 	evfsnmadd r0,r1,r2
  d8:	10 01 12 8b 	evfsnmsub r0,r1,r2
  dc:	10 01 12 8c 	evfscmpgt cr0,r1,r2
  e0:	10 01 12 8d 	evfscmplt cr0,r1,r2
  e4:	10 01 12 8e 	evfscmpeq cr0,r1,r2
  e8:	10 00 12 90 	evfscfui r0,r2
  ec:	10 00 12 91 	evfscfsi r0,r2
  f0:	10 00 12 92 	evfscfuf r0,r2
  f4:	10 00 12 93 	evfscfsf r0,r2
  f8:	10 00 12 94 	evfsctui r0,r2
  fc:	10 00 12 95 	evfsctsi r0,r2
 100:	10 00 12 96 	evfsctuf r0,r2
 104:	10 00 12 97 	evfsctsf r0,r2
 108:	10 00 12 98 	evfsctuiz r0,r2
 10c:	10 00 12 9a 	evfsctsiz r0,r2
 110:	10 01 12 9c 	evfststgt cr0,r1,r2
 114:	10 01 12 9d 	evfststlt cr0,r1,r2
 118:	10 01 12 9e 	evfststeq cr0,r1,r2
 11c:	10 01 13 00 	evlddx  r0,r1,r2
 120:	10 01 0b 01 	evldd   r0,8\(r1\)
 124:	10 01 13 02 	evldwx  r0,r1,r2
 128:	10 01 0b 03 	evldw   r0,8\(r1\)
 12c:	10 01 13 04 	evldhx  r0,r1,r2
 130:	10 01 0b 05 	evldh   r0,8\(r1\)
 134:	10 01 13 08 	evlhhesplatx r0,r1,r2
 138:	10 01 0b 09 	evlhhesplat r0,2\(r1\)
 13c:	10 01 13 0c 	evlhhousplatx r0,r1,r2
 140:	10 01 0b 0d 	evlhhousplat r0,2\(r1\)
 144:	10 01 13 0e 	evlhhossplatx r0,r1,r2
 148:	10 01 0b 0f 	evlhhossplat r0,2\(r1\)
 14c:	10 01 13 10 	evlwhex r0,r1,r2
 150:	10 01 0b 11 	evlwhe  r0,4\(r1\)
 154:	10 01 13 14 	evlwhoux r0,r1,r2
 158:	10 01 0b 15 	evlwhou r0,4\(r1\)
 15c:	10 01 13 16 	evlwhosx r0,r1,r2
 160:	10 01 0b 17 	evlwhos r0,4\(r1\)
 164:	10 01 13 18 	evlwwsplatx r0,r1,r2
 168:	10 01 0b 19 	evlwwsplat r0,4\(r1\)
 16c:	10 01 13 1c 	evlwhsplatx r0,r1,r2
 170:	10 01 0b 1d 	evlwhsplat r0,4\(r1\)
 174:	10 01 13 20 	evstddx r0,r1,r2
 178:	10 01 0b 21 	evstdd  r0,8\(r1\)
 17c:	10 01 13 22 	evstdwx r0,r1,r2
 180:	10 01 0b 23 	evstdw  r0,8\(r1\)
 184:	10 01 13 24 	evstdhx r0,r1,r2
 188:	10 01 0b 25 	evstdh  r0,8\(r1\)
 18c:	10 01 13 30 	evstwhex r0,r1,r2
 190:	10 01 0b 31 	evstwhe r0,4\(r1\)
 194:	10 01 13 34 	evstwhox r0,r1,r2
 198:	10 01 0b 35 	evstwho r0,4\(r1\)
 19c:	10 01 13 38 	evstwwex r0,r1,r2
 1a0:	10 01 0b 39 	evstwwe r0,4\(r1\)
 1a4:	10 01 13 3c 	evstwwox r0,r1,r2
 1a8:	10 01 0b 3d 	evstwwo r0,4\(r1\)
 1ac:	10 01 14 03 	evmhessf r0,r1,r2
 1b0:	10 01 14 07 	evmhossf r0,r1,r2
 1b4:	10 01 14 08 	evmheumi r0,r1,r2
 1b8:	10 01 14 09 	evmhesmi r0,r1,r2
 1bc:	10 01 14 0b 	evmhesmf r0,r1,r2
 1c0:	10 01 14 0c 	evmhoumi r0,r1,r2
 1c4:	10 01 14 0d 	evmhosmi r0,r1,r2
 1c8:	10 01 14 0f 	evmhosmf r0,r1,r2
 1cc:	10 01 14 23 	evmhessfa r0,r1,r2
 1d0:	10 01 14 27 	evmhossfa r0,r1,r2
 1d4:	10 01 14 28 	evmheumia r0,r1,r2
 1d8:	10 01 14 29 	evmhesmia r0,r1,r2
 1dc:	10 01 14 2b 	evmhesmfa r0,r1,r2
 1e0:	10 01 14 2c 	evmhoumia r0,r1,r2
 1e4:	10 01 14 2d 	evmhosmia r0,r1,r2
 1e8:	10 01 14 2f 	evmhosmfa r0,r1,r2
 1ec:	10 01 14 43 	evmwlssf r0,r1,r2
 1f0:	10 01 14 47 	evmwhssf r0,r1,r2
 1f4:	10 01 14 48 	evmwlumi r0,r1,r2
 1f8:	10 01 14 4b 	evmwlsmf r0,r1,r2
 1fc:	10 01 14 4c 	evmwhumi r0,r1,r2
 200:	10 01 14 4d 	evmwhsmi r0,r1,r2
 204:	10 01 14 4f 	evmwhsmf r0,r1,r2
 208:	10 01 14 53 	evmwssf r0,r1,r2
 20c:	10 01 14 58 	evmwumi r0,r1,r2
 210:	10 01 14 59 	evmwsmi r0,r1,r2
 214:	10 01 14 5b 	evmwsmf r0,r1,r2
 218:	10 01 14 63 	evmwlssfa r0,r1,r2
 21c:	10 01 14 67 	evmwhssfa r0,r1,r2
 220:	10 01 14 68 	evmwlumia r0,r1,r2
 224:	10 01 14 6b 	evmwlsmfa r0,r1,r2
 228:	10 01 14 6c 	evmwhumia r0,r1,r2
 22c:	10 01 14 6d 	evmwhsmia r0,r1,r2
 230:	10 01 14 6f 	evmwhsmfa r0,r1,r2
 234:	10 01 14 73 	evmwssfa r0,r1,r2
 238:	10 01 14 78 	evmwumia r0,r1,r2
 23c:	10 01 14 79 	evmwsmia r0,r1,r2
 240:	10 01 14 7b 	evmwsmfa r0,r1,r2
 244:	10 01 04 c0 	evaddusiaaw r0,r1
 248:	10 01 04 c1 	evaddssiaaw r0,r1
 24c:	10 01 04 c2 	evsubfusiaaw r0,r1
 250:	10 01 04 c3 	evsubfssiaaw r0,r1
 254:	10 01 04 c4 	evmra   r0,r1
 258:	10 01 14 c6 	evdivws r0,r1,r2
 25c:	10 01 14 c7 	evdivwu r0,r1,r2
 260:	10 01 04 c8 	evaddumiaaw r0,r1
 264:	10 01 04 c9 	evaddsmiaaw r0,r1
 268:	10 01 04 ca 	evsubfumiaaw r0,r1
 26c:	10 01 04 cb 	evsubfsmiaaw r0,r1
 270:	10 01 15 00 	evmheusiaaw r0,r1,r2
 274:	10 01 15 01 	evmhessiaaw r0,r1,r2
 278:	10 01 15 03 	evmhessfaaw r0,r1,r2
 27c:	10 01 15 04 	evmhousiaaw r0,r1,r2
 280:	10 01 15 05 	evmhossiaaw r0,r1,r2
 284:	10 01 15 07 	evmhossfaaw r0,r1,r2
 288:	10 01 15 08 	evmheumiaaw r0,r1,r2
 28c:	10 01 15 09 	evmhesmiaaw r0,r1,r2
 290:	10 01 15 0b 	evmhesmfaaw r0,r1,r2
 294:	10 01 15 0c 	evmhoumiaaw r0,r1,r2
 298:	10 01 15 0d 	evmhosmiaaw r0,r1,r2
 29c:	10 01 15 0f 	evmhosmfaaw r0,r1,r2
 2a0:	10 01 15 28 	evmhegumiaa r0,r1,r2
 2a4:	10 01 15 29 	evmhegsmiaa r0,r1,r2
 2a8:	10 01 15 2b 	evmhegsmfaa r0,r1,r2
 2ac:	10 01 15 2c 	evmhogumiaa r0,r1,r2
 2b0:	10 01 15 2d 	evmhogsmiaa r0,r1,r2
 2b4:	10 01 15 2f 	evmhogsmfaa r0,r1,r2
 2b8:	10 01 15 40 	evmwlusiaaw r0,r1,r2
 2bc:	10 01 15 41 	evmwlssiaaw r0,r1,r2
 2c0:	10 01 15 43 	evmwlssfaaw r0,r1,r2
 2c4:	10 01 15 44 	evmwhusiaa r0,r1,r2
 2c8:	10 01 15 45 	evmwhssmaa r0,r1,r2
 2cc:	10 01 15 47 	evmwhssfaa r0,r1,r2
 2d0:	10 01 15 48 	evmwlumiaaw r0,r1,r2
 2d4:	10 01 15 49 	evmwlsmiaaw r0,r1,r2
 2d8:	10 01 15 4b 	evmwlsmfaaw r0,r1,r2
 2dc:	10 01 15 4c 	evmwhumiaa r0,r1,r2
 2e0:	10 01 15 4d 	evmwhsmiaa r0,r1,r2
 2e4:	10 01 15 4f 	evmwhsmfaa r0,r1,r2
 2e8:	10 01 15 53 	evmwssfaa r0,r1,r2
 2ec:	10 01 15 58 	evmwumiaa r0,r1,r2
 2f0:	10 01 15 59 	evmwsmiaa r0,r1,r2
 2f4:	10 01 15 5b 	evmwsmfaa r0,r1,r2
 2f8:	10 01 15 64 	evmwhgumiaa r0,r1,r2
 2fc:	10 01 15 65 	evmwhgsmiaa r0,r1,r2
 300:	10 01 15 67 	evmwhgssfaa r0,r1,r2
 304:	10 01 15 6f 	evmwhgsmfaa r0,r1,r2
 308:	10 01 15 80 	evmheusianw r0,r1,r2
 30c:	10 01 15 81 	evmhessianw r0,r1,r2
 310:	10 01 15 83 	evmhessfanw r0,r1,r2
 314:	10 01 15 84 	evmhousianw r0,r1,r2
 318:	10 01 15 85 	evmhossianw r0,r1,r2
 31c:	10 01 15 87 	evmhossfanw r0,r1,r2
 320:	10 01 15 88 	evmheumianw r0,r1,r2
 324:	10 01 15 89 	evmhesmianw r0,r1,r2
 328:	10 01 15 8b 	evmhesmfanw r0,r1,r2
 32c:	10 01 15 8c 	evmhoumianw r0,r1,r2
 330:	10 01 15 8d 	evmhosmianw r0,r1,r2
 334:	10 01 15 8f 	evmhosmfanw r0,r1,r2
 338:	10 01 15 a8 	evmhegumian r0,r1,r2
 33c:	10 01 15 a9 	evmhegsmian r0,r1,r2
 340:	10 01 15 ab 	evmhegsmfan r0,r1,r2
 344:	10 01 15 ac 	evmhogumian r0,r1,r2
 348:	10 01 15 ad 	evmhogsmian r0,r1,r2
 34c:	10 01 15 af 	evmhogsmfan r0,r1,r2
 350:	10 01 15 c0 	evmwlusianw r0,r1,r2
 354:	10 01 15 c1 	evmwlssianw r0,r1,r2
 358:	10 01 15 c3 	evmwlssfanw r0,r1,r2
 35c:	10 01 15 c4 	evmwhusian r0,r1,r2
 360:	10 01 15 c5 	evmwhssian r0,r1,r2
 364:	10 01 15 c7 	evmwhssfan r0,r1,r2
 368:	10 01 15 c8 	evmwlumianw r0,r1,r2
 36c:	10 01 15 c9 	evmwlsmianw r0,r1,r2
 370:	10 01 15 cb 	evmwlsmfanw r0,r1,r2
 374:	10 01 15 cc 	evmwhumian r0,r1,r2
 378:	10 01 15 cd 	evmwhsmian r0,r1,r2
 37c:	10 01 15 cf 	evmwhsmfan r0,r1,r2
 380:	10 01 15 d3 	evmwssfan r0,r1,r2
 384:	10 01 15 d8 	evmwumian r0,r1,r2
 388:	10 01 15 d9 	evmwsmian r0,r1,r2
 38c:	10 01 15 db 	evmwsmfan r0,r1,r2
 390:	10 01 15 e4 	evmwhgumian r0,r1,r2
 394:	10 01 15 e5 	evmwhgsmian r0,r1,r2
 398:	10 01 15 e7 	evmwhgssfan r0,r1,r2
 39c:	10 01 15 ef 	evmwhgsmfan r0,r1,r2
 3a0:	7c 01 16 3e 	evlddepx r0,r1,r2
 3a4:	7c 01 17 3e 	evstddepx r0,r1,r2
 3a8:	10 01 12 c0 	efsadd  r0,r1,r2
 3ac:	10 01 12 c1 	efssub  r0,r1,r2
 3b0:	10 01 02 c4 	efsabs  r0,r1
 3b4:	10 01 02 c5 	efsnabs r0,r1
 3b8:	10 01 02 c6 	efsneg  r0,r1
 3bc:	10 01 12 c8 	efsmul  r0,r1,r2
 3c0:	10 01 12 c9 	efsdiv  r0,r1,r2
 3c4:	10 01 12 cc 	efscmpgt cr0,r1,r2
 3c8:	10 01 12 cd 	efscmplt cr0,r1,r2
 3cc:	10 01 12 ce 	efscmpeq cr0,r1,r2
 3d0:	10 00 12 d0 	efscfui r0,r2
 3d4:	10 00 12 d1 	efscfsi r0,r2
 3d8:	10 00 12 d2 	efscfuf r0,r2
 3dc:	10 00 12 d3 	efscfsf r0,r2
 3e0:	10 00 12 d4 	efsctui r0,r2
 3e4:	10 00 12 d5 	efsctsi r0,r2
 3e8:	10 00 12 d6 	efsctuf r0,r2
 3ec:	10 00 12 d7 	efsctsf r0,r2
 3f0:	10 00 12 d8 	efsctuiz r0,r2
 3f4:	10 00 12 da 	efsctsiz r0,r2
 3f8:	10 01 12 dc 	efststgt cr0,r1,r2
 3fc:	10 01 12 dd 	efststlt cr0,r1,r2
 400:	10 01 12 de 	efststeq cr0,r1,r2
