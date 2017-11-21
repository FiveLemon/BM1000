
	.sect ".text"
000000:              _USER_softwareUpdate1p6:
00000000   b2bd       MOVL         *SP++, XAR1
00000001   aabd       MOVL         *SP++, XAR2
00000002   a2bd       MOVL         *SP++, XAR3
00000003   fe0e       ADDB         SP, #14
00000004   28a9       MOV          AL, #0x47c9
00000005   47c9
00000006   28a8       MOV          AH, #0x4512
00000007   4512
00000008   86a5       MOVL         XAR2, XAR5
00000009   8ba4       MOVL         XAR1, XAR4
0000000a   1e42       MOVL         *-SP[2], ACC
0000000b   06c2       MOVL         ACC, *+XAR2[0]
0000000c   7640       LCR          0x000000
0000000d   0000
0000000e   1e42       MOVL         *-SP[2], ACC
0000000f   06d2       MOVL         ACC, *+XAR2[2]
00000010   7640       LCR          0x000000
00000011   0000
00000012   d018       MOVB         XAR0, #0x18
00000013   86a9       MOVL         XAR2, ACC
00000014   8a91       MOVL         XAR4, *+XAR1[AR0]
00000015   7640       LCR          0x000000
00000016   0000
00000017   7640       LCR          0x000000
00000018   0000
00000019   aa42       MOVL         *-SP[2], XAR2
0000001a   7640       LCR          0x000000
0000001b   0000
0000001c   d088       MOVB         XAR0, #0x88
0000001d   1e42       MOVL         *-SP[2], ACC
0000001e   0691       MOVL         ACC, *+XAR1[AR0]
0000001f   7640       LCR          0x000000
00000020   0000
00000021   7640       LCR          0x000000
00000022   0000
00000023   82a9       MOVL         XAR3, ACC
00000024   9a00       MOVB         AL, #0x0
00000025   28a8       MOV          AH, #0x4000
00000026   4000
00000027   7640       LCR          0x000000
00000028   0000
00000029   1e42       MOVL         *-SP[2], ACC
0000002a   a2a9       MOVL         ACC, XAR3
0000002b   7640       LCR          0x000000
0000002c   0000
0000002d   5cad       MOVZ         AR4, SP
0000002e   dc84       SUBB         XAR4, #4
0000002f   7640       LCR          0x000000
00000030   0000
00000031   1ea6       MOVL         XAR6, ACC
00000032   9a00       MOVB         AL, #0x0
00000033   9b00       MOVB         AH, #0x0
00000034   1e42       MOVL         *-SP[2], ACC
00000035   06a6       MOVL         ACC, XAR6
00000036   7640       LCR          0x000000
00000037   0000
00000038   5200       CMPB         AL, #0x0
00000039   6203       SB           3, GT
0000003a   0644       MOVL         ACC, *-SP[4]
0000003b   6f07       SB           7, UNC
00003c:              $C$L1:
0000003c   ff2f       MOV          ACC, #0x7f00 << 15
0000003d   7f00
0000003e   1e42       MOVL         *-SP[2], ACC
0000003f   0644       MOVL         ACC, *-SP[4]
00000040   7640       LCR          0x000000
00000041   0000
000042:              $C$L2:
00000042   7640       LCR          0x000000
00000043   0000
00000044   964d       MOV          *-SP[13], AL
00000045   7640       LCR          0x000000
00000046   0000
00000047   1e42       MOVL         *-SP[2], ACC
00000048   9a00       MOVB         AL, #0x0
00000049   28a8       MOV          AH, #0x4000
0000004a   4000
0000004b   7640       LCR          0x000000
0000004c   0000
0000004d   aa42       MOVL         *-SP[2], XAR2
0000004e   7640       LCR          0x000000
0000004f   0000
00000050   d08a       MOVB         XAR0, #0x8a
00000051   86a9       MOVL         XAR2, ACC
00000052   1e42       MOVL         *-SP[2], ACC
00000053   0691       MOVL         ACC, *+XAR1[AR0]
00000054   7640       LCR          0x000000
00000055   0000
00000056   88ad       MOVZ         AR6, SP
00000057   de8c       SUBB         XAR6, #12
00000058   7640       LCR          0x000000
00000059   0000
0000005a   5cad       MOVZ         AR4, SP
0000005b   88ad       MOVZ         AR6, SP
0000005c   8f40       MOVL         XAR5, #0x000000
0000005d   0000
0000005e   dc8c       SUBB         XAR4, #12
0000005f   de88       SUBB         XAR6, #8
00000060   7640       LCR          0x000000
00000061   0000
00000062   5cad       MOVZ         AR4, SP
00000063   dc88       SUBB         XAR4, #8
00000064   7640       LCR          0x000000
00000065   0000
00000066   d088       MOVB         XAR0, #0x88
00000067   82a9       MOVL         XAR3, ACC
00000068   aa42       MOVL         *-SP[2], XAR2
00000069   0691       MOVL         ACC, *+XAR1[AR0]
0000006a   7640       LCR          0x000000
0000006b   0000
0000006c   88ad       MOVZ         AR6, SP
0000006d   de8c       SUBB         XAR6, #12
0000006e   7640       LCR          0x000000
0000006f   0000
00000070   5cad       MOVZ         AR4, SP
00000071   88ad       MOVZ         AR6, SP
00000072   8f40       MOVL         XAR5, #0x000000
00000073   0000
00000074   dc8c       SUBB         XAR4, #12
00000075   de88       SUBB         XAR6, #8
00000076   7640       LCR          0x000000
00000077   0000
00000078   5cad       MOVZ         AR4, SP
00000079   dc88       SUBB         XAR4, #8
0000007a   7640       LCR          0x000000
0000007b   0000
0000007c   d018       MOVB         XAR0, #0x18
0000007d   8a91       MOVL         XAR4, *+XAR1[AR0]
0000007e   7640       LCR          0x000000
0000007f   0000
00000080   d018       MOVB         XAR0, #0x18
00000081   a2a9       MOVL         ACC, XAR3
00000082   8a91       MOVL         XAR4, *+XAR1[AR0]
00000083   7640       LCR          0x000000
00000084   0000
00000085   9a1e       MOVB         AL, #0x1e
00000086   9e4d       SUB          AL, *-SP[13]
00000087   d018       MOVB         XAR0, #0x18
00000088   8a91       MOVL         XAR4, *+XAR1[AR0]
00000089   7640       LCR          0x000000
0000008a   0000
0000008b   fe8e       SUBB         SP, #14
0000008c   82be       MOVL         XAR3, *--SP
0000008d   86be       MOVL         XAR2, *--SP
0000008e   8bbe       MOVL         XAR1, *--SP
0000008f   0006       LRETR        
000090:              _USER_setWaitTimeParams:
00000090   b2bd       MOVL         *SP++, XAR1
00000091   aabd       MOVL         *SP++, XAR2
00000092   fe02       ADDB         SP, #2
00000093   86a4       MOVL         XAR2, XAR4
00000094   8ba4       MOVL         XAR1, XAR4
00000095   0200       MOVB         ACC, #0
00000096   8f40       MOVL         XAR5, #0x0061a8
00000097   61a8
00000098   d052       MOVB         XAR0, #0x52
00000099   dc54       ADDB         XAR4, #84
0000009a   d95c       ADDB         XAR1, #92
0000009b   1ec4       MOVL         *+XAR4[0], ACC
0000009c   1ed4       MOVL         *+XAR4[2], ACC
0000009d   a0e4       MOVL         *+XAR4[4], XAR5
0000009e   1ef4       MOVL         *+XAR4[6], ACC
0000009f   8f00       MOVL         XAR4, #0x009c40
000000a0   9c40
000000a1   1ec1       MOVL         *+XAR1[0], ACC
000000a2   1ed1       MOVL         *+XAR1[2], ACC
000000a3   a8e1       MOVL         *+XAR1[4], XAR4
000000a4   1ef1       MOVL         *+XAR1[6], ACC
000000a5   ff2f       MOV          ACC, #0x7e00 << 15
000000a6   7e00
000000a7   1e42       MOVL         *-SP[2], ACC
000000a8   0692       MOVL         ACC, *+XAR2[AR0]
000000a9   7640       LCR          0x000000
000000aa   0000
000000ab   1ea6       MOVL         XAR6, ACC
000000ac   9a00       MOVB         AL, #0x0
000000ad   28a8       MOV          AH, #0x40a0
000000ae   40a0
000000af   1e42       MOVL         *-SP[2], ACC
000000b0   06a6       MOVL         ACC, XAR6
000000b1   7640       LCR          0x000000
000000b2   0000
000000b3   1ea6       MOVL         XAR6, ACC
000000b4   28a9       MOV          AL, #0x4000
000000b5   4000
000000b6   28a8       MOV          AH, #0x459c
000000b7   459c
000000b8   1e42       MOVL         *-SP[2], ACC
000000b9   06a6       MOVL         ACC, XAR6
000000ba   7640       LCR          0x000000
000000bb   0000
000000bc   7640       LCR          0x000000
000000bd   0000
000000be   d008       MOVB         XAR0, #0x8
000000bf   8f02       MOVL         XAR4, #0x0249f0
000000c0   49f0
000000c1   1e91       MOVL         *+XAR1[AR0], ACC
000000c2   d00a       MOVB         XAR0, #0xa
000000c3   0200       MOVB         ACC, #0
000000c4   a891       MOVL         *+XAR1[AR0], XAR4
000000c5   d00c       MOVB         XAR0, #0xc
000000c6   8f00       MOVL         XAR4, #0x0003e8
000000c7   03e8
000000c8   a891       MOVL         *+XAR1[AR0], XAR4
000000c9   d00e       MOVB         XAR0, #0xe
000000ca   8f00       MOVL         XAR4, #0x002710
000000cb   2710
000000cc   1e91       MOVL         *+XAR1[AR0], ACC
000000cd   d010       MOVB         XAR0, #0x10
000000ce   a891       MOVL         *+XAR1[AR0], XAR4
000000cf   d012       MOVB         XAR0, #0x12
000000d0   8f01       MOVL         XAR4, #0x0186a0
000000d1   86a0
000000d2   1e91       MOVL         *+XAR1[AR0], ACC
000000d3   d014       MOVB         XAR0, #0x14
000000d4   1e91       MOVL         *+XAR1[AR0], ACC
000000d5   d016       MOVB         XAR0, #0x16
000000d6   a891       MOVL         *+XAR1[AR0], XAR4
000000d7   8aa2       MOVL         XAR4, XAR2
000000d8   d018       MOVB         XAR0, #0x18
000000d9   8f40       MOVL         XAR5, #0x00c350
000000da   c350
000000db   1e91       MOVL         *+XAR1[AR0], ACC
000000dc   dc78       ADDB         XAR4, #120
000000dd   d01a       MOVB         XAR0, #0x1a
000000de   1e91       MOVL         *+XAR1[AR0], ACC
000000df   d008       MOVB         XAR0, #0x8
000000e0   1ec4       MOVL         *+XAR4[0], ACC
000000e1   1ed4       MOVL         *+XAR4[2], ACC
000000e2   a0e4       MOVL         *+XAR4[4], XAR5
000000e3   8f40       MOVL         XAR5, #0x0003e8
000000e4   03e8
000000e5   a0f4       MOVL         *+XAR4[6], XAR5
000000e6   8f40       MOVL         XAR5, #0x004e20
000000e7   4e20
000000e8   a094       MOVL         *+XAR4[AR0], XAR5
000000e9   d00a       MOVB         XAR0, #0xa
000000ea   8f40       MOVL         XAR5, #0x003a98
000000eb   3a98
000000ec   1e94       MOVL         *+XAR4[AR0], ACC
000000ed   d008       MOVB         XAR0, #0x8
000000ee   0284       MOVB         ACC, #132
000000ef   07a2       ADDL         ACC, XAR2
000000f0   8aa9       MOVL         XAR4, ACC
000000f1   0200       MOVB         ACC, #0
000000f2   1ec4       MOVL         *+XAR4[0], ACC
000000f3   1ed4       MOVL         *+XAR4[2], ACC
000000f4   a0e4       MOVL         *+XAR4[4], XAR5
000000f5   a0f4       MOVL         *+XAR4[6], XAR5
000000f6   8f40       MOVL         XAR5, #0x0003e8
000000f7   03e8
000000f8   a094       MOVL         *+XAR4[AR0], XAR5
000000f9   d00a       MOVB         XAR0, #0xa
000000fa   8f41       MOVL         XAR5, #0x0186a0
000000fb   86a0
000000fc   a094       MOVL         *+XAR4[AR0], XAR5
000000fd   d00c       MOVB         XAR0, #0xc
000000fe   8f40       MOVL         XAR5, #0x001388
000000ff   1388
00000100   1e94       MOVL         *+XAR4[AR0], ACC
00000101   0292       MOVB         ACC, #146
00000102   d008       MOVB         XAR0, #0x8
00000103   07a2       ADDL         ACC, XAR2
00000104   8aa9       MOVL         XAR4, ACC
00000105   0200       MOVB         ACC, #0
00000106   1ec4       MOVL         *+XAR4[0], ACC
00000107   1ed4       MOVL         *+XAR4[2], ACC
00000108   a0e4       MOVL         *+XAR4[4], XAR5
00000109   8f40       MOVL         XAR5, #0x002710
0000010a   2710
0000010b   a0f4       MOVL         *+XAR4[6], XAR5
0000010c   8f40       MOVL         XAR5, #0x0088b8
0000010d   88b8
0000010e   a094       MOVL         *+XAR4[AR0], XAR5
0000010f   d00a       MOVB         XAR0, #0xa
00000110   fe82       SUBB         SP, #2
00000111   1e94       MOVL         *+XAR4[AR0], ACC
00000112   86be       MOVL         XAR2, *--SP
00000113   8bbe       MOVL         XAR1, *--SP
00000114   0006       LRETR        
000115:              _USER_setSysParams:
00000115   d00e       MOVB         XAR0, #0xe
00000116   9a00       MOVB         AL, #0x0
00000117   28a8       MOV          AH, #0x41a0
00000118   41a0
00000119   8f40       MOVL         XAR5, #0x001388
0000011a   1388
0000011b   1e94       MOVL         *+XAR4[AR0], ACC
0000011c   d09e       MOVB         XAR0, #0x9e
0000011d   28a8       MOV          AH, #0x4248
0000011e   4248
0000011f   a094       MOVL         *+XAR4[AR0], XAR5
00000120   d00b       MOVB         XAR0, #0xb
00000121   56bf       MOVB         *+XAR4[AR0], #0x03, UNC
00000122   0394
00000123   d00c       MOVB         XAR0, #0xc
00000124   56bf       MOVB         *+XAR4[AR0], #0x03, UNC
00000125   0394
00000126   d026       MOVB         XAR0, #0x26
00000127   56bf       MOVB         *+XAR4[AR0], #0x3c, UNC
00000128   3c94
00000129   d028       MOVB         XAR0, #0x28
0000012a   1e94       MOVL         *+XAR4[AR0], ACC
0000012b   0006       LRETR        
00012c:              _USER_setParams:
0000012c   9a00       MOVB         AL, #0x0
0000012d   28a8       MOV          AH, #0x4348
0000012e   4348
0000012f   d008       MOVB         XAR0, #0x8
00000130   1ee4       MOVL         *+XAR4[4], ACC
00000131   56bf       MOVB         *+XAR4[6], #0x02, UNC
00000132   02f4
00000133   56bf       MOVB         *+XAR4[7], #0x01, UNC
00000134   01fc
00000135   28a8       MOV          AH, #0x42c8
00000136   42c8
00000137   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
00000138   0194
00000139   d009       MOVB         XAR0, #0x9
0000013a   56bf       MOVB         *+XAR4[AR0], #0x0f, UNC
0000013b   0f94
0000013c   d00a       MOVB         XAR0, #0xa
0000013d   56bf       MOVB         *+XAR4[AR0], #0x0f, UNC
0000013e   0f94
0000013f   d010       MOVB         XAR0, #0x10
00000140   8f40       MOVL         XAR5, #0x001388
00000141   1388
00000142   1e94       MOVL         *+XAR4[AR0], ACC
00000143   d012       MOVB         XAR0, #0x12
00000144   28a8       MOV          AH, #0x3ba3
00000145   3ba3
00000146   28a9       MOV          AL, #0xd70a
00000147   d70a
00000148   1e94       MOVL         *+XAR4[AR0], ACC
00000149   d014       MOVB         XAR0, #0x14
0000014a   ff2f       MOV          ACC, #0x7f00 << 15
0000014b   7f00
0000014c   1e94       MOVL         *+XAR4[AR0], ACC
0000014d   d016       MOVB         XAR0, #0x16
0000014e   9a00       MOVB         AL, #0x0
0000014f   28a8       MOV          AH, #0x41a0
00000150   41a0
00000151   1e94       MOVL         *+XAR4[AR0], ACC
00000152   d018       MOVB         XAR0, #0x18
00000153   28a8       MOV          AH, #0x4000
00000154   4000
00000155   1e94       MOVL         *+XAR4[AR0], ACC
00000156   d01a       MOVB         XAR0, #0x1a
00000157   28a8       MOV          AH, #0x40c0
00000158   40c0
00000159   1e94       MOVL         *+XAR4[AR0], ACC
0000015a   d01c       MOVB         XAR0, #0x1c
0000015b   28a8       MOV          AH, #0x42c8
0000015c   42c8
0000015d   1e94       MOVL         *+XAR4[AR0], ACC
0000015e   d01e       MOVB         XAR0, #0x1e
0000015f   1e94       MOVL         *+XAR4[AR0], ACC
00000160   d020       MOVB         XAR0, #0x20
00000161   ff2f       MOV          ACC, #0x7f00 << 15
00000162   7f00
00000163   1e94       MOVL         *+XAR4[AR0], ACC
00000164   d022       MOVB         XAR0, #0x22
00000165   1e94       MOVL         *+XAR4[AR0], ACC
00000166   d02e       MOVB         XAR0, #0x2e
00000167   28a9       MOV          AL, #0x47c9
00000168   47c9
00000169   28a8       MOV          AH, #0x4512
0000016a   4512
0000016b   1e94       MOVL         *+XAR4[AR0], ACC
0000016c   d030       MOVB         XAR0, #0x30
0000016d   ff2f       MOV          ACC, #0x7e00 << 15
0000016e   7e00
0000016f   1e94       MOVL         *+XAR4[AR0], ACC
00000170   d032       MOVB         XAR0, #0x32
00000171   ff2f       MOV          ACC, #0x7f80 << 15
00000172   7f80
00000173   1e94       MOVL         *+XAR4[AR0], ACC
00000174   d024       MOVB         XAR0, #0x24
00000175   ff2f       MOV          ACC, #0x7f00 << 15
00000176   7f00
00000177   1e94       MOVL         *+XAR4[AR0], ACC
00000178   d04e       MOVB         XAR0, #0x4e
00000179   1e94       MOVL         *+XAR4[AR0], ACC
0000017a   d04c       MOVB         XAR0, #0x4c
0000017b   1e94       MOVL         *+XAR4[AR0], ACC
0000017c   d050       MOVB         XAR0, #0x50
0000017d   28a9       MOV          AL, #0xb717
0000017e   b717
0000017f   28a8       MOV          AH, #0x38d1
00000180   38d1
00000181   1e94       MOVL         *+XAR4[AR0], ACC
00000182   d0a0       MOVB         XAR0, #0xa0
00000183   0232       MOVB         ACC, #50
00000184   a094       MOVL         *+XAR4[AR0], XAR5
00000185   d0a2       MOVB         XAR0, #0xa2
00000186   8f40       MOVL         XAR5, #0x00014d
00000187   014d
00000188   1e94       MOVL         *+XAR4[AR0], ACC
00000189   d0a4       MOVB         XAR0, #0xa4
0000018a   28a9       MOV          AL, #0xb717
0000018b   b717
0000018c   28a8       MOV          AH, #0x3951
0000018d   3951
0000018e   a094       MOVL         *+XAR4[AR0], XAR5
0000018f   d0a6       MOVB         XAR0, #0xa6
00000190   1e94       MOVL         *+XAR4[AR0], ACC
00000191   0006       LRETR        
000192:              _USER_setMotorParams:
00000192   d0ab       MOVB         XAR0, #0xab
00000193   28ac       MOV          T, #0x0016
00000194   0016
00000195   8f40       MOVL         XAR5, #0x000000
00000196   0000
00000197   3094       MPYXU        ACC, T, *+XAR4[AR0]
00000198   c5a5       MOVL         XAR7, XAR5
00000199   d034       MOVB         XAR0, #0x34
0000019a   c4a5       MOVL         XAR6, XAR5
0000019b   5601       ADDL         XAR7, ACC
0000019c   00a7
0000019d   92c7       MOV          AL, *+XAR7[0]
0000019e   9694       MOV          *+XAR4[AR0], AL
0000019f   d0ab       MOVB         XAR0, #0xab
000001a0   3094       MPYXU        ACC, T, *+XAR4[AR0]
000001a1   d035       MOVB         XAR0, #0x35
000001a2   5601       ADDL         XAR6, ACC
000001a3   00a6
000001a4   92ce       MOV          AL, *+XAR6[1]
000001a5   9694       MOV          *+XAR4[AR0], AL
000001a6   c4a5       MOVL         XAR6, XAR5
000001a7   d0ab       MOVB         XAR0, #0xab
000001a8   3094       MPYXU        ACC, T, *+XAR4[AR0]
000001a9   d00a       MOVB         XAR0, #0xa
000001aa   5601       ADDL         XAR6, ACC
000001ab   00a6
000001ac   0696       MOVL         ACC, *+XAR6[AR0]
000001ad   d036       MOVB         XAR0, #0x36
000001ae   c4a5       MOVL         XAR6, XAR5
000001af   1e94       MOVL         *+XAR4[AR0], ACC
000001b0   d0ab       MOVB         XAR0, #0xab
000001b1   3094       MPYXU        ACC, T, *+XAR4[AR0]
000001b2   d038       MOVB         XAR0, #0x38
000001b3   5601       ADDL         XAR6, ACC
000001b4   00a6
000001b5   06d6       MOVL         ACC, *+XAR6[2]
000001b6   c4a5       MOVL         XAR6, XAR5
000001b7   1e94       MOVL         *+XAR4[AR0], ACC
000001b8   d0ab       MOVB         XAR0, #0xab
000001b9   3094       MPYXU        ACC, T, *+XAR4[AR0]
000001ba   d03a       MOVB         XAR0, #0x3a
000001bb   5601       ADDL         XAR6, ACC
000001bc   00a6
000001bd   06e6       MOVL         ACC, *+XAR6[4]
000001be   c4a5       MOVL         XAR6, XAR5
000001bf   1e94       MOVL         *+XAR4[AR0], ACC
000001c0   d0ab       MOVB         XAR0, #0xab
000001c1   3094       MPYXU        ACC, T, *+XAR4[AR0]
000001c2   d03c       MOVB         XAR0, #0x3c
000001c3   5601       ADDL         XAR6, ACC
000001c4   00a6
000001c5   06f6       MOVL         ACC, *+XAR6[6]
000001c6   c4a5       MOVL         XAR6, XAR5
000001c7   1e94       MOVL         *+XAR4[AR0], ACC
000001c8   d0ab       MOVB         XAR0, #0xab
000001c9   3094       MPYXU        ACC, T, *+XAR4[AR0]
000001ca   d008       MOVB         XAR0, #0x8
000001cb   5601       ADDL         XAR6, ACC
000001cc   00a6
000001cd   0696       MOVL         ACC, *+XAR6[AR0]
000001ce   d03e       MOVB         XAR0, #0x3e
000001cf   c4a5       MOVL         XAR6, XAR5
000001d0   1e94       MOVL         *+XAR4[AR0], ACC
000001d1   d0ab       MOVB         XAR0, #0xab
000001d2   3094       MPYXU        ACC, T, *+XAR4[AR0]
000001d3   d00c       MOVB         XAR0, #0xc
000001d4   5601       ADDL         XAR6, ACC
000001d5   00a6
000001d6   0696       MOVL         ACC, *+XAR6[AR0]
000001d7   d04a       MOVB         XAR0, #0x4a
000001d8   c4a5       MOVL         XAR6, XAR5
000001d9   1e94       MOVL         *+XAR4[AR0], ACC
000001da   d0ab       MOVB         XAR0, #0xab
000001db   3094       MPYXU        ACC, T, *+XAR4[AR0]
000001dc   d00e       MOVB         XAR0, #0xe
000001dd   5601       ADDL         XAR6, ACC
000001de   00a6
000001df   0696       MOVL         ACC, *+XAR6[AR0]
000001e0   d042       MOVB         XAR0, #0x42
000001e1   c4a5       MOVL         XAR6, XAR5
000001e2   1e94       MOVL         *+XAR4[AR0], ACC
000001e3   d0ab       MOVB         XAR0, #0xab
000001e4   3094       MPYXU        ACC, T, *+XAR4[AR0]
000001e5   d010       MOVB         XAR0, #0x10
000001e6   5601       ADDL         XAR6, ACC
000001e7   00a6
000001e8   0696       MOVL         ACC, *+XAR6[AR0]
000001e9   d044       MOVB         XAR0, #0x44
000001ea   c4a5       MOVL         XAR6, XAR5
000001eb   1e94       MOVL         *+XAR4[AR0], ACC
000001ec   d0ab       MOVB         XAR0, #0xab
000001ed   3094       MPYXU        ACC, T, *+XAR4[AR0]
000001ee   d012       MOVB         XAR0, #0x12
000001ef   5601       ADDL         XAR6, ACC
000001f0   00a6
000001f1   0696       MOVL         ACC, *+XAR6[AR0]
000001f2   d040       MOVB         XAR0, #0x40
000001f3   1e94       MOVL         *+XAR4[AR0], ACC
000001f4   d0ab       MOVB         XAR0, #0xab
000001f5   3094       MPYXU        ACC, T, *+XAR4[AR0]
000001f6   d014       MOVB         XAR0, #0x14
000001f7   5601       ADDL         XAR5, ACC
000001f8   00a5
000001f9   0695       MOVL         ACC, *+XAR5[AR0]
000001fa   d052       MOVB         XAR0, #0x52
000001fb   1e94       MOVL         *+XAR4[AR0], ACC
000001fc   0006       LRETR        
0001fd:              _USER_setMotorIDs:
000001fd   d0ab       MOVB         XAR0, #0xab
000001fe   9694       MOV          *+XAR4[AR0], AL
000001ff   0006       LRETR        
000200:              _USER_setErrorCode:
00000200   d0aa       MOVB         XAR0, #0xaa
00000201   9694       MOV          *+XAR4[AR0], AL
00000202   0006       LRETR        
000203:              _USER_setBoardParams:
00000203   b2bd       MOVL         *SP++, XAR1
00000204   aabd       MOVL         *SP++, XAR2
00000205   fe02       ADDB         SP, #2
00000206   d0ab       MOVB         XAR0, #0xab
00000207   86a4       MOVL         XAR2, XAR4
00000208   8d40       MOVL         XAR1, #0x000000
00000209   0000
0000020a   8aa1       MOVL         XAR4, XAR1
0000020b   0e92       MOVU         ACC, *+XAR2[AR0]
0000020c   d0ab       MOVB         XAR0, #0xab
0000020d   ff32       LSL          ACC, 3
0000020e   5601       ADDL         XAR4, ACC
0000020f   00a4
00000210   06c4       MOVL         ACC, *+XAR4[0]
00000211   8aa1       MOVL         XAR4, XAR1
00000212   1ec2       MOVL         *+XAR2[0], ACC
00000213   0e92       MOVU         ACC, *+XAR2[AR0]
00000214   ff32       LSL          ACC, 3
00000215   d040       MOVB         XAR0, #0x40
00000216   5601       ADDL         XAR4, ACC
00000217   00a4
00000218   06d4       MOVL         ACC, *+XAR4[2]
00000219   1ed2       MOVL         *+XAR2[2], ACC
0000021a   9a00       MOVB         AL, #0x0
0000021b   28a8       MOV          AH, #0xbf00
0000021c   bf00
0000021d   1e42       MOVL         *-SP[2], ACC
0000021e   0692       MOVL         ACC, *+XAR2[AR0]
0000021f   7640       LCR          0x000000
00000220   0000
00000221   d0a8       MOVB         XAR0, #0xa8
00000222   8aa1       MOVL         XAR4, XAR1
00000223   1e92       MOVL         *+XAR2[AR0], ACC
00000224   d0ab       MOVB         XAR0, #0xab
00000225   06d2       MOVL         ACC, *+XAR2[2]
00000226   1e42       MOVL         *-SP[2], ACC
00000227   0e92       MOVU         ACC, *+XAR2[AR0]
00000228   ff32       LSL          ACC, 3
00000229   5601       ADDL         XAR4, ACC
0000022a   00a4
0000022b   06f4       MOVL         ACC, *+XAR4[6]
0000022c   7640       LCR          0x000000
0000022d   0000
0000022e   d02a       MOVB         XAR0, #0x2a
0000022f   1e92       MOVL         *+XAR2[AR0], ACC
00000230   d0ab       MOVB         XAR0, #0xab
00000231   06c2       MOVL         ACC, *+XAR2[0]
00000232   1e42       MOVL         *-SP[2], ACC
00000233   0e92       MOVU         ACC, *+XAR2[AR0]
00000234   ff32       LSL          ACC, 3
00000235   5601       ADDL         XAR1, ACC
00000236   00a1
00000237   06e1       MOVL         ACC, *+XAR1[4]
00000238   7640       LCR          0x000000
00000239   0000
0000023a   d02c       MOVB         XAR0, #0x2c
0000023b   1e92       MOVL         *+XAR2[AR0], ACC
0000023c   28a9       MOV          AL, #0x999a
0000023d   999a
0000023e   28a8       MOV          AH, #0x3e99
0000023f   3e99
00000240   d042       MOVB         XAR0, #0x42
00000241   1e42       MOVL         *-SP[2], ACC
00000242   0692       MOVL         ACC, *+XAR2[AR0]
00000243   7640       LCR          0x000000
00000244   0000
00000245   c4c2       MOVL         XAR6, *+XAR2[0]
00000246   c242       MOVL         *-SP[2], XAR6
00000247   7640       LCR          0x000000
00000248   0000
00000249   1ea6       MOVL         XAR6, ACC
0000024a   28a9       MOV          AL, #0x8000
0000024b   8000
0000024c   28a8       MOV          AH, #0x43a6
0000024d   43a6
0000024e   1e42       MOVL         *-SP[2], ACC
0000024f   06a6       MOVL         ACC, XAR6
00000250   7640       LCR          0x000000
00000251   0000
00000252   d048       MOVB         XAR0, #0x48
00000253   1e92       MOVL         *+XAR2[AR0], ACC
00000254   d042       MOVB         XAR0, #0x42
00000255   06c2       MOVL         ACC, *+XAR2[0]
00000256   1e42       MOVL         *-SP[2], ACC
00000257   0692       MOVL         ACC, *+XAR2[AR0]
00000258   7640       LCR          0x000000
00000259   0000
0000025a   1ea6       MOVL         XAR6, ACC
0000025b   28a9       MOV          AL, #0x8000
0000025c   8000
0000025d   28a8       MOV          AH, #0x43a6
0000025e   43a6
0000025f   1e42       MOVL         *-SP[2], ACC
00000260   06a6       MOVL         ACC, XAR6
00000261   7640       LCR          0x000000
00000262   0000
00000263   d046       MOVB         XAR0, #0x46
00000264   1e92       MOVL         *+XAR2[AR0], ACC
00000265   fe82       SUBB         SP, #2
00000266   86be       MOVL         XAR2, *--SP
00000267   8bbe       MOVL         XAR1, *--SP
00000268   0006       LRETR        
000269:              _USER_getErrorCode:
00000269   d0aa       MOVB         XAR0, #0xaa
0000026a   9294       MOV          AL, *+XAR4[AR0]
0000026b   0006       LRETR        
00026c:              _USER_computeTorque_lbin:
0000026c   b2bd       MOVL         *SP++, XAR1
0000026d   aabd       MOVL         *SP++, XAR2
0000026e   a2bd       MOVL         *SP++, XAR3
0000026f   fe08       ADDB         SP, #8
00000270   d018       MOVB         XAR0, #0x18
00000271   8ba4       MOVL         XAR1, XAR4
00000272   1e42       MOVL         *-SP[2], ACC
00000273   0652       MOVL         ACC, *-SP[18]
00000274   1e44       MOVL         *-SP[4], ACC
00000275   8a91       MOVL         XAR4, *+XAR1[AR0]
00000276   7640       LCR          0x000000
00000277   0000
00000278   d020       MOVB         XAR0, #0x20
00000279   1e46       MOVL         *-SP[6], ACC
0000027a   8a91       MOVL         XAR4, *+XAR1[AR0]
0000027b   d00a       MOVB         XAR0, #0xa
0000027c   8294       MOVL         XAR3, *+XAR4[AR0]
0000027d   d032       MOVB         XAR0, #0x32
0000027e   8a91       MOVL         XAR4, *+XAR1[AR0]
0000027f   d00a       MOVB         XAR0, #0xa
00000280   8694       MOVL         XAR2, *+XAR4[AR0]
00000281   d018       MOVB         XAR0, #0x18
00000282   8a91       MOVL         XAR4, *+XAR1[AR0]
00000283   7640       LCR          0x000000
00000284   0000
00000285   d018       MOVB         XAR0, #0x18
00000286   1e48       MOVL         *-SP[8], ACC
00000287   8a91       MOVL         XAR4, *+XAR1[AR0]
00000288   7640       LCR          0x000000
00000289   0000
0000028a   c448       MOVL         XAR6, *-SP[8]
0000028b   3b01       SETC         SXM
0000028c   8746       MOVL         XT, *-SP[6]
0000028d   03a6       SUBL         ACC, XAR6
0000028e   5605       IMPYL        P, XT, XAR2
0000028f   00a2
00000290   ff45       SFR          ACC, 6
00000291   8746       MOVL         XT, *-SP[6]
00000292   c442       MOVL         XAR6, *-SP[2]
00000293   1ea7       MOVL         XAR7, ACC
00000294   5663       QMPYL        ACC, XT, XAR2
00000295   00a2
00000296   56a7       LSL64        ACC:P, 8
00000297   1eac       MOVL         XT, ACC
00000298   0642       MOVL         ACC, *-SP[2]
00000299   5605       IMPYL        P, XT, XAR6
0000029a   00a6
0000029b   5663       QMPYL        ACC, XT, ACC
0000029c   00a9
0000029d   87a7       MOVL         XT, XAR7
0000029e   56a7       LSL64        ACC:P, 8
0000029f   c544       MOVL         XAR7, *-SP[4]
000002a0   1ea6       MOVL         XAR6, ACC
000002a1   5605       IMPYL        P, XT, XAR3
000002a2   00a3
000002a3   5663       QMPYL        ACC, XT, XAR3
000002a4   00a3
000002a5   56a7       LSL64        ACC:P, 8
000002a6   1eac       MOVL         XT, ACC
000002a7   5605       IMPYL        P, XT, XAR2
000002a8   00a2
000002a9   5663       QMPYL        ACC, XT, XAR2
000002aa   00a2
000002ab   56a7       LSL64        ACC:P, 8
000002ac   1eac       MOVL         XT, ACC
000002ad   0644       MOVL         ACC, *-SP[4]
000002ae   5605       IMPYL        P, XT, XAR7
000002af   00a7
000002b0   5663       QMPYL        ACC, XT, ACC
000002b1   00a9
000002b2   56a7       LSL64        ACC:P, 8
000002b3   07a6       ADDL         ACC, XAR6
000002b4   1eac       MOVL         XT, ACC
000002b5   fe88       SUBB         SP, #8
000002b6   28a9       MOV          AL, #0xca80
000002b7   ca80
000002b8   28a8       MOV          AH, #0x08d9
000002b9   08d9
000002ba   5605       IMPYL        P, XT, ACC
000002bb   00a9
000002bc   5663       QMPYL        ACC, XT, ACC
000002bd   00a9
000002be   82be       MOVL         XAR3, *--SP
000002bf   56a7       LSL64        ACC:P, 8
000002c0   86be       MOVL         XAR2, *--SP
000002c1   8bbe       MOVL         XAR1, *--SP
000002c2   0006       LRETR        
0002c3:              _USER_computeTorque_Nm:
000002c3   b2bd       MOVL         *SP++, XAR1
000002c4   aabd       MOVL         *SP++, XAR2
000002c5   a2bd       MOVL         *SP++, XAR3
000002c6   fe08       ADDB         SP, #8
000002c7   d018       MOVB         XAR0, #0x18
000002c8   8ba4       MOVL         XAR1, XAR4
000002c9   1e42       MOVL         *-SP[2], ACC
000002ca   0652       MOVL         ACC, *-SP[18]
000002cb   1e44       MOVL         *-SP[4], ACC
000002cc   8a91       MOVL         XAR4, *+XAR1[AR0]
000002cd   7640       LCR          0x000000
000002ce   0000
000002cf   d020       MOVB         XAR0, #0x20
000002d0   1e46       MOVL         *-SP[6], ACC
000002d1   8a91       MOVL         XAR4, *+XAR1[AR0]
000002d2   d00a       MOVB         XAR0, #0xa
000002d3   8294       MOVL         XAR3, *+XAR4[AR0]
000002d4   d032       MOVB         XAR0, #0x32
000002d5   8a91       MOVL         XAR4, *+XAR1[AR0]
000002d6   d00a       MOVB         XAR0, #0xa
000002d7   8694       MOVL         XAR2, *+XAR4[AR0]
000002d8   d018       MOVB         XAR0, #0x18
000002d9   8a91       MOVL         XAR4, *+XAR1[AR0]
000002da   7640       LCR          0x000000
000002db   0000
000002dc   d018       MOVB         XAR0, #0x18
000002dd   1e48       MOVL         *-SP[8], ACC
000002de   8a91       MOVL         XAR4, *+XAR1[AR0]
000002df   7640       LCR          0x000000
000002e0   0000
000002e1   c448       MOVL         XAR6, *-SP[8]
000002e2   3b01       SETC         SXM
000002e3   8746       MOVL         XT, *-SP[6]
000002e4   03a6       SUBL         ACC, XAR6
000002e5   5605       IMPYL        P, XT, XAR2
000002e6   00a2
000002e7   ff45       SFR          ACC, 6
000002e8   8746       MOVL         XT, *-SP[6]
000002e9   c442       MOVL         XAR6, *-SP[2]
000002ea   1ea7       MOVL         XAR7, ACC
000002eb   5663       QMPYL        ACC, XT, XAR2
000002ec   00a2
000002ed   56a7       LSL64        ACC:P, 8
000002ee   1eac       MOVL         XT, ACC
000002ef   0642       MOVL         ACC, *-SP[2]
000002f0   5605       IMPYL        P, XT, XAR6
000002f1   00a6
000002f2   5663       QMPYL        ACC, XT, ACC
000002f3   00a9
000002f4   87a7       MOVL         XT, XAR7
000002f5   56a7       LSL64        ACC:P, 8
000002f6   c544       MOVL         XAR7, *-SP[4]
000002f7   1ea6       MOVL         XAR6, ACC
000002f8   5605       IMPYL        P, XT, XAR3
000002f9   00a3
000002fa   5663       QMPYL        ACC, XT, XAR3
000002fb   00a3
000002fc   56a7       LSL64        ACC:P, 8
000002fd   fe88       SUBB         SP, #8
000002fe   1eac       MOVL         XT, ACC
000002ff   5605       IMPYL        P, XT, XAR2
00000300   00a2
00000301   5663       QMPYL        ACC, XT, XAR2
00000302   00a2
00000303   82be       MOVL         XAR3, *--SP
00000304   56a7       LSL64        ACC:P, 8
00000305   1eac       MOVL         XT, ACC
00000306   86be       MOVL         XAR2, *--SP
00000307   5605       IMPYL        P, XT, XAR7
00000308   00a7
00000309   5663       QMPYL        ACC, XT, XAR7
0000030a   00a7
0000030b   56a7       LSL64        ACC:P, 8
0000030c   8bbe       MOVL         XAR1, *--SP
0000030d   07a6       ADDL         ACC, XAR6
0000030e   0006       LRETR        
00030f:              _USER_computeTorque_Ls_Id_Iq_pu_to_Nm_sf:
0000030f   b2bd       MOVL         *SP++, XAR1
00000310   aabd       MOVL         *SP++, XAR2
00000311   a2bd       MOVL         *SP++, XAR3
00000312   fe0e       ADDB         SP, #14
00000313   82a4       MOVL         XAR3, XAR4
00000314   8bc3       MOVL         XAR1, *+XAR3[0]
00000315   28a9       MOV          AL, #0x47c9
00000316   47c9
00000317   28a8       MOV          AH, #0x4512
00000318   4512
00000319   1e42       MOVL         *-SP[2], ACC
0000031a   b2a9       MOVL         ACC, XAR1
0000031b   7640       LCR          0x000000
0000031c   0000
0000031d   1e42       MOVL         *-SP[2], ACC
0000031e   06d3       MOVL         ACC, *+XAR3[2]
0000031f   7640       LCR          0x000000
00000320   0000
00000321   1ea6       MOVL         XAR6, ACC
00000322   1e4e       MOVL         *-SP[14], ACC
00000323   28a9       MOV          AL, #0x3333
00000324   3333
00000325   28a8       MOV          AH, #0x3f33
00000326   3f33
00000327   1e42       MOVL         *-SP[2], ACC
00000328   06a6       MOVL         ACC, XAR6
00000329   7640       LCR          0x000000
0000032a   0000
0000032b   d03c       MOVB         XAR0, #0x3c
0000032c   1e42       MOVL         *-SP[2], ACC
0000032d   0693       MOVL         ACC, *+XAR3[AR0]
0000032e   7640       LCR          0x000000
0000032f   0000
00000330   7640       LCR          0x000000
00000331   0000
00000332   86a9       MOVL         XAR2, ACC
00000333   9a00       MOVB         AL, #0x0
00000334   28a8       MOV          AH, #0x4000
00000335   4000
00000336   7640       LCR          0x000000
00000337   0000
00000338   1e42       MOVL         *-SP[2], ACC
00000339   aaa9       MOVL         ACC, XAR2
0000033a   7640       LCR          0x000000
0000033b   0000
0000033c   5cad       MOVZ         AR4, SP
0000033d   dc84       SUBB         XAR4, #4
0000033e   7640       LCR          0x000000
0000033f   0000
00000340   1ea6       MOVL         XAR6, ACC
00000341   9a00       MOVB         AL, #0x0
00000342   9b00       MOVB         AH, #0x0
00000343   1e42       MOVL         *-SP[2], ACC
00000344   06a6       MOVL         ACC, XAR6
00000345   7640       LCR          0x000000
00000346   0000
00000347   5200       CMPB         AL, #0x0
00000348   6203       SB           3, GT
00000349   8644       MOVL         XAR2, *-SP[4]
0000034a   6f08       SB           8, UNC
00034b:              $C$L3:
0000034b   ff2f       MOV          ACC, #0x7f00 << 15
0000034c   7f00
0000034d   1e42       MOVL         *-SP[2], ACC
0000034e   0644       MOVL         ACC, *-SP[4]
0000034f   7640       LCR          0x000000
00000350   0000
00000351   86a9       MOVL         XAR2, ACC
000352:              $C$L4:
00000352   b242       MOVL         *-SP[2], XAR1
00000353   064e       MOVL         ACC, *-SP[14]
00000354   7640       LCR          0x000000
00000355   0000
00000356   b242       MOVL         *-SP[2], XAR1
00000357   7640       LCR          0x000000
00000358   0000
00000359   d035       MOVB         XAR0, #0x35
0000035a   8ba9       MOVL         XAR1, ACC
0000035b   9293       MOV          AL, *+XAR3[AR0]
0000035c   7640       LCR          0x000000
0000035d   0000
0000035e   1e42       MOVL         *-SP[2], ACC
0000035f   b2a9       MOVL         ACC, XAR1
00000360   7640       LCR          0x000000
00000361   0000
00000362   1ea6       MOVL         XAR6, ACC
00000363   ff2f       MOV          ACC, #0x7f80 << 15
00000364   7f80
00000365   1e42       MOVL         *-SP[2], ACC
00000366   06a6       MOVL         ACC, XAR6
00000367   7640       LCR          0x000000
00000368   0000
00000369   aa42       MOVL         *-SP[2], XAR2
0000036a   8ba9       MOVL         XAR1, ACC
0000036b   9a00       MOVB         AL, #0x0
0000036c   28a8       MOV          AH, #0x4000
0000036d   4000
0000036e   7640       LCR          0x000000
0000036f   0000
00000370   1e42       MOVL         *-SP[2], ACC
00000371   b2a9       MOVL         ACC, XAR1
00000372   7640       LCR          0x000000
00000373   0000
00000374   88ad       MOVZ         AR6, SP
00000375   de8c       SUBB         XAR6, #12
00000376   7640       LCR          0x000000
00000377   0000
00000378   5cad       MOVZ         AR4, SP
00000379   88ad       MOVZ         AR6, SP
0000037a   8f40       MOVL         XAR5, #0x000004
0000037b   0004
0000037c   dc8c       SUBB         XAR4, #12
0000037d   de88       SUBB         XAR6, #8
0000037e   7640       LCR          0x000000
0000037f   0000
00000380   5cad       MOVZ         AR4, SP
00000381   dc88       SUBB         XAR4, #8
00000382   7640       LCR          0x000000
00000383   0000
00000384   fe8e       SUBB         SP, #14
00000385   82be       MOVL         XAR3, *--SP
00000386   86be       MOVL         XAR2, *--SP
00000387   8bbe       MOVL         XAR1, *--SP
00000388   0006       LRETR        
000389:              _USER_computeTorque_Flux_Iq_pu_to_Nm_sf:
00000389   b2bd       MOVL         *SP++, XAR1
0000038a   aabd       MOVL         *SP++, XAR2
0000038b   a2bd       MOVL         *SP++, XAR3
0000038c   fe0c       ADDB         SP, #12
0000038d   d034       MOVB         XAR0, #0x34
0000038e   82a4       MOVL         XAR3, XAR4
0000038f   9293       MOV          AL, *+XAR3[AR0]
00000390   86c3       MOVL         XAR2, *+XAR3[0]
00000391   ec06       SBF          6, EQ
00000392   28a9       MOV          AL, #0x3333
00000393   3333
00000394   28a8       MOV          AH, #0x3f33
00000395   3f33
00000396   6f05       SB           5, UNC
000397:              $C$L5:
00000397   28a9       MOV          AL, #0xcccd
00000398   cccd
00000399   28a8       MOV          AH, #0x3d4c
0000039a   3d4c
00039b:              $C$L6:
0000039b   1e42       MOVL         *-SP[2], ACC
0000039c   d036       MOVB         XAR0, #0x36
0000039d   0693       MOVL         ACC, *+XAR3[AR0]
0000039e   7640       LCR          0x000000
0000039f   0000
000003a0   1e42       MOVL         *-SP[2], ACC
000003a1   28a9       MOV          AL, #0x51ec
000003a2   51ec
000003a3   28a8       MOV          AH, #0x3db8
000003a4   3db8
000003a5   7640       LCR          0x000000
000003a6   0000
000003a7   7640       LCR          0x000000
000003a8   0000
000003a9   8ba9       MOVL         XAR1, ACC
000003aa   9a00       MOVB         AL, #0x0
000003ab   28a8       MOV          AH, #0x4000
000003ac   4000
000003ad   7640       LCR          0x000000
000003ae   0000
000003af   1e42       MOVL         *-SP[2], ACC
000003b0   b2a9       MOVL         ACC, XAR1
000003b1   7640       LCR          0x000000
000003b2   0000
000003b3   5cad       MOVZ         AR4, SP
000003b4   dc84       SUBB         XAR4, #4
000003b5   7640       LCR          0x000000
000003b6   0000
000003b7   1ea6       MOVL         XAR6, ACC
000003b8   9a00       MOVB         AL, #0x0
000003b9   9b00       MOVB         AH, #0x0
000003ba   1e42       MOVL         *-SP[2], ACC
000003bb   06a6       MOVL         ACC, XAR6
000003bc   7640       LCR          0x000000
000003bd   0000
000003be   5200       CMPB         AL, #0x0
000003bf   6203       SB           3, GT
000003c0   8b44       MOVL         XAR1, *-SP[4]
000003c1   6f08       SB           8, UNC
0003c2:              $C$L7:
000003c2   ff2f       MOV          ACC, #0x7f00 << 15
000003c3   7f00
000003c4   1e42       MOVL         *-SP[2], ACC
000003c5   0644       MOVL         ACC, *-SP[4]
000003c6   7640       LCR          0x000000
000003c7   0000
000003c8   8ba9       MOVL         XAR1, ACC
0003c9:              $C$L8:
000003c9   28a9       MOV          AL, #0xaefb
000003ca   aefb
000003cb   28a8       MOV          AH, #0x3c6a
000003cc   3c6a
000003cd   1e42       MOVL         *-SP[2], ACC
000003ce   aaa9       MOVL         ACC, XAR2
000003cf   7640       LCR          0x000000
000003d0   0000
000003d1   d035       MOVB         XAR0, #0x35
000003d2   86a9       MOVL         XAR2, ACC
000003d3   9293       MOV          AL, *+XAR3[AR0]
000003d4   7640       LCR          0x000000
000003d5   0000
000003d6   1e42       MOVL         *-SP[2], ACC
000003d7   aaa9       MOVL         ACC, XAR2
000003d8   7640       LCR          0x000000
000003d9   0000
000003da   1ea6       MOVL         XAR6, ACC
000003db   ff2f       MOV          ACC, #0x7f80 << 15
000003dc   7f80
000003dd   1e42       MOVL         *-SP[2], ACC
000003de   06a6       MOVL         ACC, XAR6
000003df   7640       LCR          0x000000
000003e0   0000
000003e1   86a9       MOVL         XAR2, ACC
000003e2   b2a9       MOVL         ACC, XAR1
000003e3   7640       LCR          0x000000
000003e4   0000
000003e5   1e42       MOVL         *-SP[2], ACC
000003e6   9a00       MOVB         AL, #0x0
000003e7   28a8       MOV          AH, #0x4000
000003e8   4000
000003e9   7640       LCR          0x000000
000003ea   0000
000003eb   1e42       MOVL         *-SP[2], ACC
000003ec   aaa9       MOVL         ACC, XAR2
000003ed   7640       LCR          0x000000
000003ee   0000
000003ef   88ad       MOVZ         AR6, SP
000003f0   de8c       SUBB         XAR6, #12
000003f1   7640       LCR          0x000000
000003f2   0000
000003f3   5cad       MOVZ         AR4, SP
000003f4   88ad       MOVZ         AR6, SP
000003f5   8f40       MOVL         XAR5, #0x000004
000003f6   0004
000003f7   dc8c       SUBB         XAR4, #12
000003f8   de88       SUBB         XAR6, #8
000003f9   7640       LCR          0x000000
000003fa   0000
000003fb   5cad       MOVZ         AR4, SP
000003fc   dc88       SUBB         XAR4, #8
000003fd   7640       LCR          0x000000
000003fe   0000
000003ff   fe8c       SUBB         SP, #12
00000400   82be       MOVL         XAR3, *--SP
00000401   86be       MOVL         XAR2, *--SP
00000402   8bbe       MOVL         XAR1, *--SP
00000403   0006       LRETR        
000404:              _USER_computeFlux_pu_to_Wb_sf:
00000404   b2bd       MOVL         *SP++, XAR1
00000405   fe0c       ADDB         SP, #12
00000406   d034       MOVB         XAR0, #0x34
00000407   9294       MOV          AL, *+XAR4[AR0]
00000408   ec06       SBF          6, EQ
00000409   28a9       MOV          AL, #0x3333
0000040a   3333
0000040b   28a8       MOV          AH, #0x3f33
0000040c   3f33
0000040d   6f05       SB           5, UNC
00040e:              $C$L9:
0000040e   28a9       MOV          AL, #0xcccd
0000040f   cccd
00000410   28a8       MOV          AH, #0x3d4c
00000411   3d4c
000412:              $C$L10:
00000412   1e42       MOVL         *-SP[2], ACC
00000413   d036       MOVB         XAR0, #0x36
00000414   0694       MOVL         ACC, *+XAR4[AR0]
00000415   7640       LCR          0x000000
00000416   0000
00000417   1e42       MOVL         *-SP[2], ACC
00000418   28a9       MOV          AL, #0x51ec
00000419   51ec
0000041a   28a8       MOV          AH, #0x3db8
0000041b   3db8
0000041c   7640       LCR          0x000000
0000041d   0000
0000041e   7640       LCR          0x000000
0000041f   0000
00000420   8ba9       MOVL         XAR1, ACC
00000421   9a00       MOVB         AL, #0x0
00000422   28a8       MOV          AH, #0x4000
00000423   4000
00000424   7640       LCR          0x000000
00000425   0000
00000426   1e42       MOVL         *-SP[2], ACC
00000427   b2a9       MOVL         ACC, XAR1
00000428   7640       LCR          0x000000
00000429   0000
0000042a   5cad       MOVZ         AR4, SP
0000042b   dc84       SUBB         XAR4, #4
0000042c   7640       LCR          0x000000
0000042d   0000
0000042e   1ea6       MOVL         XAR6, ACC
0000042f   9a00       MOVB         AL, #0x0
00000430   9b00       MOVB         AH, #0x0
00000431   1e42       MOVL         *-SP[2], ACC
00000432   06a6       MOVL         ACC, XAR6
00000433   7640       LCR          0x000000
00000434   0000
00000435   5200       CMPB         AL, #0x0
00000436   6203       SB           3, GT
00000437   0644       MOVL         ACC, *-SP[4]
00000438   6f07       SB           7, UNC
000439:              $C$L11:
00000439   ff2f       MOV          ACC, #0x7f00 << 15
0000043a   7f00
0000043b   1e42       MOVL         *-SP[2], ACC
0000043c   0644       MOVL         ACC, *-SP[4]
0000043d   7640       LCR          0x000000
0000043e   0000
00043f:              $C$L12:
0000043f   7640       LCR          0x000000
00000440   0000
00000441   1e42       MOVL         *-SP[2], ACC
00000442   9a00       MOVB         AL, #0x0
00000443   28a8       MOV          AH, #0x4000
00000444   4000
00000445   7640       LCR          0x000000
00000446   0000
00000447   1ea6       MOVL         XAR6, ACC
00000448   28a9       MOV          AL, #0xaefb
00000449   aefb
0000044a   28a8       MOV          AH, #0x3c6a
0000044b   3c6a
0000044c   1e42       MOVL         *-SP[2], ACC
0000044d   06a6       MOVL         ACC, XAR6
0000044e   7640       LCR          0x000000
0000044f   0000
00000450   88ad       MOVZ         AR6, SP
00000451   de8c       SUBB         XAR6, #12
00000452   7640       LCR          0x000000
00000453   0000
00000454   5cad       MOVZ         AR4, SP
00000455   88ad       MOVZ         AR6, SP
00000456   8f40       MOVL         XAR5, #0x000004
00000457   0004
00000458   dc8c       SUBB         XAR4, #12
00000459   de88       SUBB         XAR6, #8
0000045a   7640       LCR          0x000000
0000045b   0000
0000045c   5cad       MOVZ         AR4, SP
0000045d   dc88       SUBB         XAR4, #8
0000045e   7640       LCR          0x000000
0000045f   0000
00000460   fe8c       SUBB         SP, #12
00000461   8bbe       MOVL         XAR1, *--SP
00000462   0006       LRETR        
000463:              _USER_computeFlux_pu_to_VpHz_sf:
00000463   b2bd       MOVL         *SP++, XAR1
00000464   fe0c       ADDB         SP, #12
00000465   d034       MOVB         XAR0, #0x34
00000466   9294       MOV          AL, *+XAR4[AR0]
00000467   ec06       SBF          6, EQ
00000468   28a9       MOV          AL, #0x3333
00000469   3333
0000046a   28a8       MOV          AH, #0x3f33
0000046b   3f33
0000046c   6f05       SB           5, UNC
00046d:              $C$L13:
0000046d   28a9       MOV          AL, #0xcccd
0000046e   cccd
0000046f   28a8       MOV          AH, #0x3d4c
00000470   3d4c
000471:              $C$L14:
00000471   1e42       MOVL         *-SP[2], ACC
00000472   d036       MOVB         XAR0, #0x36
00000473   0694       MOVL         ACC, *+XAR4[AR0]
00000474   7640       LCR          0x000000
00000475   0000
00000476   1e42       MOVL         *-SP[2], ACC
00000477   28a9       MOV          AL, #0x51ec
00000478   51ec
00000479   28a8       MOV          AH, #0x3db8
0000047a   3db8
0000047b   7640       LCR          0x000000
0000047c   0000
0000047d   7640       LCR          0x000000
0000047e   0000
0000047f   8ba9       MOVL         XAR1, ACC
00000480   9a00       MOVB         AL, #0x0
00000481   28a8       MOV          AH, #0x4000
00000482   4000
00000483   7640       LCR          0x000000
00000484   0000
00000485   1e42       MOVL         *-SP[2], ACC
00000486   b2a9       MOVL         ACC, XAR1
00000487   7640       LCR          0x000000
00000488   0000
00000489   5cad       MOVZ         AR4, SP
0000048a   dc84       SUBB         XAR4, #4
0000048b   7640       LCR          0x000000
0000048c   0000
0000048d   1ea6       MOVL         XAR6, ACC
0000048e   9a00       MOVB         AL, #0x0
0000048f   9b00       MOVB         AH, #0x0
00000490   1e42       MOVL         *-SP[2], ACC
00000491   06a6       MOVL         ACC, XAR6
00000492   7640       LCR          0x000000
00000493   0000
00000494   5200       CMPB         AL, #0x0
00000495   6203       SB           3, GT
00000496   0644       MOVL         ACC, *-SP[4]
00000497   6f07       SB           7, UNC
000498:              $C$L15:
00000498   ff2f       MOV          ACC, #0x7f00 << 15
00000499   7f00
0000049a   1e42       MOVL         *-SP[2], ACC
0000049b   0644       MOVL         ACC, *-SP[4]
0000049c   7640       LCR          0x000000
0000049d   0000
00049e:              $C$L16:
0000049e   7640       LCR          0x000000
0000049f   0000
000004a0   1e42       MOVL         *-SP[2], ACC
000004a1   9a00       MOVB         AL, #0x0
000004a2   28a8       MOV          AH, #0x4000
000004a3   4000
000004a4   7640       LCR          0x000000
000004a5   0000
000004a6   1ea6       MOVL         XAR6, ACC
000004a7   28a9       MOV          AL, #0x51ec
000004a8   51ec
000004a9   28a8       MOV          AH, #0x3db8
000004aa   3db8
000004ab   1e42       MOVL         *-SP[2], ACC
000004ac   06a6       MOVL         ACC, XAR6
000004ad   7640       LCR          0x000000
000004ae   0000
000004af   88ad       MOVZ         AR6, SP
000004b0   de8c       SUBB         XAR6, #12
000004b1   7640       LCR          0x000000
000004b2   0000
000004b3   5cad       MOVZ         AR4, SP
000004b4   88ad       MOVZ         AR6, SP
000004b5   8f40       MOVL         XAR5, #0x000004
000004b6   0004
000004b7   dc8c       SUBB         XAR4, #12
000004b8   de88       SUBB         XAR6, #8
000004b9   7640       LCR          0x000000
000004ba   0000
000004bb   5cad       MOVZ         AR4, SP
000004bc   dc88       SUBB         XAR4, #8
000004bd   7640       LCR          0x000000
000004be   0000
000004bf   fe8c       SUBB         SP, #12
000004c0   8bbe       MOVL         XAR1, *--SP
000004c1   0006       LRETR        
0004c2:              _USER_computeFlux:
000004c2   b2bd       MOVL         *SP++, XAR1
000004c3   d018       MOVB         XAR0, #0x18
000004c4   8ba9       MOVL         XAR1, ACC
000004c5   8a94       MOVL         XAR4, *+XAR4[AR0]
000004c6   7640       LCR          0x000000
000004c7   0000
000004c8   1eac       MOVL         XT, ACC
000004c9   5605       IMPYL        P, XT, XAR1
000004ca   00a1
000004cb   5663       QMPYL        ACC, XT, XAR1
000004cc   00a1
000004cd   8bbe       MOVL         XAR1, *--SP
000004ce   56a7       LSL64        ACC:P, 8
000004cf   0006       LRETR        
0004d0:              _USER_checkForErrors:
000004d0   b2bd       MOVL         *SP++, XAR1
000004d1   aabd       MOVL         *SP++, XAR2
000004d2   a2bd       MOVL         *SP++, XAR3
000004d3   fe04       ADDB         SP, #4
000004d4   9a00       MOVB         AL, #0x0
000004d5   7640       LCR          0x000200
000004d6   0200
000004d7   8ba4       MOVL         XAR1, XAR4
000004d8   86c1       MOVL         XAR2, *+XAR1[0]
000004d9   9b00       MOVB         AH, #0x0
000004da   9a00       MOVB         AL, #0x0
000004db   1e42       MOVL         *-SP[2], ACC
000004dc   aaa9       MOVL         ACC, XAR2
000004dd   7640       LCR          0x000000
000004de   0000
000004df   5200       CMPB         AL, #0x0
000004e0   6542       SB           66, LEQ
000004e1   d040       MOVB         XAR0, #0x40
000004e2   8291       MOVL         XAR3, *+XAR1[AR0]
000004e3   28a9       MOV          AL, #0xd70a
000004e4   d70a
000004e5   28a8       MOV          AH, #0x3ca3
000004e6   3ca3
000004e7   1e42       MOVL         *-SP[2], ACC
000004e8   a2a9       MOVL         ACC, XAR3
000004e9   7640       LCR          0x000000
000004ea   0000
000004eb   1ea6       MOVL         XAR6, ACC
000004ec   9a00       MOVB         AL, #0x0
000004ed   28a8       MOV          AH, #0x4348
000004ee   4348
000004ef   1e42       MOVL         *-SP[2], ACC
000004f0   06a6       MOVL         ACC, XAR6
000004f1   7640       LCR          0x000000
000004f2   0000
000004f3   1ea6       MOVL         XAR6, ACC
000004f4   ff2f       MOV          ACC, #0x7800 << 15
000004f5   7800
000004f6   1e42       MOVL         *-SP[2], ACC
000004f7   06a6       MOVL         ACC, XAR6
000004f8   7640       LCR          0x000000
000004f9   0000
000004fa   1e42       MOVL         *-SP[2], ACC
000004fb   aaa9       MOVL         ACC, XAR2
000004fc   7640       LCR          0x000000
000004fd   0000
000004fe   5200       CMPB         AL, #0x0
000004ff   6523       SB           35, LEQ
00000500   a242       MOVL         *-SP[2], XAR3
00000501   a2a9       MOVL         ACC, XAR3
00000502   7640       LCR          0x000000
00000503   0000
00000504   1ea6       MOVL         XAR6, ACC
00000505   9a00       MOVB         AL, #0x0
00000506   28a8       MOV          AH, #0x4348
00000507   4348
00000508   1e42       MOVL         *-SP[2], ACC
00000509   06a6       MOVL         ACC, XAR6
0000050a   7640       LCR          0x000000
0000050b   0000
0000050c   1ea6       MOVL         XAR6, ACC
0000050d   28a9       MOV          AL, #0xb717
0000050e   b717
0000050f   28a8       MOV          AH, #0x3951
00000510   3951
00000511   1e42       MOVL         *-SP[2], ACC
00000512   06a6       MOVL         ACC, XAR6
00000513   7640       LCR          0x000000
00000514   0000
00000515   1ea6       MOVL         XAR6, ACC
00000516   ff2f       MOV          ACC, #0x7800 << 15
00000517   7800
00000518   1e42       MOVL         *-SP[2], ACC
00000519   06a6       MOVL         ACC, XAR6
0000051a   7640       LCR          0x000000
0000051b   0000
0000051c   1e42       MOVL         *-SP[2], ACC
0000051d   aaa9       MOVL         ACC, XAR2
0000051e   7640       LCR          0x000000
0000051f   0000
00000520   5200       CMPB         AL, #0x0
00000521   6206       SB           6, GT
000522:              $C$L17:
00000522   9a02       MOVB         AL, #0x2
00000523   8aa1       MOVL         XAR4, XAR1
00000524   7640       LCR          0x000200
00000525   0200
00000526   86c1       MOVL         XAR2, *+XAR1[0]
000527:              $C$L18:
00000527   d04a       MOVB         XAR0, #0x4a
00000528   0691       MOVL         ACC, *+XAR1[AR0]
00000529   1e42       MOVL         *-SP[2], ACC
0000052a   aaa9       MOVL         ACC, XAR2
0000052b   7640       LCR          0x000000
0000052c   0000
0000052d   5200       CMPB         AL, #0x0
0000052e   6419       SB           25, LT
0000052f   d042       MOVB         XAR0, #0x42
00000530   0691       MOVL         ACC, *+XAR1[AR0]
00000531   1e42       MOVL         *-SP[2], ACC
00000532   aaa9       MOVL         ACC, XAR2
00000533   7640       LCR          0x000000
00000534   0000
00000535   5200       CMPB         AL, #0x0
00000536   6411       SB           17, LT
00000537   d044       MOVB         XAR0, #0x44
00000538   0691       MOVL         ACC, *+XAR1[AR0]
00000539   1e42       MOVL         *-SP[2], ACC
0000053a   aaa9       MOVL         ACC, XAR2
0000053b   7640       LCR          0x000000
0000053c   0000
0000053d   5200       CMPB         AL, #0x0
0000053e   6409       SB           9, LT
0000053f   d040       MOVB         XAR0, #0x40
00000540   0691       MOVL         ACC, *+XAR1[AR0]
00000541   1e42       MOVL         *-SP[2], ACC
00000542   aaa9       MOVL         ACC, XAR2
00000543   7640       LCR          0x000000
00000544   0000
00000545   5200       CMPB         AL, #0x0
00000546   6305       SB           5, GEQ
000547:              $C$L19:
00000547   9a02       MOVB         AL, #0x2
00000548   8aa1       MOVL         XAR4, XAR1
00000549   7640       LCR          0x000200
0000054a   0200
00054b:              $C$L20:
0000054b   d036       MOVB         XAR0, #0x36
0000054c   8691       MOVL         XAR2, *+XAR1[AR0]
0000054d   9a00       MOVB         AL, #0x0
0000054e   9b00       MOVB         AH, #0x0
0000054f   1e42       MOVL         *-SP[2], ACC
00000550   aaa9       MOVL         ACC, XAR2
00000551   7640       LCR          0x000000
00000552   0000
00000553   5200       CMPB         AL, #0x0
00000554   6550       SB           80, LEQ
00000555   d034       MOVB         XAR0, #0x34
00000556   9291       MOV          AL, *+XAR1[AR0]
00000557   5201       CMPB         AL, #0x1
00000558   ed22       SBF          34, NEQ
00000559   28a9       MOV          AL, #0x4000
0000055a   4000
0000055b   28a8       MOV          AH, #0x459c
0000055c   459c
0000055d   1e42       MOVL         *-SP[2], ACC
0000055e   aaa9       MOVL         ACC, XAR2
0000055f   7640       LCR          0x000000
00000560   0000
00000561   1ea6       MOVL         XAR6, ACC
00000562   28a9       MOV          AL, #0x3333
00000563   3333
00000564   28a8       MOV          AH, #0x3f33
00000565   3f33
00000566   1e42       MOVL         *-SP[2], ACC
00000567   06a6       MOVL         ACC, XAR6
00000568   7640       LCR          0x000000
00000569   0000
0000056a   1ea6       MOVL         XAR6, ACC
0000056b   9a00       MOVB         AL, #0x0
0000056c   28a8       MOV          AH, #0x43e1
0000056d   43e1
0000056e   1e42       MOVL         *-SP[2], ACC
0000056f   06a6       MOVL         ACC, XAR6
00000570   7640       LCR          0x000000
00000571   0000
00000572   5200       CMPB         AL, #0x0
00000573   6207       SB           7, GT
00000574   9a03       MOVB         AL, #0x3
00000575   8aa1       MOVL         XAR4, XAR1
00000576   7640       LCR          0x000200
00000577   0200
00000578   d036       MOVB         XAR0, #0x36
00000579   8691       MOVL         XAR2, *+XAR1[AR0]
00057a:              $C$L21:
0000057a   9a00       MOVB         AL, #0x0
0000057b   9b00       MOVB         AH, #0x0
0000057c   1e42       MOVL         *-SP[2], ACC
0000057d   aaa9       MOVL         ACC, XAR2
0000057e   7640       LCR          0x000000
0000057f   0000
00000580   5200       CMPB         AL, #0x0
00000581   6523       SB           35, LEQ
00000582   d034       MOVB         XAR0, #0x34
00000583   9291       MOV          AL, *+XAR1[AR0]
00000584   ed20       SBF          32, NEQ
00000585   28a9       MOV          AL, #0x4000
00000586   4000
00000587   28a8       MOV          AH, #0x459c
00000588   459c
00000589   1e42       MOVL         *-SP[2], ACC
0000058a   aaa9       MOVL         ACC, XAR2
0000058b   7640       LCR          0x000000
0000058c   0000
0000058d   1ea6       MOVL         XAR6, ACC
0000058e   28a9       MOV          AL, #0xcccd
0000058f   cccd
00000590   28a8       MOV          AH, #0x3d4c
00000591   3d4c
00000592   1e42       MOVL         *-SP[2], ACC
00000593   06a6       MOVL         ACC, XAR6
00000594   7640       LCR          0x000000
00000595   0000
00000596   1ea6       MOVL         XAR6, ACC
00000597   9a00       MOVB         AL, #0x0
00000598   28a8       MOV          AH, #0x43e1
00000599   43e1
0000059a   1e42       MOVL         *-SP[2], ACC
0000059b   06a6       MOVL         ACC, XAR6
0000059c   7640       LCR          0x000000
0000059d   0000
0000059e   5200       CMPB         AL, #0x0
0000059f   6205       SB           5, GT
000005a0   9a03       MOVB         AL, #0x3
000005a1   8aa1       MOVL         XAR4, XAR1
000005a2   7640       LCR          0x000200
000005a3   0200
0005a4:              $C$L22:
000005a4   d040       MOVB         XAR0, #0x40
000005a5   8291       MOVL         XAR3, *+XAR1[AR0]
000005a6   ff2f       MOV          ACC, #0x7e00 << 15
000005a7   7e00
000005a8   1e42       MOVL         *-SP[2], ACC
000005a9   a2a9       MOVL         ACC, XAR3
000005aa   7640       LCR          0x000000
000005ab   0000
000005ac   d03c       MOVB         XAR0, #0x3c
000005ad   86a9       MOVL         XAR2, ACC
000005ae   1e42       MOVL         *-SP[2], ACC
000005af   0691       MOVL         ACC, *+XAR1[AR0]
000005b0   7640       LCR          0x000000
000005b1   0000
000005b2   1ea6       MOVL         XAR6, ACC
000005b3   28a9       MOV          AL, #0x47c9
000005b4   47c9
000005b5   28a8       MOV          AH, #0x4512
000005b6   4512
000005b7   1e42       MOVL         *-SP[2], ACC
000005b8   06a6       MOVL         ACC, XAR6
000005b9   7640       LCR          0x000000
000005ba   0000
000005bb   1ea6       MOVL         XAR6, ACC
000005bc   9a00       MOVB         AL, #0x0
000005bd   28a8       MOV          AH, #0x43e1
000005be   43e1
000005bf   1e42       MOVL         *-SP[2], ACC
000005c0   06a6       MOVL         ACC, XAR6
000005c1   7640       LCR          0x000000
000005c2   0000
000005c3   5200       CMPB         AL, #0x0
000005c4   6319       SB           25, GEQ
000005c5   aa42       MOVL         *-SP[2], XAR2
000005c6   d03e       MOVB         XAR0, #0x3e
000005c7   0691       MOVL         ACC, *+XAR1[AR0]
000005c8   7640       LCR          0x000000
000005c9   0000
000005ca   1ea6       MOVL         XAR6, ACC
000005cb   28a9       MOV          AL, #0x47c9
000005cc   47c9
000005cd   28a8       MOV          AH, #0x4512
000005ce   4512
000005cf   1e42       MOVL         *-SP[2], ACC
000005d0   06a6       MOVL         ACC, XAR6
000005d1   7640       LCR          0x000000
000005d2   0000
000005d3   1ea6       MOVL         XAR6, ACC
000005d4   9a00       MOVB         AL, #0x0
000005d5   28a8       MOV          AH, #0x43e1
000005d6   43e1
000005d7   1e42       MOVL         *-SP[2], ACC
000005d8   06a6       MOVL         ACC, XAR6
000005d9   7640       LCR          0x000000
000005da   0000
000005db   5200       CMPB         AL, #0x0
000005dc   6407       SB           7, LT
0005dd:              $C$L23:
000005dd   9a04       MOVB         AL, #0x4
000005de   8aa1       MOVL         XAR4, XAR1
000005df   7640       LCR          0x000200
000005e0   0200
000005e1   d040       MOVB         XAR0, #0x40
000005e2   8291       MOVL         XAR3, *+XAR1[AR0]
0005e3:              $C$L24:
000005e3   9a00       MOVB         AL, #0x0
000005e4   28a8       MOV          AH, #0x4300
000005e5   4300
000005e6   1e42       MOVL         *-SP[2], ACC
000005e7   06c1       MOVL         ACC, *+XAR1[0]
000005e8   7640       LCR          0x000000
000005e9   0000
000005ea   86a9       MOVL         XAR2, ACC
000005eb   28a9       MOV          AL, #0xd70a
000005ec   d70a
000005ed   28a8       MOV          AH, #0x3ca3
000005ee   3ca3
000005ef   1e42       MOVL         *-SP[2], ACC
000005f0   a2a9       MOVL         ACC, XAR3
000005f1   7640       LCR          0x000000
000005f2   0000
000005f3   1e42       MOVL         *-SP[2], ACC
000005f4   aaa9       MOVL         ACC, XAR2
000005f5   7640       LCR          0x000000
000005f6   0000
000005f7   1ea6       MOVL         XAR6, ACC
000005f8   9a00       MOVB         AL, #0x0
000005f9   28a8       MOV          AH, #0x4348
000005fa   4348
000005fb   1e42       MOVL         *-SP[2], ACC
000005fc   06a6       MOVL         ACC, XAR6
000005fd   7640       LCR          0x000000
000005fe   0000
000005ff   5200       CMPB         AL, #0x0
00000600   6542       SB           66, LEQ
00000601   a242       MOVL         *-SP[2], XAR3
00000602   a2a9       MOVL         ACC, XAR3
00000603   7640       LCR          0x000000
00000604   0000
00000605   1ea6       MOVL         XAR6, ACC
00000606   28a9       MOV          AL, #0xb717
00000607   b717
00000608   28a8       MOV          AH, #0x3951
00000609   3951
0000060a   1e42       MOVL         *-SP[2], ACC
0000060b   06a6       MOVL         ACC, XAR6
0000060c   7640       LCR          0x000000
0000060d   0000
0000060e   1e42       MOVL         *-SP[2], ACC
0000060f   aaa9       MOVL         ACC, XAR2
00000610   7640       LCR          0x000000
00000611   0000
00000612   1ea6       MOVL         XAR6, ACC
00000613   9a00       MOVB         AL, #0x0
00000614   28a8       MOV          AH, #0x4348
00000615   4348
00000616   1e42       MOVL         *-SP[2], ACC
00000617   06a6       MOVL         ACC, XAR6
00000618   7640       LCR          0x000000
00000619   0000
0000061a   5200       CMPB         AL, #0x0
0000061b   6527       SB           39, LEQ
0000061c   d035       MOVB         XAR0, #0x35
0000061d   9291       MOV          AL, *+XAR1[AR0]
0000061e   7640       LCR          0x000000
0000061f   0000
00000620   1ea6       MOVL         XAR6, ACC
00000621   9a00       MOVB         AL, #0x0
00000622   28a8       MOV          AH, #0x4300
00000623   4300
00000624   1e42       MOVL         *-SP[2], ACC
00000625   06a6       MOVL         ACC, XAR6
00000626   7640       LCR          0x000000
00000627   0000
00000628   1ea6       MOVL         XAR6, ACC
00000629   9a00       MOVB         AL, #0x0
0000062a   28a8       MOV          AH, #0x447a
0000062b   447a
0000062c   1e42       MOVL         *-SP[2], ACC
0000062d   06a6       MOVL         ACC, XAR6
0000062e   7640       LCR          0x000000
0000062f   0000
00000630   1ea6       MOVL         XAR6, ACC
00000631   9a00       MOVB         AL, #0x0
00000632   28a8       MOV          AH, #0x4270
00000633   4270
00000634   1e42       MOVL         *-SP[2], ACC
00000635   06a6       MOVL         ACC, XAR6
00000636   7640       LCR          0x000000
00000637   0000
00000638   1ea6       MOVL         XAR6, ACC
00000639   9a00       MOVB         AL, #0x0
0000063a   28a8       MOV          AH, #0x4348
0000063b   4348
0000063c   1e42       MOVL         *-SP[2], ACC
0000063d   06a6       MOVL         ACC, XAR6
0000063e   7640       LCR          0x000000
0000063f   0000
00000640   5200       CMPB         AL, #0x0
00000641   6205       SB           5, GT
000642:              $C$L25:
00000642   9a05       MOVB         AL, #0x5
00000643   8aa1       MOVL         XAR4, XAR1
00000644   7640       LCR          0x000200
00000645   0200
000646:              $C$L26:
00000646   9a00       MOVB         AL, #0x0
00000647   28a8       MOV          AH, #0x4348
00000648   4348
00000649   d052       MOVB         XAR0, #0x52
0000064a   1e42       MOVL         *-SP[2], ACC
0000064b   0691       MOVL         ACC, *+XAR1[AR0]
0000064c   7640       LCR          0x000000
0000064d   0000
0000064e   5200       CMPB         AL, #0x0
0000064f   621f       SB           31, GT
00000650   d035       MOVB         XAR0, #0x35
00000651   9291       MOV          AL, *+XAR1[AR0]
00000652   7640       LCR          0x000000
00000653   0000
00000654   1ea6       MOVL         XAR6, ACC
00000655   9a00       MOVB         AL, #0x0
00000656   28a8       MOV          AH, #0x447a
00000657   447a
00000658   1e42       MOVL         *-SP[2], ACC
00000659   06a6       MOVL         ACC, XAR6
0000065a   7640       LCR          0x000000
0000065b   0000
0000065c   1ea6       MOVL         XAR6, ACC
0000065d   9a00       MOVB         AL, #0x0
0000065e   28a8       MOV          AH, #0x45f0
0000065f   45f0
00000660   1e42       MOVL         *-SP[2], ACC
00000661   06a6       MOVL         ACC, XAR6
00000662   7640       LCR          0x000000
00000663   0000
00000664   1ea6       MOVL         XAR6, ACC
00000665   9a00       MOVB         AL, #0x0
00000666   28a8       MOV          AH, #0x4348
00000667   4348
00000668   1e42       MOVL         *-SP[2], ACC
00000669   06a6       MOVL         ACC, XAR6
0000066a   7640       LCR          0x000000
0000066b   0000
0000066c   5200       CMPB         AL, #0x0
0000066d   6405       SB           5, LT
00066e:              $C$L27:
0000066e   9a06       MOVB         AL, #0x6
0000066f   8aa1       MOVL         XAR4, XAR1
00000670   7640       LCR          0x000200
00000671   0200
000672:              $C$L28:
00000672   d040       MOVB         XAR0, #0x40
00000673   0691       MOVL         ACC, *+XAR1[AR0]
00000674   1e42       MOVL         *-SP[2], ACC
00000675   06c1       MOVL         ACC, *+XAR1[0]
00000676   7640       LCR          0x000000
00000677   0000
00000678   1ea6       MOVL         XAR6, ACC
00000679   ff2f       MOV          ACC, #0x7f00 << 15
0000067a   7f00
0000067b   1e42       MOVL         *-SP[2], ACC
0000067c   06a6       MOVL         ACC, XAR6
0000067d   7640       LCR          0x000000
0000067e   0000
0000067f   5200       CMPB         AL, #0x0
00000680   6305       SB           5, GEQ
00000681   9a2b       MOVB         AL, #0x2b
00000682   8aa1       MOVL         XAR4, XAR1
00000683   7640       LCR          0x000200
00000684   0200
000685:              $C$L29:
00000685   d034       MOVB         XAR0, #0x34
00000686   9291       MOV          AL, *+XAR1[AR0]
00000687   ec07       SBF          7, EQ
00000688   5201       CMPB         AL, #0x1
00000689   ec05       SBF          5, EQ
0000068a   9a3d       MOVB         AL, #0x3d
0000068b   8aa1       MOVL         XAR4, XAR1
0000068c   7640       LCR          0x000200
0000068d   0200
00068e:              $C$L30:
0000068e   d035       MOVB         XAR0, #0x35
0000068f   9291       MOV          AL, *+XAR1[AR0]
00000690   ed05       SBF          5, NEQ
00000691   9a3f       MOVB         AL, #0x3f
00000692   8aa1       MOVL         XAR4, XAR1
00000693   7640       LCR          0x000200
00000694   0200
000695:              $C$L31:
00000695   d036       MOVB         XAR0, #0x36
00000696   8691       MOVL         XAR2, *+XAR1[AR0]
00000697   9a00       MOVB         AL, #0x0
00000698   9b00       MOVB         AH, #0x0
00000699   1e42       MOVL         *-SP[2], ACC
0000069a   aaa9       MOVL         ACC, XAR2
0000069b   7640       LCR          0x000000
0000069c   0000
0000069d   5200       CMPB         AL, #0x0
0000069e   614e       SB           78, EQ
0000069f   d034       MOVB         XAR0, #0x34
000006a0   9291       MOV          AL, *+XAR1[AR0]
000006a1   5201       CMPB         AL, #0x1
000006a2   ed21       SBF          33, NEQ
000006a3   28a9       MOV          AL, #0x0ea1
000006a4   0ea1
000006a5   28a8       MOV          AH, #0x456a
000006a6   456a
000006a7   1e42       MOVL         *-SP[2], ACC
000006a8   aaa9       MOVL         ACC, XAR2
000006a9   7640       LCR          0x000000
000006aa   0000
000006ab   5200       CMPB         AL, #0x0
000006ac   6507       SB           7, LEQ
000006ad   9a40       MOVB         AL, #0x40
000006ae   8aa1       MOVL         XAR4, XAR1
000006af   7640       LCR          0x000200
000006b0   0200
000006b1   d036       MOVB         XAR0, #0x36
000006b2   8691       MOVL         XAR2, *+XAR1[AR0]
0006b3:              $C$L32:
000006b3   28a9       MOV          AL, #0xa83b
000006b4   a83b
000006b5   28a8       MOV          AH, #0x3e03
000006b6   3e03
000006b7   1e42       MOVL         *-SP[2], ACC
000006b8   aaa9       MOVL         ACC, XAR2
000006b9   7640       LCR          0x000000
000006ba   0000
000006bb   5200       CMPB         AL, #0x0
000006bc   6307       SB           7, GEQ
000006bd   9a41       MOVB         AL, #0x41
000006be   8aa1       MOVL         XAR4, XAR1
000006bf   7640       LCR          0x000200
000006c0   0200
000006c1   d036       MOVB         XAR0, #0x36
000006c2   8691       MOVL         XAR2, *+XAR1[AR0]
0006c3:              $C$L33:
000006c3   9a00       MOVB         AL, #0x0
000006c4   9b00       MOVB         AH, #0x0
000006c5   1e42       MOVL         *-SP[2], ACC
000006c6   aaa9       MOVL         ACC, XAR2
000006c7   7640       LCR          0x000000
000006c8   0000
000006c9   5200       CMPB         AL, #0x0
000006ca   6122       SB           34, EQ
000006cb   d034       MOVB         XAR0, #0x34
000006cc   9291       MOV          AL, *+XAR1[AR0]
000006cd   ed1f       SBF          31, NEQ
000006ce   28a9       MOV          AL, #0xcccc
000006cf   cccc
000006d0   28a8       MOV          AH, #0x474c
000006d1   474c
000006d2   1e42       MOVL         *-SP[2], ACC
000006d3   aaa9       MOVL         ACC, XAR2
000006d4   7640       LCR          0x000000
000006d5   0000
000006d6   5200       CMPB         AL, #0x0
000006d7   6507       SB           7, LEQ
000006d8   9a40       MOVB         AL, #0x40
000006d9   8aa1       MOVL         XAR4, XAR1
000006da   7640       LCR          0x000200
000006db   0200
000006dc   d036       MOVB         XAR0, #0x36
000006dd   8691       MOVL         XAR2, *+XAR1[AR0]
0006de:              $C$L34:
000006de   28a9       MOV          AL, #0x6667
000006df   6667
000006e0   28a8       MOV          AH, #0x3fe6
000006e1   3fe6
000006e2   1e42       MOVL         *-SP[2], ACC
000006e3   aaa9       MOVL         ACC, XAR2
000006e4   7640       LCR          0x000000
000006e5   0000
000006e6   5200       CMPB         AL, #0x0
000006e7   6305       SB           5, GEQ
000006e8   9a41       MOVB         AL, #0x41
000006e9   8aa1       MOVL         XAR4, XAR1
000006ea   7640       LCR          0x000200
000006eb   0200
0006ec:              $C$L35:
000006ec   d034       MOVB         XAR0, #0x34
000006ed   9291       MOV          AL, *+XAR1[AR0]
000006ee   5201       CMPB         AL, #0x1
000006ef   ed1d       SBF          29, NEQ
000006f0   d038       MOVB         XAR0, #0x38
000006f1   8691       MOVL         XAR2, *+XAR1[AR0]
000006f2   9a00       MOVB         AL, #0x0
000006f3   9b00       MOVB         AH, #0x0
000006f4   1e42       MOVL         *-SP[2], ACC
000006f5   aaa9       MOVL         ACC, XAR2
000006f6   7640       LCR          0x000000
000006f7   0000
000006f8   5200       CMPB         AL, #0x0
000006f9   6507       SB           7, LEQ
000006fa   9a42       MOVB         AL, #0x42
000006fb   8aa1       MOVL         XAR4, XAR1
000006fc   7640       LCR          0x000200
000006fd   0200
000006fe   d038       MOVB         XAR0, #0x38
000006ff   8691       MOVL         XAR2, *+XAR1[AR0]
000700:              $C$L36:
00000700   9a00       MOVB         AL, #0x0
00000701   9b00       MOVB         AH, #0x0
00000702   1e42       MOVL         *-SP[2], ACC
00000703   aaa9       MOVL         ACC, XAR2
00000704   7640       LCR          0x000000
00000705   0000
00000706   5200       CMPB         AL, #0x0
00000707   6305       SB           5, GEQ
00000708   9a43       MOVB         AL, #0x43
00000709   8aa1       MOVL         XAR4, XAR1
0000070a   7640       LCR          0x000200
0000070b   0200
00070c:              $C$L37:
0000070c   d038       MOVB         XAR0, #0x38
0000070d   8691       MOVL         XAR2, *+XAR1[AR0]
0000070e   9a00       MOVB         AL, #0x0
0000070f   9b00       MOVB         AH, #0x0
00000710   1e42       MOVL         *-SP[2], ACC
00000711   aaa9       MOVL         ACC, XAR2
00000712   7640       LCR          0x000000
00000713   0000
00000714   5200       CMPB         AL, #0x0
00000715   6131       SB           49, EQ
00000716   d034       MOVB         XAR0, #0x34
00000717   9291       MOV          AL, *+XAR1[AR0]
00000718   ed2e       SBF          46, NEQ
00000719   82c1       MOVL         XAR3, *+XAR1[0]
0000071a   28a9       MOV          AL, #0x8000
0000071b   8000
0000071c   28a8       MOV          AH, #0x4b9d
0000071d   4b9d
0000071e   a242       MOVL         *-SP[2], XAR3
0000071f   7640       LCR          0x000000
00000720   0000
00000721   1e42       MOVL         *-SP[2], ACC
00000722   aaa9       MOVL         ACC, XAR2
00000723   7640       LCR          0x000000
00000724   0000
00000725   5200       CMPB         AL, #0x0
00000726   6508       SB           8, LEQ
00000727   9a42       MOVB         AL, #0x42
00000728   8aa1       MOVL         XAR4, XAR1
00000729   7640       LCR          0x000200
0000072a   0200
0000072b   d038       MOVB         XAR0, #0x38
0000072c   82c1       MOVL         XAR3, *+XAR1[0]
0000072d   8691       MOVL         XAR2, *+XAR1[AR0]
00072e:              $C$L38:
0000072e   9a00       MOVB         AL, #0x0
0000072f   28a8       MOV          AH, #0x4780
00000730   4780
00000731   1e42       MOVL         *-SP[2], ACC
00000732   a2a9       MOVL         ACC, XAR3
00000733   7640       LCR          0x000000
00000734   0000
00000735   1e42       MOVL         *-SP[2], ACC
00000736   28a9       MOV          AL, #0x8000
00000737   8000
00000738   28a8       MOV          AH, #0x439d
00000739   439d
0000073a   7640       LCR          0x000000
0000073b   0000
0000073c   1e42       MOVL         *-SP[2], ACC
0000073d   aaa9       MOVL         ACC, XAR2
0000073e   7640       LCR          0x000000
0000073f   0000
00000740   5200       CMPB         AL, #0x0
00000741   6305       SB           5, GEQ
00000742   9a43       MOVB         AL, #0x43
00000743   8aa1       MOVL         XAR4, XAR1
00000744   7640       LCR          0x000200
00000745   0200
000746:              $C$L39:
00000746   d03a       MOVB         XAR0, #0x3a
00000747   8691       MOVL         XAR2, *+XAR1[AR0]
00000748   9a00       MOVB         AL, #0x0
00000749   9b00       MOVB         AH, #0x0
0000074a   1e42       MOVL         *-SP[2], ACC
0000074b   aaa9       MOVL         ACC, XAR2
0000074c   7640       LCR          0x000000
0000074d   0000
0000074e   5200       CMPB         AL, #0x0
0000074f   612e       SB           46, EQ
00000750   82c1       MOVL         XAR3, *+XAR1[0]
00000751   28a9       MOV          AL, #0x8000
00000752   8000
00000753   28a8       MOV          AH, #0x4b9d
00000754   4b9d
00000755   a242       MOVL         *-SP[2], XAR3
00000756   7640       LCR          0x000000
00000757   0000
00000758   1e42       MOVL         *-SP[2], ACC
00000759   aaa9       MOVL         ACC, XAR2
0000075a   7640       LCR          0x000000
0000075b   0000
0000075c   5200       CMPB         AL, #0x0
0000075d   6508       SB           8, LEQ
0000075e   9a44       MOVB         AL, #0x44
0000075f   8aa1       MOVL         XAR4, XAR1
00000760   7640       LCR          0x000200
00000761   0200
00000762   d03a       MOVB         XAR0, #0x3a
00000763   82c1       MOVL         XAR3, *+XAR1[0]
00000764   8691       MOVL         XAR2, *+XAR1[AR0]
000765:              $C$L40:
00000765   9a00       MOVB         AL, #0x0
00000766   28a8       MOV          AH, #0x4780
00000767   4780
00000768   1e42       MOVL         *-SP[2], ACC
00000769   a2a9       MOVL         ACC, XAR3
0000076a   7640       LCR          0x000000
0000076b   0000
0000076c   1e42       MOVL         *-SP[2], ACC
0000076d   28a9       MOV          AL, #0x8000
0000076e   8000
0000076f   28a8       MOV          AH, #0x439d
00000770   439d
00000771   7640       LCR          0x000000
00000772   0000
00000773   1e42       MOVL         *-SP[2], ACC
00000774   aaa9       MOVL         ACC, XAR2
00000775   7640       LCR          0x000000
00000776   0000
00000777   5200       CMPB         AL, #0x0
00000778   6305       SB           5, GEQ
00000779   9a45       MOVB         AL, #0x45
0000077a   8aa1       MOVL         XAR4, XAR1
0000077b   7640       LCR          0x000200
0000077c   0200
00077d:              $C$L41:
0000077d   d03c       MOVB         XAR0, #0x3c
0000077e   8291       MOVL         XAR3, *+XAR1[AR0]
0000077f   9a00       MOVB         AL, #0x0
00000780   9b00       MOVB         AH, #0x0
00000781   1e42       MOVL         *-SP[2], ACC
00000782   a2a9       MOVL         ACC, XAR3
00000783   7640       LCR          0x000000
00000784   0000
00000785   5200       CMPB         AL, #0x0
00000786   613e       SB           62, EQ
00000787   28a9       MOV          AL, #0x47c9
00000788   47c9
00000789   28a8       MOV          AH, #0x4512
0000078a   4512
0000078b   1e42       MOVL         *-SP[2], ACC
0000078c   06c1       MOVL         ACC, *+XAR1[0]
0000078d   7640       LCR          0x000000
0000078e   0000
0000078f   86a9       MOVL         XAR2, ACC
00000790   1e42       MOVL         *-SP[2], ACC
00000791   28a9       MOV          AL, #0x8000
00000792   8000
00000793   28a8       MOV          AH, #0x4b9d
00000794   4b9d
00000795   7640       LCR          0x000000
00000796   0000
00000797   1e42       MOVL         *-SP[2], ACC
00000798   a2a9       MOVL         ACC, XAR3
00000799   7640       LCR          0x000000
0000079a   0000
0000079b   5200       CMPB         AL, #0x0
0000079c   6510       SB           16, LEQ
0000079d   9a46       MOVB         AL, #0x46
0000079e   8aa1       MOVL         XAR4, XAR1
0000079f   7640       LCR          0x000200
000007a0   0200
000007a1   28a8       MOV          AH, #0x4512
000007a2   4512
000007a3   d03c       MOVB         XAR0, #0x3c
000007a4   28a9       MOV          AL, #0x47c9
000007a5   47c9
000007a6   8291       MOVL         XAR3, *+XAR1[AR0]
000007a7   1e42       MOVL         *-SP[2], ACC
000007a8   06c1       MOVL         ACC, *+XAR1[0]
000007a9   7640       LCR          0x000000
000007aa   0000
000007ab   86a9       MOVL         XAR2, ACC
0007ac:              $C$L42:
000007ac   9a00       MOVB         AL, #0x0
000007ad   28a8       MOV          AH, #0x4780
000007ae   4780
000007af   1e42       MOVL         *-SP[2], ACC
000007b0   aaa9       MOVL         ACC, XAR2
000007b1   7640       LCR          0x000000
000007b2   0000
000007b3   1e42       MOVL         *-SP[2], ACC
000007b4   28a9       MOV          AL, #0x8000
000007b5   8000
000007b6   28a8       MOV          AH, #0x439d
000007b7   439d
000007b8   7640       LCR          0x000000
000007b9   0000
000007ba   1e42       MOVL         *-SP[2], ACC
000007bb   a2a9       MOVL         ACC, XAR3
000007bc   7640       LCR          0x000000
000007bd   0000
000007be   5200       CMPB         AL, #0x0
000007bf   6305       SB           5, GEQ
000007c0   9a47       MOVB         AL, #0x47
000007c1   8aa1       MOVL         XAR4, XAR1
000007c2   7640       LCR          0x000200
000007c3   0200
0007c4:              $C$L43:
000007c4   d03e       MOVB         XAR0, #0x3e
000007c5   8291       MOVL         XAR3, *+XAR1[AR0]
000007c6   9a00       MOVB         AL, #0x0
000007c7   9b00       MOVB         AH, #0x0
000007c8   1e42       MOVL         *-SP[2], ACC
000007c9   a2a9       MOVL         ACC, XAR3
000007ca   7640       LCR          0x000000
000007cb   0000
000007cc   5200       CMPB         AL, #0x0
000007cd   613e       SB           62, EQ
000007ce   28a9       MOV          AL, #0x47c9
000007cf   47c9
000007d0   28a8       MOV          AH, #0x4512
000007d1   4512
000007d2   1e42       MOVL         *-SP[2], ACC
000007d3   06c1       MOVL         ACC, *+XAR1[0]
000007d4   7640       LCR          0x000000
000007d5   0000
000007d6   86a9       MOVL         XAR2, ACC
000007d7   1e42       MOVL         *-SP[2], ACC
000007d8   28a9       MOV          AL, #0x8000
000007d9   8000
000007da   28a8       MOV          AH, #0x4b9d
000007db   4b9d
000007dc   7640       LCR          0x000000
000007dd   0000
000007de   1e42       MOVL         *-SP[2], ACC
000007df   a2a9       MOVL         ACC, XAR3
000007e0   7640       LCR          0x000000
000007e1   0000
000007e2   5200       CMPB         AL, #0x0
000007e3   6510       SB           16, LEQ
000007e4   9a48       MOVB         AL, #0x48
000007e5   8aa1       MOVL         XAR4, XAR1
000007e6   7640       LCR          0x000200
000007e7   0200
000007e8   28a8       MOV          AH, #0x4512
000007e9   4512
000007ea   d03e       MOVB         XAR0, #0x3e
000007eb   28a9       MOV          AL, #0x47c9
000007ec   47c9
000007ed   8291       MOVL         XAR3, *+XAR1[AR0]
000007ee   1e42       MOVL         *-SP[2], ACC
000007ef   06c1       MOVL         ACC, *+XAR1[0]
000007f0   7640       LCR          0x000000
000007f1   0000
000007f2   86a9       MOVL         XAR2, ACC
0007f3:              $C$L44:
000007f3   9a00       MOVB         AL, #0x0
000007f4   28a8       MOV          AH, #0x4780
000007f5   4780
000007f6   1e42       MOVL         *-SP[2], ACC
000007f7   aaa9       MOVL         ACC, XAR2
000007f8   7640       LCR          0x000000
000007f9   0000
000007fa   1e42       MOVL         *-SP[2], ACC
000007fb   28a9       MOV          AL, #0x8000
000007fc   8000
000007fd   28a8       MOV          AH, #0x439d
000007fe   439d
000007ff   7640       LCR          0x000000
00000800   0000
00000801   1e42       MOVL         *-SP[2], ACC
00000802   a2a9       MOVL         ACC, XAR3
00000803   7640       LCR          0x000000
00000804   0000
00000805   5200       CMPB         AL, #0x0
00000806   6305       SB           5, GEQ
00000807   9a49       MOVB         AL, #0x49
00000808   8aa1       MOVL         XAR4, XAR1
00000809   7640       LCR          0x000200
0000080a   0200
00080b:              $C$L45:
0000080b   d042       MOVB         XAR0, #0x42
0000080c   8691       MOVL         XAR2, *+XAR1[AR0]
0000080d   d040       MOVB         XAR0, #0x40
0000080e   0691       MOVL         ACC, *+XAR1[AR0]
0000080f   1e42       MOVL         *-SP[2], ACC
00000810   aaa9       MOVL         ACC, XAR2
00000811   7640       LCR          0x000000
00000812   0000
00000813   5200       CMPB         AL, #0x0
00000814   6507       SB           7, LEQ
00000815   9a4c       MOVB         AL, #0x4c
00000816   8aa1       MOVL         XAR4, XAR1
00000817   7640       LCR          0x000200
00000818   0200
00000819   d042       MOVB         XAR0, #0x42
0000081a   8691       MOVL         XAR2, *+XAR1[AR0]
00081b:              $C$L46:
0000081b   9a00       MOVB         AL, #0x0
0000081c   9b00       MOVB         AH, #0x0
0000081d   1e42       MOVL         *-SP[2], ACC
0000081e   aaa9       MOVL         ACC, XAR2
0000081f   7640       LCR          0x000000
00000820   0000
00000821   5200       CMPB         AL, #0x0
00000822   6305       SB           5, GEQ
00000823   9a4d       MOVB         AL, #0x4d
00000824   8aa1       MOVL         XAR4, XAR1
00000825   7640       LCR          0x000200
00000826   0200
000827:              $C$L47:
00000827   d034       MOVB         XAR0, #0x34
00000828   9291       MOV          AL, *+XAR1[AR0]
00000829   5201       CMPB         AL, #0x1
0000082a   ed1f       SBF          31, NEQ
0000082b   d044       MOVB         XAR0, #0x44
0000082c   8691       MOVL         XAR2, *+XAR1[AR0]
0000082d   9a00       MOVB         AL, #0x0
0000082e   9b00       MOVB         AH, #0x0
0000082f   1e42       MOVL         *-SP[2], ACC
00000830   aaa9       MOVL         ACC, XAR2
00000831   7640       LCR          0x000000
00000832   0000
00000833   5200       CMPB         AL, #0x0
00000834   6507       SB           7, LEQ
00000835   9a4e       MOVB         AL, #0x4e
00000836   8aa1       MOVL         XAR4, XAR1
00000837   7640       LCR          0x000200
00000838   0200
00000839   d044       MOVB         XAR0, #0x44
0000083a   8691       MOVL         XAR2, *+XAR1[AR0]
00083b:              $C$L48:
0000083b   d040       MOVB         XAR0, #0x40
0000083c   0691       MOVL         ACC, *+XAR1[AR0]
0000083d   7640       LCR          0x000000
0000083e   0000
0000083f   1e42       MOVL         *-SP[2], ACC
00000840   aaa9       MOVL         ACC, XAR2
00000841   7640       LCR          0x000000
00000842   0000
00000843   5200       CMPB         AL, #0x0
00000844   6305       SB           5, GEQ
00000845   9a4f       MOVB         AL, #0x4f
00000846   8aa1       MOVL         XAR4, XAR1
00000847   7640       LCR          0x000200
00000848   0200
000849:              $C$L49:
00000849   d034       MOVB         XAR0, #0x34
0000084a   9291       MOV          AL, *+XAR1[AR0]
0000084b   ed1d       SBF          29, NEQ
0000084c   d044       MOVB         XAR0, #0x44
0000084d   8691       MOVL         XAR2, *+XAR1[AR0]
0000084e   9a00       MOVB         AL, #0x0
0000084f   9b00       MOVB         AH, #0x0
00000850   1e42       MOVL         *-SP[2], ACC
00000851   aaa9       MOVL         ACC, XAR2
00000852   7640       LCR          0x000000
00000853   0000
00000854   5200       CMPB         AL, #0x0
00000855   6507       SB           7, LEQ
00000856   9a4e       MOVB         AL, #0x4e
00000857   8aa1       MOVL         XAR4, XAR1
00000858   7640       LCR          0x000200
00000859   0200
0000085a   d044       MOVB         XAR0, #0x44
0000085b   8691       MOVL         XAR2, *+XAR1[AR0]
00085c:              $C$L50:
0000085c   9a00       MOVB         AL, #0x0
0000085d   9b00       MOVB         AH, #0x0
0000085e   1e42       MOVL         *-SP[2], ACC
0000085f   aaa9       MOVL         ACC, XAR2
00000860   7640       LCR          0x000000
00000861   0000
00000862   5200       CMPB         AL, #0x0
00000863   6305       SB           5, GEQ
00000864   9a4f       MOVB         AL, #0x4f
00000865   8aa1       MOVL         XAR4, XAR1
00000866   7640       LCR          0x000200
00000867   0200
000868:              $C$L51:
00000868   d040       MOVB         XAR0, #0x40
00000869   8691       MOVL         XAR2, *+XAR1[AR0]
0000086a   06c1       MOVL         ACC, *+XAR1[0]
0000086b   1e42       MOVL         *-SP[2], ACC
0000086c   aaa9       MOVL         ACC, XAR2
0000086d   7640       LCR          0x000000
0000086e   0000
0000086f   5200       CMPB         AL, #0x0
00000870   6507       SB           7, LEQ
00000871   9a4a       MOVB         AL, #0x4a
00000872   8aa1       MOVL         XAR4, XAR1
00000873   7640       LCR          0x000200
00000874   0200
00000875   d040       MOVB         XAR0, #0x40
00000876   8691       MOVL         XAR2, *+XAR1[AR0]
000877:              $C$L52:
00000877   9a00       MOVB         AL, #0x0
00000878   9b00       MOVB         AH, #0x0
00000879   1e42       MOVL         *-SP[2], ACC
0000087a   aaa9       MOVL         ACC, XAR2
0000087b   7640       LCR          0x000000
0000087c   0000
0000087d   5200       CMPB         AL, #0x0
0000087e   6205       SB           5, GT
0000087f   9a4b       MOVB         AL, #0x4b
00000880   8aa1       MOVL         XAR4, XAR1
00000881   7640       LCR          0x000200
00000882   0200
000883:              $C$L53:
00000883   d046       MOVB         XAR0, #0x46
00000884   8691       MOVL         XAR2, *+XAR1[AR0]
00000885   ff2f       MOV          ACC, #0x7f00 << 15
00000886   7f00
00000887   1e42       MOVL         *-SP[2], ACC
00000888   aaa9       MOVL         ACC, XAR2
00000889   7640       LCR          0x000000
0000088a   0000
0000088b   5200       CMPB         AL, #0x0
0000088c   6507       SB           7, LEQ
0000088d   9a50       MOVB         AL, #0x50
0000088e   8aa1       MOVL         XAR4, XAR1
0000088f   7640       LCR          0x000200
00000890   0200
00000891   d046       MOVB         XAR0, #0x46
00000892   8691       MOVL         XAR2, *+XAR1[AR0]
000893:              $C$L54:
00000893   9a00       MOVB         AL, #0x0
00000894   9b00       MOVB         AH, #0x0
00000895   1e42       MOVL         *-SP[2], ACC
00000896   aaa9       MOVL         ACC, XAR2
00000897   7640       LCR          0x000000
00000898   0000
00000899   5200       CMPB         AL, #0x0
0000089a   6205       SB           5, GT
0000089b   9a51       MOVB         AL, #0x51
0000089c   8aa1       MOVL         XAR4, XAR1
0000089d   7640       LCR          0x000200
0000089e   0200
00089f:              $C$L55:
0000089f   d048       MOVB         XAR0, #0x48
000008a0   8691       MOVL         XAR2, *+XAR1[AR0]
000008a1   ff2f       MOV          ACC, #0x7f00 << 15
000008a2   7f00
000008a3   1e42       MOVL         *-SP[2], ACC
000008a4   aaa9       MOVL         ACC, XAR2
000008a5   7640       LCR          0x000000
000008a6   0000
000008a7   5200       CMPB         AL, #0x0
000008a8   6507       SB           7, LEQ
000008a9   9a52       MOVB         AL, #0x52
000008aa   8aa1       MOVL         XAR4, XAR1
000008ab   7640       LCR          0x000200
000008ac   0200
000008ad   d048       MOVB         XAR0, #0x48
000008ae   8691       MOVL         XAR2, *+XAR1[AR0]
0008af:              $C$L56:
000008af   9a00       MOVB         AL, #0x0
000008b0   9b00       MOVB         AH, #0x0
000008b1   1e42       MOVL         *-SP[2], ACC
000008b2   aaa9       MOVL         ACC, XAR2
000008b3   7640       LCR          0x000000
000008b4   0000
000008b5   5200       CMPB         AL, #0x0
000008b6   6205       SB           5, GT
000008b7   9a53       MOVB         AL, #0x53
000008b8   8aa1       MOVL         XAR4, XAR1
000008b9   7640       LCR          0x000200
000008ba   0200
0008bb:              $C$L57:
000008bb   d034       MOVB         XAR0, #0x34
000008bc   9291       MOV          AL, *+XAR1[AR0]
000008bd   5201       CMPB         AL, #0x1
000008be   ed1d       SBF          29, NEQ
000008bf   d04a       MOVB         XAR0, #0x4a
000008c0   8691       MOVL         XAR2, *+XAR1[AR0]
000008c1   9a00       MOVB         AL, #0x0
000008c2   9b00       MOVB         AH, #0x0
000008c3   1e42       MOVL         *-SP[2], ACC
000008c4   aaa9       MOVL         ACC, XAR2
000008c5   7640       LCR          0x000000
000008c6   0000
000008c7   5200       CMPB         AL, #0x0
000008c8   6507       SB           7, LEQ
000008c9   9a54       MOVB         AL, #0x54
000008ca   8aa1       MOVL         XAR4, XAR1
000008cb   7640       LCR          0x000200
000008cc   0200
000008cd   d04a       MOVB         XAR0, #0x4a
000008ce   8691       MOVL         XAR2, *+XAR1[AR0]
0008cf:              $C$L58:
000008cf   9a00       MOVB         AL, #0x0
000008d0   9b00       MOVB         AH, #0x0
000008d1   1e42       MOVL         *-SP[2], ACC
000008d2   aaa9       MOVL         ACC, XAR2
000008d3   7640       LCR          0x000000
000008d4   0000
000008d5   5200       CMPB         AL, #0x0
000008d6   6305       SB           5, GEQ
000008d7   9a55       MOVB         AL, #0x55
000008d8   8aa1       MOVL         XAR4, XAR1
000008d9   7640       LCR          0x000200
000008da   0200
0008db:              $C$L59:
000008db   d034       MOVB         XAR0, #0x34
000008dc   9291       MOV          AL, *+XAR1[AR0]
000008dd   ed6e       SBF          110, NEQ
000008de   d04a       MOVB         XAR0, #0x4a
000008df   8691       MOVL         XAR2, *+XAR1[AR0]
000008e0   d040       MOVB         XAR0, #0x40
000008e1   0691       MOVL         ACC, *+XAR1[AR0]
000008e2   1e42       MOVL         *-SP[2], ACC
000008e3   aaa9       MOVL         ACC, XAR2
000008e4   7640       LCR          0x000000
000008e5   0000
000008e6   5200       CMPB         AL, #0x0
000008e7   6507       SB           7, LEQ
000008e8   9a54       MOVB         AL, #0x54
000008e9   8aa1       MOVL         XAR4, XAR1
000008ea   7640       LCR          0x000200
000008eb   0200
000008ec   d04a       MOVB         XAR0, #0x4a
000008ed   8691       MOVL         XAR2, *+XAR1[AR0]
0008ee:              $C$L60:
000008ee   9a00       MOVB         AL, #0x0
000008ef   9b00       MOVB         AH, #0x0
000008f0   1e42       MOVL         *-SP[2], ACC
000008f1   aaa9       MOVL         ACC, XAR2
000008f2   7640       LCR          0x000000
000008f3   0000
000008f4   5200       CMPB         AL, #0x0
000008f5   6305       SB           5, GEQ
000008f6   9a55       MOVB         AL, #0x55
000008f7   8aa1       MOVL         XAR4, XAR1
000008f8   7640       LCR          0x000200
000008f9   0200
0008fa:              $C$L61:
000008fa   d034       MOVB         XAR0, #0x34
000008fb   5a91       MOVZ         AR2, *+XAR1[AR0]
000008fc   92a2       MOV          AL, AR2
000008fd   ed4e       SBF          78, NEQ
000008fe   28a9       MOV          AL, #0x999a
000008ff   999a
00000900   28a8       MOV          AH, #0x3f99
00000901   3f99
00000902   d040       MOVB         XAR0, #0x40
00000903   1e42       MOVL         *-SP[2], ACC
00000904   0691       MOVL         ACC, *+XAR1[AR0]
00000905   7640       LCR          0x000000
00000906   0000
00000907   1e42       MOVL         *-SP[2], ACC
00000908   06c1       MOVL         ACC, *+XAR1[0]
00000909   7640       LCR          0x000000
0000090a   0000
0000090b   1ea6       MOVL         XAR6, ACC
0000090c   ff2f       MOV          ACC, #0x7f00 << 15
0000090d   7f00
0000090e   1e42       MOVL         *-SP[2], ACC
0000090f   06a6       MOVL         ACC, XAR6
00000910   7640       LCR          0x000000
00000911   0000
00000912   5200       CMPB         AL, #0x0
00000913   6307       SB           7, GEQ
00000914   9a58       MOVB         AL, #0x58
00000915   8aa1       MOVL         XAR4, XAR1
00000916   7640       LCR          0x000200
00000917   0200
00000918   d034       MOVB         XAR0, #0x34
00000919   5a91       MOVZ         AR2, *+XAR1[AR0]
00091a:              $C$L62:
0000091a   92a2       MOV          AL, AR2
0000091b   ed30       SBF          48, NEQ
0000091c   d040       MOVB         XAR0, #0x40
0000091d   0691       MOVL         ACC, *+XAR1[AR0]
0000091e   1e42       MOVL         *-SP[2], ACC
0000091f   06c1       MOVL         ACC, *+XAR1[0]
00000920   7640       LCR          0x000000
00000921   0000
00000922   1ea6       MOVL         XAR6, ACC
00000923   ff2f       MOV          ACC, #0x7f00 << 15
00000924   7f00
00000925   1e42       MOVL         *-SP[2], ACC
00000926   06a6       MOVL         ACC, XAR6
00000927   7640       LCR          0x000000
00000928   0000
00000929   5200       CMPB         AL, #0x0
0000092a   6307       SB           7, GEQ
0000092b   9a56       MOVB         AL, #0x56
0000092c   8aa1       MOVL         XAR4, XAR1
0000092d   7640       LCR          0x000200
0000092e   0200
0000092f   d034       MOVB         XAR0, #0x34
00000930   5a91       MOVZ         AR2, *+XAR1[AR0]
000931:              $C$L63:
00000931   92a2       MOV          AL, AR2
00000932   ed19       SBF          25, NEQ
00000933   d040       MOVB         XAR0, #0x40
00000934   0691       MOVL         ACC, *+XAR1[AR0]
00000935   1e42       MOVL         *-SP[2], ACC
00000936   7640       LCR          0x000000
00000937   0000
00000938   1e42       MOVL         *-SP[2], ACC
00000939   06c1       MOVL         ACC, *+XAR1[0]
0000093a   7640       LCR          0x000000
0000093b   0000
0000093c   1ea6       MOVL         XAR6, ACC
0000093d   28a9       MOV          AL, #0xb717
0000093e   b717
0000093f   28a8       MOV          AH, #0x38d1
00000940   38d1
00000941   1e42       MOVL         *-SP[2], ACC
00000942   06a6       MOVL         ACC, XAR6
00000943   7640       LCR          0x000000
00000944   0000
00000945   5200       CMPB         AL, #0x0
00000946   6305       SB           5, GEQ
00000947   9a5a       MOVB         AL, #0x5a
00000948   8aa1       MOVL         XAR4, XAR1
00000949   7640       LCR          0x000200
0000094a   0200
00094b:              $C$L64:
0000094b   d052       MOVB         XAR0, #0x52
0000094c   8691       MOVL         XAR2, *+XAR1[AR0]
0000094d   9a00       MOVB         AL, #0x0
0000094e   28a8       MOV          AH, #0x4348
0000094f   4348
00000950   1e42       MOVL         *-SP[2], ACC
00000951   aaa9       MOVL         ACC, XAR2
00000952   7640       LCR          0x000000
00000953   0000
00000954   5200       CMPB         AL, #0x0
00000955   6507       SB           7, LEQ
00000956   9a5c       MOVB         AL, #0x5c
00000957   8aa1       MOVL         XAR4, XAR1
00000958   7640       LCR          0x000200
00000959   0200
0000095a   d052       MOVB         XAR0, #0x52
0000095b   8691       MOVL         XAR2, *+XAR1[AR0]
00095c:              $C$L65:
0000095c   9a00       MOVB         AL, #0x0
0000095d   9b00       MOVB         AH, #0x0
0000095e   1e42       MOVL         *-SP[2], ACC
0000095f   aaa9       MOVL         ACC, XAR2
00000960   7640       LCR          0x000000
00000961   0000
00000962   5200       CMPB         AL, #0x0
00000963   6409       SB           9, LT
00000964   ff2f       MOV          ACC, #0x7f00 << 15
00000965   7f00
00000966   1e42       MOVL         *-SP[2], ACC
00000967   aaa9       MOVL         ACC, XAR2
00000968   7640       LCR          0x000000
00000969   0000
0000096a   5200       CMPB         AL, #0x0
0000096b   6305       SB           5, GEQ
00096c:              $C$L66:
0000096c   9a5d       MOVB         AL, #0x5d
0000096d   8aa1       MOVL         XAR4, XAR1
0000096e   7640       LCR          0x000200
0000096f   0200
000970:              $C$L67:
00000970   d03c       MOVB         XAR0, #0x3c
00000971   9a00       MOVB         AL, #0x0
00000972   8691       MOVL         XAR2, *+XAR1[AR0]
00000973   9b00       MOVB         AH, #0x0
00000974   82c1       MOVL         XAR3, *+XAR1[0]
00000975   1e42       MOVL         *-SP[2], ACC
00000976   aaa9       MOVL         ACC, XAR2
00000977   7640       LCR          0x000000
00000978   0000
00000979   5200       CMPB         AL, #0x0
0000097a   6129       SB           41, EQ
0000097b   28a9       MOV          AL, #0x705f
0000097c   705f
0000097d   28a8       MOV          AH, #0x3089
0000097e   3089
0000097f   1e42       MOVL         *-SP[2], ACC
00000980   aaa9       MOVL         ACC, XAR2
00000981   7640       LCR          0x000000
00000982   0000
00000983   1ea6       MOVL         XAR6, ACC
00000984   ff2f       MOV          ACC, #0x7e00 << 15
00000985   7e00
00000986   1e42       MOVL         *-SP[2], ACC
00000987   06a6       MOVL         ACC, XAR6
00000988   7640       LCR          0x000000
00000989   0000
0000098a   a242       MOVL         *-SP[2], XAR3
0000098b   7640       LCR          0x000000
0000098c   0000
0000098d   1e42       MOVL         *-SP[2], ACC
0000098e   9a00       MOVB         AL, #0x0
0000098f   28a8       MOV          AH, #0x4761
00000990   4761
00000991   7640       LCR          0x000000
00000992   0000
00000993   1ea6       MOVL         XAR6, ACC
00000994   28a9       MOV          AL, #0x4000
00000995   4000
00000996   28a8       MOV          AH, #0x459c
00000997   459c
00000998   1e42       MOVL         *-SP[2], ACC
00000999   06a6       MOVL         ACC, XAR6
0000099a   7640       LCR          0x000000
0000099b   0000
0000099c   5200       CMPB         AL, #0x0
0000099d   6206       SB           6, GT
0000099e   9a5e       MOVB         AL, #0x5e
0000099f   8aa1       MOVL         XAR4, XAR1
000009a0   7640       LCR          0x000200
000009a1   0200
000009a2   82c1       MOVL         XAR3, *+XAR1[0]
0009a3:              $C$L68:
000009a3   d03e       MOVB         XAR0, #0x3e
000009a4   8691       MOVL         XAR2, *+XAR1[AR0]
000009a5   9a00       MOVB         AL, #0x0
000009a6   9b00       MOVB         AH, #0x0
000009a7   1e42       MOVL         *-SP[2], ACC
000009a8   aaa9       MOVL         ACC, XAR2
000009a9   7640       LCR          0x000000
000009aa   0000
000009ab   5200       CMPB         AL, #0x0
000009ac   6129       SB           41, EQ
000009ad   28a9       MOV          AL, #0x705f
000009ae   705f
000009af   28a8       MOV          AH, #0x3089
000009b0   3089
000009b1   1e42       MOVL         *-SP[2], ACC
000009b2   aaa9       MOVL         ACC, XAR2
000009b3   7640       LCR          0x000000
000009b4   0000
000009b5   1ea6       MOVL         XAR6, ACC
000009b6   ff2f       MOV          ACC, #0x7e00 << 15
000009b7   7e00
000009b8   1e42       MOVL         *-SP[2], ACC
000009b9   06a6       MOVL         ACC, XAR6
000009ba   7640       LCR          0x000000
000009bb   0000
000009bc   a242       MOVL         *-SP[2], XAR3
000009bd   7640       LCR          0x000000
000009be   0000
000009bf   1e42       MOVL         *-SP[2], ACC
000009c0   9a00       MOVB         AL, #0x0
000009c1   28a8       MOV          AH, #0x4761
000009c2   4761
000009c3   7640       LCR          0x000000
000009c4   0000
000009c5   1ea6       MOVL         XAR6, ACC
000009c6   28a9       MOV          AL, #0x4000
000009c7   4000
000009c8   28a8       MOV          AH, #0x459c
000009c9   459c
000009ca   1e42       MOVL         *-SP[2], ACC
000009cb   06a6       MOVL         ACC, XAR6
000009cc   7640       LCR          0x000000
000009cd   0000
000009ce   5200       CMPB         AL, #0x0
000009cf   6206       SB           6, GT
000009d0   9a5e       MOVB         AL, #0x5e
000009d1   8aa1       MOVL         XAR4, XAR1
000009d2   7640       LCR          0x000200
000009d3   0200
000009d4   82c1       MOVL         XAR3, *+XAR1[0]
0009d5:              $C$L69:
000009d5   9a00       MOVB         AL, #0x0
000009d6   28a8       MOV          AH, #0x43c8
000009d7   43c8
000009d8   d040       MOVB         XAR0, #0x40
000009d9   1e42       MOVL         *-SP[2], ACC
000009da   0691       MOVL         ACC, *+XAR1[AR0]
000009db   7640       LCR          0x000000
000009dc   0000
000009dd   86a9       MOVL         XAR2, ACC
000009de   9a00       MOVB         AL, #0x0
000009df   28a8       MOV          AH, #0x4300
000009e0   4300
000009e1   1e42       MOVL         *-SP[2], ACC
000009e2   a2a9       MOVL         ACC, XAR3
000009e3   7640       LCR          0x000000
000009e4   0000
000009e5   1e42       MOVL         *-SP[2], ACC
000009e6   aaa9       MOVL         ACC, XAR2
000009e7   7640       LCR          0x000000
000009e8   0000
000009e9   1ea6       MOVL         XAR6, ACC
000009ea   28a9       MOV          AL, #0x4000
000009eb   4000
000009ec   28a8       MOV          AH, #0x459c
000009ed   459c
000009ee   1e42       MOVL         *-SP[2], ACC
000009ef   06a6       MOVL         ACC, XAR6
000009f0   7640       LCR          0x000000
000009f1   0000
000009f2   5200       CMPB         AL, #0x0
000009f3   6405       SB           5, LT
000009f4   9a5f       MOVB         AL, #0x5f
000009f5   8aa1       MOVL         XAR4, XAR1
000009f6   7640       LCR          0x000200
000009f7   0200
0009f8:              $C$L70:
000009f8   d03a       MOVB         XAR0, #0x3a
000009f9   8691       MOVL         XAR2, *+XAR1[AR0]
000009fa   9a00       MOVB         AL, #0x0
000009fb   9b00       MOVB         AH, #0x0
000009fc   1e42       MOVL         *-SP[2], ACC
000009fd   aaa9       MOVL         ACC, XAR2
000009fe   7640       LCR          0x000000
000009ff   0000
00000a00   5200       CMPB         AL, #0x0
00000a01   6148       SB           72, EQ
00000a02   d03c       MOVB         XAR0, #0x3c
00000a03   8291       MOVL         XAR3, *+XAR1[AR0]
00000a04   9a00       MOVB         AL, #0x0
00000a05   9b00       MOVB         AH, #0x0
00000a06   1e42       MOVL         *-SP[2], ACC
00000a07   a2a9       MOVL         ACC, XAR3
00000a08   7640       LCR          0x000000
00000a09   0000
00000a0a   5200       CMPB         AL, #0x0
00000a0b   613e       SB           62, EQ
00000a0c   d03e       MOVB         XAR0, #0x3e
00000a0d   c491       MOVL         XAR6, *+XAR1[AR0]
00000a0e   9a00       MOVB         AL, #0x0
00000a0f   9b00       MOVB         AH, #0x0
00000a10   c244       MOVL         *-SP[4], XAR6
00000a11   1e42       MOVL         *-SP[2], ACC
00000a12   06a6       MOVL         ACC, XAR6
00000a13   7640       LCR          0x000000
00000a14   0000
00000a15   5200       CMPB         AL, #0x0
00000a16   6133       SB           51, EQ
00000a17   28a9       MOV          AL, #0x705f
00000a18   705f
00000a19   28a8       MOV          AH, #0x3089
00000a1a   3089
00000a1b   1e42       MOVL         *-SP[2], ACC
00000a1c   a2a9       MOVL         ACC, XAR3
00000a1d   7640       LCR          0x000000
00000a1e   0000
00000a1f   1e42       MOVL         *-SP[2], ACC
00000a20   aaa9       MOVL         ACC, XAR2
00000a21   7640       LCR          0x000000
00000a22   0000
00000a23   1ea6       MOVL         XAR6, ACC
00000a24   28a9       MOV          AL, #0x4000
00000a25   4000
00000a26   28a8       MOV          AH, #0x459c
00000a27   459c
00000a28   1e42       MOVL         *-SP[2], ACC
00000a29   06a6       MOVL         ACC, XAR6
00000a2a   7640       LCR          0x000000
00000a2b   0000
00000a2c   5200       CMPB         AL, #0x0
00000a2d   6318       SB           24, GEQ
00000a2e   28a9       MOV          AL, #0x705f
00000a2f   705f
00000a30   28a8       MOV          AH, #0x3089
00000a31   3089
00000a32   1e42       MOVL         *-SP[2], ACC
00000a33   0644       MOVL         ACC, *-SP[4]
00000a34   7640       LCR          0x000000
00000a35   0000
00000a36   1e42       MOVL         *-SP[2], ACC
00000a37   aaa9       MOVL         ACC, XAR2
00000a38   7640       LCR          0x000000
00000a39   0000
00000a3a   1ea6       MOVL         XAR6, ACC
00000a3b   28a9       MOV          AL, #0x4000
00000a3c   4000
00000a3d   28a8       MOV          AH, #0x459c
00000a3e   459c
00000a3f   1e42       MOVL         *-SP[2], ACC
00000a40   06a6       MOVL         ACC, XAR6
00000a41   7640       LCR          0x000000
00000a42   0000
00000a43   5200       CMPB         AL, #0x0
00000a44   6405       SB           5, LT
000a45:              $C$L71:
00000a45   9a5f       MOVB         AL, #0x5f
00000a46   8aa1       MOVL         XAR4, XAR1
00000a47   7640       LCR          0x000200
00000a48   0200
000a49:              $C$L72:
00000a49   d0a8       MOVB         XAR0, #0xa8
00000a4a   8691       MOVL         XAR2, *+XAR1[AR0]
00000a4b   9a00       MOVB         AL, #0x0
00000a4c   9b00       MOVB         AH, #0x0
00000a4d   1e42       MOVL         *-SP[2], ACC
00000a4e   aaa9       MOVL         ACC, XAR2
00000a4f   7640       LCR          0x000000
00000a50   0000
00000a51   5200       CMPB         AL, #0x0
00000a52   6507       SB           7, LEQ
00000a53   9a68       MOVB         AL, #0x68
00000a54   8aa1       MOVL         XAR4, XAR1
00000a55   7640       LCR          0x000200
00000a56   0200
00000a57   d0a8       MOVB         XAR0, #0xa8
00000a58   8691       MOVL         XAR2, *+XAR1[AR0]
000a59:              $C$L73:
00000a59   d040       MOVB         XAR0, #0x40
00000a5a   0691       MOVL         ACC, *+XAR1[AR0]
00000a5b   7640       LCR          0x000000
00000a5c   0000
00000a5d   1e42       MOVL         *-SP[2], ACC
00000a5e   aaa9       MOVL         ACC, XAR2
00000a5f   7640       LCR          0x000000
00000a60   0000
00000a61   5200       CMPB         AL, #0x0
00000a62   6305       SB           5, GEQ
00000a63   9a69       MOVB         AL, #0x69
00000a64   8aa1       MOVL         XAR4, XAR1
00000a65   7640       LCR          0x000200
00000a66   0200
000a67:              $C$L74:
00000a67   fe84       SUBB         SP, #4
00000a68   82be       MOVL         XAR3, *--SP
00000a69   86be       MOVL         XAR2, *--SP
00000a6a   8bbe       MOVL         XAR1, *--SP
00000a6b   0006       LRETR        
000a6c:              _USER_checkDefErrors:
00000a6c   b2bd       MOVL         *SP++, XAR1
00000a6d   aabd       MOVL         *SP++, XAR2
00000a6e   fe02       ADDB         SP, #2
00000a6f   d02c       MOVB         XAR0, #0x2c
00000a70   8ba4       MOVL         XAR1, XAR4
00000a71   8691       MOVL         XAR2, *+XAR1[AR0]
00000a72   9a00       MOVB         AL, #0x0
00000a73   28a8       MOV          AH, #0x4300
00000a74   4300
00000a75   1e42       MOVL         *-SP[2], ACC
00000a76   aaa9       MOVL         ACC, XAR2
00000a77   7640       LCR          0x000000
00000a78   0000
00000a79   5200       CMPB         AL, #0x0
00000a7a   6407       SB           7, LT
00000a7b   9a35       MOVB         AL, #0x35
00000a7c   8aa1       MOVL         XAR4, XAR1
00000a7d   7640       LCR          0x000200
00000a7e   0200
00000a7f   d02c       MOVB         XAR0, #0x2c
00000a80   8691       MOVL         XAR2, *+XAR1[AR0]
000a81:              $C$L75:
00000a81   28a9       MOV          AL, #0xcccd
00000a82   cccd
00000a83   28a8       MOV          AH, #0x3dcc
00000a84   3dcc
00000a85   1e42       MOVL         *-SP[2], ACC
00000a86   aaa9       MOVL         ACC, XAR2
00000a87   7640       LCR          0x000000
00000a88   0000
00000a89   5200       CMPB         AL, #0x0
00000a8a   6305       SB           5, GEQ
00000a8b   9a36       MOVB         AL, #0x36
00000a8c   8aa1       MOVL         XAR4, XAR1
00000a8d   7640       LCR          0x000200
00000a8e   0200
000a8f:              $C$L76:
00000a8f   fe82       SUBB         SP, #2
00000a90   86be       MOVL         XAR2, *--SP
00000a91   8bbe       MOVL         XAR1, *--SP
00000a92   0006       LRETR        
000a93:              _USER_calcPIgains:
00000a93   b2bd       MOVL         *SP++, XAR1
00000a94   aabd       MOVL         *SP++, XAR2
00000a95   a2bd       MOVL         *SP++, XAR3
00000a96   fe16       ADDB         SP, #22
00000a97   d0a6       MOVB         XAR0, #0xa6
00000a98   8ba4       MOVL         XAR1, XAR4
00000a99   06c5       MOVL         ACC, *+XAR5[0]
00000a9a   1e4e       MOVL         *-SP[14], ACC
00000a9b   86d5       MOVL         XAR2, *+XAR5[2]
00000a9c   0691       MOVL         ACC, *+XAR1[AR0]
00000a9d   d018       MOVB         XAR0, #0x18
00000a9e   1e50       MOVL         *-SP[16], ACC
00000a9f   8a91       MOVL         XAR4, *+XAR1[AR0]
00000aa0   7640       LCR          0x000000
00000aa1   0000
00000aa2   d018       MOVB         XAR0, #0x18
00000aa3   82a9       MOVL         XAR3, ACC
00000aa4   8a91       MOVL         XAR4, *+XAR1[AR0]
00000aa5   7640       LCR          0x000000
00000aa6   0000
00000aa7   d018       MOVB         XAR0, #0x18
00000aa8   1e52       MOVL         *-SP[18], ACC
00000aa9   8a91       MOVL         XAR4, *+XAR1[AR0]
00000aaa   7640       LCR          0x000000
00000aab   0000
00000aac   1e54       MOVL         *-SP[20], ACC
00000aad   aa42       MOVL         *-SP[2], XAR2
00000aae   0650       MOVL         ACC, *-SP[16]
00000aaf   7640       LCR          0x000000
00000ab0   0000
00000ab1   86a9       MOVL         XAR2, ACC
00000ab2   ff2f       MOV          ACC, #0x7d00 << 15
00000ab3   7d00
00000ab4   1e42       MOVL         *-SP[2], ACC
00000ab5   a2a9       MOVL         ACC, XAR3
00000ab6   7640       LCR          0x000000
00000ab7   0000
00000ab8   c44e       MOVL         XAR6, *-SP[14]
00000ab9   c242       MOVL         *-SP[2], XAR6
00000aba   7640       LCR          0x000000
00000abb   0000
00000abc   aa42       MOVL         *-SP[2], XAR2
00000abd   7640       LCR          0x000000
00000abe   0000
00000abf   88ad       MOVZ         AR6, SP
00000ac0   de8c       SUBB         XAR6, #12
00000ac1   7640       LCR          0x000000
00000ac2   0000
00000ac3   5cad       MOVZ         AR4, SP
00000ac4   88ad       MOVZ         AR6, SP
00000ac5   8f40       MOVL         XAR5, #0x000004
00000ac6   0004
00000ac7   dc8c       SUBB         XAR4, #12
00000ac8   de88       SUBB         XAR6, #8
00000ac9   7640       LCR          0x000000
00000aca   0000
00000acb   5cad       MOVZ         AR4, SP
00000acc   dc88       SUBB         XAR4, #8
00000acd   7640       LCR          0x000000
00000ace   0000
00000acf   1e56       MOVL         *-SP[22], ACC
00000ad0   a242       MOVL         *-SP[2], XAR3
00000ad1   0654       MOVL         ACC, *-SP[20]
00000ad2   7640       LCR          0x000000
00000ad3   0000
00000ad4   c450       MOVL         XAR6, *-SP[16]
00000ad5   c242       MOVL         *-SP[2], XAR6
00000ad6   7640       LCR          0x000000
00000ad7   0000
00000ad8   88ad       MOVZ         AR6, SP
00000ad9   de8c       SUBB         XAR6, #12
00000ada   7640       LCR          0x000000
00000adb   0000
00000adc   5cad       MOVZ         AR4, SP
00000add   88ad       MOVZ         AR6, SP
00000ade   8f40       MOVL         XAR5, #0x000004
00000adf   0004
00000ae0   dc8c       SUBB         XAR4, #12
00000ae1   de88       SUBB         XAR6, #8
00000ae2   7640       LCR          0x000000
00000ae3   0000
00000ae4   5cad       MOVZ         AR4, SP
00000ae5   dc88       SUBB         XAR4, #8
00000ae6   7640       LCR          0x000000
00000ae7   0000
00000ae8   82a9       MOVL         XAR3, ACC
00000ae9   ff2f       MOV          ACC, #0x7d00 << 15
00000aea   7d00
00000aeb   1e42       MOVL         *-SP[2], ACC
00000aec   0652       MOVL         ACC, *-SP[18]
00000aed   7640       LCR          0x000000
00000aee   0000
00000aef   c44e       MOVL         XAR6, *-SP[14]
00000af0   c242       MOVL         *-SP[2], XAR6
00000af1   7640       LCR          0x000000
00000af2   0000
00000af3   aa42       MOVL         *-SP[2], XAR2
00000af4   7640       LCR          0x000000
00000af5   0000
00000af6   88ad       MOVZ         AR6, SP
00000af7   de8c       SUBB         XAR6, #12
00000af8   7640       LCR          0x000000
00000af9   0000
00000afa   5cad       MOVZ         AR4, SP
00000afb   88ad       MOVZ         AR6, SP
00000afc   8f40       MOVL         XAR5, #0x000004
00000afd   0004
00000afe   dc8c       SUBB         XAR4, #12
00000aff   de88       SUBB         XAR6, #8
00000b00   7640       LCR          0x000000
00000b01   0000
00000b02   5cad       MOVZ         AR4, SP
00000b03   dc88       SUBB         XAR4, #8
00000b04   7640       LCR          0x000000
00000b05   0000
00000b06   1e4e       MOVL         *-SP[14], ACC
00000b07   0652       MOVL         ACC, *-SP[18]
00000b08   1e42       MOVL         *-SP[2], ACC
00000b09   0654       MOVL         ACC, *-SP[20]
00000b0a   7640       LCR          0x000000
00000b0b   0000
00000b0c   c450       MOVL         XAR6, *-SP[16]
00000b0d   c242       MOVL         *-SP[2], XAR6
00000b0e   7640       LCR          0x000000
00000b0f   0000
00000b10   88ad       MOVZ         AR6, SP
00000b11   de8c       SUBB         XAR6, #12
00000b12   7640       LCR          0x000000
00000b13   0000
00000b14   5cad       MOVZ         AR4, SP
00000b15   88ad       MOVZ         AR6, SP
00000b16   8f40       MOVL         XAR5, #0x000004
00000b17   0004
00000b18   dc8c       SUBB         XAR4, #12
00000b19   de88       SUBB         XAR6, #8
00000b1a   7640       LCR          0x000000
00000b1b   0000
00000b1c   5cad       MOVZ         AR4, SP
00000b1d   dc88       SUBB         XAR4, #8
00000b1e   7640       LCR          0x000000
00000b1f   0000
00000b20   d020       MOVB         XAR0, #0x20
00000b21   8a91       MOVL         XAR4, *+XAR1[AR0]
00000b22   86a9       MOVL         XAR2, ACC
00000b23   0200       MOVB         ACC, #0
00000b24   a2d4       MOVL         *+XAR4[2], XAR3
00000b25   a242       MOVL         *-SP[2], XAR3
00000b26   1e44       MOVL         *-SP[4], ACC
00000b27   0656       MOVL         ACC, *-SP[22]
00000b28   d501       MOVB         XAR5, #0x1
00000b29   8aa1       MOVL         XAR4, XAR1
00000b2a   7640       LCR          0x000000
00000b2b   0000
00000b2c   d032       MOVB         XAR0, #0x32
00000b2d   8a91       MOVL         XAR4, *+XAR1[AR0]
00000b2e   0200       MOVB         ACC, #0
00000b2f   aad4       MOVL         *+XAR4[2], XAR2
00000b30   aa42       MOVL         *-SP[2], XAR2
00000b31   1e44       MOVL         *-SP[4], ACC
00000b32   064e       MOVL         ACC, *-SP[14]
00000b33   d502       MOVB         XAR5, #0x2
00000b34   8aa1       MOVL         XAR4, XAR1
00000b35   7640       LCR          0x000000
00000b36   0000
00000b37   fe96       SUBB         SP, #22
00000b38   82be       MOVL         XAR3, *--SP
00000b39   86be       MOVL         XAR2, *--SP
00000b3a   8bbe       MOVL         XAR1, *--SP
00000b3b   0006       LRETR        

	.sect ".econst:_BOARD_Params"
