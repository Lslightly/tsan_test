
main-tsano-O2:	file format elf64-x86-64

Disassembly of section .init:

0000000000001000 <_init>:
    1000: f3 0f 1e fa                  	endbr64
    1004: 48 83 ec 08                  	subq	$0x8, %rsp
    1008: 48 8b 05 d9 2f 00 00         	movq	0x2fd9(%rip), %rax      # 0x3fe8 <puts@GLIBC_2.2.5+0x3fe8>
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

0000000000001030 <puts@plt>:
    1030: ff 25 e2 2f 00 00            	jmpq	*0x2fe2(%rip)           # 0x4018 <_GLOBAL_OFFSET_TABLE_+0x18>
    1036: 68 00 00 00 00               	pushq	$0x0
    103b: e9 e0 ff ff ff               	jmp	0x1020 <.plt>

0000000000001040 <printf@plt>:
    1040: ff 25 da 2f 00 00            	jmpq	*0x2fda(%rip)           # 0x4020 <_GLOBAL_OFFSET_TABLE_+0x20>
    1046: 68 01 00 00 00               	pushq	$0x1
    104b: e9 d0 ff ff ff               	jmp	0x1020 <.plt>

Disassembly of section .plt.got:

0000000000001050 <__cxa_finalize@plt>:
    1050: ff 25 a2 2f 00 00            	jmpq	*0x2fa2(%rip)           # 0x3ff8 <puts@GLIBC_2.2.5+0x3ff8>
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
    1078: 48 8d 3d b1 02 00 00         	leaq	0x2b1(%rip), %rdi       # 0x1330 <main>
    107f: ff 15 53 2f 00 00            	callq	*0x2f53(%rip)           # 0x3fd8 <puts@GLIBC_2.2.5+0x3fd8>
    1085: f4                           	hlt
    1086: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000001090 <deregister_tm_clones>:
    1090: 48 8d 3d a1 2f 00 00         	leaq	0x2fa1(%rip), %rdi      # 0x4038 <completed.0>
    1097: 48 8d 05 9a 2f 00 00         	leaq	0x2f9a(%rip), %rax      # 0x4038 <completed.0>
    109e: 48 39 f8                     	cmpq	%rdi, %rax
    10a1: 74 15                        	je	0x10b8 <deregister_tm_clones+0x28>
    10a3: 48 8b 05 36 2f 00 00         	movq	0x2f36(%rip), %rax      # 0x3fe0 <puts@GLIBC_2.2.5+0x3fe0>
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
    10e4: 48 8b 05 05 2f 00 00         	movq	0x2f05(%rip), %rax      # 0x3ff0 <puts@GLIBC_2.2.5+0x3ff0>
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
    110e: 48 83 3d e2 2e 00 00 00      	cmpq	$0x0, 0x2ee2(%rip)      # 0x3ff8 <puts@GLIBC_2.2.5+0x3ff8>
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
    1150: b8 01 00 00 00               	movl	$0x1, %eax
    1155: 87 07                        	xchgl	%eax, (%rdi)
    1157: 8b 37                        	movl	(%rdi), %esi
    1159: 48 8d 3d 09 0f 00 00         	leaq	0xf09(%rip), %rdi       # 0x2069 <_IO_stdin_used+0x69>
    1160: 31 c0                        	xorl	%eax, %eax
    1162: e9 d9 fe ff ff               	jmp	0x1040 <printf@plt>
    1167: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)

0000000000001170 <load>:
    1170: 8b 37                        	movl	(%rdi), %esi
    1172: 48 8d 3d e7 0e 00 00         	leaq	0xee7(%rip), %rdi       # 0x2060 <_IO_stdin_used+0x60>
    1179: 31 c0                        	xorl	%eax, %eax
    117b: e9 c0 fe ff ff               	jmp	0x1040 <printf@plt>

0000000000001180 <store>:
    1180: c7 07 02 00 00 00            	movl	$0x2, (%rdi)
    1186: c3                           	retq
    1187: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)

