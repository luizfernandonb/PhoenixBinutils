#ld: -e0
#objdump: -d

.*:[    ]+file format .*


Disassembly of section .text:

[ 	]*0000000120000078 <a>:
[ 	]+120000078:[ 	]+4c000020[ 	]+ret
[ 	]+12000007c:[ 	]+4c000020[ 	]+ret
[ 	]+120000080:[ 	]+4c000020[ 	]+ret
[ 	]*0000000120000084 <b>:
[ 	]+120000084:[ 	]+4c000020[ 	]+ret
[ 	]+...
[ 	]+128000078:[ 	]+54000200[ 	]+bl[ 	]+-134217728[ 	]+# 120000078 <a>
[ 	]+12800007c:[ 	]+1fffc001[ 	]+pcaddu18i[ 	]+\$ra, -512
[ 	]+128000080:[ 	]+4ffffc21[ 	]+jirl[ 	]+\$ra, \$ra, -4
[ 	]+128000084:[ 	]+50000200[ 	]+b[ 	]+-134217728[ 	]+# 120000084 <b>
[ 	]+128000088:[ 	]+1fffc00c[ 	]+pcaddu18i[ 	]+\$t0, -512
[ 	]+12800008c:[ 	]+4ffffd80[ 	]+jirl[ 	]+\$zero, \$t0, -4
[ 	]+128000090:[ 	]+1e004001[ 	]+pcaddu18i[ 	]+\$ra, 512
[ 	]+128000094:[ 	]+4c000021[ 	]+jirl[ 	]+\$ra, \$ra, 0
[ 	]+128000098:[ 	]+57fff9ff[ 	]+bl[ 	]+134217720[ 	]+# 130000090 <c>
[ 	]+12800009c:[ 	]+1e00400c[ 	]+pcaddu18i[ 	]+\$t0, 512
[ 	]+1280000a0:[ 	]+4c000180[ 	]+jr[ 	]+\$t0
[ 	]+1280000a4:[ 	]+53fff9ff[ 	]+b[ 	]+134217720[ 	]+# 13000009c <d>
[ 	]+...
[ 	]+130000070:[ 	]+4c000020[ 	]+ret
[ 	]+130000074:[ 	]+4c000020[ 	]+ret
[ 	]+130000078:[ 	]+4c000020[ 	]+ret
[ 	]+13000007c:[ 	]+4c000020[ 	]+ret
[ 	]+130000080:[ 	]+4c000020[ 	]+ret
[ 	]+130000084:[ 	]+4c000020[ 	]+ret
[ 	]+130000088:[ 	]+4c000020[ 	]+ret
[ 	]+13000008c:[ 	]+4c000020[ 	]+ret
[ 	]*0000000130000090 <c>:
[ 	]+130000090:[ 	]+4c000020[ 	]+ret
[ 	]+130000094:[ 	]+4c000020[ 	]+ret
[ 	]+130000098:[ 	]+4c000020[ 	]+ret
[ 	]*000000013000009c <d>:
[ 	]+13000009c:[ 	]+4c000020[ 	]+ret
