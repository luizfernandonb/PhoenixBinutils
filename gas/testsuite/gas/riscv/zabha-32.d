#as: -march=rv32i_zabha_zacas
#source: zabha.s
#objdump: -d -Mno-aliases

.*:[ 	]+file format .*

Disassembly of section .text:

0+000 <target>:
[ 	]+[0-9a-f]+:[ 	]+00a5052f[ 	]+amoadd.b[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+08a5052f[ 	]+amoswap.b[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+60a5052f[ 	]+amoand.b[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+40a5052f[ 	]+amoor.b[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+20a5052f[ 	]+amoxor.b[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+a0a5052f[ 	]+amomax.b[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+e0a5052f[ 	]+amomaxu.b[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+80a5052f[ 	]+amomin.b[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+c0a5052f[ 	]+amominu.b[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+28a5052f[ 	]+amocas.b[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+04a5052f[ 	]+amoadd.b.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+0ca5052f[ 	]+amoswap.b.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+64a5052f[ 	]+amoand.b.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+44a5052f[ 	]+amoor.b.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+24a5052f[ 	]+amoxor.b.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+a4a5052f[ 	]+amomax.b.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+e4a5052f[ 	]+amomaxu.b.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+84a5052f[ 	]+amomin.b.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+c4a5052f[ 	]+amominu.b.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+2ca5052f[ 	]+amocas.b.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+02a5052f[ 	]+amoadd.b.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+0aa5052f[ 	]+amoswap.b.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+62a5052f[ 	]+amoand.b.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+42a5052f[ 	]+amoor.b.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+22a5052f[ 	]+amoxor.b.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+a2a5052f[ 	]+amomax.b.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+e2a5052f[ 	]+amomaxu.b.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+82a5052f[ 	]+amomin.b.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+c2a5052f[ 	]+amominu.b.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+2aa5052f[ 	]+amocas.b.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+06a5052f[ 	]+amoadd.b.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+0ea5052f[ 	]+amoswap.b.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+66a5052f[ 	]+amoand.b.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+46a5052f[ 	]+amoor.b.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+26a5052f[ 	]+amoxor.b.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+a6a5052f[ 	]+amomax.b.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+e6a5052f[ 	]+amomaxu.b.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+86a5052f[ 	]+amomin.b.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+c6a5052f[ 	]+amominu.b.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+2ea5052f[ 	]+amocas.b.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+00a5152f[ 	]+amoadd.h[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+08a5152f[ 	]+amoswap.h[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+60a5152f[ 	]+amoand.h[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+40a5152f[ 	]+amoor.h[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+20a5152f[ 	]+amoxor.h[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+a0a5152f[ 	]+amomax.h[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+e0a5152f[ 	]+amomaxu.h[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+80a5152f[ 	]+amomin.h[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+c0a5152f[ 	]+amominu.h[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+28a5152f[ 	]+amocas.h[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+04a5152f[ 	]+amoadd.h.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+0ca5152f[ 	]+amoswap.h.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+64a5152f[ 	]+amoand.h.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+44a5152f[ 	]+amoor.h.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+24a5152f[ 	]+amoxor.h.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+a4a5152f[ 	]+amomax.h.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+e4a5152f[ 	]+amomaxu.h.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+84a5152f[ 	]+amomin.h.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+c4a5152f[ 	]+amominu.h.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+2ca5152f[ 	]+amocas.h.aq[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+02a5152f[ 	]+amoadd.h.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+0aa5152f[ 	]+amoswap.h.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+62a5152f[ 	]+amoand.h.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+42a5152f[ 	]+amoor.h.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+22a5152f[ 	]+amoxor.h.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+a2a5152f[ 	]+amomax.h.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+e2a5152f[ 	]+amomaxu.h.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+82a5152f[ 	]+amomin.h.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+c2a5152f[ 	]+amominu.h.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+2aa5152f[ 	]+amocas.h.rl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+06a5152f[ 	]+amoadd.h.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+0ea5152f[ 	]+amoswap.h.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+66a5152f[ 	]+amoand.h.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+46a5152f[ 	]+amoor.h.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+26a5152f[ 	]+amoxor.h.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+a6a5152f[ 	]+amomax.h.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+e6a5152f[ 	]+amomaxu.h.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+86a5152f[ 	]+amomin.h.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+c6a5152f[ 	]+amominu.h.aqrl[ 	]+a0,a0,\(a0\)
[ 	]+[0-9a-f]+:[ 	]+2ea5152f[ 	]+amocas.h.aqrl[ 	]+a0,a0,\(a0\)