0000000000001190 <intrinsic>:
    1190: 0f 28 05 79 0e 00 00         	movaps	0xe79(%rip), %xmm0      # 0x2010 <_IO_stdin_used+0x10>
    1197: 0f 11 07                     	movups	%xmm0, (%rdi)
    119a: 0f 28 05 7f 0e 00 00         	movaps	0xe7f(%rip), %xmm0      # 0x2020 <_IO_stdin_used+0x20>
    11a1: 0f 11 47 10                  	movups	%xmm0, 0x10(%rdi)
    11a5: 0f 28 05 84 0e 00 00         	movaps	0xe84(%rip), %xmm0      # 0x2030 <_IO_stdin_used+0x30>
    11ac: 0f 11 47 20                  	movups	%xmm0, 0x20(%rdi)
    11b0: 0f 28 05 89 0e 00 00         	movaps	0xe89(%rip), %xmm0      # 0x2040 <_IO_stdin_used+0x40>
    11b7: 0f 11 47 30                  	movups	%xmm0, 0x30(%rdi)
    11bb: 0f 28 05 8e 0e 00 00         	movaps	0xe8e(%rip), %xmm0      # 0x2050 <_IO_stdin_used+0x50>
    11c2: 0f 11 47 40                  	movups	%xmm0, 0x40(%rdi)
    11c6: 0f 10 07                     	movups	(%rdi), %xmm0
    11c9: 0f 10 4f 10                  	movups	0x10(%rdi), %xmm1
    11cd: 0f 10 57 20                  	movups	0x20(%rdi), %xmm2
    11d1: 0f 10 5f 30                  	movups	0x30(%rdi), %xmm3
    11d5: 0f 10 67 40                  	movups	0x40(%rdi), %xmm4
    11d9: 0f 11 66 40                  	movups	%xmm4, 0x40(%rsi)
    11dd: 0f 11 5e 30                  	movups	%xmm3, 0x30(%rsi)
    11e1: 0f 11 56 20                  	movups	%xmm2, 0x20(%rsi)
    11e5: 0f 11 4e 10                  	movups	%xmm1, 0x10(%rsi)
    11e9: 0f 11 06                     	movups	%xmm0, (%rsi)
    11ec: c3                           	retq
    11ed: 0f 1f 00                     	nopl	(%rax)

00000000000011f0 <nobuiltin>:
    11f0: c7 47 03 34 35 0a 00         	movl	$0xa3534, 0x3(%rdi)     # imm = 0xA3534
    11f7: c7 07 31 32 33 34            	movl	$0x34333231, (%rdi)     # imm = 0x34333231
    11fd: e9 2e fe ff ff               	jmp	0x1030 <puts@plt>
    1202: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)

