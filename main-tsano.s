
main-tsano:	file format elf64-x86-64

Disassembly of section .init:

0000000000001000 <_init>:
    1000: f3 0f 1e fa                  	endbr64
    1004: 48 83 ec 08                  	subq	$0x8, %rsp
    1008: 48 8b 05 d9 2f 00 00         	movq	0x2fd9(%rip), %rax      # 0x3fe8 <strcpy@GLIBC_2.2.5+0x3fe8>
    100f: 48 85 c0                     	testq	%rax, %rax
    1012: 74 02                        	je	0x1016 <_init+0x16>
    1014: ff d0                        	callq	*%rax
    1016: 48 83 c4 08                  	addq	$0x8, %rsp
    101a: c3                           	retq

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020: ff 35 e2 2f 00 00            	pushq	0x2fe2(%rip)            # 0x4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026: ff 25 e4 2f 00 00            	jmpq	*0x2fe4(%rip)           # 0x4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c: 0f 1f 40 00                  	nopl	(%rax)

0000000000001030 <strcpy@plt>:
    1030: ff 25 e2 2f 00 00            	jmpq	*0x2fe2(%rip)           # 0x4018 <_GLOBAL_OFFSET_TABLE_+0x18>
    1036: 68 00 00 00 00               	pushq	$0x0
    103b: e9 e0 ff ff ff               	jmp	0x1020 <.plt>

0000000000001040 <printf@plt>:
    1040: ff 25 da 2f 00 00            	jmpq	*0x2fda(%rip)           # 0x4020 <_GLOBAL_OFFSET_TABLE_+0x20>
    1046: 68 01 00 00 00               	pushq	$0x1
    104b: e9 d0 ff ff ff               	jmp	0x1020 <.plt>

Disassembly of section .plt.got:

0000000000001050 <__cxa_finalize@plt>:
    1050: ff 25 a2 2f 00 00            	jmpq	*0x2fa2(%rip)           # 0x3ff8 <strcpy@GLIBC_2.2.5+0x3ff8>
    1056: 66 90                        	nop

Disassembly of section .text:

0000000000001060 <_start>:
    1060: f3 0f 1e fa                  	endbr64
    1064: 31 ed                        	xorl	%ebp, %ebp
    1066: 49 89 d1                     	movq	%rdx, %r9
    1069: 5e                           	popq	%rsi
    106a: 48 89 e2                     	movq	%rsp, %rdx
    106d: 48 83 e4 f0                  	andq	$-0x10, %rsp
    1071: 50                           	pushq	%rax
    1072: 54                           	pushq	%rsp
    1073: 45 31 c0                     	xorl	%r8d, %r8d
    1076: 31 c9                        	xorl	%ecx, %ecx
    1078: 48 8d 3d c1 02 00 00         	leaq	0x2c1(%rip), %rdi       # 0x1340 <main>
    107f: ff 15 53 2f 00 00            	callq	*0x2f53(%rip)           # 0x3fd8 <strcpy@GLIBC_2.2.5+0x3fd8>
    1085: f4                           	hlt
    1086: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000001090 <deregister_tm_clones>:
    1090: 48 8d 3d a1 2f 00 00         	leaq	0x2fa1(%rip), %rdi      # 0x4038 <completed.0>
    1097: 48 8d 05 9a 2f 00 00         	leaq	0x2f9a(%rip), %rax      # 0x4038 <completed.0>
    109e: 48 39 f8                     	cmpq	%rdi, %rax
    10a1: 74 15                        	je	0x10b8 <deregister_tm_clones+0x28>
    10a3: 48 8b 05 36 2f 00 00         	movq	0x2f36(%rip), %rax      # 0x3fe0 <strcpy@GLIBC_2.2.5+0x3fe0>
    10aa: 48 85 c0                     	testq	%rax, %rax
    10ad: 74 09                        	je	0x10b8 <deregister_tm_clones+0x28>
    10af: ff e0                        	jmpq	*%rax
    10b1: 0f 1f 80 00 00 00 00         	nopl	(%rax)
    10b8: c3                           	retq
    10b9: 0f 1f 80 00 00 00 00         	nopl	(%rax)