00000000   0000	.word 0
00000001   4120	.word 0x4120
00000002   0000	.word 0
00000003   43e1	.word 0x43e1
00000004   1eb8	.word 0x1eb8
00000005   419f	.word 0x419f
00000006   cccd	.word 0xcccd
00000007   43cc	.word 0x43cc
00000008   0000	.word 0
00000009   4120	.word 0x4120
0000000a   0000	.word 0
0000000b   43e1	.word 0x43e1
0000000c   1eb8	.word 0x1eb8
0000000d   419f	.word 0x419f
0000000e   cccd	.word 0xcccd
0000000f   43cc	.word 0x43cc
00000010   0000	.word 0
00000011   41c8	.word 0x41c8
00000012   0000	.word 0
00000013   43e1	.word 0x43e1
00000014   e666	.word 0xe666
00000015   4246	.word 0x4246
00000016   cccd	.word 0xcccd
00000017   43cc	.word 0x43cc
00000018   0000	.word 0
00000019   4120	.word 0x4120
0000001a   0000	.word 0
0000001b   43e1	.word 0x43e1
0000001c   1eb8	.word 0x1eb8
0000001d   419f	.word 0x419f
0000001e   cccd	.word 0xcccd
0000001f   43cc	.word 0x43cc
00000020   0000	.word 0
00000021   4000	.word 0x4000
00000022   0000	.word 0
00000023   43e1	.word 0x43e1
00000024   70a4	.word 0x70a4
00000025   407d	.word 0x407d
00000026   cccd	.word 0xcccd
00000027   43cc	.word 0x43cc
00000028   0000	.word 0
00000029   4120	.word 0x4120
0000002a   0000	.word 0
0000002b   43e1	.word 0x43e1
0000002c   1eb8	.word 0x1eb8
0000002d   419f	.word 0x419f
0000002e   cccd	.word 0xcccd
0000002f   43cc	.word 0x43cc
00000030   0000	.word 0
00000031   4120	.word 0x4120
00000032   0000	.word 0
00000033   43e1	.word 0x43e1
00000034   1eb8	.word 0x1eb8
00000035   419f	.word 0x419f
00000036   cccd	.word 0xcccd
00000037   43cc	.word 0x43cc
00000038   0000	.word 0
00000039   4120	.word 0x4120
0000003a   0000	.word 0
0000003b   43e1	.word 0x43e1
0000003c   1eb8	.word 0x1eb8
0000003d   419f	.word 0x419f
0000003e   cccd	.word 0xcccd
0000003f   43cc	.word 0x43cc

	.sect ".econst:_MOTOR_DATA"