0000000000001210 <not_captured_variables>:
    1210: 53                           	pushq	%rbx
    1211: 48 8d 1d 51 0e 00 00         	leaq	0xe51(%rip), %rbx       # 0x2069 <_IO_stdin_used+0x69>
    1218: 48 89 df                     	movq	%rbx, %rdi
    121b: 31 f6                        	xorl	%esi, %esi
    121d: 31 c0                        	xorl	%eax, %eax
    121f: e8 1c fe ff ff               	callq	0x1040 <printf@plt>
    1224: 48 89 df                     	movq	%rbx, %rdi
    1227: be 01 00 00 00               	movl	$0x1, %esi
    122c: 31 c0                        	xorl	%eax, %eax
    122e: e8 0d fe ff ff               	callq	0x1040 <printf@plt>
    1233: 48 89 df                     	movq	%rbx, %rdi
    1236: be 02 00 00 00               	movl	$0x2, %esi
    123b: 31 c0                        	xorl	%eax, %eax
    123d: e8 fe fd ff ff               	callq	0x1040 <printf@plt>
    1242: 48 89 df                     	movq	%rbx, %rdi
    1245: be 03 00 00 00               	movl	$0x3, %esi
    124a: 31 c0                        	xorl	%eax, %eax
    124c: e8 ef fd ff ff               	callq	0x1040 <printf@plt>
    1251: 48 89 df                     	movq	%rbx, %rdi
    1254: be 04 00 00 00               	movl	$0x4, %esi
    1259: 31 c0                        	xorl	%eax, %eax
    125b: e8 e0 fd ff ff               	callq	0x1040 <printf@plt>
    1260: 48 89 df                     	movq	%rbx, %rdi
    1263: be 05 00 00 00               	movl	$0x5, %esi
    1268: 31 c0                        	xorl	%eax, %eax
    126a: e8 d1 fd ff ff               	callq	0x1040 <printf@plt>
    126f: 48 89 df                     	movq	%rbx, %rdi
    1272: be 06 00 00 00               	movl	$0x6, %esi
    1277: 31 c0                        	xorl	%eax, %eax
    1279: e8 c2 fd ff ff               	callq	0x1040 <printf@plt>
    127e: 48 89 df                     	movq	%rbx, %rdi
    1281: be 07 00 00 00               	movl	$0x7, %esi
    1286: 31 c0                        	xorl	%eax, %eax
    1288: e8 b3 fd ff ff               	callq	0x1040 <printf@plt>
    128d: 48 89 df                     	movq	%rbx, %rdi
    1290: be 08 00 00 00               	movl	$0x8, %esi
    1295: 31 c0                        	xorl	%eax, %eax
    1297: e8 a4 fd ff ff               	callq	0x1040 <printf@plt>
    129c: 48 89 df                     	movq	%rbx, %rdi
    129f: be 09 00 00 00               	movl	$0x9, %esi
    12a4: 31 c0                        	xorl	%eax, %eax
    12a6: e8 95 fd ff ff               	callq	0x1040 <printf@plt>
    12ab: 48 89 df                     	movq	%rbx, %rdi
    12ae: 31 c0                        	xorl	%eax, %eax
    12b0: e8 8b fd ff ff               	callq	0x1040 <printf@plt>
    12b5: 48 89 df                     	movq	%rbx, %rdi
    12b8: 31 c0                        	xorl	%eax, %eax
    12ba: e8 81 fd ff ff               	callq	0x1040 <printf@plt>
    12bf: 48 89 df                     	movq	%rbx, %rdi
    12c2: 31 c0                        	xorl	%eax, %eax
    12c4: e8 77 fd ff ff               	callq	0x1040 <printf@plt>
    12c9: 48 89 df                     	movq	%rbx, %rdi
    12cc: 31 c0                        	xorl	%eax, %eax
    12ce: e8 6d fd ff ff               	callq	0x1040 <printf@plt>
    12d3: 48 89 df                     	movq	%rbx, %rdi
    12d6: 31 c0                        	xorl	%eax, %eax
    12d8: e8 63 fd ff ff               	callq	0x1040 <printf@plt>
    12dd: 48 89 df                     	movq	%rbx, %rdi
    12e0: 31 c0                        	xorl	%eax, %eax
    12e2: e8 59 fd ff ff               	callq	0x1040 <printf@plt>
    12e7: 48 89 df                     	movq	%rbx, %rdi
    12ea: 31 c0                        	xorl	%eax, %eax
    12ec: e8 4f fd ff ff               	callq	0x1040 <printf@plt>
    12f1: 48 89 df                     	movq	%rbx, %rdi
    12f4: 31 c0                        	xorl	%eax, %eax
    12f6: e8 45 fd ff ff               	callq	0x1040 <printf@plt>
    12fb: 48 89 df                     	movq	%rbx, %rdi
    12fe: 31 c0                        	xorl	%eax, %eax
    1300: e8 3b fd ff ff               	callq	0x1040 <printf@plt>
    1305: 48 89 df                     	movq	%rbx, %rdi
    1308: 31 c0                        	xorl	%eax, %eax
    130a: 5b                           	popq	%rbx
    130b: e9 30 fd ff ff               	jmp	0x1040 <printf@plt>

0000000000001310 <read_before_write>:
    1310: ff 07                        	incl	(%rdi)
    1312: c3                           	retq
    1313: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000000001320 <split_read_before_write>:
    1320: ff 07                        	incl	(%rdi)
    1322: c3                           	retq
    1323: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000000001330 <main>:
    1330: 48 81 ec d8 00 00 00         	subq	$0xd8, %rsp
    1337: 48 8d 7c 24 0c               	leaq	0xc(%rsp), %rdi
    133c: e8 0f fe ff ff               	callq	0x1150 <atomic_fn>
    1341: c7 44 24 08 01 00 00 00      	movl	$0x1, 0x8(%rsp)
    1349: 48 8d 7c 24 08               	leaq	0x8(%rsp), %rdi
    134e: e8 1d fe ff ff               	callq	0x1170 <load>
    1353: 48 8d bc 24 80 00 00 00      	leaq	0x80(%rsp), %rdi
    135b: 48 8d 74 24 30               	leaq	0x30(%rsp), %rsi
    1360: e8 2b fe ff ff               	callq	0x1190 <intrinsic>
    1365: 48 8d 7c 24 10               	leaq	0x10(%rsp), %rdi
    136a: e8 81 fe ff ff               	callq	0x11f0 <nobuiltin>
    136f: e8 9c fe ff ff               	callq	0x1210 <not_captured_variables>
    1374: 31 c0                        	xorl	%eax, %eax
    1376: 48 81 c4 d8 00 00 00         	addq	$0xd8, %rsp
    137d: c3                           	retq

Disassembly of section .fini:

0000000000001380 <_fini>:
    1380: f3 0f 1e fa                  	endbr64
    1384: 48 83 ec 08                  	subq	$0x8, %rsp
    1388: 48 83 c4 08                  	addq	$0x8, %rsp
    138c: c3                           	retq