00000000000010c0 <register_tm_clones>:
    10c0: 48 8d 3d 71 2f 00 00         	leaq	0x2f71(%rip), %rdi      # 0x4038 <completed.0>
    10c7: 48 8d 35 6a 2f 00 00         	leaq	0x2f6a(%rip), %rsi      # 0x4038 <completed.0>
    10ce: 48 29 fe                     	subq	%rdi, %rsi
    10d1: 48 89 f0                     	movq	%rsi, %rax
    10d4: 48 c1 ee 3f                  	shrq	$0x3f, %rsi
    10d8: 48 c1 f8 03                  	sarq	$0x3, %rax
    10dc: 48 01 c6                     	addq	%rax, %rsi
    10df: 48 d1 fe                     	sarq	%rsi
    10e2: 74 14                        	je	0x10f8 <register_tm_clones+0x38>
    10e4: 48 8b 05 05 2f 00 00         	movq	0x2f05(%rip), %rax      # 0x3ff0 <strcpy@GLIBC_2.2.5+0x3ff0>
    10eb: 48 85 c0                     	testq	%rax, %rax
    10ee: 74 08                        	je	0x10f8 <register_tm_clones+0x38>
    10f0: ff e0                        	jmpq	*%rax
    10f2: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
    10f8: c3                           	retq
    10f9: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000001100 <__do_global_dtors_aux>:
    1100: f3 0f 1e fa                  	endbr64
    1104: 80 3d 2d 2f 00 00 00         	cmpb	$0x0, 0x2f2d(%rip)      # 0x4038 <completed.0>
    110b: 75 2b                        	jne	0x1138 <__do_global_dtors_aux+0x38>
    110d: 55                           	pushq	%rbp
    110e: 48 83 3d e2 2e 00 00 00      	cmpq	$0x0, 0x2ee2(%rip)      # 0x3ff8 <strcpy@GLIBC_2.2.5+0x3ff8>
    1116: 48 89 e5                     	movq	%rsp, %rbp
    1119: 74 0c                        	je	0x1127 <__do_global_dtors_aux+0x27>
    111b: 48 8b 3d 0e 2f 00 00         	movq	0x2f0e(%rip), %rdi      # 0x4030 <__dso_handle>
    1122: e8 29 ff ff ff               	callq	0x1050 <__cxa_finalize@plt>
    1127: e8 64 ff ff ff               	callq	0x1090 <deregister_tm_clones>
    112c: c6 05 05 2f 00 00 01         	movb	$0x1, 0x2f05(%rip)      # 0x4038 <completed.0>
    1133: 5d                           	popq	%rbp
    1134: c3                           	retq
    1135: 0f 1f 00                     	nopl	(%rax)
    1138: c3                           	retq
    1139: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000001140 <frame_dummy>:
    1140: f3 0f 1e fa                  	endbr64
    1144: e9 77 ff ff ff               	jmp	0x10c0 <register_tm_clones>
    1149: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000001150 <atomic_fn>:
    1150: 55                           	pushq	%rbp
    1151: 48 89 e5                     	movq	%rsp, %rbp
    1154: 48 83 ec 20                  	subq	$0x20, %rsp
    1158: 48 89 7d f8                  	movq	%rdi, -0x8(%rbp)
    115c: 48 8b 4d f8                  	movq	-0x8(%rbp), %rcx
    1160: c7 45 f4 01 00 00 00         	movl	$0x1, -0xc(%rbp)
    1167: 8b 45 f4                     	movl	-0xc(%rbp), %eax
    116a: 87 01                        	xchgl	%eax, (%rcx)
    116c: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
    1170: 8b 00                        	movl	(%rax), %eax
    1172: 89 45 ec                     	movl	%eax, -0x14(%rbp)
    1175: 8b 45 ec                     	movl	-0x14(%rbp), %eax
    1178: 89 45 f0                     	movl	%eax, -0x10(%rbp)
    117b: 8b 75 f0                     	movl	-0x10(%rbp), %esi
    117e: 48 8d 3d 88 0e 00 00         	leaq	0xe88(%rip), %rdi       # 0x200d <_IO_stdin_used+0xd>
    1185: b0 00                        	movb	$0x0, %al
    1187: e8 b4 fe ff ff               	callq	0x1040 <printf@plt>
    118c: 48 83 c4 20                  	addq	$0x20, %rsp
    1190: 5d                           	popq	%rbp
    1191: c3                           	retq
    1192: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)