00000000   0000	.word 0
00000001   0002	.word 0x2
00000002   d850	.word 0xd850
00000003   4323	.word 0x4323
00000004   b483	.word 0xb483
00000005   42e7	.word 0x42e7
00000006   6602	.word 0x6602
00000007   3e9d	.word 0x3e9d
00000008   6602	.word 0x6602
00000009   3e9d	.word 0x3e9d
0000000a   5048	.word 0x5048
0000000b   4048	.word 0x4048
0000000c   ccc8	.word 0xccc8
0000000d   3e4c	.word 0x3e4c
0000000e   cccd	.word 0xcccd
0000000f   3d4c	.word 0x3d4c
00000010   0000	.word 0
00000011   0000	.word 0
00000012   cccd	.word 0xcccd
00000013   3e4c	.word 0x3e4c
00000014   0000	.word 0
00000015   40a0	.word 0x40a0
00000016   0000	.word 0
00000017   0002	.word 0x2
00000018   72af	.word 0x72af
00000019   4180	.word 0x4180
0000001a   c528	.word 0xc528
0000001b   4102	.word 0x4102
0000001c   01ed	.word 0x1ed
0000001d   3cd3	.word 0x3cd3
0000001e   01ed	.word 0x1ed
0000001f   3cd3	.word 0x3cd3
00000020   5048	.word 0x5048
00000021   4048	.word 0x4048
00000022   f3e4	.word 0xf3e4
00000023   3f81	.word 0x3f81
00000024   999a	.word 0x999a
00000025   3e99	.word 0x3e99
00000026   0000	.word 0
00000027   0000	.word 0
00000028   999a	.word 0x999a
00000029   3f99	.word 0x3f99
0000002a   0000	.word 0
0000002b   40a0	.word 0x40a0
0000002c   0000	.word 0
0000002d   0001	.word 0x1
0000002e   8242	.word 0x8242
0000002f   3fba	.word 0x3fba
00000030   9864	.word 0x9864
00000031   4004	.word 0x4004
00000032   77d0	.word 0x77d0
00000033   3cc9	.word 0x3cc9
00000034   77d0	.word 0x77d0
00000035   3cc9	.word 0x3cc9
00000036   5048	.word 0x5048
00000037   4048	.word 0x4048
00000038   1f2d	.word 0x1f2d
00000039   402b	.word 0x402b
0000003a   0000	.word 0
0000003b   3f80	.word 0x3f80
0000003c   0000	.word 0
0000003d   0000	.word 0
0000003e   0000	.word 0
0000003f   40a0	.word 0x40a0
00000040   0000	.word 0
00000041   40a0	.word 0x40a0
00000042   0000	.word 0
00000043   0002	.word 0x2
00000044   d850	.word 0xd850
00000045   4323	.word 0x4323
00000046   b483	.word 0xb483
00000047   42e7	.word 0x42e7
00000048   6602	.word 0x6602
00000049   3e9d	.word 0x3e9d
0000004a   6602	.word 0x6602
0000004b   3e9d	.word 0x3e9d
0000004c   5048	.word 0x5048
0000004d   4048	.word 0x4048
0000004e   ccc8	.word 0xccc8
0000004f   3e4c	.word 0x3e4c
00000050   cccd	.word 0xcccd
00000051   3d4c	.word 0x3d4c
00000052   0000	.word 0
00000053   0000	.word 0
00000054   cccd	.word 0xcccd
00000055   3e4c	.word 0x3e4c
00000056   0000	.word 0
00000057   40a0	.word 0x40a0
00000058   0000	.word 0
00000059   0002	.word 0x2
0000005a   b0a4	.word 0xb0a4
0000005b   437f	.word 0x437f
0000005c   0b96	.word 0xb96
0000005d   4399	.word 0x4399
0000005e   93b5	.word 0x93b5
0000005f   3ee3	.word 0x3ee3
00000060   93b5	.word 0x93b5
00000061   3ee3	.word 0x3ee3
00000062   5048	.word 0x5048
00000063   4048	.word 0x4048
00000064   cdc3	.word 0xcdc3
00000065   3dfe	.word 0x3dfe
00000066   cccd	.word 0xcccd
00000067   3d4c	.word 0x3d4c
00000068   0000	.word 0
00000069   0000	.word 0
0000006a   cccd	.word 0xcccd
0000006b   3e4c	.word 0x3e4c
0000006c   0000	.word 0
0000006d   40a0	.word 0x40a0
0000006e   0000	.word 0
0000006f   0002	.word 0x2
00000070   ac8a	.word 0xac8a
00000071   4208	.word 0x4208
00000072   ef27	.word 0xef27
00000073   4189	.word 0x4189
00000074   85fe	.word 0x85fe
00000075   3d49	.word 0x3d49
00000076   85fe	.word 0x85fe
00000077   3d49	.word 0x3d49
00000078   5048	.word 0x5048
00000079   4048	.word 0x4048
0000007a   ed24	.word 0xed24
0000007b   3f45	.word 0x3f45
0000007c   cccd	.word 0xcccd
0000007d   3e4c	.word 0x3e4c
0000007e   0000	.word 0
0000007f   0000	.word 0
00000080   3333	.word 0x3333
00000081   3f93	.word 0x3f93
00000082   0000	.word 0
00000083   40a0	.word 0x40a0
00000084   0000	.word 0
00000085   0002	.word 0x2
00000086   ac8a	.word 0xac8a
00000087   4208	.word 0x4208
00000088   ef27	.word 0xef27
00000089   4189	.word 0x4189
0000008a   85fe	.word 0x85fe
0000008b   3d49	.word 0x3d49
0000008c   85fe	.word 0x85fe
0000008d   3d49	.word 0x3d49
0000008e   5048	.word 0x5048
0000008f   4048	.word 0x4048
00000090   ed24	.word 0xed24
00000091   3f45	.word 0x3f45
00000092   cccd	.word 0xcccd
00000093   3e4c	.word 0x3e4c
00000094   0000	.word 0
00000095   0000	.word 0
00000096   3333	.word 0x3333
00000097   3f93	.word 0x3f93
00000098   0000	.word 0
00000099   40a0	.word 0x40a0
0000009a   0000	.word 0
0000009b   0002	.word 0x2
0000009c   ac8a	.word 0xac8a
0000009d   4208	.word 0x4208
0000009e   ef27	.word 0xef27
0000009f   4189	.word 0x4189
000000a0   85fe	.word 0x85fe
000000a1   3d49	.word 0x3d49
000000a2   85fe	.word 0x85fe
000000a3   3d49	.word 0x3d49
000000a4   5048	.word 0x5048
000000a5   4048	.word 0x4048
000000a6   ed24	.word 0xed24
000000a7   3f45	.word 0x3f45
000000a8   cccd	.word 0xcccd
000000a9   3e4c	.word 0x3e4c
000000aa   0000	.word 0
000000ab   0000	.word 0
000000ac   3333	.word 0x3333
000000ad   3f93	.word 0x3f93
000000ae   0000	.word 0
000000af   40a0	.word 0x40a0

	.sect ".econst"
00000000   0000	.word 0
00000001   0000	.word 0
00000002   0000	.word 0
00000003   41d0	.word 0x41d0
00000004   0000	.word 0
00000005   0000	.word 0
00000006   0000	.word 0
00000007   4170	.word 0x4170