00000000000011a0 <load>:
    11a0: 55                           	pushq	%rbp
    11a1: 48 89 e5                     	movq	%rsp, %rbp
    11a4: 48 83 ec 10                  	subq	$0x10, %rsp
    11a8: 48 89 7d f8                  	movq	%rdi, -0x8(%rbp)
    11ac: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
    11b0: 8b 30                        	movl	(%rax), %esi
    11b2: 48 8d 3d 4b 0e 00 00         	leaq	0xe4b(%rip), %rdi       # 0x2004 <_IO_stdin_used+0x4>
    11b9: b0 00                        	movb	$0x0, %al
    11bb: e8 80 fe ff ff               	callq	0x1040 <printf@plt>
    11c0: 48 83 c4 10                  	addq	$0x10, %rsp
    11c4: 5d                           	popq	%rbp
    11c5: c3                           	retq
    11c6: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

00000000000011d0 <store>:
    11d0: 55                           	pushq	%rbp
    11d1: 48 89 e5                     	movq	%rsp, %rbp
    11d4: 48 89 7d f8                  	movq	%rdi, -0x8(%rbp)
    11d8: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
    11dc: c7 00 02 00 00 00            	movl	$0x2, (%rax)
    11e2: 5d                           	popq	%rbp
    11e3: c3                           	retq
    11e4: 66 66 66 2e 0f 1f 84 00 00 00 00 00  	nopw	%cs:(%rax,%rax)

00000000000011f0 <intrinsic>:
    11f0: 55                           	pushq	%rbp
    11f1: 48 89 e5                     	movq	%rsp, %rbp
    11f4: 48 89 7d f8                  	movq	%rdi, -0x8(%rbp)
    11f8: 48 89 75 f0                  	movq	%rsi, -0x10(%rbp)
    11fc: c7 45 ec 00 00 00 00         	movl	$0x0, -0x14(%rbp)
    1203: 83 7d ec 14                  	cmpl	$0x14, -0x14(%rbp)
    1207: 7d 19                        	jge	0x1222 <intrinsic+0x32>
    1209: 8b 55 ec                     	movl	-0x14(%rbp), %edx
    120c: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
    1210: 48 63 4d ec                  	movslq	-0x14(%rbp), %rcx
    1214: 89 14 88                     	movl	%edx, (%rax,%rcx,4)
    1217: 8b 45 ec                     	movl	-0x14(%rbp), %eax
    121a: 83 c0 01                     	addl	$0x1, %eax
    121d: 89 45 ec                     	movl	%eax, -0x14(%rbp)
    1220: eb e1                        	jmp	0x1203 <intrinsic+0x13>
    1222: 48 8b 45 f0                  	movq	-0x10(%rbp), %rax
    1226: 48 8b 4d f8                  	movq	-0x8(%rbp), %rcx
    122a: 0f 10 01                     	movups	(%rcx), %xmm0
    122d: 0f 10 49 10                  	movups	0x10(%rcx), %xmm1
    1231: 0f 10 51 20                  	movups	0x20(%rcx), %xmm2
    1235: 0f 10 59 30                  	movups	0x30(%rcx), %xmm3
    1239: 0f 10 61 40                  	movups	0x40(%rcx), %xmm4
    123d: 0f 11 60 40                  	movups	%xmm4, 0x40(%rax)
    1241: 0f 11 58 30                  	movups	%xmm3, 0x30(%rax)
    1245: 0f 11 50 20                  	movups	%xmm2, 0x20(%rax)
    1249: 0f 11 48 10                  	movups	%xmm1, 0x10(%rax)
    124d: 0f 11 00                     	movups	%xmm0, (%rax)
    1250: 5d                           	popq	%rbp
    1251: c3                           	retq
    1252: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)

0000000000001260 <nobuiltin>:
    1260: 55                           	pushq	%rbp
    1261: 48 89 e5                     	movq	%rsp, %rbp
    1264: 48 83 ec 10                  	subq	$0x10, %rsp
    1268: 48 89 7d f8                  	movq	%rdi, -0x8(%rbp)
    126c: 48 8b 7d f8                  	movq	-0x8(%rbp), %rdi
    1270: 48 8d 35 9a 0d 00 00         	leaq	0xd9a(%rip), %rsi       # 0x2011 <_IO_stdin_used+0x11>
    1277: e8 b4 fd ff ff               	callq	0x1030 <strcpy@plt>
    127c: 48 8b 75 f8                  	movq	-0x8(%rbp), %rsi
    1280: 48 8d 3d 91 0d 00 00         	leaq	0xd91(%rip), %rdi       # 0x2018 <_IO_stdin_used+0x18>
    1287: b0 00                        	movb	$0x0, %al
    1289: e8 b2 fd ff ff               	callq	0x1040 <printf@plt>
    128e: 48 83 c4 10                  	addq	$0x10, %rsp
    1292: 5d                           	popq	%rbp
    1293: c3                           	retq
    1294: 66 66 66 2e 0f 1f 84 00 00 00 00 00  	nopw	%cs:(%rax,%rax)

00000000000012a0 <not_captured_variables>:
    12a0: 55                           	pushq	%rbp
    12a1: 48 89 e5                     	movq	%rsp, %rbp
    12a4: 48 83 ec 60                  	subq	$0x60, %rsp
    12a8: c7 45 ac 00 00 00 00         	movl	$0x0, -0x54(%rbp)
    12af: 83 7d ac 0a                  	cmpl	$0xa, -0x54(%rbp)
    12b3: 7d 16                        	jge	0x12cb <not_captured_variables+0x2b>
    12b5: 8b 4d ac                     	movl	-0x54(%rbp), %ecx
    12b8: 48 63 45 ac                  	movslq	-0x54(%rbp), %rax
    12bc: 89 4c 85 b0                  	movl	%ecx, -0x50(%rbp,%rax,4)
    12c0: 8b 45 ac                     	movl	-0x54(%rbp), %eax
    12c3: 83 c0 01                     	addl	$0x1, %eax
    12c6: 89 45 ac                     	movl	%eax, -0x54(%rbp)
    12c9: eb e4                        	jmp	0x12af <not_captured_variables+0xf>
    12cb: c7 45 a8 00 00 00 00         	movl	$0x0, -0x58(%rbp)
    12d2: 83 7d a8 14                  	cmpl	$0x14, -0x58(%rbp)
    12d6: 7d 21                        	jge	0x12f9 <not_captured_variables+0x59>
    12d8: 48 63 45 a8                  	movslq	-0x58(%rbp), %rax
    12dc: 8b 74 85 b0                  	movl	-0x50(%rbp,%rax,4), %esi
    12e0: 48 8d 3d 26 0d 00 00         	leaq	0xd26(%rip), %rdi       # 0x200d <_IO_stdin_used+0xd>
    12e7: b0 00                        	movb	$0x0, %al
    12e9: e8 52 fd ff ff               	callq	0x1040 <printf@plt>
    12ee: 8b 45 a8                     	movl	-0x58(%rbp), %eax
    12f1: 83 c0 01                     	addl	$0x1, %eax
    12f4: 89 45 a8                     	movl	%eax, -0x58(%rbp)
    12f7: eb d9                        	jmp	0x12d2 <not_captured_variables+0x32>
    12f9: 48 83 c4 60                  	addq	$0x60, %rsp
    12fd: 5d                           	popq	%rbp
    12fe: c3                           	retq
    12ff: 90                           	nop

0000000000001300 <read_before_write>:
    1300: 55                           	pushq	%rbp
    1301: 48 89 e5                     	movq	%rsp, %rbp
    1304: 48 89 7d f8                  	movq	%rdi, -0x8(%rbp)
    1308: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
    130c: 8b 08                        	movl	(%rax), %ecx
    130e: 83 c1 01                     	addl	$0x1, %ecx
    1311: 89 08                        	movl	%ecx, (%rax)
    1313: 5d                           	popq	%rbp
    1314: c3                           	retq
    1315: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)

0000000000001320 <split_read_before_write>:
    1320: 55                           	pushq	%rbp
    1321: 48 89 e5                     	movq	%rsp, %rbp
    1324: 48 89 7d f8                  	movq	%rdi, -0x8(%rbp)
    1328: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
    132c: 8b 00                        	movl	(%rax), %eax
    132e: 89 45 f4                     	movl	%eax, -0xc(%rbp)
    1331: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
    1335: 8b 08                        	movl	(%rax), %ecx
    1337: 83 c1 01                     	addl	$0x1, %ecx
    133a: 89 08                        	movl	%ecx, (%rax)
    133c: 5d                           	popq	%rbp
    133d: c3                           	retq
    133e: 66 90                        	nop

0000000000001340 <main>:
    1340: 55                           	pushq	%rbp
    1341: 48 89 e5                     	movq	%rsp, %rbp
    1344: 48 81 ec d0 00 00 00         	subq	$0xd0, %rsp
    134b: c7 45 fc 00 00 00 00         	movl	$0x0, -0x4(%rbp)
    1352: 48 8d 7d f8                  	leaq	-0x8(%rbp), %rdi
    1356: e8 f5 fd ff ff               	callq	0x1150 <atomic_fn>
    135b: c7 45 f4 01 00 00 00         	movl	$0x1, -0xc(%rbp)
    1362: 48 8d 7d f4                  	leaq	-0xc(%rbp), %rdi
    1366: e8 35 fe ff ff               	callq	0x11a0 <load>
    136b: 48 8d 7d f4                  	leaq	-0xc(%rbp), %rdi
    136f: e8 5c fe ff ff               	callq	0x11d0 <store>
    1374: 48 8d 7d a0                  	leaq	-0x60(%rbp), %rdi
    1378: 48 8d b5 50 ff ff ff         	leaq	-0xb0(%rbp), %rsi
    137f: e8 6c fe ff ff               	callq	0x11f0 <intrinsic>
    1384: 48 8d bd 30 ff ff ff         	leaq	-0xd0(%rbp), %rdi
    138b: e8 d0 fe ff ff               	callq	0x1260 <nobuiltin>
    1390: e8 0b ff ff ff               	callq	0x12a0 <not_captured_variables>
    1395: 48 8d 7d f4                  	leaq	-0xc(%rbp), %rdi
    1399: e8 62 ff ff ff               	callq	0x1300 <read_before_write>
    139e: 48 8d 7d f4                  	leaq	-0xc(%rbp), %rdi
    13a2: e8 79 ff ff ff               	callq	0x1320 <split_read_before_write>
    13a7: 31 c0                        	xorl	%eax, %eax
    13a9: 48 81 c4 d0 00 00 00         	addq	$0xd0, %rsp
    13b0: 5d                           	popq	%rbp
    13b1: c3                           	retq

Disassembly of section .fini:

00000000000013b4 <_fini>:
    13b4: f3 0f 1e fa                  	endbr64
    13b8: 48 83 ec 08                  	subq	$0x8, %rsp
    13bc: 48 83 c4 08                  	addq	$0x8, %rsp
    13c0: c3                           	retq
