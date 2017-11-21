
	.sect ".cinit"
003f4e43   fffe	.word 0xfffe
003f4e44   0312	.word 0x312
003f4e45   0000	.word 0
003f4e46   8000	.word 0x8000
003f4e47   0000	.word 0
003f4e48   fffe	.word 0xfffe
003f4e49   0314	.word 0x314
003f4e4a   0000	.word 0
003f4e4b   32f2	.word 0x32f2
003f4e4c   003f	.word 0x3f
003f4e4d   fffe	.word 0xfffe
003f4e4e   0316	.word 0x316
003f4e4f   0000	.word 0
003f4e50   0000	.word 0
003f4e51   4000	.word 0x4000
003f4e52   fffe	.word 0xfffe
003f4e53   0318	.word 0x318
003f4e54   0000	.word 0
003f4e55   2000	.word 0x2000
003f4e56   0000	.word 0
003f4e57   fffe	.word 0xfffe
003f4e58   031a	.word 0x31a
003f4e59   0000	.word 0
003f4e5a   0000	.word 0
003f4e5b   0400	.word 0x400
003f4e5c   ffff	.word 0xffff
003f4e5d   0000	.word 0
003f4e5e   0000	.word 0
003f4e5f   0000	.word 0
003f4e60   ffff	.word 0xffff
003f4e61   0001	.word 0x1
003f4e62   0000	.word 0
003f4e63   0000	.word 0
003f4e64   ffff	.word 0xffff
003f4e65   0002	.word 0x2
003f4e66   0000	.word 0
003f4e67   0000	.word 0
003f4e68   fffa	.word 0xfffa
003f4e69   000c	.word 0xc
003f4e6a   0000	.word 0
003f4e6b   0000	.word 0
003f4e6c   0000	.word 0
003f4e6d   0000	.word 0
003f4e6e   0000	.word 0
003f4e6f   0000	.word 0
003f4e70   0000	.word 0
003f4e71   ffff	.word 0xffff
003f4e72   031c	.word 0x31c
003f4e73   0000	.word 0
003f4e74   0001	.word 0x1
003f4e75   fffe	.word 0xfffe
003f4e76   031e	.word 0x31e
003f4e77   0000	.word 0
003f4e78   0000	.word 0
003f4e79   0000	.word 0
003f4e7a   fffe	.word 0xfffe
003f4e7b   0320	.word 0x320
003f4e7c   0000	.word 0
003f4e7d   0000	.word 0
003f4e7e   0000	.word 0
003f4e7f   fffe	.word 0xfffe
003f4e80   0322	.word 0x322
003f4e81   0000	.word 0
003f4e82   0000	.word 0
003f4e83   0000	.word 0
003f4e84   fffe	.word 0xfffe
003f4e85   0328	.word 0x328
003f4e86   0000	.word 0
003f4e87   4726	.word 0x4726
003f4e88   003f	.word 0x3f
003f4e89   fffe	.word 0xfffe
003f4e8a   032a	.word 0x32a
003f4e8b   0000	.word 0
003f4e8c   4726	.word 0x4726
003f4e8d   003f	.word 0x3f
003f4e8e   fffe	.word 0xfffe
003f4e8f   032c	.word 0x32c
003f4e90   0000	.word 0
003f4e91   0000	.word 0
003f4e92   0000	.word 0
003f4e93   fffe	.word 0xfffe
003f4e94   032e	.word 0x32e
003f4e95   0000	.word 0
003f4e96   0000	.word 0
003f4e97   0000	.word 0
003f4e98   0000	.word 0
003f4e99   0000	.word 0

	.sect ".text"
3f0000:              _CTRL_setupTraj:
003f0000   b2bd       MOVL         *SP++, XAR1
003f0001   aabd       MOVL         *SP++, XAR2
003f0002   a2bd       MOVL         *SP++, XAR3
003f0003   d018       MOVB         XAR0, #0x18
003f0004   8ba4       MOVL         XAR1, XAR4
003f0005   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0006   fe08       ADDB         SP, #8
003f0007   86a4       MOVL         XAR2, XAR4
003f0008   767f       LCR          0x3fc000
003f0009   c000
003f000a   5202       CMPB         AL, #0x2
003f000b   56c1       BF           288, EQ
003f000c   0120
003f000d   5203       CMPB         AL, #0x3
003f000e   56c1       BF           233, EQ
003f000f   00e9
003f0010   5204       CMPB         AL, #0x4
003f0011   56c1       BF           198, EQ
003f0012   00c6
003f0013   5207       CMPB         AL, #0x7
003f0014   56c1       BF           140, EQ
003f0015   008c
003f0016   5208       CMPB         AL, #0x8
003f0017   ec7e       SBF          126, EQ
003f0018   520a       CMPB         AL, #0xa
003f0019   ec52       SBF          82, EQ
003f001a   520d       CMPB         AL, #0xd
003f001b   56c0       BF           324, NEQ
003f001c   0144
003f001d   d018       MOVB         XAR0, #0x18
003f001e   8a91       MOVL         XAR4, *+XAR1[AR0]
003f001f   d022       MOVB         XAR0, #0x22
003f0020   8294       MOVL         XAR3, *+XAR4[AR0]
003f0021   d03c       MOVB         XAR0, #0x3c
003f0022   0694       MOVL         ACC, *+XAR4[AR0]
003f0023   d03a       MOVB         XAR0, #0x3a
003f0024   1e46       MOVL         *-SP[6], ACC
003f0025   9294       MOV          AL, *+XAR4[AR0]
003f0026   d06e       MOVB         XAR0, #0x6e
003f0027   9643       MOV          *-SP[3], AL
003f0028   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0029   d02e       MOVB         XAR0, #0x2e
003f002a   0694       MOVL         ACC, *+XAR4[AR0]
003f002b   1e42       MOVL         *-SP[2], ACC
003f002c   9a00       MOVB         AL, #0x0
003f002d   9b80       MOVB         AH, #0x80
003f002e   767f       LCR          0x3fff8f
003f002f   ff8f
003f0030   d06c       MOVB         XAR0, #0x6c
003f0031   1e48       MOVL         *-SP[8], ACC
003f0032   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0033   0200       MOVB         ACC, #0
003f0034   1ed4       MOVL         *+XAR4[2], ACC
003f0035   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0036   d008       MOVB         XAR0, #0x8
003f0037   0646       MOVL         ACC, *-SP[6]
003f0038   1e94       MOVL         *+XAR4[AR0], ACC
003f0039   9243       MOV          AL, *-SP[3]
003f003a   ec0e       SBF          14, EQ
003f003b   5201       CMPB         AL, #0x1
003f003c   ed27       SBF          39, NEQ
003f003d   0200       MOVB         ACC, #0
003f003e   d0e2       MOVB         XAR0, #0xe2
003f003f   1e91       MOVL         *+XAR1[AR0], ACC
003f0040   d060       MOVB         XAR0, #0x60
003f0041   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0042   a2a9       MOVL         ACC, XAR3
003f0043   ff54       NEG          ACC
003f0044   1ee4       MOVL         *+XAR4[4], ACC
003f0045   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0046   a2f4       MOVL         *+XAR4[6], XAR3
003f0047   6f1c       SB           28, UNC
003f0048   d018       MOVB         XAR0, #0x18
003f0049   8a91       MOVL         XAR4, *+XAR1[AR0]
003f004a   d030       MOVB         XAR0, #0x30
003f004b   0694       MOVL         ACC, *+XAR4[AR0]
003f004c   d060       MOVB         XAR0, #0x60
003f004d   1e46       MOVL         *-SP[6], ACC
003f004e   28a9       MOV          AL, #0xccd0
003f004f   ccd0
003f0050   8691       MOVL         XAR2, *+XAR1[AR0]
003f0051   28a8       MOV          AH, #0x0ccc
003f0052   0ccc
003f0053   1e42       MOVL         *-SP[2], ACC
003f0054   0646       MOVL         ACC, *-SP[6]
003f0055   767f       LCR          0x3fff52
003f0056   ff52
003f0057   d060       MOVB         XAR0, #0x60
003f0058   1ee2       MOVL         *+XAR2[4], ACC
003f0059   28a9       MOV          AL, #0x6680
003f005a   6680
003f005b   8691       MOVL         XAR2, *+XAR1[AR0]
003f005c   28a8       MOV          AH, #0x2666
003f005d   2666
003f005e   1e42       MOVL         *-SP[2], ACC
003f005f   0646       MOVL         ACC, *-SP[6]
003f0060   767f       LCR          0x3ff87b
003f0061   f87b
003f0062   1ef2       MOVL         *+XAR2[6], ACC
003f0063   d0ea       MOVB         XAR0, #0xea
003f0064   a291       MOVL         *+XAR1[AR0], XAR3
003f0065   8aa1       MOVL         XAR4, XAR1
003f0066   0648       MOVL         ACC, *-SP[8]
003f0067   767f       LCR          0x3f2cbb
003f0068   2cbb
003f0069   ffef       B            246, UNC
003f006a   00f6
003f006b   d018       MOVB         XAR0, #0x18
003f006c   8a91       MOVL         XAR4, *+XAR1[AR0]
003f006d   d03a       MOVB         XAR0, #0x3a
003f006e   9294       MOV          AL, *+XAR4[AR0]
003f006f   ec07       SBF          7, EQ
003f0070   5201       CMPB         AL, #0x1
003f0071   56c0       BF           238, NEQ
003f0072   00ee
003f0073   d026       MOVB         XAR0, #0x26
003f0074   0694       MOVL         ACC, *+XAR4[AR0]
003f0075   6f34       SB           52, UNC
003f0076   d06e       MOVB         XAR0, #0x6e
003f0077   8392       MOVL         XAR5, *+XAR2[AR0]
003f0078   d02e       MOVB         XAR0, #0x2e
003f0079   8295       MOVL         XAR3, *+XAR5[AR0]
003f007a   d044       MOVB         XAR0, #0x44
003f007b   0694       MOVL         ACC, *+XAR4[AR0]
003f007c   d030       MOVB         XAR0, #0x30
003f007d   1e46       MOVL         *-SP[6], ACC
003f007e   0694       MOVL         ACC, *+XAR4[AR0]
003f007f   d032       MOVB         XAR0, #0x32
003f0080   1e48       MOVL         *-SP[8], ACC
003f0081   c494       MOVL         XAR6, *+XAR4[AR0]
003f0082   c242       MOVL         *-SP[2], XAR6
003f0083   767f       LCR          0x3fff8f
003f0084   ff8f
003f0085   d06c       MOVB         XAR0, #0x6c
003f0086   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0087   86a9       MOVL         XAR2, ACC
003f0088   0200       MOVB         ACC, #0
003f0089   1ed4       MOVL         *+XAR4[2], ACC
003f008a   8a91       MOVL         XAR4, *+XAR1[AR0]
003f008b   d078       MOVB         XAR0, #0x78
003f008c   a2c4       MOVL         *+XAR4[0], XAR3
003f008d   8291       MOVL         XAR3, *+XAR1[AR0]
003f008e   0646       MOVL         ACC, *-SP[6]
003f008f   1e42       MOVL         *-SP[2], ACC
003f0090   0648       MOVL         ACC, *-SP[8]
003f0091   767f       LCR          0x3fff8f
003f0092   ff8f
003f0093   1ec3       MOVL         *+XAR3[0], ACC
003f0094   6f3e       SB           62, UNC
003f0095   d06c       MOVB         XAR0, #0x6c
003f0096   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0097   0200       MOVB         ACC, #0
003f0098   d078       MOVB         XAR0, #0x78
003f0099   1ec4       MOVL         *+XAR4[0], ACC
003f009a   8a91       MOVL         XAR4, *+XAR1[AR0]
003f009b   d060       MOVB         XAR0, #0x60
003f009c   1ec4       MOVL         *+XAR4[0], ACC
003f009d   8a91       MOVL         XAR4, *+XAR1[AR0]
003f009e   1ee4       MOVL         *+XAR4[4], ACC
003f009f   6f0b       SB           11, UNC
003f00a0   d018       MOVB         XAR0, #0x18
003f00a1   8a91       MOVL         XAR4, *+XAR1[AR0]
003f00a2   d03a       MOVB         XAR0, #0x3a
003f00a3   9294       MOV          AL, *+XAR4[AR0]
003f00a4   ec0a       SBF          10, EQ
003f00a5   5201       CMPB         AL, #0x1
003f00a6   56c0       BF           185, NEQ
003f00a7   00b9
003f00a8   0200       MOVB         ACC, #0
003f00a9   d060       MOVB         XAR0, #0x60
003f00aa   8a91       MOVL         XAR4, *+XAR1[AR0]
003f00ab   1ec4       MOVL         *+XAR4[0], ACC
003f00ac   ffef       B            179, UNC
003f00ad   00b3
003f00ae   d060       MOVB         XAR0, #0x60
003f00af   8391       MOVL         XAR5, *+XAR1[AR0]
003f00b0   82d5       MOVL         XAR3, *+XAR5[2]
003f00b1   d034       MOVB         XAR0, #0x34
003f00b2   0694       MOVL         ACC, *+XAR4[AR0]
003f00b3   1e42       MOVL         *-SP[2], ACC
003f00b4   a2a9       MOVL         ACC, XAR3
003f00b5   767f       LCR          0x3fff8f
003f00b6   ff8f
003f00b7   d018       MOVB         XAR0, #0x18
003f00b8   86a9       MOVL         XAR2, ACC
003f00b9   8a91       MOVL         XAR4, *+XAR1[AR0]
003f00ba   28a9       MOV          AL, #0xccd0
003f00bb   ccd0
003f00bc   d030       MOVB         XAR0, #0x30
003f00bd   28a8       MOV          AH, #0x0ccc
003f00be   0ccc
003f00bf   a294       MOVL         *+XAR4[AR0], XAR3
003f00c0   d060       MOVB         XAR0, #0x60
003f00c1   8291       MOVL         XAR3, *+XAR1[AR0]
003f00c2   1e42       MOVL         *-SP[2], ACC
003f00c3   aaa9       MOVL         ACC, XAR2
003f00c4   767f       LCR          0x3fff52
003f00c5   ff52
003f00c6   d060       MOVB         XAR0, #0x60
003f00c7   1ee3       MOVL         *+XAR3[4], ACC
003f00c8   28a9       MOV          AL, #0x6680
003f00c9   6680
003f00ca   8291       MOVL         XAR3, *+XAR1[AR0]
003f00cb   28a8       MOV          AH, #0x2666
003f00cc   2666
003f00cd   1e42       MOVL         *-SP[2], ACC
003f00ce   aaa9       MOVL         ACC, XAR2
003f00cf   767f       LCR          0x3ff87b
003f00d0   f87b
003f00d1   1ef3       MOVL         *+XAR3[6], ACC
003f00d2   d060       MOVB         XAR0, #0x60
003f00d3   8a91       MOVL         XAR4, *+XAR1[AR0]
003f00d4   aac4       MOVL         *+XAR4[0], XAR2
003f00d5   ffef       B            138, UNC
003f00d6   008a
003f00d7   d018       MOVB         XAR0, #0x18
003f00d8   8a91       MOVL         XAR4, *+XAR1[AR0]
003f00d9   be00       MOVB         XAR6, #0x00
003f00da   d028       MOVB         XAR0, #0x28
003f00db   0694       MOVL         ACC, *+XAR4[AR0]
003f00dc   d078       MOVB         XAR0, #0x78
003f00dd   8a91       MOVL         XAR4, *+XAR1[AR0]
003f00de   c2d4       MOVL         *+XAR4[2], XAR6
003f00df   8291       MOVL         XAR3, *+XAR1[AR0]
003f00e0   1e42       MOVL         *-SP[2], ACC
003f00e1   9a00       MOVB         AL, #0x0
003f00e2   9b80       MOVB         AH, #0x80
003f00e3   767f       LCR          0x3fff8f
003f00e4   ff8f
003f00e5   d018       MOVB         XAR0, #0x18
003f00e6   1ec3       MOVL         *+XAR3[0], ACC
003f00e7   8a91       MOVL         XAR4, *+XAR1[AR0]
003f00e8   767f       LCR          0x3fc05e
003f00e9   c05e
003f00ea   5200       CMPB         AL, #0x0
003f00eb   ed74       SBF          116, NEQ
003f00ec   d06e       MOVB         XAR0, #0x6e
003f00ed   8a92       MOVL         XAR4, *+XAR2[AR0]
003f00ee   d02e       MOVB         XAR0, #0x2e
003f00ef   c494       MOVL         XAR6, *+XAR4[AR0]
003f00f0   d06c       MOVB         XAR0, #0x6c
003f00f1   8a91       MOVL         XAR4, *+XAR1[AR0]
003f00f2   0200       MOVB         ACC, #0
003f00f3   1ed4       MOVL         *+XAR4[2], ACC
003f00f4   8a91       MOVL         XAR4, *+XAR1[AR0]
003f00f5   c2c4       MOVL         *+XAR4[0], XAR6
003f00f6   6f69       SB           105, UNC
003f00f7   d018       MOVB         XAR0, #0x18
003f00f8   8a91       MOVL         XAR4, *+XAR1[AR0]
003f00f9   d028       MOVB         XAR0, #0x28
003f00fa   8294       MOVL         XAR3, *+XAR4[AR0]
003f00fb   d03a       MOVB         XAR0, #0x3a
003f00fc   5a94       MOVZ         AR2, *+XAR4[AR0]
003f00fd   767f       LCR          0x3fc05e
003f00fe   c05e
003f00ff   5200       CMPB         AL, #0x0
003f0100   ed07       SBF          7, NEQ
003f0101   d06c       MOVB         XAR0, #0x6c
003f0102   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0103   0200       MOVB         ACC, #0
003f0104   1ed4       MOVL         *+XAR4[2], ACC
003f0105   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0106   1ec4       MOVL         *+XAR4[0], ACC
003f0107   92a2       MOV          AL, AR2
003f0108   ec16       SBF          22, EQ
003f0109   5201       CMPB         AL, #0x1
003f010a   ed1a       SBF          26, NEQ
003f010b   d078       MOVB         XAR0, #0x78
003f010c   8f19       MOVL         XAR4, #0x199999
003f010d   9999
003f010e   8691       MOVL         XAR2, *+XAR1[AR0]
003f010f   a242       MOVL         *-SP[2], XAR3
003f0110   a8a9       MOVL         ACC, XAR4
003f0111   767f       LCR          0x3fff8f
003f0112   ff8f
003f0113   d078       MOVB         XAR0, #0x78
003f0114   8f19       MOVL         XAR4, #0x199999
003f0115   9999
003f0116   1ed2       MOVL         *+XAR2[2], ACC
003f0117   8691       MOVL         XAR2, *+XAR1[AR0]
003f0118   a8a9       MOVL         ACC, XAR4
003f0119   a242       MOVL         *-SP[2], XAR3
003f011a   767f       LCR          0x3fff8f
003f011b   ff8f
003f011c   1ec2       MOVL         *+XAR2[0], ACC
003f011d   6f07       SB           7, UNC
003f011e   d078       MOVB         XAR0, #0x78
003f011f   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0120   0200       MOVB         ACC, #0
003f0121   1ed4       MOVL         *+XAR4[2], ACC
003f0122   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0123   1ec4       MOVL         *+XAR4[0], ACC
003f0124   d060       MOVB         XAR0, #0x60
003f0125   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0126   0200       MOVB         ACC, #0
003f0127   1ed4       MOVL         *+XAR4[2], ACC
003f0128   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0129   a2c4       MOVL         *+XAR4[0], XAR3
003f012a   6f35       SB           53, UNC
003f012b   d018       MOVB         XAR0, #0x18
003f012c   8a91       MOVL         XAR4, *+XAR1[AR0]
003f012d   d040       MOVB         XAR0, #0x40
003f012e   c494       MOVL         XAR6, *+XAR4[AR0]
003f012f   d028       MOVB         XAR0, #0x28
003f0130   8694       MOVL         XAR2, *+XAR4[AR0]
003f0131   d03a       MOVB         XAR0, #0x3a
003f0132   9294       MOV          AL, *+XAR4[AR0]
003f0133   d06c       MOVB         XAR0, #0x6c
003f0134   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0135   c2d4       MOVL         *+XAR4[2], XAR6
003f0136   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0137   c2c4       MOVL         *+XAR4[0], XAR6
003f0138   ec16       SBF          22, EQ
003f0139   5201       CMPB         AL, #0x1
003f013a   ed1a       SBF          26, NEQ
003f013b   d078       MOVB         XAR0, #0x78
003f013c   8f19       MOVL         XAR4, #0x199999
003f013d   9999
003f013e   8291       MOVL         XAR3, *+XAR1[AR0]
003f013f   aa42       MOVL         *-SP[2], XAR2
003f0140   a8a9       MOVL         ACC, XAR4
003f0141   767f       LCR          0x3fff8f
003f0142   ff8f
003f0143   d078       MOVB         XAR0, #0x78
003f0144   8f19       MOVL         XAR4, #0x199999
003f0145   9999
003f0146   1ed3       MOVL         *+XAR3[2], ACC
003f0147   8291       MOVL         XAR3, *+XAR1[AR0]
003f0148   a8a9       MOVL         ACC, XAR4
003f0149   aa42       MOVL         *-SP[2], XAR2
003f014a   767f       LCR          0x3fff8f
003f014b   ff8f
003f014c   1ec3       MOVL         *+XAR3[0], ACC
003f014d   6f07       SB           7, UNC
003f014e   d078       MOVB         XAR0, #0x78
003f014f   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0150   0200       MOVB         ACC, #0
003f0151   1ed4       MOVL         *+XAR4[2], ACC
003f0152   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0153   1ec4       MOVL         *+XAR4[0], ACC
003f0154   d060       MOVB         XAR0, #0x60
003f0155   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0156   0200       MOVB         ACC, #0
003f0157   1ed4       MOVL         *+XAR4[2], ACC
003f0158   9a00       MOVB         AL, #0x0
003f0159   8b91       MOVL         XAR1, *+XAR1[AR0]
003f015a   9b80       MOVB         AH, #0x80
003f015b   aa42       MOVL         *-SP[2], XAR2
003f015c   767f       LCR          0x3fff8f
003f015d   ff8f
003f015e   1ec1       MOVL         *+XAR1[0], ACC
003f015f   fe88       SUBB         SP, #8
003f0160   82be       MOVL         XAR3, *--SP
003f0161   86be       MOVL         XAR2, *--SP
003f0162   8bbe       MOVL         XAR1, *--SP
003f0163   0006       LRETR        
3f0164:              _CTRL_setupEstOnLineState:
003f0164   b2bd       MOVL         *SP++, XAR1
003f0165   aabd       MOVL         *SP++, XAR2
003f0166   d0ca       MOVB         XAR0, #0xca
003f0167   a2bd       MOVL         *SP++, XAR3
003f0168   a394       MOVL         P, *+XAR4[AR0]
003f0169   d0d0       MOVB         XAR0, #0xd0
003f016a   8794       MOVL         XT, *+XAR4[AR0]
003f016b   d0cc       MOVB         XAR0, #0xcc
003f016c   8694       MOVL         XAR2, *+XAR4[AR0]
003f016d   d0d2       MOVB         XAR0, #0xd2
003f016e   8294       MOVL         XAR3, *+XAR4[AR0]
003f016f   d0d4       MOVB         XAR0, #0xd4
003f0170   8b94       MOVL         XAR1, *+XAR4[AR0]
003f0171   d0e6       MOVB         XAR0, #0xe6
003f0172   0694       MOVL         ACC, *+XAR4[AR0]
003f0173   d0e8       MOVB         XAR0, #0xe8
003f0174   c494       MOVL         XAR6, *+XAR4[AR0]
003f0175   fe02       ADDB         SP, #2
003f0176   d0ea       MOVB         XAR0, #0xea
003f0177   c242       MOVL         *-SP[2], XAR6
003f0178   c494       MOVL         XAR6, *+XAR4[AR0]
003f0179   d0ce       MOVB         XAR0, #0xce
003f017a   c594       MOVL         XAR7, *+XAR4[AR0]
003f017b   d044       MOVB         XAR0, #0x44
003f017c   8394       MOVL         XAR5, *+XAR4[AR0]
003f017d   c3c5       MOVL         *+XAR5[0], XAR7
003f017e   8394       MOVL         XAR5, *+XAR4[AR0]
003f017f   d020       MOVB         XAR0, #0x20
003f0180   b2d5       MOVL         *+XAR5[2], XAR1
003f0181   8394       MOVL         XAR5, *+XAR4[AR0]
003f0182   a9c5       MOVL         *+XAR5[0], P
003f0183   8394       MOVL         XAR5, *+XAR4[AR0]
003f0184   d032       MOVB         XAR0, #0x32
003f0185   abd5       MOVL         *+XAR5[2], XT
003f0186   8394       MOVL         XAR5, *+XAR4[AR0]
003f0187   aac5       MOVL         *+XAR5[0], XAR2
003f0188   8394       MOVL         XAR5, *+XAR4[AR0]
003f0189   d060       MOVB         XAR0, #0x60
003f018a   a2d5       MOVL         *+XAR5[2], XAR3
003f018b   8394       MOVL         XAR5, *+XAR4[AR0]
003f018c   d06c       MOVB         XAR0, #0x6c
003f018d   1ec5       MOVL         *+XAR5[0], ACC
003f018e   8394       MOVL         XAR5, *+XAR4[AR0]
003f018f   c542       MOVL         XAR7, *-SP[2]
003f0190   d078       MOVB         XAR0, #0x78
003f0191   c3c5       MOVL         *+XAR5[0], XAR7
003f0192   8394       MOVL         XAR5, *+XAR4[AR0]
003f0193   c2d5       MOVL         *+XAR5[2], XAR6
003f0194   8394       MOVL         XAR5, *+XAR4[AR0]
003f0195   d018       MOVB         XAR0, #0x18
003f0196   c2c5       MOVL         *+XAR5[0], XAR6
003f0197   8a94       MOVL         XAR4, *+XAR4[AR0]
003f0198   767f       LCR          0x3fc569
003f0199   c569
003f019a   fe82       SUBB         SP, #2
003f019b   82be       MOVL         XAR3, *--SP
003f019c   86be       MOVL         XAR2, *--SP
003f019d   8bbe       MOVL         XAR1, *--SP
003f019e   0006       LRETR        
3f019f:              _CTRL_setupEstIdleState:
003f019f   b2bd       MOVL         *SP++, XAR1
003f01a0   aabd       MOVL         *SP++, XAR2
003f01a1   a2bd       MOVL         *SP++, XAR3
003f01a2   d018       MOVB         XAR0, #0x18
003f01a3   8ba4       MOVL         XAR1, XAR4
003f01a4   8a91       MOVL         XAR4, *+XAR1[AR0]
003f01a5   fe16       ADDB         SP, #22
003f01a6   d022       MOVB         XAR0, #0x22
003f01a7   86a4       MOVL         XAR2, XAR4
003f01a8   0692       MOVL         ACC, *+XAR2[AR0]
003f01a9   1e50       MOVL         *-SP[16], ACC
003f01aa   767f       LCR          0x3fcc5c
003f01ab   cc5c
003f01ac   d018       MOVB         XAR0, #0x18
003f01ad   8a91       MOVL         XAR4, *+XAR1[AR0]
003f01ae   d03e       MOVB         XAR0, #0x3e
003f01af   0694       MOVL         ACC, *+XAR4[AR0]
003f01b0   d084       MOVB         XAR0, #0x84
003f01b1   1e52       MOVL         *-SP[18], ACC
003f01b2   9291       MOV          AL, *+XAR1[AR0]
003f01b3   d046       MOVB         XAR0, #0x46
003f01b4   964b       MOV          *-SP[11], AL
003f01b5   8a92       MOVL         XAR4, *+XAR2[AR0]
003f01b6   0200       MOVB         ACC, #0
003f01b7   1ee4       MOVL         *+XAR4[4], ACC
003f01b8   8a92       MOVL         XAR4, *+XAR2[AR0]
003f01b9   d0be       MOVB         XAR0, #0xbe
003f01ba   1ec4       MOVL         *+XAR4[0], ACC
003f01bb   8a92       MOVL         XAR4, *+XAR2[AR0]
003f01bc   1ec4       MOVL         *+XAR4[0], ACC
003f01bd   8a92       MOVL         XAR4, *+XAR2[AR0]
003f01be   d00a       MOVB         XAR0, #0xa
003f01bf   1e94       MOVL         *+XAR4[AR0], ACC
003f01c0   d0be       MOVB         XAR0, #0xbe
003f01c1   8a92       MOVL         XAR4, *+XAR2[AR0]
003f01c2   d00c       MOVB         XAR0, #0xc
003f01c3   1e94       MOVL         *+XAR4[AR0], ACC
003f01c4   924b       MOV          AL, *-SP[11]
003f01c5   ec40       SBF          64, EQ
003f01c6   5201       CMPB         AL, #0x1
003f01c7   56c0       BF           160, NEQ
003f01c8   00a0
003f01c9   d06e       MOVB         XAR0, #0x6e
003f01ca   28a9       MOV          AL, #0x3333
003f01cb   3333
003f01cc   8a92       MOVL         XAR4, *+XAR2[AR0]
003f01cd   28a8       MOV          AH, #0x3f33
003f01ce   3f33
003f01cf   767f       LCR          0x3fd514
003f01d0   d514
003f01d1   d06e       MOVB         XAR0, #0x6e
003f01d2   8a92       MOVL         XAR4, *+XAR2[AR0]
003f01d3   d031       MOVB         XAR0, #0x31
003f01d4   9694       MOV          *+XAR4[AR0], AL
003f01d5   d06e       MOVB         XAR0, #0x6e
003f01d6   8a92       MOVL         XAR4, *+XAR2[AR0]
003f01d7   767f       LCR          0x3fd49c
003f01d8   d49c
003f01d9   1e42       MOVL         *-SP[2], ACC
003f01da   ff2f       MOV          ACC, #0x7f00 << 15
003f01db   7f00
003f01dc   767f       LCR          0x3fdce1
003f01dd   dce1
003f01de   88ad       MOVZ         AR6, SP
003f01df   de8a       SUBB         XAR6, #10
003f01e0   767f       LCR          0x3fdfb7
003f01e1   dfb7
003f01e2   88ad       MOVZ         AR6, SP
003f01e3   5cad       MOVZ         AR4, SP
003f01e4   de86       SUBB         XAR6, #6
003f01e5   8f7f       MOVL         XAR5, #0x3f636c
003f01e6   636c
003f01e7   dc8a       SUBB         XAR4, #10
003f01e8   767f       LCR          0x3fdc5e
003f01e9   dc5e
003f01ea   5cad       MOVZ         AR4, SP
003f01eb   dc86       SUBB         XAR4, #6
003f01ec   767f       LCR          0x3fdf7b
003f01ed   df7b
003f01ee   1e54       MOVL         *-SP[20], ACC
003f01ef   1eac       MOVL         XT, ACC
003f01f0   28a9       MOV          AL, #0xccc0
003f01f1   ccc0
003f01f2   28a8       MOV          AH, #0x2ccc
003f01f3   2ccc
003f01f4   5605       IMPYL        P, XT, ACC
003f01f5   00a9
003f01f6   5663       QMPYL        ACC, XT, ACC
003f01f7   00a9
003f01f8   1e56       MOVL         *-SP[22], ACC
003f01f9   56a1       LSL64        ACC:P, 2
003f01fa   1e56       MOVL         *-SP[22], ACC
003f01fb   28a9       MOV          AL, #0x9980
003f01fc   9980
003f01fd   28a8       MOV          AH, #0x2999
003f01fe   2999
003f01ff   5605       IMPYL        P, XT, ACC
003f0200   00a9
003f0201   5663       QMPYL        ACC, XT, ACC
003f0202   00a9
003f0203   56a2       LSL64        ACC:P, 3
003f0204   6f63       SB           99, UNC
003f0205   d06e       MOVB         XAR0, #0x6e
003f0206   28a9       MOV          AL, #0xcccd
003f0207   cccd
003f0208   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0209   28a8       MOV          AH, #0x3d4c
003f020a   3d4c
003f020b   767f       LCR          0x3fd514
003f020c   d514
003f020d   d06e       MOVB         XAR0, #0x6e
003f020e   8a92       MOVL         XAR4, *+XAR2[AR0]
003f020f   d031       MOVB         XAR0, #0x31
003f0210   9694       MOV          *+XAR4[AR0], AL
003f0211   d06e       MOVB         XAR0, #0x6e
003f0212   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0213   767f       LCR          0x3fd49c
003f0214   d49c
003f0215   82a9       MOVL         XAR3, ACC
003f0216   1e42       MOVL         *-SP[2], ACC
003f0217   ff2f       MOV          ACC, #0x7f00 << 15
003f0218   7f00
003f0219   767f       LCR          0x3fdce1
003f021a   dce1
003f021b   88ad       MOVZ         AR6, SP
003f021c   de8a       SUBB         XAR6, #10
003f021d   767f       LCR          0x3fdfb7
003f021e   dfb7
003f021f   88ad       MOVZ         AR6, SP
003f0220   5cad       MOVZ         AR4, SP
003f0221   de86       SUBB         XAR6, #6
003f0222   8f7f       MOVL         XAR5, #0x3f636c
003f0223   636c
003f0224   dc8a       SUBB         XAR4, #10
003f0225   767f       LCR          0x3fdc5e
003f0226   dc5e
003f0227   5cad       MOVZ         AR4, SP
003f0228   dc86       SUBB         XAR4, #6
003f0229   767f       LCR          0x3fdf7b
003f022a   df7b
003f022b   1e54       MOVL         *-SP[20], ACC
003f022c   28a9       MOV          AL, #0x999a
003f022d   999a
003f022e   28a8       MOV          AH, #0x3f99
003f022f   3f99
003f0230   1e42       MOVL         *-SP[2], ACC
003f0231   a2a9       MOVL         ACC, XAR3
003f0232   767f       LCR          0x3fdde7
003f0233   dde7
003f0234   1e42       MOVL         *-SP[2], ACC
003f0235   ff2f       MOV          ACC, #0x7f00 << 15
003f0236   7f00
003f0237   767f       LCR          0x3fdce1
003f0238   dce1
003f0239   88ad       MOVZ         AR6, SP
003f023a   de8a       SUBB         XAR6, #10
003f023b   767f       LCR          0x3fdfb7
003f023c   dfb7
003f023d   88ad       MOVZ         AR6, SP
003f023e   de86       SUBB         XAR6, #6
003f023f   5cad       MOVZ         AR4, SP
003f0240   dc8a       SUBB         XAR4, #10
003f0241   8f7f       MOVL         XAR5, #0x3f636c
003f0242   636c
003f0243   767f       LCR          0x3fdc5e
003f0244   dc5e
003f0245   5cad       MOVZ         AR4, SP
003f0246   dc86       SUBB         XAR4, #6
003f0247   767f       LCR          0x3fdf7b
003f0248   df7b
003f0249   1e56       MOVL         *-SP[22], ACC
003f024a   28a9       MOV          AL, #0xcccd
003f024b   cccd
003f024c   28a8       MOV          AH, #0x3d4c
003f024d   3d4c
003f024e   1e42       MOVL         *-SP[2], ACC
003f024f   a2a9       MOVL         ACC, XAR3
003f0250   767f       LCR          0x3fdde7
003f0251   dde7
003f0252   1e42       MOVL         *-SP[2], ACC
003f0253   ff2f       MOV          ACC, #0x7f00 << 15
003f0254   7f00
003f0255   767f       LCR          0x3fdce1
003f0256   dce1
003f0257   88ad       MOVZ         AR6, SP
003f0258   de8a       SUBB         XAR6, #10
003f0259   767f       LCR          0x3fdfb7
003f025a   dfb7
003f025b   88ad       MOVZ         AR6, SP
003f025c   5cad       MOVZ         AR4, SP
003f025d   8f7f       MOVL         XAR5, #0x3f636c
003f025e   636c
003f025f   de86       SUBB         XAR6, #6
003f0260   dc8a       SUBB         XAR4, #10
003f0261   767f       LCR          0x3fdc5e
003f0262   dc5e
003f0263   5cad       MOVZ         AR4, SP
003f0264   dc86       SUBB         XAR4, #6
003f0265   767f       LCR          0x3fdf7b
003f0266   df7b
003f0267   c454       MOVL         XAR6, *-SP[20]
003f0268   d06e       MOVB         XAR0, #0x6e
003f0269   8a92       MOVL         XAR4, *+XAR2[AR0]
003f026a   d01e       MOVB         XAR0, #0x1e
003f026b   c294       MOVL         *+XAR4[AR0], XAR6
003f026c   c456       MOVL         XAR6, *-SP[22]
003f026d   d06e       MOVB         XAR0, #0x6e
003f026e   8a92       MOVL         XAR4, *+XAR2[AR0]
003f026f   d020       MOVB         XAR0, #0x20
003f0270   c294       MOVL         *+XAR4[AR0], XAR6
003f0271   d06e       MOVB         XAR0, #0x6e
003f0272   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0273   d022       MOVB         XAR0, #0x22
003f0274   1e94       MOVL         *+XAR4[AR0], ACC
003f0275   28a9       MOV          AL, #0x3333
003f0276   3333
003f0277   d018       MOVB         XAR0, #0x18
003f0278   28a8       MOV          AH, #0x3f33
003f0279   3f33
003f027a   8a91       MOVL         XAR4, *+XAR1[AR0]
003f027b   767f       LCR          0x3fc092
003f027c   c092
003f027d   d058       MOVB         XAR0, #0x58
003f027e   8a92       MOVL         XAR4, *+XAR2[AR0]
003f027f   d012       MOVB         XAR0, #0x12
003f0280   9694       MOV          *+XAR4[AR0], AL
003f0281   d018       MOVB         XAR0, #0x18
003f0282   8691       MOVL         XAR2, *+XAR1[AR0]
003f0283   d06e       MOVB         XAR0, #0x6e
003f0284   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0285   d031       MOVB         XAR0, #0x31
003f0286   9294       MOV          AL, *+XAR4[AR0]
003f0287   d03b       MOVB         XAR0, #0x3b
003f0288   964c       MOV          *-SP[12], AL
003f0289   8aa2       MOVL         XAR4, XAR2
003f028a   9292       MOV          AL, *+XAR2[AR0]
003f028b   964d       MOV          *-SP[13], AL
003f028c   767f       LCR          0x3fc062
003f028d   c062
003f028e   82a9       MOVL         XAR3, ACC
003f028f   8aa2       MOVL         XAR4, XAR2
003f0290   767f       LCR          0x3fd043
003f0291   d043
003f0292   1e54       MOVL         *-SP[20], ACC
003f0293   924c       MOV          AL, *-SP[12]
003f0294   9ce2       ADDB         AL, #-30
003f0295   767f       LCR          0x3fff33
003f0296   ff33
003f0297   1e42       MOVL         *-SP[2], ACC
003f0298   9a00       MOVB         AL, #0x0
003f0299   28a8       MOV          AH, #0x4000
003f029a   4000
003f029b   767f       LCR          0x3fdd64
003f029c   dd64
003f029d   c454       MOVL         XAR6, *-SP[20]
003f029e   c242       MOVL         *-SP[2], XAR6
003f029f   767f       LCR          0x3fdde7
003f02a0   dde7
003f02a1   a242       MOVL         *-SP[2], XAR3
003f02a2   767f       LCR          0x3fdde7
003f02a3   dde7
003f02a4   82a9       MOVL         XAR3, ACC
003f02a5   924d       MOV          AL, *-SP[13]
003f02a6   767f       LCR          0x3ff8bd
003f02a7   f8bd
003f02a8   1e42       MOVL         *-SP[2], ACC
003f02a9   a2a9       MOVL         ACC, XAR3
003f02aa   767f       LCR          0x3fdde7
003f02ab   dde7
003f02ac   1ea6       MOVL         XAR6, ACC
003f02ad   ff2f       MOV          ACC, #0x7f80 << 15
003f02ae   7f80
003f02af   1e42       MOVL         *-SP[2], ACC
003f02b0   06a6       MOVL         ACC, XAR6
003f02b1   767f       LCR          0x3fdde7
003f02b2   dde7
003f02b3   1ea6       MOVL         XAR6, ACC
003f02b4   28a9       MOV          AL, #0x0fdb
003f02b5   0fdb
003f02b6   28a8       MOV          AH, #0x40c9
003f02b7   40c9
003f02b8   1e42       MOVL         *-SP[2], ACC
003f02b9   06a6       MOVL         ACC, XAR6
003f02ba   767f       LCR          0x3fdce1
003f02bb   dce1
003f02bc   88ad       MOVZ         AR6, SP
003f02bd   de8a       SUBB         XAR6, #10
003f02be   767f       LCR          0x3fdfb7
003f02bf   dfb7
003f02c0   8f7f       MOVL         XAR5, #0x3f6370
003f02c1   6370
003f02c2   5cad       MOVZ         AR4, SP
003f02c3   88ad       MOVZ         AR6, SP
003f02c4   dc8a       SUBB         XAR4, #10
003f02c5   de86       SUBB         XAR6, #6
003f02c6   767f       LCR          0x3fdc5e
003f02c7   dc5e
003f02c8   5cad       MOVZ         AR4, SP
003f02c9   dc86       SUBB         XAR4, #6
003f02ca   767f       LCR          0x3fdf7b
003f02cb   df7b
003f02cc   8d00       MOVL         XAR0, #0x0001f0
003f02cd   01f0
003f02ce   1e92       MOVL         *+XAR2[AR0], ACC
003f02cf   d018       MOVB         XAR0, #0x18
003f02d0   8691       MOVL         XAR2, *+XAR1[AR0]
003f02d1   d03b       MOVB         XAR0, #0x3b
003f02d2   8aa2       MOVL         XAR4, XAR2
003f02d3   9292       MOV          AL, *+XAR2[AR0]
003f02d4   964d       MOV          *-SP[13], AL
003f02d5   767f       LCR          0x3fc062
003f02d6   c062
003f02d7   82a9       MOVL         XAR3, ACC
003f02d8   8aa2       MOVL         XAR4, XAR2
003f02d9   767f       LCR          0x3fc4d1
003f02da   c4d1
003f02db   a242       MOVL         *-SP[2], XAR3
003f02dc   767f       LCR          0x3fdde7
003f02dd   dde7
003f02de   a242       MOVL         *-SP[2], XAR3
003f02df   767f       LCR          0x3fdde7
003f02e0   dde7
003f02e1   82a9       MOVL         XAR3, ACC
003f02e2   924d       MOV          AL, *-SP[13]
003f02e3   767f       LCR          0x3ff8bd
003f02e4   f8bd
003f02e5   1e42       MOVL         *-SP[2], ACC
003f02e6   a2a9       MOVL         ACC, XAR3
003f02e7   767f       LCR          0x3fdde7
003f02e8   dde7
003f02e9   1ea6       MOVL         XAR6, ACC
003f02ea   ff2f       MOV          ACC, #0x7f80 << 15
003f02eb   7f80
003f02ec   1e42       MOVL         *-SP[2], ACC
003f02ed   06a6       MOVL         ACC, XAR6
003f02ee   767f       LCR          0x3fdde7
003f02ef   dde7
003f02f0   88ad       MOVZ         AR6, SP
003f02f1   de8a       SUBB         XAR6, #10
003f02f2   767f       LCR          0x3fdfb7
003f02f3   dfb7
003f02f4   88ad       MOVZ         AR6, SP
003f02f5   5cad       MOVZ         AR4, SP
003f02f6   8f7f       MOVL         XAR5, #0x3f6370
003f02f7   6370
003f02f8   de86       SUBB         XAR6, #6
003f02f9   dc8a       SUBB         XAR4, #10
003f02fa   767f       LCR          0x3fdc5e
003f02fb   dc5e
003f02fc   5cad       MOVZ         AR4, SP
003f02fd   dc86       SUBB         XAR4, #6
003f02fe   767f       LCR          0x3fdf7b
003f02ff   df7b
003f0300   8d00       MOVL         XAR0, #0x0001f2
003f0301   01f2
003f0302   1e92       MOVL         *+XAR2[AR0], ACC
003f0303   d018       MOVB         XAR0, #0x18
003f0304   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0305   767f       LCR          0x3fc05a
003f0306   c05a
003f0307   d06c       MOVB         XAR0, #0x6c
003f0308   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0309   0200       MOVB         ACC, #0
003f030a   1ed4       MOVL         *+XAR4[2], ACC
003f030b   8a91       MOVL         XAR4, *+XAR1[AR0]
003f030c   1ec4       MOVL         *+XAR4[0], ACC
003f030d   8a91       MOVL         XAR4, *+XAR1[AR0]
003f030e   d008       MOVB         XAR0, #0x8
003f030f   0652       MOVL         ACC, *-SP[18]
003f0310   1e94       MOVL         *+XAR4[AR0], ACC
003f0311   d078       MOVB         XAR0, #0x78
003f0312   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0313   0200       MOVB         ACC, #0
003f0314   1ed4       MOVL         *+XAR4[2], ACC
003f0315   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0316   d060       MOVB         XAR0, #0x60
003f0317   1ec4       MOVL         *+XAR4[0], ACC
003f0318   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0319   1ed4       MOVL         *+XAR4[2], ACC
003f031a   8a91       MOVL         XAR4, *+XAR1[AR0]
003f031b   1ec4       MOVL         *+XAR4[0], ACC
003f031c   924b       MOV          AL, *-SP[11]
003f031d   ec0b       SBF          11, EQ
003f031e   5201       CMPB         AL, #0x1
003f031f   ed0f       SBF          15, NEQ
003f0320   c450       MOVL         XAR6, *-SP[16]
003f0321   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0322   06a6       MOVL         ACC, XAR6
003f0323   ff54       NEG          ACC
003f0324   1ee4       MOVL         *+XAR4[4], ACC
003f0325   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0326   c2f4       MOVL         *+XAR4[6], XAR6
003f0327   6f07       SB           7, UNC
003f0328   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0329   0200       MOVB         ACC, #0
003f032a   1ee4       MOVL         *+XAR4[4], ACC
003f032b   8a91       MOVL         XAR4, *+XAR1[AR0]
003f032c   0650       MOVL         ACC, *-SP[16]
003f032d   1ef4       MOVL         *+XAR4[6], ACC
003f032e   d044       MOVB         XAR0, #0x44
003f032f   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0330   0200       MOVB         ACC, #0
003f0331   d020       MOVB         XAR0, #0x20
003f0332   1ef4       MOVL         *+XAR4[6], ACC
003f0333   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0334   d032       MOVB         XAR0, #0x32
003f0335   1ef4       MOVL         *+XAR4[6], ACC
003f0336   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0337   fe96       SUBB         SP, #22
003f0338   1ef4       MOVL         *+XAR4[6], ACC
003f0339   82be       MOVL         XAR3, *--SP
003f033a   86be       MOVL         XAR2, *--SP
003f033b   8bbe       MOVL         XAR1, *--SP
003f033c   0006       LRETR        
3f033d:              _CTRL_setupCtrl:
003f033d   b2bd       MOVL         *SP++, XAR1
003f033e   aabd       MOVL         *SP++, XAR2
003f033f   a2bd       MOVL         *SP++, XAR3
003f0340   d018       MOVB         XAR0, #0x18
003f0341   8ba4       MOVL         XAR1, XAR4
003f0342   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0343   fe1a       ADDB         SP, #26
003f0344   86a4       MOVL         XAR2, XAR4
003f0345   767f       LCR          0x3fc000
003f0346   c000
003f0347   5202       CMPB         AL, #0x2
003f0348   56c1       BF           451, EQ
003f0349   01c3
003f034a   5203       CMPB         AL, #0x3
003f034b   56c1       BF           173, EQ
003f034c   00ad
003f034d   5204       CMPB         AL, #0x4
003f034e   56c1       BF           166, EQ
003f034f   00a6
003f0350   5207       CMPB         AL, #0x7
003f0351   ec6d       SBF          109, EQ
003f0352   520a       CMPB         AL, #0xa
003f0353   ec1e       SBF          30, EQ
003f0354   520c       CMPB         AL, #0xc
003f0355   56c0       BF           459, NEQ
003f0356   01cb
003f0357   d044       MOVB         XAR0, #0x44
003f0358   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0359   d018       MOVB         XAR0, #0x18
003f035a   8391       MOVL         XAR5, *+XAR1[AR0]
003f035b   d030       MOVB         XAR0, #0x30
003f035c   c5c4       MOVL         XAR7, *+XAR4[0]
003f035d   06d4       MOVL         ACC, *+XAR4[2]
003f035e   c495       MOVL         XAR6, *+XAR5[AR0]
003f035f   d0ce       MOVB         XAR0, #0xce
003f0360   c391       MOVL         *+XAR1[AR0], XAR7
003f0361   d0d4       MOVB         XAR0, #0xd4
003f0362   1e91       MOVL         *+XAR1[AR0], ACC
003f0363   d044       MOVB         XAR0, #0x44
003f0364   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0365   0200       MOVB         ACC, #0
003f0366   d020       MOVB         XAR0, #0x20
003f0367   1ef4       MOVL         *+XAR4[6], ACC
003f0368   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0369   d032       MOVB         XAR0, #0x32
003f036a   1ef4       MOVL         *+XAR4[6], ACC
003f036b   8a91       MOVL         XAR4, *+XAR1[AR0]
003f036c   d0e6       MOVB         XAR0, #0xe6
003f036d   1ef4       MOVL         *+XAR4[6], ACC
003f036e   c291       MOVL         *+XAR1[AR0], XAR6
003f036f   ffef       B            433, UNC
003f0370   01b1
003f0371   d018       MOVB         XAR0, #0x18
003f0372   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0373   d03a       MOVB         XAR0, #0x3a
003f0374   9294       MOV          AL, *+XAR4[AR0]
003f0375   56c0       BF           427, NEQ
003f0376   01ab
003f0377   767f       LCR          0x3fcc5c
003f0378   cc5c
003f0379   d0a6       MOVB         XAR0, #0xa6
003f037a   1ea6       MOVL         XAR6, ACC
003f037b   1e4e       MOVL         *-SP[14], ACC
003f037c   0691       MOVL         ACC, *+XAR1[AR0]
003f037d   d018       MOVB         XAR0, #0x18
003f037e   1e50       MOVL         *-SP[16], ACC
003f037f   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0380   28a9       MOV          AL, #0xd70a
003f0381   d70a
003f0382   d022       MOVB         XAR0, #0x22
003f0383   28a8       MOV          AH, #0x3ca3
003f0384   3ca3
003f0385   8294       MOVL         XAR3, *+XAR4[AR0]
003f0386   1e42       MOVL         *-SP[2], ACC
003f0387   06a6       MOVL         ACC, XAR6
003f0388   767f       LCR          0x3fdde7
003f0389   dde7
003f038a   88ad       MOVZ         AR6, SP
003f038b   de8c       SUBB         XAR6, #12
003f038c   767f       LCR          0x3fdfb7
003f038d   dfb7
003f038e   88ad       MOVZ         AR6, SP
003f038f   5cad       MOVZ         AR4, SP
003f0390   8f7f       MOVL         XAR5, #0x3f6370
003f0391   6370
003f0392   de88       SUBB         XAR6, #8
003f0393   dc8c       SUBB         XAR4, #12
003f0394   767f       LCR          0x3fdc5e
003f0395   dc5e
003f0396   5cad       MOVZ         AR4, SP
003f0397   dc88       SUBB         XAR4, #8
003f0398   767f       LCR          0x3fdf7b
003f0399   df7b
003f039a   a242       MOVL         *-SP[2], XAR3
003f039b   767f       LCR          0x3fff8f
003f039c   ff8f
003f039d   86a9       MOVL         XAR2, ACC
003f039e   064e       MOVL         ACC, *-SP[14]
003f039f   1e42       MOVL         *-SP[2], ACC
003f03a0   064e       MOVL         ACC, *-SP[14]
003f03a1   767f       LCR          0x3fdeb8
003f03a2   deb8
003f03a3   c450       MOVL         XAR6, *-SP[16]
003f03a4   c242       MOVL         *-SP[2], XAR6
003f03a5   767f       LCR          0x3fdde7
003f03a6   dde7
003f03a7   88ad       MOVZ         AR6, SP
003f03a8   de8c       SUBB         XAR6, #12
003f03a9   767f       LCR          0x3fdfb7
003f03aa   dfb7
003f03ab   88ad       MOVZ         AR6, SP
003f03ac   de88       SUBB         XAR6, #8
003f03ad   5cad       MOVZ         AR4, SP
003f03ae   dc8c       SUBB         XAR4, #12
003f03af   8f7f       MOVL         XAR5, #0x3f6370
003f03b0   6370
003f03b1   767f       LCR          0x3fdc5e
003f03b2   dc5e
003f03b3   5cad       MOVZ         AR4, SP
003f03b4   dc88       SUBB         XAR4, #8
003f03b5   767f       LCR          0x3fdf7b
003f03b6   df7b
003f03b7   a242       MOVL         *-SP[2], XAR3
003f03b8   767f       LCR          0x3fff8f
003f03b9   ff8f
003f03ba   d044       MOVB         XAR0, #0x44
003f03bb   8a91       MOVL         XAR4, *+XAR1[AR0]
003f03bc   aac4       MOVL         *+XAR4[0], XAR2
003f03bd   6f2c       SB           44, UNC
003f03be   d060       MOVB         XAR0, #0x60
003f03bf   8a91       MOVL         XAR4, *+XAR1[AR0]
003f03c0   06d4       MOVL         ACC, *+XAR4[2]
003f03c1   0ff4       CMPL         ACC, *+XAR4[6]
003f03c2   622b       SB           43, GT
003f03c3   0fe4       CMPL         ACC, *+XAR4[4]
003f03c4   6429       SB           41, LT
003f03c5   d018       MOVB         XAR0, #0x18
003f03c6   8a91       MOVL         XAR4, *+XAR1[AR0]
003f03c7   767f       LCR          0x3fcc5c
003f03c8   cc5c
003f03c9   1e42       MOVL         *-SP[2], ACC
003f03ca   767f       LCR          0x3fdeb8
003f03cb   deb8
003f03cc   d0a6       MOVB         XAR0, #0xa6
003f03cd   c491       MOVL         XAR6, *+XAR1[AR0]
003f03ce   c242       MOVL         *-SP[2], XAR6
003f03cf   767f       LCR          0x3fdde7
003f03d0   dde7
003f03d1   88ad       MOVZ         AR6, SP
003f03d2   de8c       SUBB         XAR6, #12
003f03d3   767f       LCR          0x3fdfb7
003f03d4   dfb7
003f03d5   88ad       MOVZ         AR6, SP
003f03d6   de88       SUBB         XAR6, #8
003f03d7   5cad       MOVZ         AR4, SP
003f03d8   8f7f       MOVL         XAR5, #0x3f6370
003f03d9   6370
003f03da   dc8c       SUBB         XAR4, #12
003f03db   767f       LCR          0x3fdc5e
003f03dc   dc5e
003f03dd   5cad       MOVZ         AR4, SP
003f03de   dc88       SUBB         XAR4, #8
003f03df   767f       LCR          0x3fdf7b
003f03e0   df7b
003f03e1   d018       MOVB         XAR0, #0x18
003f03e2   8a91       MOVL         XAR4, *+XAR1[AR0]
003f03e3   d022       MOVB         XAR0, #0x22
003f03e4   c494       MOVL         XAR6, *+XAR4[AR0]
003f03e5   c242       MOVL         *-SP[2], XAR6
003f03e6   767f       LCR          0x3fff8f
003f03e7   ff8f
003f03e8   d044       MOVB         XAR0, #0x44
003f03e9   8a91       MOVL         XAR4, *+XAR1[AR0]
003f03ea   1ed4       MOVL         *+XAR4[2], ACC
003f03eb   ffef       B            309, UNC
003f03ec   0135
003f03ed   92e1       MOV          AL, *+XAR1[4]
003f03ee   96e9       MOV          *+XAR1[5], AL
003f03ef   2be1       MOV          *+XAR1[4], #0
003f03f0   56bf       MOVB         *+XAR1[6], #0x01, UNC
003f03f1   01f1
003f03f2   ffef       B            302, UNC
003f03f3   012e
003f03f4   0200       MOVB         ACC, #0
003f03f5   d044       MOVB         XAR0, #0x44
003f03f6   ffef       B            296, UNC
003f03f7   0128
003f03f8   d018       MOVB         XAR0, #0x18
003f03f9   8a91       MOVL         XAR4, *+XAR1[AR0]
003f03fa   767f       LCR          0x3fc05e
003f03fb   c05e
003f03fc   5200       CMPB         AL, #0x0
003f03fd   56c0       BF           225, NEQ
003f03fe   00e1
003f03ff   d018       MOVB         XAR0, #0x18
003f0400   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0401   767f       LCR          0x3fc062
003f0402   c062
003f0403   d018       MOVB         XAR0, #0x18
003f0404   1e52       MOVL         *-SP[18], ACC
003f0405   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0406   767f       LCR          0x3fc08e
003f0407   c08e
003f0408   d018       MOVB         XAR0, #0x18
003f0409   1e54       MOVL         *-SP[20], ACC
003f040a   8a91       MOVL         XAR4, *+XAR1[AR0]
003f040b   767f       LCR          0x3fcc5c
003f040c   cc5c
003f040d   d0a6       MOVB         XAR0, #0xa6
003f040e   1e56       MOVL         *-SP[22], ACC
003f040f   0691       MOVL         ACC, *+XAR1[AR0]
003f0410   8d00       MOVL         XAR0, #0x0001d6
003f0411   01d6
003f0412   1e58       MOVL         *-SP[24], ACC
003f0413   8392       MOVL         XAR5, *+XAR2[AR0]
003f0414   d0e8       MOVB         XAR0, #0xe8
003f0415   06f5       MOVL         ACC, *+XAR5[6]
003f0416   1e5a       MOVL         *-SP[26], ACC
003f0417   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0418   d018       MOVB         XAR0, #0x18
003f0419   86e4       MOVL         XAR2, *+XAR4[4]
003f041a   8a91       MOVL         XAR4, *+XAR1[AR0]
003f041b   d042       MOVB         XAR0, #0x42
003f041c   8294       MOVL         XAR3, *+XAR4[AR0]
003f041d   d022       MOVB         XAR0, #0x22
003f041e   0694       MOVL         ACC, *+XAR4[AR0]
003f041f   1e4e       MOVL         *-SP[14], ACC
003f0420   aa42       MOVL         *-SP[2], XAR2
003f0421   06e5       MOVL         ACC, *+XAR5[4]
003f0422   767f       LCR          0x3fd14d
003f0423   d14d
003f0424   d018       MOVB         XAR0, #0x18
003f0425   1e50       MOVL         *-SP[16], ACC
003f0426   aa42       MOVL         *-SP[2], XAR2
003f0427   a244       MOVL         *-SP[4], XAR3
003f0428   065a       MOVL         ACC, *-SP[26]
003f0429   8a91       MOVL         XAR4, *+XAR1[AR0]
003f042a   767f       LCR          0x3fd16d
003f042b   d16d
003f042c   1e42       MOVL         *-SP[2], ACC
003f042d   86a9       MOVL         XAR2, ACC
003f042e   0650       MOVL         ACC, *-SP[16]
003f042f   767f       LCR          0x3fdce1
003f0430   dce1
003f0431   82a9       MOVL         XAR3, ACC
003f0432   9a00       MOVB         AL, #0x0
003f0433   28a8       MOV          AH, #0x44fa
003f0434   44fa
003f0435   1e42       MOVL         *-SP[2], ACC
003f0436   a2a9       MOVL         ACC, XAR3
003f0437   767f       LCR          0x3fdf2b
003f0438   df2b
003f0439   5200       CMPB         AL, #0x0
003f043a   620e       SB           14, GT
003f043b   9a00       MOVB         AL, #0x0
003f043c   28a8       MOV          AH, #0x40a0
003f043d   40a0
003f043e   1e42       MOVL         *-SP[2], ACC
003f043f   a2a9       MOVL         ACC, XAR3
003f0440   767f       LCR          0x3fdf2b
003f0441   df2b
003f0442   5200       CMPB         AL, #0x0
003f0443   6309       SB           9, GEQ
003f0444   28a8       MOV          AH, #0x40a0
003f0445   40a0
003f0446   9a00       MOVB         AL, #0x0
003f0447   6f04       SB           4, UNC
003f0448   28a8       MOV          AH, #0x44fa
003f0449   44fa
003f044a   9a00       MOVB         AL, #0x0
003f044b   82a9       MOVL         XAR3, ACC
003f044c   0650       MOVL         ACC, *-SP[16]
003f044d   d0c4       MOVB         XAR0, #0xc4
003f044e   1e91       MOVL         *+XAR1[AR0], ACC
003f044f   d0c6       MOVB         XAR0, #0xc6
003f0450   aa91       MOVL         *+XAR1[AR0], XAR2
003f0451   a2a9       MOVL         ACC, XAR3
003f0452   d0c8       MOVB         XAR0, #0xc8
003f0453   a291       MOVL         *+XAR1[AR0], XAR3
003f0454   8258       MOVL         XAR3, *-SP[24]
003f0455   a242       MOVL         *-SP[2], XAR3
003f0456   767f       LCR          0x3fdde7
003f0457   dde7
003f0458   88ad       MOVZ         AR6, SP
003f0459   de8c       SUBB         XAR6, #12
003f045a   767f       LCR          0x3fdfb7
003f045b   dfb7
003f045c   88ad       MOVZ         AR6, SP
003f045d   5cad       MOVZ         AR4, SP
003f045e   8f7f       MOVL         XAR5, #0x3f6370
003f045f   6370
003f0460   de88       SUBB         XAR6, #8
003f0461   dc8c       SUBB         XAR4, #12
003f0462   767f       LCR          0x3fdc5e
003f0463   dc5e
003f0464   5cad       MOVZ         AR4, SP
003f0465   dc88       SUBB         XAR4, #8
003f0466   767f       LCR          0x3fdf7b
003f0467   df7b
003f0468   d020       MOVB         XAR0, #0x20
003f0469   8a91       MOVL         XAR4, *+XAR1[AR0]
003f046a   d032       MOVB         XAR0, #0x32
003f046b   1ed4       MOVL         *+XAR4[2], ACC
003f046c   8a91       MOVL         XAR4, *+XAR1[AR0]
003f046d   1ed4       MOVL         *+XAR4[2], ACC
003f046e   ff2f       MOV          ACC, #0x7d00 << 15
003f046f   7d00
003f0470   1e42       MOVL         *-SP[2], ACC
003f0471   aaa9       MOVL         ACC, XAR2
003f0472   767f       LCR          0x3fdde7
003f0473   dde7
003f0474   c452       MOVL         XAR6, *-SP[18]
003f0475   c242       MOVL         *-SP[2], XAR6
003f0476   767f       LCR          0x3fdde7
003f0477   dde7
003f0478   86a9       MOVL         XAR2, ACC
003f0479   0654       MOVL         ACC, *-SP[20]
003f047a   1e42       MOVL         *-SP[2], ACC
003f047b   a2a9       MOVL         ACC, XAR3
003f047c   767f       LCR          0x3fdde7
003f047d   dde7
003f047e   1e42       MOVL         *-SP[2], ACC
003f047f   aaa9       MOVL         ACC, XAR2
003f0480   767f       LCR          0x3fdce1
003f0481   dce1
003f0482   86a9       MOVL         XAR2, ACC
003f0483   9a00       MOVB         AL, #0x0
003f0484   28a8       MOV          AH, #0x42f0
003f0485   42f0
003f0486   1e42       MOVL         *-SP[2], ACC
003f0487   aaa9       MOVL         ACC, XAR2
003f0488   767f       LCR          0x3fdf2b
003f0489   df2b
003f048a   5200       CMPB         AL, #0x0
003f048b   6210       SB           16, GT
003f048c   28a9       MOV          AL, #0x47ae
003f048d   47ae
003f048e   28a8       MOV          AH, #0x3de1
003f048f   3de1
003f0490   1e42       MOVL         *-SP[2], ACC
003f0491   aaa9       MOVL         ACC, XAR2
003f0492   767f       LCR          0x3fdf2b
003f0493   df2b
003f0494   5200       CMPB         AL, #0x0
003f0495   630a       SB           10, GEQ
003f0496   28a8       MOV          AH, #0x3de1
003f0497   3de1
003f0498   28a9       MOV          AL, #0x47ae
003f0499   47ae
003f049a   6f04       SB           4, UNC
003f049b   28a8       MOV          AH, #0x42f0
003f049c   42f0
003f049d   9a00       MOVB         AL, #0x0
003f049e   86a9       MOVL         XAR2, ACC
003f049f   88ad       MOVZ         AR6, SP
003f04a0   aaa9       MOVL         ACC, XAR2
003f04a1   de8c       SUBB         XAR6, #12
003f04a2   767f       LCR          0x3fdfb7
003f04a3   dfb7
003f04a4   8f7f       MOVL         XAR5, #0x3f6370
003f04a5   6370
003f04a6   5cad       MOVZ         AR4, SP
003f04a7   88ad       MOVZ         AR6, SP
003f04a8   dc8c       SUBB         XAR4, #12
003f04a9   de88       SUBB         XAR6, #8
003f04aa   767f       LCR          0x3fdc5e
003f04ab   dc5e
003f04ac   5cad       MOVZ         AR4, SP
003f04ad   dc88       SUBB         XAR4, #8
003f04ae   767f       LCR          0x3fdf7b
003f04af   df7b
003f04b0   d0ca       MOVB         XAR0, #0xca
003f04b1   1e91       MOVL         *+XAR1[AR0], ACC
003f04b2   d0cc       MOVB         XAR0, #0xcc
003f04b3   1e91       MOVL         *+XAR1[AR0], ACC
003f04b4   d020       MOVB         XAR0, #0x20
003f04b5   8a91       MOVL         XAR4, *+XAR1[AR0]
003f04b6   0200       MOVB         ACC, #0
003f04b7   d032       MOVB         XAR0, #0x32
003f04b8   1ef4       MOVL         *+XAR4[6], ACC
003f04b9   8a91       MOVL         XAR4, *+XAR1[AR0]
003f04ba   1ef4       MOVL         *+XAR4[6], ACC
003f04bb   28a9       MOV          AL, #0xd70a
003f04bc   d70a
003f04bd   28a8       MOV          AH, #0x3ca3
003f04be   3ca3
003f04bf   1e42       MOVL         *-SP[2], ACC
003f04c0   0656       MOVL         ACC, *-SP[22]
003f04c1   767f       LCR          0x3fdde7
003f04c2   dde7
003f04c3   88ad       MOVZ         AR6, SP
003f04c4   de8c       SUBB         XAR6, #12
003f04c5   767f       LCR          0x3fdfb7
003f04c6   dfb7
003f04c7   88ad       MOVZ         AR6, SP
003f04c8   5cad       MOVZ         AR4, SP
003f04c9   de88       SUBB         XAR6, #8
003f04ca   dc8c       SUBB         XAR4, #12
003f04cb   8f7f       MOVL         XAR5, #0x3f6370
003f04cc   6370
003f04cd   767f       LCR          0x3fdc5e
003f04ce   dc5e
003f04cf   5cad       MOVZ         AR4, SP
003f04d0   dc88       SUBB         XAR4, #8
003f04d1   767f       LCR          0x3fdf7b
003f04d2   df7b
003f04d3   c44e       MOVL         XAR6, *-SP[14]
003f04d4   c242       MOVL         *-SP[2], XAR6
003f04d5   767f       LCR          0x3fff8f
003f04d6   ff8f
003f04d7   d044       MOVB         XAR0, #0x44
003f04d8   8a91       MOVL         XAR4, *+XAR1[AR0]
003f04d9   1ec4       MOVL         *+XAR4[0], ACC
003f04da   0200       MOVB         ACC, #0
003f04db   1ed4       MOVL         *+XAR4[2], ACC
003f04dc   1ee4       MOVL         *+XAR4[4], ACC
003f04dd   6f41       SB           65, UNC
003f04de   d018       MOVB         XAR0, #0x18
003f04df   8a91       MOVL         XAR4, *+XAR1[AR0]
003f04e0   767f       LCR          0x3fcc5c
003f04e1   cc5c
003f04e2   1ea6       MOVL         XAR6, ACC
003f04e3   28a9       MOV          AL, #0xd70a
003f04e4   d70a
003f04e5   28a8       MOV          AH, #0x3ca3
003f04e6   3ca3
003f04e7   1e42       MOVL         *-SP[2], ACC
003f04e8   06a6       MOVL         ACC, XAR6
003f04e9   767f       LCR          0x3fdde7
003f04ea   dde7
003f04eb   88ad       MOVZ         AR6, SP
003f04ec   de8c       SUBB         XAR6, #12
003f04ed   767f       LCR          0x3fdfb7
003f04ee   dfb7
003f04ef   88ad       MOVZ         AR6, SP
003f04f0   5cad       MOVZ         AR4, SP
003f04f1   8f7f       MOVL         XAR5, #0x3f6370
003f04f2   6370
003f04f3   de88       SUBB         XAR6, #8
003f04f4   dc8c       SUBB         XAR4, #12
003f04f5   767f       LCR          0x3fdc5e
003f04f6   dc5e
003f04f7   5cad       MOVZ         AR4, SP
003f04f8   dc88       SUBB         XAR4, #8
003f04f9   767f       LCR          0x3fdf7b
003f04fa   df7b
003f04fb   d018       MOVB         XAR0, #0x18
003f04fc   8a91       MOVL         XAR4, *+XAR1[AR0]
003f04fd   d022       MOVB         XAR0, #0x22
003f04fe   c494       MOVL         XAR6, *+XAR4[AR0]
003f04ff   c242       MOVL         *-SP[2], XAR6
003f0500   767f       LCR          0x3fff8f
003f0501   ff8f
003f0502   d044       MOVB         XAR0, #0x44
003f0503   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0504   1ec4       MOVL         *+XAR4[0], ACC
003f0505   0200       MOVB         ACC, #0
003f0506   1ed4       MOVL         *+XAR4[2], ACC
003f0507   1ee4       MOVL         *+XAR4[4], ACC
003f0508   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0509   1ef4       MOVL         *+XAR4[6], ACC
003f050a   6f10       SB           16, UNC
003f050b   d020       MOVB         XAR0, #0x20
003f050c   8391       MOVL         XAR5, *+XAR1[AR0]
003f050d   8f05       MOVL         XAR4, #0x051eb8
003f050e   1eb8
003f050f   d032       MOVB         XAR0, #0x32
003f0510   a8d5       MOVL         *+XAR5[2], XAR4
003f0511   8391       MOVL         XAR5, *+XAR1[AR0]
003f0512   0200       MOVB         ACC, #0
003f0513   d0ca       MOVB         XAR0, #0xca
003f0514   a8d5       MOVL         *+XAR5[2], XAR4
003f0515   8f19       MOVL         XAR4, #0x199999
003f0516   9999
003f0517   a891       MOVL         *+XAR1[AR0], XAR4
003f0518   d0cc       MOVB         XAR0, #0xcc
003f0519   a891       MOVL         *+XAR1[AR0], XAR4
003f051a   d020       MOVB         XAR0, #0x20
003f051b   8a91       MOVL         XAR4, *+XAR1[AR0]
003f051c   d032       MOVB         XAR0, #0x32
003f051d   1ef4       MOVL         *+XAR4[6], ACC
003f051e   8a91       MOVL         XAR4, *+XAR1[AR0]
003f051f   1ef4       MOVL         *+XAR4[6], ACC
003f0520   fe9a       SUBB         SP, #26
003f0521   82be       MOVL         XAR3, *--SP
003f0522   86be       MOVL         XAR2, *--SP
003f0523   8bbe       MOVL         XAR1, *--SP
003f0524   0006       LRETR        
3f0525:              _CTRL_setUserMotorParams:
003f0525   b2bd       MOVL         *SP++, XAR1
003f0526   aabd       MOVL         *SP++, XAR2
003f0527   a2bd       MOVL         *SP++, XAR3
003f0528   d018       MOVB         XAR0, #0x18
003f0529   86a4       MOVL         XAR2, XAR4
003f052a   8a92       MOVL         XAR4, *+XAR2[AR0]
003f052b   fe1a       ADDB         SP, #26
003f052c   d022       MOVB         XAR0, #0x22
003f052d   8ba4       MOVL         XAR1, XAR4
003f052e   0691       MOVL         ACC, *+XAR1[AR0]
003f052f   1e4e       MOVL         *-SP[14], ACC
003f0530   767f       LCR          0x3fc062
003f0531   c062
003f0532   d018       MOVB         XAR0, #0x18
003f0533   1e50       MOVL         *-SP[16], ACC
003f0534   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0535   767f       LCR          0x3fc08e
003f0536   c08e
003f0537   d018       MOVB         XAR0, #0x18
003f0538   1e52       MOVL         *-SP[18], ACC
003f0539   8a92       MOVL         XAR4, *+XAR2[AR0]
003f053a   767f       LCR          0x3fcc5c
003f053b   cc5c
003f053c   d0a6       MOVB         XAR0, #0xa6
003f053d   1e54       MOVL         *-SP[20], ACC
003f053e   0692       MOVL         ACC, *+XAR2[AR0]
003f053f   d018       MOVB         XAR0, #0x18
003f0540   1e56       MOVL         *-SP[22], ACC
003f0541   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0542   8d00       MOVL         XAR0, #0x0001e6
003f0543   01e6
003f0544   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f0545   0194
003f0546   d018       MOVB         XAR0, #0x18
003f0547   c592       MOVL         XAR7, *+XAR2[AR0]
003f0548   92c7       MOV          AL, *+XAR7[0]
003f0549   8d00       MOVL         XAR0, #0x000136
003f054a   0136
003f054b   96cf       MOV          *+XAR7[1], AL
003f054c   56bf       MOVB         *+XAR7[0], #0x01, UNC
003f054d   01c7
003f054e   8a91       MOVL         XAR4, *+XAR1[AR0]
003f054f   d08c       MOVB         XAR0, #0x8c
003f0550   0692       MOVL         ACC, *+XAR2[AR0]
003f0551   767f       LCR          0x3fd788
003f0552   d788
003f0553   8d00       MOVL         XAR0, #0x000148
003f0554   0148
003f0555   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0556   d08e       MOVB         XAR0, #0x8e
003f0557   0692       MOVL         ACC, *+XAR2[AR0]
003f0558   767f       LCR          0x3fd6c3
003f0559   d6c3
003f055a   d0f2       MOVB         XAR0, #0xf2
003f055b   8a91       MOVL         XAR4, *+XAR1[AR0]
003f055c   d088       MOVB         XAR0, #0x88
003f055d   0692       MOVL         ACC, *+XAR2[AR0]
003f055e   767f       LCR          0x3fd2b6
003f055f   d2b6
003f0560   d0f2       MOVB         XAR0, #0xf2
003f0561   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0562   d08a       MOVB         XAR0, #0x8a
003f0563   0692       MOVL         ACC, *+XAR2[AR0]
003f0564   767f       LCR          0x3fd284
003f0565   d284
003f0566   8d00       MOVL         XAR0, #0x000148
003f0567   0148
003f0568   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0569   d010       MOVB         XAR0, #0x10
003f056a   0694       MOVL         ACC, *+XAR4[AR0]
003f056b   8d00       MOVL         XAR0, #0x00016e
003f056c   016e
003f056d   8a91       MOVL         XAR4, *+XAR1[AR0]
003f056e   d040       MOVB         XAR0, #0x40
003f056f   1e94       MOVL         *+XAR4[AR0], ACC
003f0570   8d00       MOVL         XAR0, #0x000148
003f0571   0148
003f0572   c591       MOVL         XAR7, *+XAR1[AR0]
003f0573   8d00       MOVL         XAR0, #0x00016e
003f0574   016e
003f0575   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0576   df22       ADDB         XAR7, #34
003f0577   d050       MOVB         XAR0, #0x50
003f0578   92c7       MOV          AL, *+XAR7[0]
003f0579   9694       MOV          *+XAR4[AR0], AL
003f057a   d018       MOVB         XAR0, #0x18
003f057b   8a92       MOVL         XAR4, *+XAR2[AR0]
003f057c   28a9       MOV          AL, #0x3333
003f057d   3333
003f057e   28a8       MOV          AH, #0x3f33
003f057f   3f33
003f0580   767f       LCR          0x3fc092
003f0581   c092
003f0582   d058       MOVB         XAR0, #0x58
003f0583   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0584   d012       MOVB         XAR0, #0x12
003f0585   9694       MOV          *+XAR4[AR0], AL
003f0586   d06e       MOVB         XAR0, #0x6e
003f0587   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0588   28a9       MOV          AL, #0x3333
003f0589   3333
003f058a   28a8       MOV          AH, #0x3f33
003f058b   3f33
003f058c   767f       LCR          0x3fd514
003f058d   d514
003f058e   d06e       MOVB         XAR0, #0x6e
003f058f   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0590   d031       MOVB         XAR0, #0x31
003f0591   9694       MOV          *+XAR4[AR0], AL
003f0592   8d00       MOVL         XAR0, #0x000148
003f0593   0148
003f0594   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0595   767f       LCR          0x3fd767
003f0596   d767
003f0597   d0f2       MOVB         XAR0, #0xf2
003f0598   82a9       MOVL         XAR3, ACC
003f0599   8a91       MOVL         XAR4, *+XAR1[AR0]
003f059a   767f       LCR          0x3fd3a8
003f059b   d3a8
003f059c   1e58       MOVL         *-SP[24], ACC
003f059d   1e42       MOVL         *-SP[2], ACC
003f059e   a2a9       MOVL         ACC, XAR3
003f059f   767f       LCR          0x3fdce1
003f05a0   dce1
003f05a1   d0c8       MOVB         XAR0, #0xc8
003f05a2   1e5a       MOVL         *-SP[26], ACC
003f05a3   1e92       MOVL         *+XAR2[AR0], ACC
003f05a4   28a9       MOV          AL, #0xd70a
003f05a5   d70a
003f05a6   28a8       MOV          AH, #0x3ca3
003f05a7   3ca3
003f05a8   1e42       MOVL         *-SP[2], ACC
003f05a9   0654       MOVL         ACC, *-SP[20]
003f05aa   767f       LCR          0x3fdde7
003f05ab   dde7
003f05ac   88ad       MOVZ         AR6, SP
003f05ad   de8c       SUBB         XAR6, #12
003f05ae   767f       LCR          0x3fdfb7
003f05af   dfb7
003f05b0   88ad       MOVZ         AR6, SP
003f05b1   5cad       MOVZ         AR4, SP
003f05b2   8f7f       MOVL         XAR5, #0x3f6370
003f05b3   6370
003f05b4   de88       SUBB         XAR6, #8
003f05b5   dc8c       SUBB         XAR4, #12
003f05b6   767f       LCR          0x3fdc5e
003f05b7   dc5e
003f05b8   5cad       MOVZ         AR4, SP
003f05b9   dc88       SUBB         XAR4, #8
003f05ba   767f       LCR          0x3fdf7b
003f05bb   df7b
003f05bc   c44e       MOVL         XAR6, *-SP[14]
003f05bd   c242       MOVL         *-SP[2], XAR6
003f05be   767f       LCR          0x3fff8f
003f05bf   ff8f
003f05c0   82a9       MOVL         XAR3, ACC
003f05c1   0654       MOVL         ACC, *-SP[20]
003f05c2   1e42       MOVL         *-SP[2], ACC
003f05c3   767f       LCR          0x3fdeb8
003f05c4   deb8
003f05c5   c456       MOVL         XAR6, *-SP[22]
003f05c6   c242       MOVL         *-SP[2], XAR6
003f05c7   767f       LCR          0x3fdde7
003f05c8   dde7
003f05c9   88ad       MOVZ         AR6, SP
003f05ca   de8c       SUBB         XAR6, #12
003f05cb   767f       LCR          0x3fdfb7
003f05cc   dfb7
003f05cd   88ad       MOVZ         AR6, SP
003f05ce   de88       SUBB         XAR6, #8
003f05cf   5cad       MOVZ         AR4, SP
003f05d0   dc8c       SUBB         XAR4, #12
003f05d1   8f7f       MOVL         XAR5, #0x3f6370
003f05d2   6370
003f05d3   767f       LCR          0x3fdc5e
003f05d4   dc5e
003f05d5   5cad       MOVZ         AR4, SP
003f05d6   dc88       SUBB         XAR4, #8
003f05d7   767f       LCR          0x3fdf7b
003f05d8   df7b
003f05d9   c44e       MOVL         XAR6, *-SP[14]
003f05da   c242       MOVL         *-SP[2], XAR6
003f05db   767f       LCR          0x3fff8f
003f05dc   ff8f
003f05dd   d044       MOVB         XAR0, #0x44
003f05de   8a92       MOVL         XAR4, *+XAR2[AR0]
003f05df   be00       MOVB         XAR6, #0x00
003f05e0   a2c4       MOVL         *+XAR4[0], XAR3
003f05e1   1ed4       MOVL         *+XAR4[2], ACC
003f05e2   c2e4       MOVL         *+XAR4[4], XAR6
003f05e3   8a92       MOVL         XAR4, *+XAR2[AR0]
003f05e4   d500       MOVB         XAR5, #0x0
003f05e5   c2f4       MOVL         *+XAR4[6], XAR6
003f05e6   8aa2       MOVL         XAR4, XAR2
003f05e7   1e42       MOVL         *-SP[2], ACC
003f05e8   0200       MOVB         ACC, #0
003f05e9   1e44       MOVL         *-SP[4], ACC
003f05ea   a2a9       MOVL         ACC, XAR3
003f05eb   767f       LCR          0x3f2ce0
003f05ec   2ce0
003f05ed   ff2f       MOV          ACC, #0x7d00 << 15
003f05ee   7d00
003f05ef   1e42       MOVL         *-SP[2], ACC
003f05f0   0658       MOVL         ACC, *-SP[24]
003f05f1   767f       LCR          0x3fdde7
003f05f2   dde7
003f05f3   c450       MOVL         XAR6, *-SP[16]
003f05f4   c242       MOVL         *-SP[2], XAR6
003f05f5   767f       LCR          0x3fdde7
003f05f6   dde7
003f05f7   82a9       MOVL         XAR3, ACC
003f05f8   0652       MOVL         ACC, *-SP[18]
003f05f9   1e42       MOVL         *-SP[2], ACC
003f05fa   0656       MOVL         ACC, *-SP[22]
003f05fb   767f       LCR          0x3fdde7
003f05fc   dde7
003f05fd   1e42       MOVL         *-SP[2], ACC
003f05fe   a2a9       MOVL         ACC, XAR3
003f05ff   767f       LCR          0x3fdce1
003f0600   dce1
003f0601   88ad       MOVZ         AR6, SP
003f0602   de8c       SUBB         XAR6, #12
003f0603   767f       LCR          0x3fdfb7
003f0604   dfb7
003f0605   88ad       MOVZ         AR6, SP
003f0606   de88       SUBB         XAR6, #8
003f0607   5cad       MOVZ         AR4, SP
003f0608   dc8c       SUBB         XAR4, #12
003f0609   8f7f       MOVL         XAR5, #0x3f6370
003f060a   6370
003f060b   767f       LCR          0x3fdc5e
003f060c   dc5e
003f060d   5cad       MOVZ         AR4, SP
003f060e   dc88       SUBB         XAR4, #8
003f060f   767f       LCR          0x3fdf7b
003f0610   df7b
003f0611   82a9       MOVL         XAR3, ACC
003f0612   0656       MOVL         ACC, *-SP[22]
003f0613   1e42       MOVL         *-SP[2], ACC
003f0614   065a       MOVL         ACC, *-SP[26]
003f0615   767f       LCR          0x3fdde7
003f0616   dde7
003f0617   88ad       MOVZ         AR6, SP
003f0618   de8c       SUBB         XAR6, #12
003f0619   767f       LCR          0x3fdfb7
003f061a   dfb7
003f061b   88ad       MOVZ         AR6, SP
003f061c   5cad       MOVZ         AR4, SP
003f061d   8f7f       MOVL         XAR5, #0x3f6370
003f061e   6370
003f061f   de88       SUBB         XAR6, #8
003f0620   dc8c       SUBB         XAR4, #12
003f0621   767f       LCR          0x3fdc5e
003f0622   dc5e
003f0623   5cad       MOVZ         AR4, SP
003f0624   dc88       SUBB         XAR4, #8
003f0625   767f       LCR          0x3fdf7b
003f0626   df7b
003f0627   d020       MOVB         XAR0, #0x20
003f0628   1e5a       MOVL         *-SP[26], ACC
003f0629   8a92       MOVL         XAR4, *+XAR2[AR0]
003f062a   be00       MOVB         XAR6, #0x00
003f062b   a2c4       MOVL         *+XAR4[0], XAR3
003f062c   1ed4       MOVL         *+XAR4[2], ACC
003f062d   c2e4       MOVL         *+XAR4[4], XAR6
003f062e   8a92       MOVL         XAR4, *+XAR2[AR0]
003f062f   d501       MOVB         XAR5, #0x1
003f0630   c2f4       MOVL         *+XAR4[6], XAR6
003f0631   8aa2       MOVL         XAR4, XAR2
003f0632   1e42       MOVL         *-SP[2], ACC
003f0633   0200       MOVB         ACC, #0
003f0634   1e44       MOVL         *-SP[4], ACC
003f0635   a2a9       MOVL         ACC, XAR3
003f0636   767f       LCR          0x3f2ce0
003f0637   2ce0
003f0638   d032       MOVB         XAR0, #0x32
003f0639   8a92       MOVL         XAR4, *+XAR2[AR0]
003f063a   be00       MOVB         XAR6, #0x00
003f063b   065a       MOVL         ACC, *-SP[26]
003f063c   a2c4       MOVL         *+XAR4[0], XAR3
003f063d   1ed4       MOVL         *+XAR4[2], ACC
003f063e   c2e4       MOVL         *+XAR4[4], XAR6
003f063f   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0640   d502       MOVB         XAR5, #0x2
003f0641   c2f4       MOVL         *+XAR4[6], XAR6
003f0642   8aa2       MOVL         XAR4, XAR2
003f0643   1e42       MOVL         *-SP[2], ACC
003f0644   0200       MOVB         ACC, #0
003f0645   1e44       MOVL         *-SP[4], ACC
003f0646   a2a9       MOVL         ACC, XAR3
003f0647   767f       LCR          0x3f2ce0
003f0648   2ce0
003f0649   d06e       MOVB         XAR0, #0x6e
003f064a   8a91       MOVL         XAR4, *+XAR1[AR0]
003f064b   d0e6       MOVB         XAR0, #0xe6
003f064c   56bf       MOVB         *+XAR4[0], #0x05, UNC
003f064d   05c4
003f064e   0692       MOVL         ACC, *+XAR2[AR0]
003f064f   d018       MOVB         XAR0, #0x18
003f0650   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0651   d030       MOVB         XAR0, #0x30
003f0652   1e94       MOVL         *+XAR4[AR0], ACC
003f0653   fe9a       SUBB         SP, #26
003f0654   82be       MOVL         XAR3, *--SP
003f0655   86be       MOVL         XAR2, *--SP
003f0656   8bbe       MOVL         XAR1, *--SP
003f0657   0006       LRETR        
3f0658:              _CTRL_setEstParams:
003f0658   b2bd       MOVL         *SP++, XAR1
003f0659   aabd       MOVL         *SP++, XAR2
003f065a   a2bd       MOVL         *SP++, XAR3
003f065b   5aad       MOVZ         AR2, SP
003f065c   08ad       ADD          SP, #140
003f065d   008c
003f065e   d020       MOVB         XAR0, #0x20
003f065f   da88       SUBB         XAR2, #8
003f0660   a092       MOVL         *+XAR2[AR0], XAR5
003f0661   d01e       MOVB         XAR0, #0x1e
003f0662   a892       MOVL         *+XAR2[AR0], XAR4
003f0663   d01c       MOVB         XAR0, #0x1c
003f0664   8ba5       MOVL         XAR1, XAR5
003f0665   a892       MOVL         *+XAR2[AR0], XAR4
003f0666   d0a0       MOVB         XAR0, #0xa0
003f0667   0691       MOVL         ACC, *+XAR1[AR0]
003f0668   767f       LCR          0x3ff8aa
003f0669   f8aa
003f066a   d014       MOVB         XAR0, #0x14
003f066b   1e42       MOVL         *-SP[2], ACC
003f066c   0691       MOVL         ACC, *+XAR1[AR0]
003f066d   767f       LCR          0x3fdce1
003f066e   dce1
003f066f   88ad       MOVZ         AR6, SP
003f0670   deba       SUBB         XAR6, #58
003f0671   767f       LCR          0x3fdfb7
003f0672   dfb7
003f0673   88ad       MOVZ         AR6, SP
003f0674   5cad       MOVZ         AR4, SP
003f0675   deb6       SUBB         XAR6, #54
003f0676   8f7f       MOVL         XAR5, #0x3f6370
003f0677   6370
003f0678   dcba       SUBB         XAR4, #58
003f0679   767f       LCR          0x3fdc5e
003f067a   dc5e
003f067b   5cad       MOVZ         AR4, SP
003f067c   dcb6       SUBB         XAR4, #54
003f067d   767f       LCR          0x3fdf7b
003f067e   df7b
003f067f   d01a       MOVB         XAR0, #0x1a
003f0680   1e92       MOVL         *+XAR2[AR0], ACC
003f0681   06e1       MOVL         ACC, *+XAR1[4]
003f0682   1e42       MOVL         *-SP[2], ACC
003f0683   9a00       MOVB         AL, #0x0
003f0684   28a8       MOV          AH, #0x42c8
003f0685   42c8
003f0686   767f       LCR          0x3fdce1
003f0687   dce1
003f0688   88ad       MOVZ         AR6, SP
003f0689   dec2       SUBB         XAR6, #66
003f068a   767f       LCR          0x3fdfb7
003f068b   dfb7
003f068c   88ad       MOVZ         AR6, SP
003f068d   5cad       MOVZ         AR4, SP
003f068e   debe       SUBB         XAR6, #62
003f068f   dcc2       SUBB         XAR4, #66
003f0690   8f7f       MOVL         XAR5, #0x3f636c
003f0691   636c
003f0692   767f       LCR          0x3fdc5e
003f0693   dc5e
003f0694   5cad       MOVZ         AR4, SP
003f0695   dcbe       SUBB         XAR4, #62
003f0696   767f       LCR          0x3fdf7b
003f0697   df7b
003f0698   d008       MOVB         XAR0, #0x8
003f0699   1e92       MOVL         *+XAR2[AR0], ACC
003f069a   d020       MOVB         XAR0, #0x20
003f069b   8a92       MOVL         XAR4, *+XAR2[AR0]
003f069c   d108       MOVB         XAR1, #0x8
003f069d   929c       MOV          AL, *+XAR4[AR1]
003f069e   767f       LCR          0x3ff8bd
003f069f   f8bd
003f06a0   1e42       MOVL         *-SP[2], ACC
003f06a1   ff2f       MOV          ACC, #0x7f00 << 15
003f06a2   7f00
003f06a3   767f       LCR          0x3fdce1
003f06a4   dce1
003f06a5   88ad       MOVZ         AR6, SP
003f06a6   deca       SUBB         XAR6, #74
003f06a7   767f       LCR          0x3fdfb7
003f06a8   dfb7
003f06a9   8f7f       MOVL         XAR5, #0x3f6374
003f06aa   6374
003f06ab   5cad       MOVZ         AR4, SP
003f06ac   88ad       MOVZ         AR6, SP
003f06ad   dcca       SUBB         XAR4, #74
003f06ae   dec6       SUBB         XAR6, #70
003f06af   767f       LCR          0x3fdc5e
003f06b0   dc5e
003f06b1   5cad       MOVZ         AR4, SP
003f06b2   dcc6       SUBB         XAR4, #70
003f06b3   767f       LCR          0x3fdf7b
003f06b4   df7b
003f06b5   d020       MOVB         XAR0, #0x20
003f06b6   88ad       MOVZ         AR6, SP
003f06b7   8a92       MOVL         XAR4, *+XAR2[AR0]
003f06b8   d132       MOVB         XAR1, #0x32
003f06b9   82a9       MOVL         XAR3, ACC
003f06ba   ded2       SUBB         XAR6, #82
003f06bb   069c       MOVL         ACC, *+XAR4[AR1]
003f06bc   767f       LCR          0x3fdfb7
003f06bd   dfb7
003f06be   5cad       MOVZ         AR4, SP
003f06bf   88ad       MOVZ         AR6, SP
003f06c0   dcd2       SUBB         XAR4, #82
003f06c1   dece       SUBB         XAR6, #78
003f06c2   8f7f       MOVL         XAR5, #0x3f6374
003f06c3   6374
003f06c4   767f       LCR          0x3fdc5e
003f06c5   dc5e
003f06c6   5cad       MOVZ         AR4, SP
003f06c7   dcce       SUBB         XAR4, #78
003f06c8   767f       LCR          0x3fdf7b
003f06c9   df7b
003f06ca   be00       MOVB         XAR6, #0x00
003f06cb   d01a       MOVB         XAR0, #0x1a
003f06cc   c242       MOVL         *-SP[2], XAR6
003f06cd   c492       MOVL         XAR6, *+XAR2[AR0]
003f06ce   d008       MOVB         XAR0, #0x8
003f06cf   c244       MOVL         *-SP[4], XAR6
003f06d0   c492       MOVL         XAR6, *+XAR2[AR0]
003f06d1   d01c       MOVB         XAR0, #0x1c
003f06d2   c246       MOVL         *-SP[6], XAR6
003f06d3   a248       MOVL         *-SP[8], XAR3
003f06d4   1e4a       MOVL         *-SP[10], ACC
003f06d5   8292       MOVL         XAR3, *+XAR2[AR0]
003f06d6   d146       MOVB         XAR1, #0x46
003f06d7   0200       MOVB         ACC, #0
003f06d8   8a9b       MOVL         XAR4, *+XAR3[AR1]
003f06d9   767f       LCR          0x3fd9e5
003f06da   d9e5
003f06db   d046       MOVB         XAR0, #0x46
003f06dc   8a93       MOVL         XAR4, *+XAR3[AR0]
003f06dd   d00e       MOVB         XAR0, #0xe
003f06de   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f06df   0194
003f06e0   d046       MOVB         XAR0, #0x46
003f06e1   8a93       MOVL         XAR4, *+XAR3[AR0]
003f06e2   761f       MOVW         DP, #0xfd8d
003f06e3   fd8d
003f06e4   d00f       MOVB         XAR0, #0xf
003f06e5   2b94       MOV          *+XAR4[AR0], #0
003f06e6   0614       MOVL         ACC, @0x14
003f06e7   761f       MOVW         DP, #0xfd8d
003f06e8   fd8d
003f06e9   c416       MOVL         XAR6, @0x16
003f06ea   1e62       MOVL         *-SP[34], ACC
003f06eb   761f       MOVW         DP, #0xfd8d
003f06ec   fd8d
003f06ed   060c       MOVL         ACC, @0xc
003f06ee   761f       MOVW         DP, #0xfd8d
003f06ef   fd8d
003f06f0   c260       MOVL         *-SP[32], XAR6
003f06f1   c40e       MOVL         XAR6, @0xe
003f06f2   761f       MOVW         DP, #0xfd8d
003f06f3   fd8d
003f06f4   1e66       MOVL         *-SP[38], ACC
003f06f5   0610       MOVL         ACC, @0x10
003f06f6   761f       MOVW         DP, #0xfd8d
003f06f7   fd8d
003f06f8   c264       MOVL         *-SP[36], XAR6
003f06f9   c412       MOVL         XAR6, @0x12
003f06fa   761f       MOVW         DP, #0xfd8d
003f06fb   fd8d
003f06fc   1e6a       MOVL         *-SP[42], ACC
003f06fd   0604       MOVL         ACC, @0x4
003f06fe   761f       MOVW         DP, #0xfd8d
003f06ff   fd8d
003f0700   c268       MOVL         *-SP[40], XAR6
003f0701   c406       MOVL         XAR6, @0x6
003f0702   d020       MOVB         XAR0, #0x20
003f0703   761f       MOVW         DP, #0xfd8d
003f0704   fd8d
003f0705   1e6e       MOVL         *-SP[46], ACC
003f0706   c26c       MOVL         *-SP[44], XAR6
003f0707   0608       MOVL         ACC, @0x8
003f0708   761f       MOVW         DP, #0xfd8d
003f0709   fd8d
003f070a   c40a       MOVL         XAR6, @0xa
003f070b   8292       MOVL         XAR3, *+XAR2[AR0]
003f070c   d14c       MOVB         XAR1, #0x4c
003f070d   1e72       MOVL         *-SP[50], ACC
003f070e   c270       MOVL         *-SP[48], XAR6
003f070f   88ad       MOVZ         AR6, SP
003f0710   deba       SUBB         XAR6, #58
003f0711   069b       MOVL         ACC, *+XAR3[AR1]
003f0712   767f       LCR          0x3fdfb7
003f0713   dfb7
003f0714   5cad       MOVZ         AR4, SP
003f0715   88ad       MOVZ         AR6, SP
003f0716   dcba       SUBB         XAR4, #58
003f0717   deb6       SUBB         XAR6, #54
003f0718   8f7f       MOVL         XAR5, #0x3f6370
003f0719   6370
003f071a   767f       LCR          0x3fdc5e
003f071b   dc5e
003f071c   5cad       MOVZ         AR4, SP
003f071d   dcb6       SUBB         XAR4, #54
003f071e   767f       LCR          0x3fdf7b
003f071f   df7b
003f0720   d018       MOVB         XAR0, #0x18
003f0721   88ad       MOVZ         AR6, SP
003f0722   deba       SUBB         XAR6, #58
003f0723   1e92       MOVL         *+XAR2[AR0], ACC
003f0724   d04e       MOVB         XAR0, #0x4e
003f0725   0693       MOVL         ACC, *+XAR3[AR0]
003f0726   767f       LCR          0x3fdfb7
003f0727   dfb7
003f0728   88ad       MOVZ         AR6, SP
003f0729   5cad       MOVZ         AR4, SP
003f072a   8f7f       MOVL         XAR5, #0x3f6370
003f072b   6370
003f072c   deb6       SUBB         XAR6, #54
003f072d   dcba       SUBB         XAR4, #58
003f072e   767f       LCR          0x3fdc5e
003f072f   dc5e
003f0730   5cad       MOVZ         AR4, SP
003f0731   dcb6       SUBB         XAR4, #54
003f0732   767f       LCR          0x3fdf7b
003f0733   df7b
003f0734   d016       MOVB         XAR0, #0x16
003f0735   1e92       MOVL         *+XAR2[AR0], ACC
003f0736   d020       MOVB         XAR0, #0x20
003f0737   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0738   d008       MOVB         XAR0, #0x8
003f0739   06c4       MOVL         ACC, *+XAR4[0]
003f073a   1e92       MOVL         *+XAR2[AR0], ACC
003f073b   d040       MOVB         XAR0, #0x40
003f073c   1e42       MOVL         *-SP[2], ACC
003f073d   0694       MOVL         ACC, *+XAR4[AR0]
003f073e   767f       LCR          0x3fdce1
003f073f   dce1
003f0740   d020       MOVB         XAR0, #0x20
003f0741   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0742   82a9       MOVL         XAR3, ACC
003f0743   92f4       MOV          AL, *+XAR4[6]
003f0744   767f       LCR          0x3ff8bd
003f0745   f8bd
003f0746   d020       MOVB         XAR0, #0x20
003f0747   1e42       MOVL         *-SP[2], ACC
003f0748   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0749   d150       MOVB         XAR1, #0x50
003f074a   069c       MOVL         ACC, *+XAR4[AR1]
003f074b   767f       LCR          0x3fdde7
003f074c   dde7
003f074d   a242       MOVL         *-SP[2], XAR3
003f074e   767f       LCR          0x3fdde7
003f074f   dde7
003f0750   88ad       MOVZ         AR6, SP
003f0751   deba       SUBB         XAR6, #58
003f0752   767f       LCR          0x3fdfb7
003f0753   dfb7
003f0754   88ad       MOVZ         AR6, SP
003f0755   5cad       MOVZ         AR4, SP
003f0756   deb6       SUBB         XAR6, #54
003f0757   dcba       SUBB         XAR4, #58
003f0758   8f7f       MOVL         XAR5, #0x3f6370
003f0759   6370
003f075a   767f       LCR          0x3fdc5e
003f075b   dc5e
003f075c   5cad       MOVZ         AR4, SP
003f075d   dcb6       SUBB         XAR4, #54
003f075e   767f       LCR          0x3fdf7b
003f075f   df7b
003f0760   d014       MOVB         XAR0, #0x14
003f0761   88ad       MOVZ         AR6, SP
003f0762   deba       SUBB         XAR6, #58
003f0763   1e92       MOVL         *+XAR2[AR0], ACC
003f0764   a2a9       MOVL         ACC, XAR3
003f0765   767f       LCR          0x3fdfb7
003f0766   dfb7
003f0767   88ad       MOVZ         AR6, SP
003f0768   5cad       MOVZ         AR4, SP
003f0769   deb6       SUBB         XAR6, #54
003f076a   dcba       SUBB         XAR4, #58
003f076b   8f7f       MOVL         XAR5, #0x3f6370
003f076c   6370
003f076d   767f       LCR          0x3fdc5e
003f076e   dc5e
003f076f   5cad       MOVZ         AR4, SP
003f0770   dcb6       SUBB         XAR4, #54
003f0771   767f       LCR          0x3fdf7b
003f0772   df7b
003f0773   d012       MOVB         XAR0, #0x12
003f0774   1e92       MOVL         *+XAR2[AR0], ACC
003f0775   d020       MOVB         XAR0, #0x20
003f0776   8292       MOVL         XAR3, *+XAR2[AR0]
003f0777   88ad       MOVZ         AR6, SP
003f0778   d146       MOVB         XAR1, #0x46
003f0779   deba       SUBB         XAR6, #58
003f077a   069b       MOVL         ACC, *+XAR3[AR1]
003f077b   767f       LCR          0x3fdfb7
003f077c   dfb7
003f077d   88ad       MOVZ         AR6, SP
003f077e   8f7f       MOVL         XAR5, #0x3f6370
003f077f   6370
003f0780   5cad       MOVZ         AR4, SP
003f0781   deb6       SUBB         XAR6, #54
003f0782   dcba       SUBB         XAR4, #58
003f0783   767f       LCR          0x3fdc5e
003f0784   dc5e
003f0785   5cad       MOVZ         AR4, SP
003f0786   dcb6       SUBB         XAR4, #54
003f0787   767f       LCR          0x3fdf7b
003f0788   df7b
003f0789   d010       MOVB         XAR0, #0x10
003f078a   1e92       MOVL         *+XAR2[AR0], ACC
003f078b   d008       MOVB         XAR0, #0x8
003f078c   8b92       MOVL         XAR1, *+XAR2[AR0]
003f078d   d044       MOVB         XAR0, #0x44
003f078e   b242       MOVL         *-SP[2], XAR1
003f078f   0693       MOVL         ACC, *+XAR3[AR0]
003f0790   767f       LCR          0x3fdce1
003f0791   dce1
003f0792   88ad       MOVZ         AR6, SP
003f0793   deba       SUBB         XAR6, #58
003f0794   767f       LCR          0x3fdfb7
003f0795   dfb7
003f0796   88ad       MOVZ         AR6, SP
003f0797   5cad       MOVZ         AR4, SP
003f0798   deb6       SUBB         XAR6, #54
003f0799   dcba       SUBB         XAR4, #58
003f079a   8f7f       MOVL         XAR5, #0x3f6370
003f079b   6370
003f079c   767f       LCR          0x3fdc5e
003f079d   dc5e
003f079e   5cad       MOVZ         AR4, SP
003f079f   dcb6       SUBB         XAR4, #54
003f07a0   767f       LCR          0x3fdf7b
003f07a1   df7b
003f07a2   d00e       MOVB         XAR0, #0xe
003f07a3   1e92       MOVL         *+XAR2[AR0], ACC
003f07a4   d042       MOVB         XAR0, #0x42
003f07a5   b242       MOVL         *-SP[2], XAR1
003f07a6   0693       MOVL         ACC, *+XAR3[AR0]
003f07a7   767f       LCR          0x3fdce1
003f07a8   dce1
003f07a9   88ad       MOVZ         AR6, SP
003f07aa   deba       SUBB         XAR6, #58
003f07ab   767f       LCR          0x3fdfb7
003f07ac   dfb7
003f07ad   88ad       MOVZ         AR6, SP
003f07ae   5cad       MOVZ         AR4, SP
003f07af   deb6       SUBB         XAR6, #54
003f07b0   dcba       SUBB         XAR4, #58
003f07b1   8f7f       MOVL         XAR5, #0x3f6370
003f07b2   6370
003f07b3   767f       LCR          0x3fdc5e
003f07b4   dc5e
003f07b5   5cad       MOVZ         AR4, SP
003f07b6   dcb6       SUBB         XAR4, #54
003f07b7   767f       LCR          0x3fdf7b
003f07b8   df7b
003f07b9   d008       MOVB         XAR0, #0x8
003f07ba   1e92       MOVL         *+XAR2[AR0], ACC
003f07bb   d020       MOVB         XAR0, #0x20
003f07bc   8292       MOVL         XAR3, *+XAR2[AR0]
003f07bd   88ad       MOVZ         AR6, SP
003f07be   d148       MOVB         XAR1, #0x48
003f07bf   deba       SUBB         XAR6, #58
003f07c0   069b       MOVL         ACC, *+XAR3[AR1]
003f07c1   767f       LCR          0x3fdfb7
003f07c2   dfb7
003f07c3   88ad       MOVZ         AR6, SP
003f07c4   8f7f       MOVL         XAR5, #0x3f6370
003f07c5   6370
003f07c6   5cad       MOVZ         AR4, SP
003f07c7   deb6       SUBB         XAR6, #54
003f07c8   dcba       SUBB         XAR4, #58
003f07c9   767f       LCR          0x3fdc5e
003f07ca   dc5e
003f07cb   5cad       MOVZ         AR4, SP
003f07cc   dcb6       SUBB         XAR4, #54
003f07cd   767f       LCR          0x3fdf7b
003f07ce   df7b
003f07cf   d00c       MOVB         XAR0, #0xc
003f07d0   1e92       MOVL         *+XAR2[AR0], ACC
003f07d1   d0a0       MOVB         XAR0, #0xa0
003f07d2   0693       MOVL         ACC, *+XAR3[AR0]
003f07d3   767f       LCR          0x3ff8aa
003f07d4   f8aa
003f07d5   d02e       MOVB         XAR0, #0x2e
003f07d6   1e42       MOVL         *-SP[2], ACC
003f07d7   0693       MOVL         ACC, *+XAR3[AR0]
003f07d8   767f       LCR          0x3fdce1
003f07d9   dce1
003f07da   88ad       MOVZ         AR6, SP
003f07db   deba       SUBB         XAR6, #58
003f07dc   767f       LCR          0x3fdfb7
003f07dd   dfb7
003f07de   88ad       MOVZ         AR6, SP
003f07df   deb6       SUBB         XAR6, #54
003f07e0   5cad       MOVZ         AR4, SP
003f07e1   dcba       SUBB         XAR4, #58
003f07e2   8f7f       MOVL         XAR5, #0x3f636c
003f07e3   636c
003f07e4   767f       LCR          0x3fdc5e
003f07e5   dc5e
003f07e6   5cad       MOVZ         AR4, SP
003f07e7   dcb6       SUBB         XAR4, #54
003f07e8   767f       LCR          0x3fdf7b
003f07e9   df7b
003f07ea   5bad       MOVZ         AR3, SP
003f07eb   5cad       MOVZ         AR4, SP
003f07ec   d01a       MOVB         XAR0, #0x1a
003f07ed   dba6       SUBB         XAR3, #38
003f07ee   dcaa       SUBB         XAR4, #42
003f07ef   a242       MOVL         *-SP[2], XAR3
003f07f0   a892       MOVL         *+XAR2[AR0], XAR4
003f07f1   d01a       MOVB         XAR0, #0x1a
003f07f2   c492       MOVL         XAR6, *+XAR2[AR0]
003f07f3   d01c       MOVB         XAR0, #0x1c
003f07f4   c244       MOVL         *-SP[4], XAR6
003f07f5   8a92       MOVL         XAR4, *+XAR2[AR0]
003f07f6   5dad       MOVZ         AR5, SP
003f07f7   d1d8       MOVB         XAR1, #0xd8
003f07f8   dda2       SUBB         XAR5, #34
003f07f9   8a9c       MOVL         XAR4, *+XAR4[AR1]
003f07fa   767f       LCR          0x3fd9cc
003f07fb   d9cc
003f07fc   d01c       MOVB         XAR0, #0x1c
003f07fd   5cad       MOVZ         AR4, SP
003f07fe   dcb2       SUBB         XAR4, #50
003f07ff   5dad       MOVZ         AR5, SP
003f0800   a842       MOVL         *-SP[2], XAR4
003f0801   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0802   d00a       MOVB         XAR0, #0xa
003f0803   d1e8       MOVB         XAR1, #0xe8
003f0804   ddae       SUBB         XAR5, #46
003f0805   8a9c       MOVL         XAR4, *+XAR4[AR1]
003f0806   a092       MOVL         *+XAR2[AR0], XAR5
003f0807   d00a       MOVB         XAR0, #0xa
003f0808   8392       MOVL         XAR5, *+XAR2[AR0]
003f0809   767f       LCR          0x3fda1e
003f080a   da1e
003f080b   d00e       MOVB         XAR0, #0xe
003f080c   0692       MOVL         ACC, *+XAR2[AR0]
003f080d   d008       MOVB         XAR0, #0x8
003f080e   1e42       MOVL         *-SP[2], ACC
003f080f   0692       MOVL         ACC, *+XAR2[AR0]
003f0810   d010       MOVB         XAR0, #0x10
003f0811   1e44       MOVL         *-SP[4], ACC
003f0812   0692       MOVL         ACC, *+XAR2[AR0]
003f0813   d00c       MOVB         XAR0, #0xc
003f0814   1e46       MOVL         *-SP[6], ACC
003f0815   0692       MOVL         ACC, *+XAR2[AR0]
003f0816   d018       MOVB         XAR0, #0x18
003f0817   1e48       MOVL         *-SP[8], ACC
003f0818   0200       MOVB         ACC, #0
003f0819   1e4a       MOVL         *-SP[10], ACC
003f081a   1e4c       MOVL         *-SP[12], ACC
003f081b   0692       MOVL         ACC, *+XAR2[AR0]
003f081c   d016       MOVB         XAR0, #0x16
003f081d   1e4e       MOVL         *-SP[14], ACC
003f081e   0692       MOVL         ACC, *+XAR2[AR0]
003f081f   d014       MOVB         XAR0, #0x14
003f0820   1e50       MOVL         *-SP[16], ACC
003f0821   0692       MOVL         ACC, *+XAR2[AR0]
003f0822   d01e       MOVB         XAR0, #0x1e
003f0823   1e52       MOVL         *-SP[18], ACC
003f0824   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0825   d012       MOVB         XAR0, #0x12
003f0826   0692       MOVL         ACC, *+XAR2[AR0]
003f0827   767f       LCR          0x3fd1be
003f0828   d1be
003f0829   d020       MOVB         XAR0, #0x20
003f082a   8a92       MOVL         XAR4, *+XAR2[AR0]
003f082b   d1a0       MOVB         XAR1, #0xa0
003f082c   069c       MOVL         ACC, *+XAR4[AR1]
003f082d   767f       LCR          0x3ff8aa
003f082e   f8aa
003f082f   d020       MOVB         XAR0, #0x20
003f0830   1e42       MOVL         *-SP[2], ACC
003f0831   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0832   d11e       MOVB         XAR1, #0x1e
003f0833   069c       MOVL         ACC, *+XAR4[AR1]
003f0834   767f       LCR          0x3fdce1
003f0835   dce1
003f0836   88ad       MOVZ         AR6, SP
003f0837   deba       SUBB         XAR6, #58
003f0838   767f       LCR          0x3fdfb7
003f0839   dfb7
003f083a   88ad       MOVZ         AR6, SP
003f083b   5cad       MOVZ         AR4, SP
003f083c   deb6       SUBB         XAR6, #54
003f083d   dcba       SUBB         XAR4, #58
003f083e   8f7f       MOVL         XAR5, #0x3f636c
003f083f   636c
003f0840   767f       LCR          0x3fdc5e
003f0841   dc5e
003f0842   5cad       MOVZ         AR4, SP
003f0843   dcb6       SUBB         XAR4, #54
003f0844   767f       LCR          0x3fdf7b
003f0845   df7b
003f0846   d01c       MOVB         XAR0, #0x1c
003f0847   1ea6       MOVL         XAR6, ACC
003f0848   ff2f       MOV          ACC, #0x200 << 15
003f0849   0200
003f084a   1e42       MOVL         *-SP[2], ACC
003f084b   9b40       MOVB         AH, #0x40
003f084c   9a00       MOVB         AL, #0x0
003f084d   1e44       MOVL         *-SP[4], ACC
003f084e   9a00       MOVB         AL, #0x0
003f084f   28a8       MOV          AH, #0x6400
003f0850   6400
003f0851   1e46       MOVL         *-SP[6], ACC
003f0852   c248       MOVL         *-SP[8], XAR6
003f0853   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0854   8d40       MOVL         XAR1, #0x00011e
003f0855   011e
003f0856   0200       MOVB         ACC, #0
003f0857   8a9c       MOVL         XAR4, *+XAR4[AR1]
003f0858   767f       LCR          0x3fda0d
003f0859   da0d
003f085a   761f       MOVW         DP, #0xfd8d
003f085b   fd8d
003f085c   d01a       MOVB         XAR0, #0x1a
003f085d   0628       MOVL         ACC, @0x28
003f085e   761f       MOVW         DP, #0xfd8d
003f085f   fd8d
003f0860   1e66       MOVL         *-SP[38], ACC
003f0861   c42a       MOVL         XAR6, @0x2a
003f0862   5cad       MOVZ         AR4, SP
003f0863   761f       MOVW         DP, #0xfd8d
003f0864   fd8d
003f0865   0620       MOVL         ACC, @0x20
003f0866   c264       MOVL         *-SP[36], XAR6
003f0867   761f       MOVW         DP, #0xfd8d
003f0868   fd8d
003f0869   c422       MOVL         XAR6, @0x22
003f086a   761f       MOVW         DP, #0xfd8d
003f086b   fd8d
003f086c   1e6a       MOVL         *-SP[42], ACC
003f086d   0624       MOVL         ACC, @0x24
003f086e   761f       MOVW         DP, #0xfd8d
003f086f   fd8d
003f0870   c268       MOVL         *-SP[40], XAR6
003f0871   c426       MOVL         XAR6, @0x26
003f0872   761f       MOVW         DP, #0xfd8d
003f0873   fd8d
003f0874   1e6e       MOVL         *-SP[46], ACC
003f0875   0618       MOVL         ACC, @0x18
003f0876   761f       MOVW         DP, #0xfd8d
003f0877   fd8d
003f0878   c26c       MOVL         *-SP[44], XAR6
003f0879   c41a       MOVL         XAR6, @0x1a
003f087a   1e72       MOVL         *-SP[50], ACC
003f087b   0692       MOVL         ACC, *+XAR2[AR0]
003f087c   d00a       MOVB         XAR0, #0xa
003f087d   dcb2       SUBB         XAR4, #50
003f087e   d158       MOVB         XAR1, #0x58
003f087f   1e42       MOVL         *-SP[2], ACC
003f0880   0692       MOVL         ACC, *+XAR2[AR0]
003f0881   d01c       MOVB         XAR0, #0x1c
003f0882   c270       MOVL         *-SP[48], XAR6
003f0883   1e44       MOVL         *-SP[4], ACC
003f0884   a846       MOVL         *-SP[6], XAR4
003f0885   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0886   83a3       MOVL         XAR5, XAR3
003f0887   9a00       MOVB         AL, #0x0
003f0888   9b2e       MOVB         AH, #0x2e
003f0889   8a9c       MOVL         XAR4, *+XAR4[AR1]
003f088a   767f       LCR          0x3fd922
003f088b   d922
003f088c   d020       MOVB         XAR0, #0x20
003f088d   8a92       MOVL         XAR4, *+XAR2[AR0]
003f088e   88ad       MOVZ         AR6, SP
003f088f   d124       MOVB         XAR1, #0x24
003f0890   deba       SUBB         XAR6, #58
003f0891   069c       MOVL         ACC, *+XAR4[AR1]
003f0892   767f       LCR          0x3fdfb7
003f0893   dfb7
003f0894   5cad       MOVZ         AR4, SP
003f0895   88ad       MOVZ         AR6, SP
003f0896   dcba       SUBB         XAR4, #58
003f0897   8f7f       MOVL         XAR5, #0x3f6370
003f0898   6370
003f0899   deb6       SUBB         XAR6, #54
003f089a   767f       LCR          0x3fdc5e
003f089b   dc5e
003f089c   5cad       MOVZ         AR4, SP
003f089d   dcb6       SUBB         XAR4, #54
003f089e   767f       LCR          0x3fdf7b
003f089f   df7b
003f08a0   d01e       MOVB         XAR0, #0x1e
003f08a1   8a92       MOVL         XAR4, *+XAR2[AR0]
003f08a2   767f       LCR          0x3fd1e8
003f08a3   d1e8
003f08a4   761f       MOVW         DP, #0xfd8d
003f08a5   fd8d
003f08a6   d020       MOVB         XAR0, #0x20
003f08a7   061c       MOVL         ACC, @0x1c
003f08a8   761f       MOVW         DP, #0xfd8d
003f08a9   fd8d
003f08aa   c41e       MOVL         XAR6, @0x1e
003f08ab   8292       MOVL         XAR3, *+XAR2[AR0]
003f08ac   d1a0       MOVB         XAR1, #0xa0
003f08ad   1e72       MOVL         *-SP[50], ACC
003f08ae   c270       MOVL         *-SP[48], XAR6
003f08af   069b       MOVL         ACC, *+XAR3[AR1]
003f08b0   767f       LCR          0x3ff8aa
003f08b1   f8aa
003f08b2   d010       MOVB         XAR0, #0x10
003f08b3   8ba9       MOVL         XAR1, ACC
003f08b4   1e42       MOVL         *-SP[2], ACC
003f08b5   0693       MOVL         ACC, *+XAR3[AR0]
003f08b6   767f       LCR          0x3fdce1
003f08b7   dce1
003f08b8   88ad       MOVZ         AR6, SP
003f08b9   deba       SUBB         XAR6, #58
003f08ba   767f       LCR          0x3fdfb7
003f08bb   dfb7
003f08bc   88ad       MOVZ         AR6, SP
003f08bd   deb6       SUBB         XAR6, #54
003f08be   5cad       MOVZ         AR4, SP
003f08bf   8f7f       MOVL         XAR5, #0x3f636c
003f08c0   636c
003f08c1   dcba       SUBB         XAR4, #58
003f08c2   767f       LCR          0x3fdc5e
003f08c3   dc5e
003f08c4   5cad       MOVZ         AR4, SP
003f08c5   dcb6       SUBB         XAR4, #54
003f08c6   767f       LCR          0x3fdf7b
003f08c7   df7b
003f08c8   d00c       MOVB         XAR0, #0xc
003f08c9   1e92       MOVL         *+XAR2[AR0], ACC
003f08ca   d01a       MOVB         XAR0, #0x1a
003f08cb   b242       MOVL         *-SP[2], XAR1
003f08cc   0693       MOVL         ACC, *+XAR3[AR0]
003f08cd   767f       LCR          0x3fdce1
003f08ce   dce1
003f08cf   88ad       MOVZ         AR6, SP
003f08d0   dec2       SUBB         XAR6, #66
003f08d1   767f       LCR          0x3fdfb7
003f08d2   dfb7
003f08d3   88ad       MOVZ         AR6, SP
003f08d4   5cad       MOVZ         AR4, SP
003f08d5   debe       SUBB         XAR6, #62
003f08d6   dcc2       SUBB         XAR4, #66
003f08d7   8f7f       MOVL         XAR5, #0x3f636c
003f08d8   636c
003f08d9   767f       LCR          0x3fdc5e
003f08da   dc5e
003f08db   5cad       MOVZ         AR4, SP
003f08dc   dcbe       SUBB         XAR4, #62
003f08dd   767f       LCR          0x3fdf7b
003f08de   df7b
003f08df   d008       MOVB         XAR0, #0x8
003f08e0   1e92       MOVL         *+XAR2[AR0], ACC
003f08e1   d020       MOVB         XAR0, #0x20
003f08e2   b242       MOVL         *-SP[2], XAR1
003f08e3   8a92       MOVL         XAR4, *+XAR2[AR0]
003f08e4   06d4       MOVL         ACC, *+XAR4[2]
003f08e5   767f       LCR          0x3fdce1
003f08e6   dce1
003f08e7   d020       MOVB         XAR0, #0x20
003f08e8   8a92       MOVL         XAR4, *+XAR2[AR0]
003f08e9   d020       MOVB         XAR0, #0x20
003f08ea   82a9       MOVL         XAR3, ACC
003f08eb   06e4       MOVL         ACC, *+XAR4[4]
003f08ec   1e42       MOVL         *-SP[2], ACC
003f08ed   8a92       MOVL         XAR4, *+XAR2[AR0]
003f08ee   d152       MOVB         XAR1, #0x52
003f08ef   069c       MOVL         ACC, *+XAR4[AR1]
003f08f0   767f       LCR          0x3fdce1
003f08f1   dce1
003f08f2   88ad       MOVZ         AR6, SP
003f08f3   deca       SUBB         XAR6, #74
003f08f4   767f       LCR          0x3fdfb7
003f08f5   dfb7
003f08f6   88ad       MOVZ         AR6, SP
003f08f7   8f7f       MOVL         XAR5, #0x3f6370
003f08f8   6370
003f08f9   5cad       MOVZ         AR4, SP
003f08fa   dec6       SUBB         XAR6, #70
003f08fb   dcca       SUBB         XAR4, #74
003f08fc   767f       LCR          0x3fdc5e
003f08fd   dc5e
003f08fe   5cad       MOVZ         AR4, SP
003f08ff   dcc6       SUBB         XAR4, #70
003f0900   767f       LCR          0x3fdf7b
003f0901   df7b
003f0902   d00c       MOVB         XAR0, #0xc
003f0903   1ea6       MOVL         XAR6, ACC
003f0904   9be6       MOVB         AH, #0xe6
003f0905   28a9       MOV          AL, #0x6666
003f0906   6666
003f0907   1e42       MOVL         *-SP[2], ACC
003f0908   28a8       MOV          AH, #0x6400
003f0909   6400
003f090a   9a00       MOVB         AL, #0x0
003f090b   1e44       MOVL         *-SP[4], ACC
003f090c   56bf       MOVB         *-SP[5], #0x1e, UNC
003f090d   1e45
003f090e   0692       MOVL         ACC, *+XAR2[AR0]
003f090f   d008       MOVB         XAR0, #0x8
003f0910   1e48       MOVL         *-SP[8], ACC
003f0911   0692       MOVL         ACC, *+XAR2[AR0]
003f0912   d020       MOVB         XAR0, #0x20
003f0913   1e4a       MOVL         *-SP[10], ACC
003f0914   28a8       MOV          AH, #0x3f5c
003f0915   3f5c
003f0916   28a9       MOV          AL, #0x2900
003f0917   2900
003f0918   1e4c       MOVL         *-SP[12], ACC
003f0919   28a8       MOV          AH, #0x0ccc
003f091a   0ccc
003f091b   28a9       MOV          AL, #0xccd0
003f091c   ccd0
003f091d   1e4e       MOVL         *-SP[14], ACC
003f091e   28a8       MOV          AH, #0x2ccc
003f091f   2ccc
003f0920   28a9       MOV          AL, #0xccc0
003f0921   ccc0
003f0922   1e50       MOVL         *-SP[16], ACC
003f0923   0200       MOVB         ACC, #0
003f0924   1e52       MOVL         *-SP[18], ACC
003f0925   56bf       MOVB         *-SP[19], #0x1e, UNC
003f0926   1e53
003f0927   a256       MOVL         *-SP[22], XAR3
003f0928   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0929   d136       MOVB         XAR1, #0x36
003f092a   d020       MOVB         XAR0, #0x20
003f092b   c5a4       MOVL         XAR7, XAR4
003f092c   069c       MOVL         ACC, *+XAR4[AR1]
003f092d   1e58       MOVL         *-SP[24], ACC
003f092e   0697       MOVL         ACC, *+XAR7[AR0]
003f092f   d008       MOVB         XAR0, #0x8
003f0930   5dad       MOVZ         AR5, SP
003f0931   1e5a       MOVL         *-SP[26], ACC
003f0932   c392       MOVL         *+XAR2[AR0], XAR7
003f0933   df34       ADDB         XAR7, #52
003f0934   d01c       MOVB         XAR0, #0x1c
003f0935   92c7       MOV          AL, *+XAR7[0]
003f0936   965b       MOV          *-SP[27], AL
003f0937   c25e       MOVL         *-SP[30], XAR6
003f0938   8292       MOVL         XAR3, *+XAR2[AR0]
003f0939   d16e       MOVB         XAR1, #0x6e
003f093a   0200       MOVB         ACC, #0
003f093b   ddb2       SUBB         XAR5, #50
003f093c   8a9b       MOVL         XAR4, *+XAR3[AR1]
003f093d   767f       LCR          0x3fd42e
003f093e   d42e
003f093f   d06e       MOVB         XAR0, #0x6e
003f0940   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0941   d008       MOVB         XAR0, #0x8
003f0942   8b92       MOVL         XAR1, *+XAR2[AR0]
003f0943   83a1       MOVL         XAR5, XAR1
003f0944   dd78       ADDB         XAR5, #120
003f0945   767f       LCR          0x3fd41e
003f0946   d41e
003f0947   d01e       MOVB         XAR0, #0x1e
003f0948   9a01       MOVB         AL, #0x1
003f0949   8a92       MOVL         XAR4, *+XAR2[AR0]
003f094a   767f       LCR          0x3fc5c5
003f094b   c5c5
003f094c   761f       MOVW         DP, #0xfd8c
003f094d   fd8c
003f094e   062c       MOVL         ACC, @0x2c
003f094f   761f       MOVW         DP, #0xfd8c
003f0950   fd8c
003f0951   c42e       MOVL         XAR6, @0x2e
003f0952   1e6a       MOVL         *-SP[42], ACC
003f0953   761f       MOVW         DP, #0xfd8c
003f0954   fd8c
003f0955   0624       MOVL         ACC, @0x24
003f0956   c268       MOVL         *-SP[40], XAR6
003f0957   761f       MOVW         DP, #0xfd8c
003f0958   fd8c
003f0959   c426       MOVL         XAR6, @0x26
003f095a   1e6e       MOVL         *-SP[46], ACC
003f095b   761f       MOVW         DP, #0xfd8c
003f095c   fd8c
003f095d   c26c       MOVL         *-SP[44], XAR6
003f095e   0628       MOVL         ACC, @0x28
003f095f   761f       MOVW         DP, #0xfd8c
003f0960   fd8c
003f0961   c42a       MOVL         XAR6, @0x2a
003f0962   d0a0       MOVB         XAR0, #0xa0
003f0963   1e72       MOVL         *-SP[50], ACC
003f0964   c270       MOVL         *-SP[48], XAR6
003f0965   0691       MOVL         ACC, *+XAR1[AR0]
003f0966   767f       LCR          0x3ff8aa
003f0967   f8aa
003f0968   d02e       MOVB         XAR0, #0x2e
003f0969   1e42       MOVL         *-SP[2], ACC
003f096a   0691       MOVL         ACC, *+XAR1[AR0]
003f096b   767f       LCR          0x3fdce1
003f096c   dce1
003f096d   88ad       MOVZ         AR6, SP
003f096e   deba       SUBB         XAR6, #58
003f096f   767f       LCR          0x3fdfb7
003f0970   dfb7
003f0971   88ad       MOVZ         AR6, SP
003f0972   deb6       SUBB         XAR6, #54
003f0973   5cad       MOVZ         AR4, SP
003f0974   dcba       SUBB         XAR4, #58
003f0975   8f7f       MOVL         XAR5, #0x3f636c
003f0976   636c
003f0977   767f       LCR          0x3fdc5e
003f0978   dc5e
003f0979   5cad       MOVZ         AR4, SP
003f097a   dcb6       SUBB         XAR4, #54
003f097b   767f       LCR          0x3fdf7b
003f097c   df7b
003f097d   d00a       MOVB         XAR0, #0xa
003f097e   c492       MOVL         XAR6, *+XAR2[AR0]
003f097f   5cad       MOVZ         AR4, SP
003f0980   dcb2       SUBB         XAR4, #50
003f0981   d01c       MOVB         XAR0, #0x1c
003f0982   c242       MOVL         *-SP[2], XAR6
003f0983   a844       MOVL         *-SP[4], XAR4
003f0984   56bf       MOVB         *-SP[5], #0x1e, UNC
003f0985   1e45
003f0986   8292       MOVL         XAR3, *+XAR2[AR0]
003f0987   d01a       MOVB         XAR0, #0x1a
003f0988   d1a4       MOVB         XAR1, #0xa4
003f0989   8392       MOVL         XAR5, *+XAR2[AR0]
003f098a   8a9b       MOVL         XAR4, *+XAR3[AR1]
003f098b   767f       LCR          0x3fd9b0
003f098c   d9b0
003f098d   761f       MOVW         DP, #0xfd8c
003f098e   fd8c
003f098f   5dad       MOVZ         AR5, SP
003f0990   061c       MOVL         ACC, @0x1c
003f0991   761f       MOVW         DP, #0xfd8c
003f0992   fd8c
003f0993   1e72       MOVL         *-SP[50], ACC
003f0994   c41e       MOVL         XAR6, @0x1e
003f0995   d0b6       MOVB         XAR0, #0xb6
003f0996   ddb2       SUBB         XAR5, #50
003f0997   9a1e       MOVB         AL, #0x1e
003f0998   c270       MOVL         *-SP[48], XAR6
003f0999   8a93       MOVL         XAR4, *+XAR3[AR0]
003f099a   767f       LCR          0x3fda3b
003f099b   da3b
003f099c   d020       MOVB         XAR0, #0x20
003f099d   8292       MOVL         XAR3, *+XAR2[AR0]
003f099e   d135       MOVB         XAR1, #0x35
003f099f   929b       MOV          AL, *+XAR3[AR1]
003f09a0   767f       LCR          0x3ff8bd
003f09a1   f8bd
003f09a2   1ea6       MOVL         XAR6, ACC
003f09a3   9a00       MOVB         AL, #0x0
003f09a4   28a8       MOV          AH, #0x447a
003f09a5   447a
003f09a6   1e42       MOVL         *-SP[2], ACC
003f09a7   06a6       MOVL         ACC, XAR6
003f09a8   767f       LCR          0x3fdde7
003f09a9   dde7
003f09aa   d00a       MOVB         XAR0, #0xa
003f09ab   1e92       MOVL         *+XAR2[AR0], ACC
003f09ac   8be3       MOVL         XAR1, *+XAR3[4]
003f09ad   9a00       MOVB         AL, #0x0
003f09ae   28a8       MOV          AH, #0x4270
003f09af   4270
003f09b0   1e42       MOVL         *-SP[2], ACC
003f09b1   b2a9       MOVL         ACC, XAR1
003f09b2   767f       LCR          0x3fdde7
003f09b3   dde7
003f09b4   d00c       MOVB         XAR0, #0xc
003f09b5   1e92       MOVL         *+XAR2[AR0], ACC
003f09b6   d01c       MOVB         XAR0, #0x1c
003f09b7   0693       MOVL         ACC, *+XAR3[AR0]
003f09b8   d01a       MOVB         XAR0, #0x1a
003f09b9   3b01       SETC         SXM
003f09ba   1e92       MOVL         *+XAR2[AR0], ACC
003f09bb   d012       MOVB         XAR0, #0x12
003f09bc   ff2f       MOV          ACC, #0x8340 << 15
003f09bd   8340
003f09be   8293       MOVL         XAR3, *+XAR3[AR0]
003f09bf   b242       MOVL         *-SP[2], XAR1
003f09c0   767f       LCR          0x3fdce1
003f09c1   dce1
003f09c2   88ad       MOVZ         AR6, SP
003f09c3   deba       SUBB         XAR6, #58
003f09c4   767f       LCR          0x3fdfb7
003f09c5   dfb7
003f09c6   88ad       MOVZ         AR6, SP
003f09c7   deb6       SUBB         XAR6, #54
003f09c8   5cad       MOVZ         AR4, SP
003f09c9   dcba       SUBB         XAR4, #58
003f09ca   8f7f       MOVL         XAR5, #0x3f636c
003f09cb   636c
003f09cc   767f       LCR          0x3fdc5e
003f09cd   dc5e
003f09ce   5cad       MOVZ         AR4, SP
003f09cf   dcb6       SUBB         XAR4, #54
003f09d0   767f       LCR          0x3fdf7b
003f09d1   df7b
003f09d2   d00e       MOVB         XAR0, #0xe
003f09d3   1e92       MOVL         *+XAR2[AR0], ACC
003f09d4   b242       MOVL         *-SP[2], XAR1
003f09d5   9a00       MOVB         AL, #0x0
003f09d6   28a8       MOV          AH, #0x41a0
003f09d7   41a0
003f09d8   767f       LCR          0x3fdce1
003f09d9   dce1
003f09da   88ad       MOVZ         AR6, SP
003f09db   dec2       SUBB         XAR6, #66
003f09dc   767f       LCR          0x3fdfb7
003f09dd   dfb7
003f09de   8f7f       MOVL         XAR5, #0x3f636c
003f09df   636c
003f09e0   5cad       MOVZ         AR4, SP
003f09e1   88ad       MOVZ         AR6, SP
003f09e2   dcc2       SUBB         XAR4, #66
003f09e3   debe       SUBB         XAR6, #62
003f09e4   767f       LCR          0x3fdc5e
003f09e5   dc5e
003f09e6   5cad       MOVZ         AR4, SP
003f09e7   dcbe       SUBB         XAR4, #62
003f09e8   767f       LCR          0x3fdf7b
003f09e9   df7b
003f09ea   d010       MOVB         XAR0, #0x10
003f09eb   88ad       MOVZ         AR6, SP
003f09ec   deca       SUBB         XAR6, #74
003f09ed   1e92       MOVL         *+XAR2[AR0], ACC
003f09ee   a2a9       MOVL         ACC, XAR3
003f09ef   767f       LCR          0x3fdfb7
003f09f0   dfb7
003f09f1   88ad       MOVZ         AR6, SP
003f09f2   5cad       MOVZ         AR4, SP
003f09f3   dec6       SUBB         XAR6, #70
003f09f4   dcca       SUBB         XAR4, #74
003f09f5   8f7f       MOVL         XAR5, #0x3f636c
003f09f6   636c
003f09f7   767f       LCR          0x3fdc5e
003f09f8   dc5e
003f09f9   5cad       MOVZ         AR4, SP
003f09fa   dcc6       SUBB         XAR4, #70
003f09fb   767f       LCR          0x3fdf7b
003f09fc   df7b
003f09fd   d012       MOVB         XAR0, #0x12
003f09fe   1e92       MOVL         *+XAR2[AR0], ACC
003f09ff   a2a9       MOVL         ACC, XAR3
003f0a00   767f       LCR          0x3fff4d
003f0a01   ff4d
003f0a02   88ad       MOVZ         AR6, SP
003f0a03   ded2       SUBB         XAR6, #82
003f0a04   767f       LCR          0x3fdfb7
003f0a05   dfb7
003f0a06   88ad       MOVZ         AR6, SP
003f0a07   5cad       MOVZ         AR4, SP
003f0a08   dece       SUBB         XAR6, #78
003f0a09   dcd2       SUBB         XAR4, #82
003f0a0a   8f7f       MOVL         XAR5, #0x3f636c
003f0a0b   636c
003f0a0c   767f       LCR          0x3fdc5e
003f0a0d   dc5e
003f0a0e   5cad       MOVZ         AR4, SP
003f0a0f   dcce       SUBB         XAR4, #78
003f0a10   767f       LCR          0x3fdf7b
003f0a11   df7b
003f0a12   d014       MOVB         XAR0, #0x14
003f0a13   1e92       MOVL         *+XAR2[AR0], ACC
003f0a14   d01a       MOVB         XAR0, #0x1a
003f0a15   b242       MOVL         *-SP[2], XAR1
003f0a16   0692       MOVL         ACC, *+XAR2[AR0]
003f0a17   767f       LCR          0x3fdce1
003f0a18   dce1
003f0a19   88ad       MOVZ         AR6, SP
003f0a1a   deda       SUBB         XAR6, #90
003f0a1b   767f       LCR          0x3fdfb7
003f0a1c   dfb7
003f0a1d   8f7f       MOVL         XAR5, #0x3f636c
003f0a1e   636c
003f0a1f   5cad       MOVZ         AR4, SP
003f0a20   88ad       MOVZ         AR6, SP
003f0a21   dcda       SUBB         XAR4, #90
003f0a22   ded6       SUBB         XAR6, #86
003f0a23   767f       LCR          0x3fdc5e
003f0a24   dc5e
003f0a25   5cad       MOVZ         AR4, SP
003f0a26   dcd6       SUBB         XAR4, #86
003f0a27   767f       LCR          0x3fdf7b
003f0a28   df7b
003f0a29   d016       MOVB         XAR0, #0x16
003f0a2a   1e92       MOVL         *+XAR2[AR0], ACC
003f0a2b   d020       MOVB         XAR0, #0x20
003f0a2c   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0a2d   d1a0       MOVB         XAR1, #0xa0
003f0a2e   069c       MOVL         ACC, *+XAR4[AR1]
003f0a2f   767f       LCR          0x3ff8aa
003f0a30   f8aa
003f0a31   d01a       MOVB         XAR0, #0x1a
003f0a32   1e42       MOVL         *-SP[2], ACC
003f0a33   0692       MOVL         ACC, *+XAR2[AR0]
003f0a34   767f       LCR          0x3fdce1
003f0a35   dce1
003f0a36   88ad       MOVZ         AR6, SP
003f0a37   dee2       SUBB         XAR6, #98
003f0a38   767f       LCR          0x3fdfb7
003f0a39   dfb7
003f0a3a   88ad       MOVZ         AR6, SP
003f0a3b   5cad       MOVZ         AR4, SP
003f0a3c   dede       SUBB         XAR6, #94
003f0a3d   dce2       SUBB         XAR4, #98
003f0a3e   8f7f       MOVL         XAR5, #0x3f636c
003f0a3f   636c
003f0a40   767f       LCR          0x3fdc5e
003f0a41   dc5e
003f0a42   5cad       MOVZ         AR4, SP
003f0a43   dcde       SUBB         XAR4, #94
003f0a44   767f       LCR          0x3fdf7b
003f0a45   df7b
003f0a46   d00c       MOVB         XAR0, #0xc
003f0a47   82a9       MOVL         XAR3, ACC
003f0a48   0692       MOVL         ACC, *+XAR2[AR0]
003f0a49   d00a       MOVB         XAR0, #0xa
003f0a4a   1e42       MOVL         *-SP[2], ACC
003f0a4b   0692       MOVL         ACC, *+XAR2[AR0]
003f0a4c   767f       LCR          0x3fdce1
003f0a4d   dce1
003f0a4e   88ad       MOVZ         AR6, SP
003f0a4f   deea       SUBB         XAR6, #106
003f0a50   767f       LCR          0x3fdfb7
003f0a51   dfb7
003f0a52   88ad       MOVZ         AR6, SP
003f0a53   5cad       MOVZ         AR4, SP
003f0a54   dee6       SUBB         XAR6, #102
003f0a55   dcea       SUBB         XAR4, #106
003f0a56   8f7f       MOVL         XAR5, #0x3f6370
003f0a57   6370
003f0a58   767f       LCR          0x3fdc5e
003f0a59   dc5e
003f0a5a   5cad       MOVZ         AR4, SP
003f0a5b   dce6       SUBB         XAR4, #102
003f0a5c   767f       LCR          0x3fdf7b
003f0a5d   df7b
003f0a5e   d00a       MOVB         XAR0, #0xa
003f0a5f   8ba9       MOVL         XAR1, ACC
003f0a60   0692       MOVL         ACC, *+XAR2[AR0]
003f0a61   d00c       MOVB         XAR0, #0xc
003f0a62   1e42       MOVL         *-SP[2], ACC
003f0a63   0692       MOVL         ACC, *+XAR2[AR0]
003f0a64   767f       LCR          0x3fdce1
003f0a65   dce1
003f0a66   88ad       MOVZ         AR6, SP
003f0a67   def2       SUBB         XAR6, #114
003f0a68   767f       LCR          0x3fdfb7
003f0a69   dfb7
003f0a6a   88ad       MOVZ         AR6, SP
003f0a6b   5cad       MOVZ         AR4, SP
003f0a6c   8f7f       MOVL         XAR5, #0x3f6370
003f0a6d   6370
003f0a6e   deee       SUBB         XAR6, #110
003f0a6f   dcf2       SUBB         XAR4, #114
003f0a70   767f       LCR          0x3fdc5e
003f0a71   dc5e
003f0a72   5cad       MOVZ         AR4, SP
003f0a73   dcee       SUBB         XAR4, #110
003f0a74   767f       LCR          0x3fdf7b
003f0a75   df7b
003f0a76   d00e       MOVB         XAR0, #0xe
003f0a77   c492       MOVL         XAR6, *+XAR2[AR0]
003f0a78   d010       MOVB         XAR0, #0x10
003f0a79   c242       MOVL         *-SP[2], XAR6
003f0a7a   c492       MOVL         XAR6, *+XAR2[AR0]
003f0a7b   d012       MOVB         XAR0, #0x12
003f0a7c   c244       MOVL         *-SP[4], XAR6
003f0a7d   c492       MOVL         XAR6, *+XAR2[AR0]
003f0a7e   d014       MOVB         XAR0, #0x14
003f0a7f   c246       MOVL         *-SP[6], XAR6
003f0a80   c492       MOVL         XAR6, *+XAR2[AR0]
003f0a81   c248       MOVL         *-SP[8], XAR6
003f0a82   be00       MOVB         XAR6, #0x00
003f0a83   d016       MOVB         XAR0, #0x16
003f0a84   c24a       MOVL         *-SP[10], XAR6
003f0a85   c24c       MOVL         *-SP[12], XAR6
003f0a86   c492       MOVL         XAR6, *+XAR2[AR0]
003f0a87   d01c       MOVB         XAR0, #0x1c
003f0a88   c24e       MOVL         *-SP[14], XAR6
003f0a89   a250       MOVL         *-SP[16], XAR3
003f0a8a   b252       MOVL         *-SP[18], XAR1
003f0a8b   1e54       MOVL         *-SP[20], ACC
003f0a8c   8292       MOVL         XAR3, *+XAR2[AR0]
003f0a8d   d020       MOVB         XAR0, #0x20
003f0a8e   0692       MOVL         ACC, *+XAR2[AR0]
003f0a8f   d008       MOVB         XAR0, #0x8
003f0a90   d1be       MOVB         XAR1, #0xbe
003f0a91   8a9b       MOVL         XAR4, *+XAR3[AR1]
003f0a92   1e92       MOVL         *+XAR2[AR0], ACC
003f0a93   d008       MOVB         XAR0, #0x8
003f0a94   8392       MOVL         XAR5, *+XAR2[AR0]
003f0a95   d134       MOVB         XAR1, #0x34
003f0a96   0200       MOVB         ACC, #0
003f0a97   5d9d       MOVZ         AR5, *+XAR5[AR1]
003f0a98   767f       LCR          0x3fd95c
003f0a99   d95c
003f0a9a   d0be       MOVB         XAR0, #0xbe
003f0a9b   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0a9c   761f       MOVW         DP, #0xfd8c
003f0a9d   fd8c
003f0a9e   d017       MOVB         XAR0, #0x17
003f0a9f   2b94       MOV          *+XAR4[AR0], #0
003f0aa0   d008       MOVB         XAR0, #0x8
003f0aa1   0620       MOVL         ACC, @0x20
003f0aa2   761f       MOVW         DP, #0xfd8c
003f0aa3   fd8c
003f0aa4   c422       MOVL         XAR6, @0x22
003f0aa5   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0aa6   1e72       MOVL         *-SP[50], ACC
003f0aa7   d12e       MOVB         XAR1, #0x2e
003f0aa8   c270       MOVL         *-SP[48], XAR6
003f0aa9   069c       MOVL         ACC, *+XAR4[AR1]
003f0aaa   8ba4       MOVL         XAR1, XAR4
003f0aab   1e42       MOVL         *-SP[2], ACC
003f0aac   06c1       MOVL         ACC, *+XAR1[0]
003f0aad   767f       LCR          0x3fdde7
003f0aae   dde7
003f0aaf   1e42       MOVL         *-SP[2], ACC
003f0ab0   06d1       MOVL         ACC, *+XAR1[2]
003f0ab1   767f       LCR          0x3fdce1
003f0ab2   dce1
003f0ab3   d008       MOVB         XAR0, #0x8
003f0ab4   1e92       MOVL         *+XAR2[AR0], ACC
003f0ab5   d034       MOVB         XAR0, #0x34
003f0ab6   5b91       MOVZ         AR3, *+XAR1[AR0]
003f0ab7   92a3       MOV          AL, AR3
003f0ab8   ec20       SBF          32, EQ
003f0ab9   5201       CMPB         AL, #0x1
003f0aba   ed3e       SBF          62, NEQ
003f0abb   d020       MOVB         XAR0, #0x20
003f0abc   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0abd   d108       MOVB         XAR1, #0x8
003f0abe   929c       MOV          AL, *+XAR4[AR1]
003f0abf   767f       LCR          0x3ff8bd
003f0ac0   f8bd
003f0ac1   1ea6       MOVL         XAR6, ACC
003f0ac2   28a9       MOV          AL, #0xc5ac
003f0ac3   c5ac
003f0ac4   28a8       MOV          AH, #0x36a7
003f0ac5   36a7
003f0ac6   1e42       MOVL         *-SP[2], ACC
003f0ac7   06a6       MOVL         ACC, XAR6
003f0ac8   767f       LCR          0x3fdde7
003f0ac9   dde7
003f0aca   88ad       MOVZ         AR6, SP
003f0acb   deba       SUBB         XAR6, #58
003f0acc   767f       LCR          0x3fdfb7
003f0acd   dfb7
003f0ace   88ad       MOVZ         AR6, SP
003f0acf   5cad       MOVZ         AR4, SP
003f0ad0   8f7f       MOVL         XAR5, #0x3f636c
003f0ad1   636c
003f0ad2   deb6       SUBB         XAR6, #54
003f0ad3   dcba       SUBB         XAR4, #58
003f0ad4   767f       LCR          0x3fdc5e
003f0ad5   dc5e
003f0ad6   5cad       MOVZ         AR4, SP
003f0ad7   6f1d       SB           29, UNC
003f0ad8   d020       MOVB         XAR0, #0x20
003f0ad9   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0ada   d108       MOVB         XAR1, #0x8
003f0adb   929c       MOV          AL, *+XAR4[AR1]
003f0adc   767f       LCR          0x3ff8bd
003f0add   f8bd
003f0ade   1ea6       MOVL         XAR6, ACC
003f0adf   28a9       MOV          AL, #0x37bd
003f0ae0   37bd
003f0ae1   28a8       MOV          AH, #0x3586
003f0ae2   3586
003f0ae3   1e42       MOVL         *-SP[2], ACC
003f0ae4   06a6       MOVL         ACC, XAR6
003f0ae5   767f       LCR          0x3fdde7
003f0ae6   dde7
003f0ae7   88ad       MOVZ         AR6, SP
003f0ae8   deba       SUBB         XAR6, #58
003f0ae9   767f       LCR          0x3fdfb7
003f0aea   dfb7
003f0aeb   88ad       MOVZ         AR6, SP
003f0aec   5cad       MOVZ         AR4, SP
003f0aed   8f7f       MOVL         XAR5, #0x3f636c
003f0aee   636c
003f0aef   deb6       SUBB         XAR6, #54
003f0af0   dcba       SUBB         XAR4, #58
003f0af1   767f       LCR          0x3fdc5e
003f0af2   dc5e
003f0af3   5cad       MOVZ         AR4, SP
003f0af4   dcb6       SUBB         XAR4, #54
003f0af5   767f       LCR          0x3fdf7b
003f0af6   df7b
003f0af7   1ea6       MOVL         XAR6, ACC
003f0af8   8f00       MOVL         XAR4, #0x0003e8
003f0af9   03e8
003f0afa   28a8       MOV          AH, #0x3999
003f0afb   3999
003f0afc   28a9       MOV          AL, #0x9980
003f0afd   9980
003f0afe   a842       MOVL         *-SP[2], XAR4
003f0aff   d008       MOVB         XAR0, #0x8
003f0b00   1e44       MOVL         *-SP[4], ACC
003f0b01   0200       MOVB         ACC, #0
003f0b02   5dad       MOVZ         AR5, SP
003f0b03   1e46       MOVL         *-SP[6], ACC
003f0b04   28a8       MOV          AH, #0x2ccc
003f0b05   2ccc
003f0b06   28a9       MOV          AL, #0xccc0
003f0b07   ccc0
003f0b08   1e48       MOVL         *-SP[8], ACC
003f0b09   56bf       MOVB         *-SP[9], #0x1e, UNC
003f0b0a   1e49
003f0b0b   0692       MOVL         ACC, *+XAR2[AR0]
003f0b0c   d01c       MOVB         XAR0, #0x1c
003f0b0d   1e4c       MOVL         *-SP[12], ACC
003f0b0e   0200       MOVB         ACC, #0
003f0b0f   1e4e       MOVL         *-SP[14], ACC
003f0b10   56bf       MOVB         *-SP[15], #0x1e, UNC
003f0b11   1e4f
003f0b12   1e52       MOVL         *-SP[18], ACC
003f0b13   7b53       MOV          *-SP[19], AR3
003f0b14   8292       MOVL         XAR3, *+XAR2[AR0]
003f0b15   d1f2       MOVB         XAR1, #0xf2
003f0b16   06a6       MOVL         ACC, XAR6
003f0b17   ddb2       SUBB         XAR5, #50
003f0b18   8a9b       MOVL         XAR4, *+XAR3[AR1]
003f0b19   767f       LCR          0x3fd247
003f0b1a   d247
003f0b1b   d0f2       MOVB         XAR0, #0xf2
003f0b1c   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0b1d   d020       MOVB         XAR0, #0x20
003f0b1e   8b92       MOVL         XAR1, *+XAR2[AR0]
003f0b1f   0284       MOVB         ACC, #132
003f0b20   07a1       ADDL         ACC, XAR1
003f0b21   83a9       MOVL         XAR5, ACC
003f0b22   767f       LCR          0x3fd237
003f0b23   d237
003f0b24   d034       MOVB         XAR0, #0x34
003f0b25   9291       MOV          AL, *+XAR1[AR0]
003f0b26   d035       MOVB         XAR0, #0x35
003f0b27   9391       MOV          AH, *+XAR1[AR0]
003f0b28   d01e       MOVB         XAR0, #0x1e
003f0b29   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0b2a   767f       LCR          0x3fc4bb
003f0b2b   c4bb
003f0b2c   d008       MOVB         XAR0, #0x8
003f0b2d   2d91       MOV          T, *+XAR1[AR0]
003f0b2e   12f1       MPY          ACC, T, *+XAR1[6]
003f0b2f   767f       LCR          0x3ff8bd
003f0b30   f8bd
003f0b31   1ea6       MOVL         XAR6, ACC
003f0b32   28a9       MOV          AL, #0xb717
003f0b33   b717
003f0b34   28a8       MOV          AH, #0x3851
003f0b35   3851
003f0b36   1e42       MOVL         *-SP[2], ACC
003f0b37   06a6       MOVL         ACC, XAR6
003f0b38   767f       LCR          0x3fdde7
003f0b39   dde7
003f0b3a   88ad       MOVZ         AR6, SP
003f0b3b   deba       SUBB         XAR6, #58
003f0b3c   767f       LCR          0x3fdfb7
003f0b3d   dfb7
003f0b3e   88ad       MOVZ         AR6, SP
003f0b3f   deb6       SUBB         XAR6, #54
003f0b40   5cad       MOVZ         AR4, SP
003f0b41   dcba       SUBB         XAR4, #58
003f0b42   8f7f       MOVL         XAR5, #0x3f636c
003f0b43   636c
003f0b44   767f       LCR          0x3fdc5e
003f0b45   dc5e
003f0b46   5cad       MOVZ         AR4, SP
003f0b47   dcb6       SUBB         XAR4, #54
003f0b48   767f       LCR          0x3fdf7b
003f0b49   df7b
003f0b4a   d020       MOVB         XAR0, #0x20
003f0b4b   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0b4c   d020       MOVB         XAR0, #0x20
003f0b4d   8ba9       MOVL         XAR1, ACC
003f0b4e   06c4       MOVL         ACC, *+XAR4[0]
003f0b4f   1e42       MOVL         *-SP[2], ACC
003f0b50   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0b51   06d4       MOVL         ACC, *+XAR4[2]
003f0b52   767f       LCR          0x3fdce1
003f0b53   dce1
003f0b54   b242       MOVL         *-SP[2], XAR1
003f0b55   d01c       MOVB         XAR0, #0x1c
003f0b56   1ea6       MOVL         XAR6, ACC
003f0b57   0200       MOVB         ACC, #0
003f0b58   1e44       MOVL         *-SP[4], ACC
003f0b59   28a8       MOV          AH, #0x3999
003f0b5a   3999
003f0b5b   28a9       MOV          AL, #0x9980
003f0b5c   9980
003f0b5d   1e46       MOVL         *-SP[6], ACC
003f0b5e   28a8       MOV          AH, #0x1333
003f0b5f   1333
003f0b60   28a9       MOV          AL, #0x3340
003f0b61   3340
003f0b62   1e48       MOVL         *-SP[8], ACC
003f0b63   28a9       MOV          AL, #0xccc0
003f0b64   ccc0
003f0b65   28a8       MOV          AH, #0x2ccc
003f0b66   2ccc
003f0b67   1e4a       MOVL         *-SP[10], ACC
003f0b68   c24c       MOVL         *-SP[12], XAR6
003f0b69   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0b6a   8d40       MOVL         XAR1, #0x000136
003f0b6b   0136
003f0b6c   0200       MOVB         ACC, #0
003f0b6d   d51e       MOVB         XAR5, #0x1e
003f0b6e   8a9c       MOVL         XAR4, *+XAR4[AR1]
003f0b6f   767f       LCR          0x3fd7e9
003f0b70   d7e9
003f0b71   d020       MOVB         XAR0, #0x20
003f0b72   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0b73   d108       MOVB         XAR1, #0x8
003f0b74   2d9c       MOV          T, *+XAR4[AR1]
003f0b75   12f4       MPY          ACC, T, *+XAR4[6]
003f0b76   767f       LCR          0x3ff8bd
003f0b77   f8bd
003f0b78   1ea6       MOVL         XAR6, ACC
003f0b79   28a9       MOV          AL, #0xb717
003f0b7a   b717
003f0b7b   28a8       MOV          AH, #0x3851
003f0b7c   3851
003f0b7d   1e42       MOVL         *-SP[2], ACC
003f0b7e   06a6       MOVL         ACC, XAR6
003f0b7f   767f       LCR          0x3fdde7
003f0b80   dde7
003f0b81   88ad       MOVZ         AR6, SP
003f0b82   deba       SUBB         XAR6, #58
003f0b83   767f       LCR          0x3fdfb7
003f0b84   dfb7
003f0b85   88ad       MOVZ         AR6, SP
003f0b86   5cad       MOVZ         AR4, SP
003f0b87   8f7f       MOVL         XAR5, #0x3f636c
003f0b88   636c
003f0b89   deb6       SUBB         XAR6, #54
003f0b8a   dcba       SUBB         XAR4, #58
003f0b8b   767f       LCR          0x3fdc5e
003f0b8c   dc5e
003f0b8d   5cad       MOVZ         AR4, SP
003f0b8e   dcb6       SUBB         XAR4, #54
003f0b8f   767f       LCR          0x3fdf7b
003f0b90   df7b
003f0b91   d020       MOVB         XAR0, #0x20
003f0b92   8292       MOVL         XAR3, *+XAR2[AR0]
003f0b93   8ba9       MOVL         XAR1, ACC
003f0b94   06c3       MOVL         ACC, *+XAR3[0]
003f0b95   1e42       MOVL         *-SP[2], ACC
003f0b96   06d3       MOVL         ACC, *+XAR3[2]
003f0b97   767f       LCR          0x3fdce1
003f0b98   dce1
003f0b99   b242       MOVL         *-SP[2], XAR1
003f0b9a   d01c       MOVB         XAR0, #0x1c
003f0b9b   1ea6       MOVL         XAR6, ACC
003f0b9c   28a8       MOV          AH, #0x0147
003f0b9d   0147
003f0b9e   28a9       MOV          AL, #0xae14
003f0b9f   ae14
003f0ba0   1e44       MOVL         *-SP[4], ACC
003f0ba1   28a8       MOV          AH, #0x3eb8
003f0ba2   3eb8
003f0ba3   28a9       MOV          AL, #0x5200
003f0ba4   5200
003f0ba5   1e46       MOVL         *-SP[6], ACC
003f0ba6   0200       MOVB         ACC, #0
003f0ba7   1e48       MOVL         *-SP[8], ACC
003f0ba8   28a8       MOV          AH, #0x2ccc
003f0ba9   2ccc
003f0baa   28a9       MOV          AL, #0xccc0
003f0bab   ccc0
003f0bac   1e4a       MOVL         *-SP[10], ACC
003f0bad   28a8       MOV          AH, #0x1333
003f0bae   1333
003f0baf   28a9       MOV          AL, #0x3340
003f0bb0   3340
003f0bb1   1e4c       MOVL         *-SP[12], ACC
003f0bb2   28a8       MOV          AH, #0x2ccc
003f0bb3   2ccc
003f0bb4   28a9       MOV          AL, #0xccc0
003f0bb5   ccc0
003f0bb6   1e4e       MOVL         *-SP[14], ACC
003f0bb7   c250       MOVL         *-SP[16], XAR6
003f0bb8   0692       MOVL         ACC, *+XAR2[AR0]
003f0bb9   d008       MOVB         XAR0, #0x8
003f0bba   1e92       MOVL         *+XAR2[AR0], ACC
003f0bbb   d008       MOVB         XAR0, #0x8
003f0bbc   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0bbd   8d40       MOVL         XAR1, #0x000148
003f0bbe   0148
003f0bbf   0200       MOVB         ACC, #0
003f0bc0   d51e       MOVB         XAR5, #0x1e
003f0bc1   8a9c       MOVL         XAR4, *+XAR4[AR1]
003f0bc2   767f       LCR          0x3fd725
003f0bc3   d725
003f0bc4   d008       MOVB         XAR0, #0x8
003f0bc5   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0bc6   8a9c       MOVL         XAR4, *+XAR4[AR1]
003f0bc7   0292       MOVB         ACC, #146
003f0bc8   07a3       ADDL         ACC, XAR3
003f0bc9   83a9       MOVL         XAR5, ACC
003f0bca   767f       LCR          0x3fd6b3
003f0bcb   d6b3
003f0bcc   d0a0       MOVB         XAR0, #0xa0
003f0bcd   0693       MOVL         ACC, *+XAR3[AR0]
003f0bce   767f       LCR          0x3ff8aa
003f0bcf   f8aa
003f0bd0   1e42       MOVL         *-SP[2], ACC
003f0bd1   28a9       MOV          AL, #0xcccd
003f0bd2   cccd
003f0bd3   28a8       MOV          AH, #0x3e4c
003f0bd4   3e4c
003f0bd5   767f       LCR          0x3fdce1
003f0bd6   dce1
003f0bd7   88ad       MOVZ         AR6, SP
003f0bd8   deba       SUBB         XAR6, #58
003f0bd9   767f       LCR          0x3fdfb7
003f0bda   dfb7
003f0bdb   88ad       MOVZ         AR6, SP
003f0bdc   deb6       SUBB         XAR6, #54
003f0bdd   5cad       MOVZ         AR4, SP
003f0bde   dcba       SUBB         XAR4, #58
003f0bdf   8f7f       MOVL         XAR5, #0x3f6370
003f0be0   6370
003f0be1   767f       LCR          0x3fdc5e
003f0be2   dc5e
003f0be3   5cad       MOVZ         AR4, SP
003f0be4   dcb6       SUBB         XAR4, #54
003f0be5   767f       LCR          0x3fdf7b
003f0be6   df7b
003f0be7   d008       MOVB         XAR0, #0x8
003f0be8   82a9       MOVL         XAR3, ACC
003f0be9   ff0f       SUB          ACC, #0x200 << 15
003f0bea   0200
003f0beb   1e92       MOVL         *+XAR2[AR0], ACC
003f0bec   d01a       MOVB         XAR0, #0x1a
003f0bed   a2a9       MOVL         ACC, XAR3
003f0bee   ff0f       SUB          ACC, #0x200 << 15
003f0bef   0200
003f0bf0   1e92       MOVL         *+XAR2[AR0], ACC
003f0bf1   d020       MOVB         XAR0, #0x20
003f0bf2   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0bf3   d020       MOVB         XAR0, #0x20
003f0bf4   06c4       MOVL         ACC, *+XAR4[0]
003f0bf5   1e42       MOVL         *-SP[2], ACC
003f0bf6   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0bf7   06d4       MOVL         ACC, *+XAR4[2]
003f0bf8   767f       LCR          0x3fdce1
003f0bf9   dce1
003f0bfa   8f00       MOVL         XAR4, #0x0029f1
003f0bfb   29f1
003f0bfc   1ea6       MOVL         XAR6, ACC
003f0bfd   a842       MOVL         *-SP[2], XAR4
003f0bfe   d01c       MOVB         XAR0, #0x1c
003f0bff   28a8       MOV          AH, #0x0ccc
003f0c00   0ccc
003f0c01   28a9       MOV          AL, #0xccd0
003f0c02   ccd0
003f0c03   a844       MOVL         *-SP[4], XAR4
003f0c04   1e46       MOVL         *-SP[6], ACC
003f0c05   28a8       MOV          AH, #0x3eb8
003f0c06   3eb8
003f0c07   28a9       MOV          AL, #0x5200
003f0c08   5200
003f0c09   1e48       MOVL         *-SP[8], ACC
003f0c0a   0200       MOVB         ACC, #0
003f0c0b   c24a       MOVL         *-SP[10], XAR6
003f0c0c   1e4c       MOVL         *-SP[12], ACC
003f0c0d   02a7       MOVB         ACC, #167
003f0c0e   1e4e       MOVL         *-SP[14], ACC
003f0c0f   0200       MOVB         ACC, #0
003f0c10   1e50       MOVL         *-SP[16], ACC
003f0c11   1e52       MOVL         *-SP[18], ACC
003f0c12   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0c13   8d40       MOVL         XAR1, #0x00016e
003f0c14   016e
003f0c15   d51e       MOVB         XAR5, #0x1e
003f0c16   8a9c       MOVL         XAR4, *+XAR4[AR1]
003f0c17   767f       LCR          0x3fd54d
003f0c18   d54d
003f0c19   d008       MOVB         XAR0, #0x8
003f0c1a   0200       MOVB         ACC, #0
003f0c1b   1e42       MOVL         *-SP[2], ACC
003f0c1c   0692       MOVL         ACC, *+XAR2[AR0]
003f0c1d   d01a       MOVB         XAR0, #0x1a
003f0c1e   1e44       MOVL         *-SP[4], ACC
003f0c1f   0200       MOVB         ACC, #0
003f0c20   1e46       MOVL         *-SP[6], ACC
003f0c21   1e48       MOVL         *-SP[8], ACC
003f0c22   a24a       MOVL         *-SP[10], XAR3
003f0c23   1e4c       MOVL         *-SP[12], ACC
003f0c24   0692       MOVL         ACC, *+XAR2[AR0]
003f0c25   d01c       MOVB         XAR0, #0x1c
003f0c26   1e4e       MOVL         *-SP[14], ACC
003f0c27   0200       MOVB         ACC, #0
003f0c28   1e50       MOVL         *-SP[16], ACC
003f0c29   1e52       MOVL         *-SP[18], ACC
003f0c2a   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0c2b   a2a9       MOVL         ACC, XAR3
003f0c2c   d500       MOVB         XAR5, #0x0
003f0c2d   8a9c       MOVL         XAR4, *+XAR4[AR1]
003f0c2e   767f       LCR          0x3fd57d
003f0c2f   d57d
003f0c30   d008       MOVB         XAR0, #0x8
003f0c31   0200       MOVB         ACC, #0
003f0c32   1e42       MOVL         *-SP[2], ACC
003f0c33   0692       MOVL         ACC, *+XAR2[AR0]
003f0c34   d01a       MOVB         XAR0, #0x1a
003f0c35   1e44       MOVL         *-SP[4], ACC
003f0c36   0200       MOVB         ACC, #0
003f0c37   1e46       MOVL         *-SP[6], ACC
003f0c38   0200       MOVB         ACC, #0
003f0c39   1e48       MOVL         *-SP[8], ACC
003f0c3a   0200       MOVB         ACC, #0
003f0c3b   a24a       MOVL         *-SP[10], XAR3
003f0c3c   1e4c       MOVL         *-SP[12], ACC
003f0c3d   0692       MOVL         ACC, *+XAR2[AR0]
003f0c3e   d01c       MOVB         XAR0, #0x1c
003f0c3f   1e4e       MOVL         *-SP[14], ACC
003f0c40   0200       MOVB         ACC, #0
003f0c41   1e50       MOVL         *-SP[16], ACC
003f0c42   0200       MOVB         ACC, #0
003f0c43   1e52       MOVL         *-SP[18], ACC
003f0c44   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0c45   a2a9       MOVL         ACC, XAR3
003f0c46   d501       MOVB         XAR5, #0x1
003f0c47   8a9c       MOVL         XAR4, *+XAR4[AR1]
003f0c48   767f       LCR          0x3fd57d
003f0c49   d57d
003f0c4a   d01e       MOVB         XAR0, #0x1e
003f0c4b   9a00       MOVB         AL, #0x0
003f0c4c   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0c4d   767f       LCR          0x3fc5b0
003f0c4e   c5b0
003f0c4f   d01e       MOVB         XAR0, #0x1e
003f0c50   9a00       MOVB         AL, #0x0
003f0c51   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0c52   767f       LCR          0x3fc5bc
003f0c53   c5bc
003f0c54   d01e       MOVB         XAR0, #0x1e
003f0c55   9a01       MOVB         AL, #0x1
003f0c56   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0c57   767f       LCR          0x3fc5b8
003f0c58   c5b8
003f0c59   d020       MOVB         XAR0, #0x20
003f0c5a   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0c5b   d008       MOVB         XAR0, #0x8
003f0c5c   06e4       MOVL         ACC, *+XAR4[4]
003f0c5d   1e92       MOVL         *+XAR2[AR0], ACC
003f0c5e   d020       MOVB         XAR0, #0x20
003f0c5f   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0c60   d1a4       MOVB         XAR1, #0xa4
003f0c61   069c       MOVL         ACC, *+XAR4[AR1]
003f0c62   767f       LCR          0x3ff8aa
003f0c63   f8aa
003f0c64   d020       MOVB         XAR0, #0x20
003f0c65   1e42       MOVL         *-SP[2], ACC
003f0c66   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0c67   d116       MOVB         XAR1, #0x16
003f0c68   82a9       MOVL         XAR3, ACC
003f0c69   069c       MOVL         ACC, *+XAR4[AR1]
003f0c6a   767f       LCR          0x3fdce1
003f0c6b   dce1
003f0c6c   d008       MOVB         XAR0, #0x8
003f0c6d   c492       MOVL         XAR6, *+XAR2[AR0]
003f0c6e   c242       MOVL         *-SP[2], XAR6
003f0c6f   767f       LCR          0x3fdce1
003f0c70   dce1
003f0c71   88ad       MOVZ         AR6, SP
003f0c72   deba       SUBB         XAR6, #58
003f0c73   767f       LCR          0x3fdfb7
003f0c74   dfb7
003f0c75   8f7f       MOVL         XAR5, #0x3f6370
003f0c76   6370
003f0c77   5cad       MOVZ         AR4, SP
003f0c78   88ad       MOVZ         AR6, SP
003f0c79   dcba       SUBB         XAR4, #58
003f0c7a   deb6       SUBB         XAR6, #54
003f0c7b   767f       LCR          0x3fdc5e
003f0c7c   dc5e
003f0c7d   5cad       MOVZ         AR4, SP
003f0c7e   dcb6       SUBB         XAR4, #54
003f0c7f   767f       LCR          0x3fdf7b
003f0c80   df7b
003f0c81   d01a       MOVB         XAR0, #0x1a
003f0c82   1e92       MOVL         *+XAR2[AR0], ACC
003f0c83   d020       MOVB         XAR0, #0x20
003f0c84   a242       MOVL         *-SP[2], XAR3
003f0c85   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0c86   d118       MOVB         XAR1, #0x18
003f0c87   069c       MOVL         ACC, *+XAR4[AR1]
003f0c88   767f       LCR          0x3fdce1
003f0c89   dce1
003f0c8a   d008       MOVB         XAR0, #0x8
003f0c8b   c492       MOVL         XAR6, *+XAR2[AR0]
003f0c8c   c242       MOVL         *-SP[2], XAR6
003f0c8d   767f       LCR          0x3fdce1
003f0c8e   dce1
003f0c8f   88ad       MOVZ         AR6, SP
003f0c90   dec2       SUBB         XAR6, #66
003f0c91   767f       LCR          0x3fdfb7
003f0c92   dfb7
003f0c93   88ad       MOVZ         AR6, SP
003f0c94   5cad       MOVZ         AR4, SP
003f0c95   debe       SUBB         XAR6, #62
003f0c96   dcc2       SUBB         XAR4, #66
003f0c97   8f7f       MOVL         XAR5, #0x3f6370
003f0c98   6370
003f0c99   767f       LCR          0x3fdc5e
003f0c9a   dc5e
003f0c9b   5cad       MOVZ         AR4, SP
003f0c9c   dcbe       SUBB         XAR4, #62
003f0c9d   767f       LCR          0x3fdf7b
003f0c9e   df7b
003f0c9f   d00a       MOVB         XAR0, #0xa
003f0ca0   1e92       MOVL         *+XAR2[AR0], ACC
003f0ca1   d020       MOVB         XAR0, #0x20
003f0ca2   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0ca3   88ad       MOVZ         AR6, SP
003f0ca4   d122       MOVB         XAR1, #0x22
003f0ca5   deca       SUBB         XAR6, #74
003f0ca6   069c       MOVL         ACC, *+XAR4[AR1]
003f0ca7   767f       LCR          0x3fdfb7
003f0ca8   dfb7
003f0ca9   5cad       MOVZ         AR4, SP
003f0caa   88ad       MOVZ         AR6, SP
003f0cab   dcca       SUBB         XAR4, #74
003f0cac   dec6       SUBB         XAR6, #70
003f0cad   8f7f       MOVL         XAR5, #0x3f6370
003f0cae   6370
003f0caf   767f       LCR          0x3fdc5e
003f0cb0   dc5e
003f0cb1   5cad       MOVZ         AR4, SP
003f0cb2   dcc6       SUBB         XAR4, #70
003f0cb3   767f       LCR          0x3fdf7b
003f0cb4   df7b
003f0cb5   d020       MOVB         XAR0, #0x20
003f0cb6   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0cb7   d1a2       MOVB         XAR1, #0xa2
003f0cb8   82a9       MOVL         XAR3, ACC
003f0cb9   069c       MOVL         ACC, *+XAR4[AR1]
003f0cba   767f       LCR          0x3ff8aa
003f0cbb   f8aa
003f0cbc   d008       MOVB         XAR0, #0x8
003f0cbd   c492       MOVL         XAR6, *+XAR2[AR0]
003f0cbe   c242       MOVL         *-SP[2], XAR6
003f0cbf   767f       LCR          0x3fdce1
003f0cc0   dce1
003f0cc1   88ad       MOVZ         AR6, SP
003f0cc2   ded2       SUBB         XAR6, #82
003f0cc3   767f       LCR          0x3fdfb7
003f0cc4   dfb7
003f0cc5   88ad       MOVZ         AR6, SP
003f0cc6   5cad       MOVZ         AR4, SP
003f0cc7   8f7f       MOVL         XAR5, #0x3f6370
003f0cc8   6370
003f0cc9   dece       SUBB         XAR6, #78
003f0cca   dcd2       SUBB         XAR4, #82
003f0ccb   767f       LCR          0x3fdc5e
003f0ccc   dc5e
003f0ccd   5cad       MOVZ         AR4, SP
003f0cce   dcce       SUBB         XAR4, #78
003f0ccf   767f       LCR          0x3fdf7b
003f0cd0   df7b
003f0cd1   d00a       MOVB         XAR0, #0xa
003f0cd2   c492       MOVL         XAR6, *+XAR2[AR0]
003f0cd3   c242       MOVL         *-SP[2], XAR6
003f0cd4   be00       MOVB         XAR6, #0x00
003f0cd5   d01e       MOVB         XAR0, #0x1e
003f0cd6   c244       MOVL         *-SP[4], XAR6
003f0cd7   a246       MOVL         *-SP[6], XAR3
003f0cd8   1e48       MOVL         *-SP[8], ACC
003f0cd9   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0cda   d01a       MOVB         XAR0, #0x1a
003f0cdb   0692       MOVL         ACC, *+XAR2[AR0]
003f0cdc   767f       LCR          0x3fd1af
003f0cdd   d1af
003f0cde   761f       MOVW         DP, #0xfd8d
003f0cdf   fd8d
003f0ce0   0600       MOVL         ACC, @0x0
003f0ce1   761f       MOVW         DP, #0xfd8d
003f0ce2   fd8d
003f0ce3   1e62       MOVL         *-SP[34], ACC
003f0ce4   c402       MOVL         XAR6, @0x2
003f0ce5   d020       MOVB         XAR0, #0x20
003f0ce6   761f       MOVW         DP, #0xfd8c
003f0ce7   fd8c
003f0ce8   0638       MOVL         ACC, @0x38
003f0ce9   c260       MOVL         *-SP[32], XAR6
003f0cea   761f       MOVW         DP, #0xfd8c
003f0ceb   fd8c
003f0cec   c43a       MOVL         XAR6, @0x3a
003f0ced   761f       MOVW         DP, #0xfd8c
003f0cee   fd8c
003f0cef   1e66       MOVL         *-SP[38], ACC
003f0cf0   063c       MOVL         ACC, @0x3c
003f0cf1   761f       MOVW         DP, #0xfd8c
003f0cf2   fd8c
003f0cf3   c264       MOVL         *-SP[36], XAR6
003f0cf4   c43e       MOVL         XAR6, @0x3e
003f0cf5   761f       MOVW         DP, #0xfd8c
003f0cf6   fd8c
003f0cf7   1e6a       MOVL         *-SP[42], ACC
003f0cf8   0630       MOVL         ACC, @0x30
003f0cf9   761f       MOVW         DP, #0xfd8c
003f0cfa   fd8c
003f0cfb   c268       MOVL         *-SP[40], XAR6
003f0cfc   c432       MOVL         XAR6, @0x32
003f0cfd   761f       MOVW         DP, #0xfd8c
003f0cfe   fd8c
003f0cff   1e6e       MOVL         *-SP[46], ACC
003f0d00   0634       MOVL         ACC, @0x34
003f0d01   761f       MOVW         DP, #0xfd8c
003f0d02   fd8c
003f0d03   c26c       MOVL         *-SP[44], XAR6
003f0d04   c436       MOVL         XAR6, @0x36
003f0d05   1e72       MOVL         *-SP[50], ACC
003f0d06   28a9       MOV          AL, #0x0fdb
003f0d07   0fdb
003f0d08   28a8       MOV          AH, #0x40c9
003f0d09   40c9
003f0d0a   1e42       MOVL         *-SP[2], ACC
003f0d0b   8b92       MOVL         XAR1, *+XAR2[AR0]
003f0d0c   c270       MOVL         *-SP[48], XAR6
003f0d0d   06e1       MOVL         ACC, *+XAR1[4]
003f0d0e   767f       LCR          0x3fdde7
003f0d0f   dde7
003f0d10   d02e       MOVB         XAR0, #0x2e
003f0d11   c491       MOVL         XAR6, *+XAR1[AR0]
003f0d12   c242       MOVL         *-SP[2], XAR6
003f0d13   767f       LCR          0x3fdce1
003f0d14   dce1
003f0d15   88ad       MOVZ         AR6, SP
003f0d16   deba       SUBB         XAR6, #58
003f0d17   767f       LCR          0x3fdfb7
003f0d18   dfb7
003f0d19   88ad       MOVZ         AR6, SP
003f0d1a   deb6       SUBB         XAR6, #54
003f0d1b   5cad       MOVZ         AR4, SP
003f0d1c   dcba       SUBB         XAR4, #58
003f0d1d   8f7f       MOVL         XAR5, #0x3f6374
003f0d1e   6374
003f0d1f   767f       LCR          0x3fdc5e
003f0d20   dc5e
003f0d21   5cad       MOVZ         AR4, SP
003f0d22   dcb6       SUBB         XAR4, #54
003f0d23   767f       LCR          0x3fdf7b
003f0d24   df7b
003f0d25   d020       MOVB         XAR0, #0x20
003f0d26   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0d27   d1a0       MOVB         XAR1, #0xa0
003f0d28   82a9       MOVL         XAR3, ACC
003f0d29   069c       MOVL         ACC, *+XAR4[AR1]
003f0d2a   767f       LCR          0x3ff8aa
003f0d2b   f8aa
003f0d2c   1e42       MOVL         *-SP[2], ACC
003f0d2d   9a00       MOVB         AL, #0x0
003f0d2e   28a8       MOV          AH, #0x41a0
003f0d2f   41a0
003f0d30   767f       LCR          0x3fdce1
003f0d31   dce1
003f0d32   88ad       MOVZ         AR6, SP
003f0d33   deba       SUBB         XAR6, #58
003f0d34   767f       LCR          0x3fdfb7
003f0d35   dfb7
003f0d36   88ad       MOVZ         AR6, SP
003f0d37   5cad       MOVZ         AR4, SP
003f0d38   8f7f       MOVL         XAR5, #0x3f636c
003f0d39   636c
003f0d3a   deb6       SUBB         XAR6, #54
003f0d3b   dcba       SUBB         XAR4, #58
003f0d3c   767f       LCR          0x3fdc5e
003f0d3d   dc5e
003f0d3e   5cad       MOVZ         AR4, SP
003f0d3f   dcb6       SUBB         XAR4, #54
003f0d40   767f       LCR          0x3fdf7b
003f0d41   df7b
003f0d42   d008       MOVB         XAR0, #0x8
003f0d43   1e92       MOVL         *+XAR2[AR0], ACC
003f0d44   d01c       MOVB         XAR0, #0x1c
003f0d45   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0d46   5dad       MOVZ         AR5, SP
003f0d47   8d40       MOVL         XAR1, #0x0001c2
003f0d48   01c2
003f0d49   dda2       SUBB         XAR5, #34
003f0d4a   8a9c       MOVL         XAR4, *+XAR4[AR1]
003f0d4b   767f       LCR          0x3fda53
003f0d4c   da53
003f0d4d   d01c       MOVB         XAR0, #0x1c
003f0d4e   5cad       MOVZ         AR4, SP
003f0d4f   dcaa       SUBB         XAR4, #42
003f0d50   5dad       MOVZ         AR5, SP
003f0d51   a842       MOVL         *-SP[2], XAR4
003f0d52   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0d53   d008       MOVB         XAR0, #0x8
003f0d54   8d40       MOVL         XAR1, #0x0001d6
003f0d55   01d6
003f0d56   dda6       SUBB         XAR5, #38
003f0d57   8a9c       MOVL         XAR4, *+XAR4[AR1]
003f0d58   0692       MOVL         ACC, *+XAR2[AR0]
003f0d59   767f       LCR          0x3fd9fb
003f0d5a   d9fb
003f0d5b   d01c       MOVB         XAR0, #0x1c
003f0d5c   5dad       MOVZ         AR5, SP
003f0d5d   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0d5e   8d40       MOVL         XAR1, #0x0001c8
003f0d5f   01c8
003f0d60   a2a9       MOVL         ACC, XAR3
003f0d61   ddae       SUBB         XAR5, #46
003f0d62   8a9c       MOVL         XAR4, *+XAR4[AR1]
003f0d63   767f       LCR          0x3fda47
003f0d64   da47
003f0d65   d01c       MOVB         XAR0, #0x1c
003f0d66   8a92       MOVL         XAR4, *+XAR2[AR0]
003f0d67   5dad       MOVZ         AR5, SP
003f0d68   8d40       MOVL         XAR1, #0x0001d0
003f0d69   01d0
003f0d6a   ddb2       SUBB         XAR5, #50
003f0d6b   8a9c       MOVL         XAR4, *+XAR4[AR1]
003f0d6c   767f       LCR          0x3fda5e
003f0d6d   da5e
003f0d6e   d020       MOVB         XAR0, #0x20
003f0d6f   8b92       MOVL         XAR1, *+XAR2[AR0]
003f0d70   d01e       MOVB         XAR0, #0x1e
003f0d71   8292       MOVL         XAR3, *+XAR2[AR0]
003f0d72   06c1       MOVL         ACC, *+XAR1[0]
003f0d73   8aa3       MOVL         XAR4, XAR3
003f0d74   767f       LCR          0x3fc594
003f0d75   c594
003f0d76   8aa3       MOVL         XAR4, XAR3
003f0d77   06e1       MOVL         ACC, *+XAR1[4]
003f0d78   767f       LCR          0x3fc58b
003f0d79   c58b
003f0d7a   d020       MOVB         XAR0, #0x20
003f0d7b   8292       MOVL         XAR3, *+XAR2[AR0]
003f0d7c   06c3       MOVL         ACC, *+XAR3[0]
003f0d7d   1e42       MOVL         *-SP[2], ACC
003f0d7e   06d3       MOVL         ACC, *+XAR3[2]
003f0d7f   767f       LCR          0x3fdce1
003f0d80   dce1
003f0d81   d01e       MOVB         XAR0, #0x1e
003f0d82   8b92       MOVL         XAR1, *+XAR2[AR0]
003f0d83   8aa1       MOVL         XAR4, XAR1
003f0d84   767f       LCR          0x3fc573
003f0d85   c573
003f0d86   8aa1       MOVL         XAR4, XAR1
003f0d87   06d3       MOVL         ACC, *+XAR3[2]
003f0d88   767f       LCR          0x3fc56f
003f0d89   c56f
003f0d8a   8aa1       MOVL         XAR4, XAR1
003f0d8b   83a3       MOVL         XAR5, XAR3
003f0d8c   dd5c       ADDB         XAR5, #92
003f0d8d   767f       LCR          0x3fc3e2
003f0d8e   c3e2
003f0d8f   8d00       MOVL         XAR0, #0x0001e6
003f0d90   01e6
003f0d91   9a00       MOVB         AL, #0x0
003f0d92   8aa1       MOVL         XAR4, XAR1
003f0d93   2b91       MOV          *+XAR1[AR0], #0
003f0d94   767f       LCR          0x3fc5b4
003f0d95   c5b4
003f0d96   8d00       MOVL         XAR0, #0x0001f8
003f0d97   01f8
003f0d98   56bf       MOVB         *+XAR1[AR0], #0x1e, UNC
003f0d99   1e91
003f0d9a   8aa1       MOVL         XAR4, XAR1
003f0d9b   767f       LCR          0x3fc5ed
003f0d9c   c5ed
003f0d9d   8aa1       MOVL         XAR4, XAR1
003f0d9e   767f       LCR          0x3fc05a
003f0d9f   c05a
003f0da0   c5a3       MOVL         XAR7, XAR3
003f0da1   df08       ADDB         XAR7, #8
003f0da2   92c7       MOV          AL, *+XAR7[0]
003f0da3   8d00       MOVL         XAR0, #0x0001fa
003f0da4   01fa
003f0da5   9691       MOV          *+XAR1[AR0], AL
003f0da6   d09e       MOVB         XAR0, #0x9e
003f0da7   c5a1       MOVL         XAR7, XAR1
003f0da8   0693       MOVL         ACC, *+XAR3[AR0]
003f0da9   8d00       MOVL         XAR0, #0x0001f4
003f0daa   01f4
003f0dab   1e91       MOVL         *+XAR1[AR0], ACC
003f0dac   d0a0       MOVB         XAR0, #0xa0
003f0dad   0693       MOVL         ACC, *+XAR3[AR0]
003f0dae   8d00       MOVL         XAR0, #0x0001f6
003f0daf   01f6
003f0db0   1e91       MOVL         *+XAR1[AR0], ACC
003f0db1   d01e       MOVB         XAR0, #0x1e
003f0db2   2bd1       MOV          *+XAR1[2], #0
003f0db3   92c7       MOV          AL, *+XAR7[0]
003f0db4   08ad       ADD          SP, #-140
003f0db5   ff74
003f0db6   96c9       MOV          *+XAR1[1], AL
003f0db7   c392       MOVL         *+XAR2[AR0], XAR7
003f0db8   56bf       MOVB         *+XAR7[0], #0x01, UNC
003f0db9   01c7
003f0dba   82be       MOVL         XAR3, *--SP
003f0dbb   86be       MOVL         XAR2, *--SP
003f0dbc   8bbe       MOVL         XAR1, *--SP
003f0dbd   0006       LRETR        
3f0dbe:              _CTRL_runTraj:
003f0dbe   b2bd       MOVL         *SP++, XAR1
003f0dbf   aabd       MOVL         *SP++, XAR2
003f0dc0   a2bd       MOVL         *SP++, XAR3
003f0dc1   d018       MOVB         XAR0, #0x18
003f0dc2   82a4       MOVL         XAR3, XAR4
003f0dc3   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0dc4   fe02       ADDB         SP, #2
003f0dc5   8ba4       MOVL         XAR1, XAR4
003f0dc6   767f       LCR          0x3fc000
003f0dc7   c000
003f0dc8   d060       MOVB         XAR0, #0x60
003f0dc9   5202       CMPB         AL, #0x2
003f0dca   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0dcb   d084       MOVB         XAR0, #0x84
003f0dcc   8093       MOVZ         AR7, *+XAR3[AR0]
003f0dcd   88a9       MOVZ         AR6, AL
003f0dce   86d4       MOVL         XAR2, *+XAR4[2]
003f0dcf   ec28       SBF          40, EQ
003f0dd0   d06c       MOVB         XAR0, #0x6c
003f0dd1   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0dd2   d008       MOVB         XAR0, #0x8
003f0dd3   8e94       MOVL         XAR0, *+XAR4[AR0]
003f0dd4   87d4       MOVL         XT, *+XAR4[2]
003f0dd5   a3c4       MOVL         P, *+XAR4[0]
003f0dd6   565d       SUBUL        P, XT
003f0dd7   00ac
003f0dd8   3aa9       MOVL         ACC, XAR0
003f0dd9   ff54       NEG          ACC
003f0dda   83a9       MOVL         XAR5, ACC
003f0ddb   a9a9       MOVL         ACC, P
003f0ddc   5650       MINL         ACC, XAR0
003f0ddd   00a0
003f0dde   5661       MAXL         ACC, XAR5
003f0ddf   00a5
003f0de0   07ac       ADDL         ACC, XT
003f0de1   1ed4       MOVL         *+XAR4[2], ACC
003f0de2   92a6       MOV          AL, AR6
003f0de3   5207       CMPB         AL, #0x7
003f0de4   6413       SB           19, LT
003f0de5   d0a4       MOVB         XAR0, #0xa4
003f0de6   8393       MOVL         XAR5, *+XAR3[AR0]
003f0de7   d078       MOVB         XAR0, #0x78
003f0de8   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0de9   a0a9       MOVL         ACC, XAR5
003f0dea   87d4       MOVL         XT, *+XAR4[2]
003f0deb   a3c4       MOVL         P, *+XAR4[0]
003f0dec   565d       SUBUL        P, XT
003f0ded   00ac
003f0dee   ff54       NEG          ACC
003f0def   8ea9       MOVL         XAR0, ACC
003f0df0   a9a9       MOVL         ACC, P
003f0df1   5650       MINL         ACC, XAR5
003f0df2   00a5
003f0df3   5661       MAXL         ACC, XAR0
003f0df4   00a0
003f0df5   07ac       ADDL         ACC, XT
003f0df6   1ed4       MOVL         *+XAR4[2], ACC
003f0df7   93a7       MOV          AH, AR7
003f0df8   ed5e       SBF          94, NEQ
003f0df9   92a6       MOV          AL, AR6
003f0dfa   520d       CMPB         AL, #0xd
003f0dfb   ec27       SBF          39, EQ
003f0dfc   5205       CMPB         AL, #0x5
003f0dfd   ec10       SBF          16, EQ
003f0dfe   d060       MOVB         XAR0, #0x60
003f0dff   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0e00   d018       MOVB         XAR0, #0x18
003f0e01   06c4       MOVL         ACC, *+XAR4[0]
003f0e02   03d4       SUBL         ACC, *+XAR4[2]
003f0e03   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0e04   d02a       MOVB         XAR0, #0x2a
003f0e05   c494       MOVL         XAR6, *+XAR4[AR0]
003f0e06   d06e       MOVB         XAR0, #0x6e
003f0e07   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0e08   83a9       MOVL         XAR5, ACC
003f0e09   92c4       MOV          AL, *+XAR4[0]
003f0e0a   5202       CMPB         AL, #0x2
003f0e0b   ed5c       SBF          92, NEQ
003f0e0c   6f62       SB           98, UNC
003f0e0d   d018       MOVB         XAR0, #0x18
003f0e0e   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0e0f   d036       MOVB         XAR0, #0x36
003f0e10   c494       MOVL         XAR6, *+XAR4[AR0]
003f0e11   d06e       MOVB         XAR0, #0x6e
003f0e12   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0e13   d01e       MOVB         XAR0, #0x1e
003f0e14   0694       MOVL         ACC, *+XAR4[AR0]
003f0e15   d024       MOVB         XAR0, #0x24
003f0e16   c594       MOVL         XAR7, *+XAR4[AR0]
003f0e17   0fa7       CMPL         ACC, XAR7
003f0e18   6206       SB           6, GT
003f0e19   0fa7       CMPL         ACC, XAR7
003f0e1a   6363       SB           99, GEQ
003f0e1b   aaa9       MOVL         ACC, XAR2
003f0e1c   03a6       SUBL         ACC, XAR6
003f0e1d   6f03       SB           3, UNC
003f0e1e   aaa9       MOVL         ACC, XAR2
003f0e1f   07a6       ADDL         ACC, XAR6
003f0e20   86a9       MOVL         XAR2, ACC
003f0e21   6f5c       SB           92, UNC
003f0e22   d0f2       MOVB         XAR0, #0xf2
003f0e23   9293       MOV          AL, *+XAR3[AR0]
003f0e24   ed13       SBF          19, NEQ
003f0e25   d018       MOVB         XAR0, #0x18
003f0e26   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0e27   d02a       MOVB         XAR0, #0x2a
003f0e28   c494       MOVL         XAR6, *+XAR4[AR0]
003f0e29   d060       MOVB         XAR0, #0x60
003f0e2a   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0e2b   06c4       MOVL         ACC, *+XAR4[0]
003f0e2c   03d4       SUBL         ACC, *+XAR4[2]
003f0e2d   1ea7       MOVL         XAR7, ACC
003f0e2e   06a6       MOVL         ACC, XAR6
003f0e2f   ff54       NEG          ACC
003f0e30   ff5a       MOVL         P, ACC
003f0e31   06a7       MOVL         ACC, XAR7
003f0e32   5650       MINL         ACC, XAR6
003f0e33   00a6
003f0e34   5661       MAXL         ACC, P
003f0e35   00ab
003f0e36   6f45       SB           69, UNC
003f0e37   d032       MOVB         XAR0, #0x32
003f0e38   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0e39   d00a       MOVB         XAR0, #0xa
003f0e3a   0694       MOVL         ACC, *+XAR4[AR0]
003f0e3b   d020       MOVB         XAR0, #0x20
003f0e3c   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0e3d   d008       MOVB         XAR0, #0x8
003f0e3e   8b94       MOVL         XAR1, *+XAR4[AR0]
003f0e3f   d018       MOVB         XAR0, #0x18
003f0e40   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0e41   d038       MOVB         XAR0, #0x38
003f0e42   c494       MOVL         XAR6, *+XAR4[AR0]
003f0e43   ff56       ABS          ACC
003f0e44   c242       MOVL         *-SP[2], XAR6
003f0e45   767f       LCR          0x3fff8f
003f0e46   ff8f
003f0e47   d018       MOVB         XAR0, #0x18
003f0e48   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0e49   d02c       MOVB         XAR0, #0x2c
003f0e4a   03a1       SUBL         ACC, XAR1
003f0e4b   1ea6       MOVL         XAR6, ACC
003f0e4c   d12a       MOVB         XAR1, #0x2a
003f0e4d   0694       MOVL         ACC, *+XAR4[AR0]
003f0e4e   ff54       NEG          ACC
003f0e4f   1ea7       MOVL         XAR7, ACC
003f0e50   06a6       MOVL         ACC, XAR6
003f0e51   5650       MINL         ACC, *+XAR4[AR1]
003f0e52   009c
003f0e53   5661       MAXL         ACC, XAR7
003f0e54   00a7
003f0e55   6f26       SB           38, UNC
003f0e56   92a7       MOV          AL, AR7
003f0e57   5201       CMPB         AL, #0x1
003f0e58   ed25       SBF          37, NEQ
003f0e59   d060       MOVB         XAR0, #0x60
003f0e5a   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0e5b   d018       MOVB         XAR0, #0x18
003f0e5c   06c4       MOVL         ACC, *+XAR4[0]
003f0e5d   03d4       SUBL         ACC, *+XAR4[2]
003f0e5e   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0e5f   d02a       MOVB         XAR0, #0x2a
003f0e60   c494       MOVL         XAR6, *+XAR4[AR0]
003f0e61   d06e       MOVB         XAR0, #0x6e
003f0e62   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0e63   83a9       MOVL         XAR5, ACC
003f0e64   92c4       MOV          AL, *+XAR4[0]
003f0e65   5202       CMPB         AL, #0x2
003f0e66   ec08       SBF          8, EQ
003f0e67   06a6       MOVL         ACC, XAR6
003f0e68   ff54       NEG          ACC
003f0e69   1ea7       MOVL         XAR7, ACC
003f0e6a   a0a9       MOVL         ACC, XAR5
003f0e6b   5650       MINL         ACC, XAR6
003f0e6c   00a6
003f0e6d   6fe6       SB           -26, UNC
003f0e6e   0203       MOVB         ACC, #3
003f0e6f   1e42       MOVL         *-SP[2], ACC
003f0e70   06a6       MOVL         ACC, XAR6
003f0e71   00ff       FFC          XAR7, 0x3f460c
003f0e72   460c
003f0e73   1ea7       MOVL         XAR7, ACC
003f0e74   ff54       NEG          ACC
003f0e75   1ea6       MOVL         XAR6, ACC
003f0e76   a0a9       MOVL         ACC, XAR5
003f0e77   5650       MINL         ACC, XAR7
003f0e78   00a7
003f0e79   5661       MAXL         ACC, XAR6
003f0e7a   00a6
003f0e7b   5601       ADDL         XAR2, ACC
003f0e7c   00a2
003f0e7d   d060       MOVB         XAR0, #0x60
003f0e7e   8a93       MOVL         XAR4, *+XAR3[AR0]
003f0e7f   aaa9       MOVL         ACC, XAR2
003f0e80   fe82       SUBB         SP, #2
003f0e81   5650       MINL         ACC, *+XAR4[6]
003f0e82   00f4
003f0e83   5661       MAXL         ACC, *+XAR4[4]
003f0e84   00e4
003f0e85   1ed4       MOVL         *+XAR4[2], ACC
003f0e86   82be       MOVL         XAR3, *--SP
003f0e87   86be       MOVL         XAR2, *--SP
003f0e88   8bbe       MOVL         XAR1, *--SP
003f0e89   0006       LRETR        
3f0e8a:              _CTRL_getVersion:
003f0e8a   c5a4       MOVL         XAR7, XAR4
003f0e8b   92c7       MOV          AL, *+XAR7[0]
003f0e8c   96c5       MOV          *+XAR5[0], AL
003f0e8d   92cf       MOV          AL, *+XAR7[1]
003f0e8e   96cd       MOV          *+XAR5[1], AL
003f0e8f   92d7       MOV          AL, *+XAR7[2]
003f0e90   96d5       MOV          *+XAR5[2], AL
003f0e91   92df       MOV          AL, *+XAR7[3]
003f0e92   96dd       MOV          *+XAR5[3], AL
003f0e93   0006       LRETR        
3f0e94:              _USER_softwareUpdate1p6:
003f0e94   b2bd       MOVL         *SP++, XAR1
003f0e95   aabd       MOVL         *SP++, XAR2
003f0e96   a2bd       MOVL         *SP++, XAR3
003f0e97   fe0e       ADDB         SP, #14
003f0e98   28a9       MOV          AL, #0x47c9
003f0e99   47c9
003f0e9a   28a8       MOV          AH, #0x4512
003f0e9b   4512
003f0e9c   86a5       MOVL         XAR2, XAR5
003f0e9d   8ba4       MOVL         XAR1, XAR4
003f0e9e   1e42       MOVL         *-SP[2], ACC
003f0e9f   06c2       MOVL         ACC, *+XAR2[0]
003f0ea0   767f       LCR          0x3fdde7
003f0ea1   dde7
003f0ea2   1e42       MOVL         *-SP[2], ACC
003f0ea3   06d2       MOVL         ACC, *+XAR2[2]
003f0ea4   767f       LCR          0x3fdce1
003f0ea5   dce1
003f0ea6   d018       MOVB         XAR0, #0x18
003f0ea7   86a9       MOVL         XAR2, ACC
003f0ea8   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0ea9   767f       LCR          0x3fcfe4
003f0eaa   cfe4
003f0eab   767f       LCR          0x3fff7b
003f0eac   ff7b
003f0ead   aa42       MOVL         *-SP[2], XAR2
003f0eae   767f       LCR          0x3fdde7
003f0eaf   dde7
003f0eb0   d088       MOVB         XAR0, #0x88
003f0eb1   1e42       MOVL         *-SP[2], ACC
003f0eb2   0691       MOVL         ACC, *+XAR1[AR0]
003f0eb3   767f       LCR          0x3fdce1
003f0eb4   dce1
003f0eb5   767f       LCR          0x3fda88
003f0eb6   da88
003f0eb7   82a9       MOVL         XAR3, ACC
003f0eb8   9a00       MOVB         AL, #0x0
003f0eb9   28a8       MOV          AH, #0x4000
003f0eba   4000
003f0ebb   767f       LCR          0x3fda88
003f0ebc   da88
003f0ebd   1e42       MOVL         *-SP[2], ACC
003f0ebe   a2a9       MOVL         ACC, XAR3
003f0ebf   767f       LCR          0x3fdce1
003f0ec0   dce1
003f0ec1   5cad       MOVZ         AR4, SP
003f0ec2   dc84       SUBB         XAR4, #4
003f0ec3   767f       LCR          0x3fde82
003f0ec4   de82
003f0ec5   1ea6       MOVL         XAR6, ACC
003f0ec6   9a00       MOVB         AL, #0x0
003f0ec7   9b00       MOVB         AH, #0x0
003f0ec8   1e42       MOVL         *-SP[2], ACC
003f0ec9   06a6       MOVL         ACC, XAR6
003f0eca   767f       LCR          0x3fdf2b
003f0ecb   df2b
003f0ecc   5200       CMPB         AL, #0x0
003f0ecd   6203       SB           3, GT
003f0ece   0644       MOVL         ACC, *-SP[4]
003f0ecf   6f07       SB           7, UNC
3f0ed0:              $C$L1:
003f0ed0   ff2f       MOV          ACC, #0x7f00 << 15
003f0ed1   7f00
003f0ed2   1e42       MOVL         *-SP[2], ACC
003f0ed3   0644       MOVL         ACC, *-SP[4]
003f0ed4   767f       LCR          0x3fdeb8
003f0ed5   deb8
3f0ed6:              $C$L2:
003f0ed6   767f       LCR          0x3fff0e
003f0ed7   ff0e
003f0ed8   964d       MOV          *-SP[13], AL
003f0ed9   767f       LCR          0x3fff33
003f0eda   ff33
003f0edb   1e42       MOVL         *-SP[2], ACC
003f0edc   9a00       MOVB         AL, #0x0
003f0edd   28a8       MOV          AH, #0x4000
003f0ede   4000
003f0edf   767f       LCR          0x3fdd64
003f0ee0   dd64
003f0ee1   aa42       MOVL         *-SP[2], XAR2
003f0ee2   767f       LCR          0x3fdde7
003f0ee3   dde7
003f0ee4   d08a       MOVB         XAR0, #0x8a
003f0ee5   86a9       MOVL         XAR2, ACC
003f0ee6   1e42       MOVL         *-SP[2], ACC
003f0ee7   0691       MOVL         ACC, *+XAR1[AR0]
003f0ee8   767f       LCR          0x3fdce1
003f0ee9   dce1
003f0eea   88ad       MOVZ         AR6, SP
003f0eeb   de8c       SUBB         XAR6, #12
003f0eec   767f       LCR          0x3fdfb7
003f0eed   dfb7
003f0eee   5cad       MOVZ         AR4, SP
003f0eef   88ad       MOVZ         AR6, SP
003f0ef0   8f7f       MOVL         XAR5, #0x3f63e0
003f0ef1   63e0
003f0ef2   dc8c       SUBB         XAR4, #12
003f0ef3   de88       SUBB         XAR6, #8
003f0ef4   767f       LCR          0x3fdc5e
003f0ef5   dc5e
003f0ef6   5cad       MOVZ         AR4, SP
003f0ef7   dc88       SUBB         XAR4, #8
003f0ef8   767f       LCR          0x3fdf7b
003f0ef9   df7b
003f0efa   d088       MOVB         XAR0, #0x88
003f0efb   82a9       MOVL         XAR3, ACC
003f0efc   aa42       MOVL         *-SP[2], XAR2
003f0efd   0691       MOVL         ACC, *+XAR1[AR0]
003f0efe   767f       LCR          0x3fdce1
003f0eff   dce1
003f0f00   88ad       MOVZ         AR6, SP
003f0f01   de8c       SUBB         XAR6, #12
003f0f02   767f       LCR          0x3fdfb7
003f0f03   dfb7
003f0f04   5cad       MOVZ         AR4, SP
003f0f05   88ad       MOVZ         AR6, SP
003f0f06   8f7f       MOVL         XAR5, #0x3f63e0
003f0f07   63e0
003f0f08   dc8c       SUBB         XAR4, #12
003f0f09   de88       SUBB         XAR6, #8
003f0f0a   767f       LCR          0x3fdc5e
003f0f0b   dc5e
003f0f0c   5cad       MOVZ         AR4, SP
003f0f0d   dc88       SUBB         XAR4, #8
003f0f0e   767f       LCR          0x3fdf7b
003f0f0f   df7b
003f0f10   d018       MOVB         XAR0, #0x18
003f0f11   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0f12   767f       LCR          0x3fc52a
003f0f13   c52a
003f0f14   d018       MOVB         XAR0, #0x18
003f0f15   a2a9       MOVL         ACC, XAR3
003f0f16   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0f17   767f       LCR          0x3fc4cc
003f0f18   c4cc
003f0f19   9a1e       MOVB         AL, #0x1e
003f0f1a   9e4d       SUB          AL, *-SP[13]
003f0f1b   d018       MOVB         XAR0, #0x18
003f0f1c   8a91       MOVL         XAR4, *+XAR1[AR0]
003f0f1d   767f       LCR          0x3fc4d6
003f0f1e   c4d6
003f0f1f   fe8e       SUBB         SP, #14
003f0f20   82be       MOVL         XAR3, *--SP
003f0f21   86be       MOVL         XAR2, *--SP
003f0f22   8bbe       MOVL         XAR1, *--SP
003f0f23   0006       LRETR        
3f0f24:              _USER_setWaitTimeParams:
003f0f24   b2bd       MOVL         *SP++, XAR1
003f0f25   aabd       MOVL         *SP++, XAR2
003f0f26   fe02       ADDB         SP, #2
003f0f27   86a4       MOVL         XAR2, XAR4
003f0f28   8ba4       MOVL         XAR1, XAR4
003f0f29   0200       MOVB         ACC, #0
003f0f2a   8f40       MOVL         XAR5, #0x0061a8
003f0f2b   61a8
003f0f2c   d052       MOVB         XAR0, #0x52
003f0f2d   dc54       ADDB         XAR4, #84
003f0f2e   d95c       ADDB         XAR1, #92
003f0f2f   1ec4       MOVL         *+XAR4[0], ACC
003f0f30   1ed4       MOVL         *+XAR4[2], ACC
003f0f31   a0e4       MOVL         *+XAR4[4], XAR5
003f0f32   1ef4       MOVL         *+XAR4[6], ACC
003f0f33   8f00       MOVL         XAR4, #0x009c40
003f0f34   9c40
003f0f35   1ec1       MOVL         *+XAR1[0], ACC
003f0f36   1ed1       MOVL         *+XAR1[2], ACC
003f0f37   a8e1       MOVL         *+XAR1[4], XAR4
003f0f38   1ef1       MOVL         *+XAR1[6], ACC
003f0f39   ff2f       MOV          ACC, #0x7e00 << 15
003f0f3a   7e00
003f0f3b   1e42       MOVL         *-SP[2], ACC
003f0f3c   0692       MOVL         ACC, *+XAR2[AR0]
003f0f3d   767f       LCR          0x3fdde7
003f0f3e   dde7
003f0f3f   1ea6       MOVL         XAR6, ACC
003f0f40   9a00       MOVB         AL, #0x0
003f0f41   28a8       MOV          AH, #0x40a0
003f0f42   40a0
003f0f43   1e42       MOVL         *-SP[2], ACC
003f0f44   06a6       MOVL         ACC, XAR6
003f0f45   767f       LCR          0x3fdeb8
003f0f46   deb8
003f0f47   1ea6       MOVL         XAR6, ACC
003f0f48   28a9       MOV          AL, #0x4000
003f0f49   4000
003f0f4a   28a8       MOV          AH, #0x459c
003f0f4b   459c
003f0f4c   1e42       MOVL         *-SP[2], ACC
003f0f4d   06a6       MOVL         ACC, XAR6
003f0f4e   767f       LCR          0x3fdde7
003f0f4f   dde7
003f0f50   767f       LCR          0x3f467e
003f0f51   467e
003f0f52   d008       MOVB         XAR0, #0x8
003f0f53   8f02       MOVL         XAR4, #0x0249f0
003f0f54   49f0
003f0f55   1e91       MOVL         *+XAR1[AR0], ACC
003f0f56   d00a       MOVB         XAR0, #0xa
003f0f57   0200       MOVB         ACC, #0
003f0f58   a891       MOVL         *+XAR1[AR0], XAR4
003f0f59   d00c       MOVB         XAR0, #0xc
003f0f5a   8f00       MOVL         XAR4, #0x0003e8
003f0f5b   03e8
003f0f5c   a891       MOVL         *+XAR1[AR0], XAR4
003f0f5d   d00e       MOVB         XAR0, #0xe
003f0f5e   8f00       MOVL         XAR4, #0x002710
003f0f5f   2710
003f0f60   1e91       MOVL         *+XAR1[AR0], ACC
003f0f61   d010       MOVB         XAR0, #0x10
003f0f62   a891       MOVL         *+XAR1[AR0], XAR4
003f0f63   d012       MOVB         XAR0, #0x12
003f0f64   8f01       MOVL         XAR4, #0x0186a0
003f0f65   86a0
003f0f66   1e91       MOVL         *+XAR1[AR0], ACC
003f0f67   d014       MOVB         XAR0, #0x14
003f0f68   1e91       MOVL         *+XAR1[AR0], ACC
003f0f69   d016       MOVB         XAR0, #0x16
003f0f6a   a891       MOVL         *+XAR1[AR0], XAR4
003f0f6b   8aa2       MOVL         XAR4, XAR2
003f0f6c   d018       MOVB         XAR0, #0x18
003f0f6d   8f40       MOVL         XAR5, #0x00c350
003f0f6e   c350
003f0f6f   1e91       MOVL         *+XAR1[AR0], ACC
003f0f70   dc78       ADDB         XAR4, #120
003f0f71   d01a       MOVB         XAR0, #0x1a
003f0f72   1e91       MOVL         *+XAR1[AR0], ACC
003f0f73   d008       MOVB         XAR0, #0x8
003f0f74   1ec4       MOVL         *+XAR4[0], ACC
003f0f75   1ed4       MOVL         *+XAR4[2], ACC
003f0f76   a0e4       MOVL         *+XAR4[4], XAR5
003f0f77   8f40       MOVL         XAR5, #0x0003e8
003f0f78   03e8
003f0f79   a0f4       MOVL         *+XAR4[6], XAR5
003f0f7a   8f40       MOVL         XAR5, #0x004e20
003f0f7b   4e20
003f0f7c   a094       MOVL         *+XAR4[AR0], XAR5
003f0f7d   d00a       MOVB         XAR0, #0xa
003f0f7e   8f40       MOVL         XAR5, #0x003a98
003f0f7f   3a98
003f0f80   1e94       MOVL         *+XAR4[AR0], ACC
003f0f81   d008       MOVB         XAR0, #0x8
003f0f82   0284       MOVB         ACC, #132
003f0f83   07a2       ADDL         ACC, XAR2
003f0f84   8aa9       MOVL         XAR4, ACC
003f0f85   0200       MOVB         ACC, #0
003f0f86   1ec4       MOVL         *+XAR4[0], ACC
003f0f87   1ed4       MOVL         *+XAR4[2], ACC
003f0f88   a0e4       MOVL         *+XAR4[4], XAR5
003f0f89   a0f4       MOVL         *+XAR4[6], XAR5
003f0f8a   8f40       MOVL         XAR5, #0x0003e8
003f0f8b   03e8
003f0f8c   a094       MOVL         *+XAR4[AR0], XAR5
003f0f8d   d00a       MOVB         XAR0, #0xa
003f0f8e   8f41       MOVL         XAR5, #0x0186a0
003f0f8f   86a0
003f0f90   a094       MOVL         *+XAR4[AR0], XAR5
003f0f91   d00c       MOVB         XAR0, #0xc
003f0f92   8f40       MOVL         XAR5, #0x001388
003f0f93   1388
003f0f94   1e94       MOVL         *+XAR4[AR0], ACC
003f0f95   0292       MOVB         ACC, #146
003f0f96   d008       MOVB         XAR0, #0x8
003f0f97   07a2       ADDL         ACC, XAR2
003f0f98   8aa9       MOVL         XAR4, ACC
003f0f99   0200       MOVB         ACC, #0
003f0f9a   1ec4       MOVL         *+XAR4[0], ACC
003f0f9b   1ed4       MOVL         *+XAR4[2], ACC
003f0f9c   a0e4       MOVL         *+XAR4[4], XAR5
003f0f9d   8f40       MOVL         XAR5, #0x002710
003f0f9e   2710
003f0f9f   a0f4       MOVL         *+XAR4[6], XAR5
003f0fa0   8f40       MOVL         XAR5, #0x0088b8
003f0fa1   88b8
003f0fa2   a094       MOVL         *+XAR4[AR0], XAR5
003f0fa3   d00a       MOVB         XAR0, #0xa
003f0fa4   fe82       SUBB         SP, #2
003f0fa5   1e94       MOVL         *+XAR4[AR0], ACC
003f0fa6   86be       MOVL         XAR2, *--SP
003f0fa7   8bbe       MOVL         XAR1, *--SP
003f0fa8   0006       LRETR        
3f0fa9:              _USER_setSysParams:
003f0fa9   d00e       MOVB         XAR0, #0xe
003f0faa   9a00       MOVB         AL, #0x0
003f0fab   28a8       MOV          AH, #0x41a0
003f0fac   41a0
003f0fad   8f40       MOVL         XAR5, #0x001388
003f0fae   1388
003f0faf   1e94       MOVL         *+XAR4[AR0], ACC
003f0fb0   d09e       MOVB         XAR0, #0x9e
003f0fb1   28a8       MOV          AH, #0x4248
003f0fb2   4248
003f0fb3   a094       MOVL         *+XAR4[AR0], XAR5
003f0fb4   d00b       MOVB         XAR0, #0xb
003f0fb5   56bf       MOVB         *+XAR4[AR0], #0x03, UNC
003f0fb6   0394
003f0fb7   d00c       MOVB         XAR0, #0xc
003f0fb8   56bf       MOVB         *+XAR4[AR0], #0x03, UNC
003f0fb9   0394
003f0fba   d026       MOVB         XAR0, #0x26
003f0fbb   56bf       MOVB         *+XAR4[AR0], #0x3c, UNC
003f0fbc   3c94
003f0fbd   d028       MOVB         XAR0, #0x28
003f0fbe   1e94       MOVL         *+XAR4[AR0], ACC
003f0fbf   0006       LRETR        
3f0fc0:              _USER_setParams:
003f0fc0   9a00       MOVB         AL, #0x0
003f0fc1   28a8       MOV          AH, #0x4348
003f0fc2   4348
003f0fc3   d008       MOVB         XAR0, #0x8
003f0fc4   1ee4       MOVL         *+XAR4[4], ACC
003f0fc5   56bf       MOVB         *+XAR4[6], #0x02, UNC
003f0fc6   02f4
003f0fc7   56bf       MOVB         *+XAR4[7], #0x01, UNC
003f0fc8   01fc
003f0fc9   28a8       MOV          AH, #0x42c8
003f0fca   42c8
003f0fcb   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f0fcc   0194
003f0fcd   d009       MOVB         XAR0, #0x9
003f0fce   56bf       MOVB         *+XAR4[AR0], #0x0f, UNC
003f0fcf   0f94
003f0fd0   d00a       MOVB         XAR0, #0xa
003f0fd1   56bf       MOVB         *+XAR4[AR0], #0x0f, UNC
003f0fd2   0f94
003f0fd3   d010       MOVB         XAR0, #0x10
003f0fd4   8f40       MOVL         XAR5, #0x001388
003f0fd5   1388
003f0fd6   1e94       MOVL         *+XAR4[AR0], ACC
003f0fd7   d012       MOVB         XAR0, #0x12
003f0fd8   28a8       MOV          AH, #0x3ba3
003f0fd9   3ba3
003f0fda   28a9       MOV          AL, #0xd70a
003f0fdb   d70a
003f0fdc   1e94       MOVL         *+XAR4[AR0], ACC
003f0fdd   d014       MOVB         XAR0, #0x14
003f0fde   ff2f       MOV          ACC, #0x7f00 << 15
003f0fdf   7f00
003f0fe0   1e94       MOVL         *+XAR4[AR0], ACC
003f0fe1   d016       MOVB         XAR0, #0x16
003f0fe2   9a00       MOVB         AL, #0x0
003f0fe3   28a8       MOV          AH, #0x41a0
003f0fe4   41a0
003f0fe5   1e94       MOVL         *+XAR4[AR0], ACC
003f0fe6   d018       MOVB         XAR0, #0x18
003f0fe7   28a8       MOV          AH, #0x4000
003f0fe8   4000
003f0fe9   1e94       MOVL         *+XAR4[AR0], ACC
003f0fea   d01a       MOVB         XAR0, #0x1a
003f0feb   28a8       MOV          AH, #0x40c0
003f0fec   40c0
003f0fed   1e94       MOVL         *+XAR4[AR0], ACC
003f0fee   d01c       MOVB         XAR0, #0x1c
003f0fef   28a8       MOV          AH, #0x42c8
003f0ff0   42c8
003f0ff1   1e94       MOVL         *+XAR4[AR0], ACC
003f0ff2   d01e       MOVB         XAR0, #0x1e
003f0ff3   1e94       MOVL         *+XAR4[AR0], ACC
003f0ff4   d020       MOVB         XAR0, #0x20
003f0ff5   ff2f       MOV          ACC, #0x7f00 << 15
003f0ff6   7f00
003f0ff7   1e94       MOVL         *+XAR4[AR0], ACC
003f0ff8   d022       MOVB         XAR0, #0x22
003f0ff9   1e94       MOVL         *+XAR4[AR0], ACC
003f0ffa   d02e       MOVB         XAR0, #0x2e
003f0ffb   28a9       MOV          AL, #0x47c9
003f0ffc   47c9
003f0ffd   28a8       MOV          AH, #0x4512
003f0ffe   4512
003f0fff   1e94       MOVL         *+XAR4[AR0], ACC
003f1000   d030       MOVB         XAR0, #0x30
003f1001   ff2f       MOV          ACC, #0x7e00 << 15
003f1002   7e00
003f1003   1e94       MOVL         *+XAR4[AR0], ACC
003f1004   d032       MOVB         XAR0, #0x32
003f1005   ff2f       MOV          ACC, #0x7f80 << 15
003f1006   7f80
003f1007   1e94       MOVL         *+XAR4[AR0], ACC
003f1008   d024       MOVB         XAR0, #0x24
003f1009   ff2f       MOV          ACC, #0x7f00 << 15
003f100a   7f00
003f100b   1e94       MOVL         *+XAR4[AR0], ACC
003f100c   d04e       MOVB         XAR0, #0x4e
003f100d   1e94       MOVL         *+XAR4[AR0], ACC
003f100e   d04c       MOVB         XAR0, #0x4c
003f100f   1e94       MOVL         *+XAR4[AR0], ACC
003f1010   d050       MOVB         XAR0, #0x50
003f1011   28a9       MOV          AL, #0xb717
003f1012   b717
003f1013   28a8       MOV          AH, #0x38d1
003f1014   38d1
003f1015   1e94       MOVL         *+XAR4[AR0], ACC
003f1016   d0a0       MOVB         XAR0, #0xa0
003f1017   0232       MOVB         ACC, #50
003f1018   a094       MOVL         *+XAR4[AR0], XAR5
003f1019   d0a2       MOVB         XAR0, #0xa2
003f101a   8f40       MOVL         XAR5, #0x00014d
003f101b   014d
003f101c   1e94       MOVL         *+XAR4[AR0], ACC
003f101d   d0a4       MOVB         XAR0, #0xa4
003f101e   28a9       MOV          AL, #0xb717
003f101f   b717
003f1020   28a8       MOV          AH, #0x3951
003f1021   3951
003f1022   a094       MOVL         *+XAR4[AR0], XAR5
003f1023   d0a6       MOVB         XAR0, #0xa6
003f1024   1e94       MOVL         *+XAR4[AR0], ACC
003f1025   0006       LRETR        
3f1026:              _USER_setMotorParams:
003f1026   d0ab       MOVB         XAR0, #0xab
003f1027   28ac       MOV          T, #0x0016
003f1028   0016
003f1029   8f7f       MOVL         XAR5, #0x3f6200
003f102a   6200
003f102b   3094       MPYXU        ACC, T, *+XAR4[AR0]
003f102c   c5a5       MOVL         XAR7, XAR5
003f102d   d034       MOVB         XAR0, #0x34
003f102e   c4a5       MOVL         XAR6, XAR5
003f102f   5601       ADDL         XAR7, ACC
003f1030   00a7
003f1031   92c7       MOV          AL, *+XAR7[0]
003f1032   9694       MOV          *+XAR4[AR0], AL
003f1033   d0ab       MOVB         XAR0, #0xab
003f1034   3094       MPYXU        ACC, T, *+XAR4[AR0]
003f1035   d035       MOVB         XAR0, #0x35
003f1036   5601       ADDL         XAR6, ACC
003f1037   00a6
003f1038   92ce       MOV          AL, *+XAR6[1]
003f1039   9694       MOV          *+XAR4[AR0], AL
003f103a   c4a5       MOVL         XAR6, XAR5
003f103b   d0ab       MOVB         XAR0, #0xab
003f103c   3094       MPYXU        ACC, T, *+XAR4[AR0]
003f103d   d00a       MOVB         XAR0, #0xa
003f103e   5601       ADDL         XAR6, ACC
003f103f   00a6
003f1040   0696       MOVL         ACC, *+XAR6[AR0]
003f1041   d036       MOVB         XAR0, #0x36
003f1042   c4a5       MOVL         XAR6, XAR5
003f1043   1e94       MOVL         *+XAR4[AR0], ACC
003f1044   d0ab       MOVB         XAR0, #0xab
003f1045   3094       MPYXU        ACC, T, *+XAR4[AR0]
003f1046   d038       MOVB         XAR0, #0x38
003f1047   5601       ADDL         XAR6, ACC
003f1048   00a6
003f1049   06d6       MOVL         ACC, *+XAR6[2]
003f104a   c4a5       MOVL         XAR6, XAR5
003f104b   1e94       MOVL         *+XAR4[AR0], ACC
003f104c   d0ab       MOVB         XAR0, #0xab
003f104d   3094       MPYXU        ACC, T, *+XAR4[AR0]
003f104e   d03a       MOVB         XAR0, #0x3a
003f104f   5601       ADDL         XAR6, ACC
003f1050   00a6
003f1051   06e6       MOVL         ACC, *+XAR6[4]
003f1052   c4a5       MOVL         XAR6, XAR5
003f1053   1e94       MOVL         *+XAR4[AR0], ACC
003f1054   d0ab       MOVB         XAR0, #0xab
003f1055   3094       MPYXU        ACC, T, *+XAR4[AR0]
003f1056   d03c       MOVB         XAR0, #0x3c
003f1057   5601       ADDL         XAR6, ACC
003f1058   00a6
003f1059   06f6       MOVL         ACC, *+XAR6[6]
003f105a   c4a5       MOVL         XAR6, XAR5
003f105b   1e94       MOVL         *+XAR4[AR0], ACC
003f105c   d0ab       MOVB         XAR0, #0xab
003f105d   3094       MPYXU        ACC, T, *+XAR4[AR0]
003f105e   d008       MOVB         XAR0, #0x8
003f105f   5601       ADDL         XAR6, ACC
003f1060   00a6
003f1061   0696       MOVL         ACC, *+XAR6[AR0]
003f1062   d03e       MOVB         XAR0, #0x3e
003f1063   c4a5       MOVL         XAR6, XAR5
003f1064   1e94       MOVL         *+XAR4[AR0], ACC
003f1065   d0ab       MOVB         XAR0, #0xab
003f1066   3094       MPYXU        ACC, T, *+XAR4[AR0]
003f1067   d00c       MOVB         XAR0, #0xc
003f1068   5601       ADDL         XAR6, ACC
003f1069   00a6
003f106a   0696       MOVL         ACC, *+XAR6[AR0]
003f106b   d04a       MOVB         XAR0, #0x4a
003f106c   c4a5       MOVL         XAR6, XAR5
003f106d   1e94       MOVL         *+XAR4[AR0], ACC
003f106e   d0ab       MOVB         XAR0, #0xab
003f106f   3094       MPYXU        ACC, T, *+XAR4[AR0]
003f1070   d00e       MOVB         XAR0, #0xe
003f1071   5601       ADDL         XAR6, ACC
003f1072   00a6
003f1073   0696       MOVL         ACC, *+XAR6[AR0]
003f1074   d042       MOVB         XAR0, #0x42
003f1075   c4a5       MOVL         XAR6, XAR5
003f1076   1e94       MOVL         *+XAR4[AR0], ACC
003f1077   d0ab       MOVB         XAR0, #0xab
003f1078   3094       MPYXU        ACC, T, *+XAR4[AR0]
003f1079   d010       MOVB         XAR0, #0x10
003f107a   5601       ADDL         XAR6, ACC
003f107b   00a6
003f107c   0696       MOVL         ACC, *+XAR6[AR0]
003f107d   d044       MOVB         XAR0, #0x44
003f107e   c4a5       MOVL         XAR6, XAR5
003f107f   1e94       MOVL         *+XAR4[AR0], ACC
003f1080   d0ab       MOVB         XAR0, #0xab
003f1081   3094       MPYXU        ACC, T, *+XAR4[AR0]
003f1082   d012       MOVB         XAR0, #0x12
003f1083   5601       ADDL         XAR6, ACC
003f1084   00a6
003f1085   0696       MOVL         ACC, *+XAR6[AR0]
003f1086   d040       MOVB         XAR0, #0x40
003f1087   1e94       MOVL         *+XAR4[AR0], ACC
003f1088   d0ab       MOVB         XAR0, #0xab
003f1089   3094       MPYXU        ACC, T, *+XAR4[AR0]
003f108a   d014       MOVB         XAR0, #0x14
003f108b   5601       ADDL         XAR5, ACC
003f108c   00a5
003f108d   0695       MOVL         ACC, *+XAR5[AR0]
003f108e   d052       MOVB         XAR0, #0x52
003f108f   1e94       MOVL         *+XAR4[AR0], ACC
003f1090   0006       LRETR        
3f1091:              _USER_setMotorIDs:
003f1091   d0ab       MOVB         XAR0, #0xab
003f1092   9694       MOV          *+XAR4[AR0], AL
003f1093   0006       LRETR        
3f1094:              _USER_setErrorCode:
003f1094   d0aa       MOVB         XAR0, #0xaa
003f1095   9694       MOV          *+XAR4[AR0], AL
003f1096   0006       LRETR        
3f1097:              _USER_setBoardParams:
003f1097   b2bd       MOVL         *SP++, XAR1
003f1098   aabd       MOVL         *SP++, XAR2
003f1099   fe02       ADDB         SP, #2
003f109a   d0ab       MOVB         XAR0, #0xab
003f109b   86a4       MOVL         XAR2, XAR4
003f109c   8d7f       MOVL         XAR1, #0x3f6378
003f109d   6378
003f109e   8aa1       MOVL         XAR4, XAR1
003f109f   0e92       MOVU         ACC, *+XAR2[AR0]
003f10a0   d0ab       MOVB         XAR0, #0xab
003f10a1   ff32       LSL          ACC, 3
003f10a2   5601       ADDL         XAR4, ACC
003f10a3   00a4
003f10a4   06c4       MOVL         ACC, *+XAR4[0]
003f10a5   8aa1       MOVL         XAR4, XAR1
003f10a6   1ec2       MOVL         *+XAR2[0], ACC
003f10a7   0e92       MOVU         ACC, *+XAR2[AR0]
003f10a8   ff32       LSL          ACC, 3
003f10a9   d040       MOVB         XAR0, #0x40
003f10aa   5601       ADDL         XAR4, ACC
003f10ab   00a4
003f10ac   06d4       MOVL         ACC, *+XAR4[2]
003f10ad   1ed2       MOVL         *+XAR2[2], ACC
003f10ae   9a00       MOVB         AL, #0x0
003f10af   28a8       MOV          AH, #0xbf00
003f10b0   bf00
003f10b1   1e42       MOVL         *-SP[2], ACC
003f10b2   0692       MOVL         ACC, *+XAR2[AR0]
003f10b3   767f       LCR          0x3fdde7
003f10b4   dde7
003f10b5   d0a8       MOVB         XAR0, #0xa8
003f10b6   8aa1       MOVL         XAR4, XAR1
003f10b7   1e92       MOVL         *+XAR2[AR0], ACC
003f10b8   d0ab       MOVB         XAR0, #0xab
003f10b9   06d2       MOVL         ACC, *+XAR2[2]
003f10ba   1e42       MOVL         *-SP[2], ACC
003f10bb   0e92       MOVU         ACC, *+XAR2[AR0]
003f10bc   ff32       LSL          ACC, 3
003f10bd   5601       ADDL         XAR4, ACC
003f10be   00a4
003f10bf   06f4       MOVL         ACC, *+XAR4[6]
003f10c0   767f       LCR          0x3fdce1
003f10c1   dce1
003f10c2   d02a       MOVB         XAR0, #0x2a
003f10c3   1e92       MOVL         *+XAR2[AR0], ACC
003f10c4   d0ab       MOVB         XAR0, #0xab
003f10c5   06c2       MOVL         ACC, *+XAR2[0]
003f10c6   1e42       MOVL         *-SP[2], ACC
003f10c7   0e92       MOVU         ACC, *+XAR2[AR0]
003f10c8   ff32       LSL          ACC, 3
003f10c9   5601       ADDL         XAR1, ACC
003f10ca   00a1
003f10cb   06e1       MOVL         ACC, *+XAR1[4]
003f10cc   767f       LCR          0x3fdce1
003f10cd   dce1
003f10ce   d02c       MOVB         XAR0, #0x2c
003f10cf   1e92       MOVL         *+XAR2[AR0], ACC
003f10d0   28a9       MOV          AL, #0x999a
003f10d1   999a
003f10d2   28a8       MOV          AH, #0x3e99
003f10d3   3e99
003f10d4   d042       MOVB         XAR0, #0x42
003f10d5   1e42       MOVL         *-SP[2], ACC
003f10d6   0692       MOVL         ACC, *+XAR2[AR0]
003f10d7   767f       LCR          0x3fdde7
003f10d8   dde7
003f10d9   c4c2       MOVL         XAR6, *+XAR2[0]
003f10da   c242       MOVL         *-SP[2], XAR6
003f10db   767f       LCR          0x3fdce1
003f10dc   dce1
003f10dd   1ea6       MOVL         XAR6, ACC
003f10de   28a9       MOV          AL, #0x8000
003f10df   8000
003f10e0   28a8       MOV          AH, #0x43a6
003f10e1   43a6
003f10e2   1e42       MOVL         *-SP[2], ACC
003f10e3   06a6       MOVL         ACC, XAR6
003f10e4   767f       LCR          0x3fdce1
003f10e5   dce1
003f10e6   d048       MOVB         XAR0, #0x48
003f10e7   1e92       MOVL         *+XAR2[AR0], ACC
003f10e8   d042       MOVB         XAR0, #0x42
003f10e9   06c2       MOVL         ACC, *+XAR2[0]
003f10ea   1e42       MOVL         *-SP[2], ACC
003f10eb   0692       MOVL         ACC, *+XAR2[AR0]
003f10ec   767f       LCR          0x3fdce1
003f10ed   dce1
003f10ee   1ea6       MOVL         XAR6, ACC
003f10ef   28a9       MOV          AL, #0x8000
003f10f0   8000
003f10f1   28a8       MOV          AH, #0x43a6
003f10f2   43a6
003f10f3   1e42       MOVL         *-SP[2], ACC
003f10f4   06a6       MOVL         ACC, XAR6
003f10f5   767f       LCR          0x3fdce1
003f10f6   dce1
003f10f7   d046       MOVB         XAR0, #0x46
003f10f8   1e92       MOVL         *+XAR2[AR0], ACC
003f10f9   fe82       SUBB         SP, #2
003f10fa   86be       MOVL         XAR2, *--SP
003f10fb   8bbe       MOVL         XAR1, *--SP
003f10fc   0006       LRETR        
3f10fd:              _USER_getErrorCode:
003f10fd   d0aa       MOVB         XAR0, #0xaa
003f10fe   9294       MOV          AL, *+XAR4[AR0]
003f10ff   0006       LRETR        
3f1100:              _USER_computeTorque_lbin:
003f1100   b2bd       MOVL         *SP++, XAR1
003f1101   aabd       MOVL         *SP++, XAR2
003f1102   a2bd       MOVL         *SP++, XAR3
003f1103   fe08       ADDB         SP, #8
003f1104   d018       MOVB         XAR0, #0x18
003f1105   8ba4       MOVL         XAR1, XAR4
003f1106   1e42       MOVL         *-SP[2], ACC
003f1107   0652       MOVL         ACC, *-SP[18]
003f1108   1e44       MOVL         *-SP[4], ACC
003f1109   8a91       MOVL         XAR4, *+XAR1[AR0]
003f110a   767f       LCR          0x3fd090
003f110b   d090
003f110c   d020       MOVB         XAR0, #0x20
003f110d   1e46       MOVL         *-SP[6], ACC
003f110e   8a91       MOVL         XAR4, *+XAR1[AR0]
003f110f   d00a       MOVB         XAR0, #0xa
003f1110   8294       MOVL         XAR3, *+XAR4[AR0]
003f1111   d032       MOVB         XAR0, #0x32
003f1112   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1113   d00a       MOVB         XAR0, #0xa
003f1114   8694       MOVL         XAR2, *+XAR4[AR0]
003f1115   d018       MOVB         XAR0, #0x18
003f1116   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1117   767f       LCR          0x3fcfae
003f1118   cfae
003f1119   d018       MOVB         XAR0, #0x18
003f111a   1e48       MOVL         *-SP[8], ACC
003f111b   8a91       MOVL         XAR4, *+XAR1[AR0]
003f111c   767f       LCR          0x3fcfd5
003f111d   cfd5
003f111e   c448       MOVL         XAR6, *-SP[8]
003f111f   3b01       SETC         SXM
003f1120   8746       MOVL         XT, *-SP[6]
003f1121   03a6       SUBL         ACC, XAR6
003f1122   5605       IMPYL        P, XT, XAR2
003f1123   00a2
003f1124   ff45       SFR          ACC, 6
003f1125   8746       MOVL         XT, *-SP[6]
003f1126   c442       MOVL         XAR6, *-SP[2]
003f1127   1ea7       MOVL         XAR7, ACC
003f1128   5663       QMPYL        ACC, XT, XAR2
003f1129   00a2
003f112a   56a7       LSL64        ACC:P, 8
003f112b   1eac       MOVL         XT, ACC
003f112c   0642       MOVL         ACC, *-SP[2]
003f112d   5605       IMPYL        P, XT, XAR6
003f112e   00a6
003f112f   5663       QMPYL        ACC, XT, ACC
003f1130   00a9
003f1131   87a7       MOVL         XT, XAR7
003f1132   56a7       LSL64        ACC:P, 8
003f1133   c544       MOVL         XAR7, *-SP[4]
003f1134   1ea6       MOVL         XAR6, ACC
003f1135   5605       IMPYL        P, XT, XAR3
003f1136   00a3
003f1137   5663       QMPYL        ACC, XT, XAR3
003f1138   00a3
003f1139   56a7       LSL64        ACC:P, 8
003f113a   1eac       MOVL         XT, ACC
003f113b   5605       IMPYL        P, XT, XAR2
003f113c   00a2
003f113d   5663       QMPYL        ACC, XT, XAR2
003f113e   00a2
003f113f   56a7       LSL64        ACC:P, 8
003f1140   1eac       MOVL         XT, ACC
003f1141   0644       MOVL         ACC, *-SP[4]
003f1142   5605       IMPYL        P, XT, XAR7
003f1143   00a7
003f1144   5663       QMPYL        ACC, XT, ACC
003f1145   00a9
003f1146   56a7       LSL64        ACC:P, 8
003f1147   07a6       ADDL         ACC, XAR6
003f1148   1eac       MOVL         XT, ACC
003f1149   fe88       SUBB         SP, #8
003f114a   28a9       MOV          AL, #0xca80
003f114b   ca80
003f114c   28a8       MOV          AH, #0x08d9
003f114d   08d9
003f114e   5605       IMPYL        P, XT, ACC
003f114f   00a9
003f1150   5663       QMPYL        ACC, XT, ACC
003f1151   00a9
003f1152   82be       MOVL         XAR3, *--SP
003f1153   56a7       LSL64        ACC:P, 8
003f1154   86be       MOVL         XAR2, *--SP
003f1155   8bbe       MOVL         XAR1, *--SP
003f1156   0006       LRETR        
3f1157:              _USER_computeTorque_Nm:
003f1157   b2bd       MOVL         *SP++, XAR1
003f1158   aabd       MOVL         *SP++, XAR2
003f1159   a2bd       MOVL         *SP++, XAR3
003f115a   fe08       ADDB         SP, #8
003f115b   d018       MOVB         XAR0, #0x18
003f115c   8ba4       MOVL         XAR1, XAR4
003f115d   1e42       MOVL         *-SP[2], ACC
003f115e   0652       MOVL         ACC, *-SP[18]
003f115f   1e44       MOVL         *-SP[4], ACC
003f1160   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1161   767f       LCR          0x3fd090
003f1162   d090
003f1163   d020       MOVB         XAR0, #0x20
003f1164   1e46       MOVL         *-SP[6], ACC
003f1165   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1166   d00a       MOVB         XAR0, #0xa
003f1167   8294       MOVL         XAR3, *+XAR4[AR0]
003f1168   d032       MOVB         XAR0, #0x32
003f1169   8a91       MOVL         XAR4, *+XAR1[AR0]
003f116a   d00a       MOVB         XAR0, #0xa
003f116b   8694       MOVL         XAR2, *+XAR4[AR0]
003f116c   d018       MOVB         XAR0, #0x18
003f116d   8a91       MOVL         XAR4, *+XAR1[AR0]
003f116e   767f       LCR          0x3fcfae
003f116f   cfae
003f1170   d018       MOVB         XAR0, #0x18
003f1171   1e48       MOVL         *-SP[8], ACC
003f1172   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1173   767f       LCR          0x3fcfd5
003f1174   cfd5
003f1175   c448       MOVL         XAR6, *-SP[8]
003f1176   3b01       SETC         SXM
003f1177   8746       MOVL         XT, *-SP[6]
003f1178   03a6       SUBL         ACC, XAR6
003f1179   5605       IMPYL        P, XT, XAR2
003f117a   00a2
003f117b   ff45       SFR          ACC, 6
003f117c   8746       MOVL         XT, *-SP[6]
003f117d   c442       MOVL         XAR6, *-SP[2]
003f117e   1ea7       MOVL         XAR7, ACC
003f117f   5663       QMPYL        ACC, XT, XAR2
003f1180   00a2
003f1181   56a7       LSL64        ACC:P, 8
003f1182   1eac       MOVL         XT, ACC
003f1183   0642       MOVL         ACC, *-SP[2]
003f1184   5605       IMPYL        P, XT, XAR6
003f1185   00a6
003f1186   5663       QMPYL        ACC, XT, ACC
003f1187   00a9
003f1188   87a7       MOVL         XT, XAR7
003f1189   56a7       LSL64        ACC:P, 8
003f118a   c544       MOVL         XAR7, *-SP[4]
003f118b   1ea6       MOVL         XAR6, ACC
003f118c   5605       IMPYL        P, XT, XAR3
003f118d   00a3
003f118e   5663       QMPYL        ACC, XT, XAR3
003f118f   00a3
003f1190   56a7       LSL64        ACC:P, 8
003f1191   fe88       SUBB         SP, #8
003f1192   1eac       MOVL         XT, ACC
003f1193   5605       IMPYL        P, XT, XAR2
003f1194   00a2
003f1195   5663       QMPYL        ACC, XT, XAR2
003f1196   00a2
003f1197   82be       MOVL         XAR3, *--SP
003f1198   56a7       LSL64        ACC:P, 8
003f1199   1eac       MOVL         XT, ACC
003f119a   86be       MOVL         XAR2, *--SP
003f119b   5605       IMPYL        P, XT, XAR7
003f119c   00a7
003f119d   5663       QMPYL        ACC, XT, XAR7
003f119e   00a7
003f119f   56a7       LSL64        ACC:P, 8
003f11a0   8bbe       MOVL         XAR1, *--SP
003f11a1   07a6       ADDL         ACC, XAR6
003f11a2   0006       LRETR        
3f11a3:              _USER_computeTorque_Ls_Id_Iq_pu_to_Nm_sf:
003f11a3   b2bd       MOVL         *SP++, XAR1
003f11a4   aabd       MOVL         *SP++, XAR2
003f11a5   a2bd       MOVL         *SP++, XAR3
003f11a6   fe0e       ADDB         SP, #14
003f11a7   82a4       MOVL         XAR3, XAR4
003f11a8   8bc3       MOVL         XAR1, *+XAR3[0]
003f11a9   28a9       MOV          AL, #0x47c9
003f11aa   47c9
003f11ab   28a8       MOV          AH, #0x4512
003f11ac   4512
003f11ad   1e42       MOVL         *-SP[2], ACC
003f11ae   b2a9       MOVL         ACC, XAR1
003f11af   767f       LCR          0x3fdde7
003f11b0   dde7
003f11b1   1e42       MOVL         *-SP[2], ACC
003f11b2   06d3       MOVL         ACC, *+XAR3[2]
003f11b3   767f       LCR          0x3fdce1
003f11b4   dce1
003f11b5   1ea6       MOVL         XAR6, ACC
003f11b6   1e4e       MOVL         *-SP[14], ACC
003f11b7   28a9       MOV          AL, #0x3333
003f11b8   3333
003f11b9   28a8       MOV          AH, #0x3f33
003f11ba   3f33
003f11bb   1e42       MOVL         *-SP[2], ACC
003f11bc   06a6       MOVL         ACC, XAR6
003f11bd   767f       LCR          0x3fdde7
003f11be   dde7
003f11bf   d03c       MOVB         XAR0, #0x3c
003f11c0   1e42       MOVL         *-SP[2], ACC
003f11c1   0693       MOVL         ACC, *+XAR3[AR0]
003f11c2   767f       LCR          0x3fdce1
003f11c3   dce1
003f11c4   767f       LCR          0x3fda88
003f11c5   da88
003f11c6   86a9       MOVL         XAR2, ACC
003f11c7   9a00       MOVB         AL, #0x0
003f11c8   28a8       MOV          AH, #0x4000
003f11c9   4000
003f11ca   767f       LCR          0x3fda88
003f11cb   da88
003f11cc   1e42       MOVL         *-SP[2], ACC
003f11cd   aaa9       MOVL         ACC, XAR2
003f11ce   767f       LCR          0x3fdce1
003f11cf   dce1
003f11d0   5cad       MOVZ         AR4, SP
003f11d1   dc84       SUBB         XAR4, #4
003f11d2   767f       LCR          0x3fde82
003f11d3   de82
003f11d4   1ea6       MOVL         XAR6, ACC
003f11d5   9a00       MOVB         AL, #0x0
003f11d6   9b00       MOVB         AH, #0x0
003f11d7   1e42       MOVL         *-SP[2], ACC
003f11d8   06a6       MOVL         ACC, XAR6
003f11d9   767f       LCR          0x3fdf2b
003f11da   df2b
003f11db   5200       CMPB         AL, #0x0
003f11dc   6203       SB           3, GT
003f11dd   8644       MOVL         XAR2, *-SP[4]
003f11de   6f08       SB           8, UNC
3f11df:              $C$L3:
003f11df   ff2f       MOV          ACC, #0x7f00 << 15
003f11e0   7f00
003f11e1   1e42       MOVL         *-SP[2], ACC
003f11e2   0644       MOVL         ACC, *-SP[4]
003f11e3   767f       LCR          0x3fdeb8
003f11e4   deb8
003f11e5   86a9       MOVL         XAR2, ACC
3f11e6:              $C$L4:
003f11e6   b242       MOVL         *-SP[2], XAR1
003f11e7   064e       MOVL         ACC, *-SP[14]
003f11e8   767f       LCR          0x3fdde7
003f11e9   dde7
003f11ea   b242       MOVL         *-SP[2], XAR1
003f11eb   767f       LCR          0x3fdde7
003f11ec   dde7
003f11ed   d035       MOVB         XAR0, #0x35
003f11ee   8ba9       MOVL         XAR1, ACC
003f11ef   9293       MOV          AL, *+XAR3[AR0]
003f11f0   767f       LCR          0x3ff8bd
003f11f1   f8bd
003f11f2   1e42       MOVL         *-SP[2], ACC
003f11f3   b2a9       MOVL         ACC, XAR1
003f11f4   767f       LCR          0x3fdde7
003f11f5   dde7
003f11f6   1ea6       MOVL         XAR6, ACC
003f11f7   ff2f       MOV          ACC, #0x7f80 << 15
003f11f8   7f80
003f11f9   1e42       MOVL         *-SP[2], ACC
003f11fa   06a6       MOVL         ACC, XAR6
003f11fb   767f       LCR          0x3fdde7
003f11fc   dde7
003f11fd   aa42       MOVL         *-SP[2], XAR2
003f11fe   8ba9       MOVL         XAR1, ACC
003f11ff   9a00       MOVB         AL, #0x0
003f1200   28a8       MOV          AH, #0x4000
003f1201   4000
003f1202   767f       LCR          0x3fdd64
003f1203   dd64
003f1204   1e42       MOVL         *-SP[2], ACC
003f1205   b2a9       MOVL         ACC, XAR1
003f1206   767f       LCR          0x3fdde7
003f1207   dde7
003f1208   88ad       MOVZ         AR6, SP
003f1209   de8c       SUBB         XAR6, #12
003f120a   767f       LCR          0x3fdfb7
003f120b   dfb7
003f120c   5cad       MOVZ         AR4, SP
003f120d   88ad       MOVZ         AR6, SP
003f120e   8f7f       MOVL         XAR5, #0x3f63e4
003f120f   63e4
003f1210   dc8c       SUBB         XAR4, #12
003f1211   de88       SUBB         XAR6, #8
003f1212   767f       LCR          0x3fdc5e
003f1213   dc5e
003f1214   5cad       MOVZ         AR4, SP
003f1215   dc88       SUBB         XAR4, #8
003f1216   767f       LCR          0x3fdf7b
003f1217   df7b
003f1218   fe8e       SUBB         SP, #14
003f1219   82be       MOVL         XAR3, *--SP
003f121a   86be       MOVL         XAR2, *--SP
003f121b   8bbe       MOVL         XAR1, *--SP
003f121c   0006       LRETR        
3f121d:              _USER_computeTorque_Flux_Iq_pu_to_Nm_sf:
003f121d   b2bd       MOVL         *SP++, XAR1
003f121e   aabd       MOVL         *SP++, XAR2
003f121f   a2bd       MOVL         *SP++, XAR3
003f1220   fe0c       ADDB         SP, #12
003f1221   d034       MOVB         XAR0, #0x34
003f1222   82a4       MOVL         XAR3, XAR4
003f1223   9293       MOV          AL, *+XAR3[AR0]
003f1224   86c3       MOVL         XAR2, *+XAR3[0]
003f1225   ec06       SBF          6, EQ
003f1226   28a9       MOV          AL, #0x3333
003f1227   3333
003f1228   28a8       MOV          AH, #0x3f33
003f1229   3f33
003f122a   6f05       SB           5, UNC
3f122b:              $C$L5:
003f122b   28a9       MOV          AL, #0xcccd
003f122c   cccd
003f122d   28a8       MOV          AH, #0x3d4c
003f122e   3d4c
3f122f:              $C$L6:
003f122f   1e42       MOVL         *-SP[2], ACC
003f1230   d036       MOVB         XAR0, #0x36
003f1231   0693       MOVL         ACC, *+XAR3[AR0]
003f1232   767f       LCR          0x3fdde7
003f1233   dde7
003f1234   1e42       MOVL         *-SP[2], ACC
003f1235   28a9       MOV          AL, #0x51ec
003f1236   51ec
003f1237   28a8       MOV          AH, #0x3db8
003f1238   3db8
003f1239   767f       LCR          0x3fdce1
003f123a   dce1
003f123b   767f       LCR          0x3fda88
003f123c   da88
003f123d   8ba9       MOVL         XAR1, ACC
003f123e   9a00       MOVB         AL, #0x0
003f123f   28a8       MOV          AH, #0x4000
003f1240   4000
003f1241   767f       LCR          0x3fda88
003f1242   da88
003f1243   1e42       MOVL         *-SP[2], ACC
003f1244   b2a9       MOVL         ACC, XAR1
003f1245   767f       LCR          0x3fdce1
003f1246   dce1
003f1247   5cad       MOVZ         AR4, SP
003f1248   dc84       SUBB         XAR4, #4
003f1249   767f       LCR          0x3fde82
003f124a   de82
003f124b   1ea6       MOVL         XAR6, ACC
003f124c   9a00       MOVB         AL, #0x0
003f124d   9b00       MOVB         AH, #0x0
003f124e   1e42       MOVL         *-SP[2], ACC
003f124f   06a6       MOVL         ACC, XAR6
003f1250   767f       LCR          0x3fdf2b
003f1251   df2b
003f1252   5200       CMPB         AL, #0x0
003f1253   6203       SB           3, GT
003f1254   8b44       MOVL         XAR1, *-SP[4]
003f1255   6f08       SB           8, UNC
3f1256:              $C$L7:
003f1256   ff2f       MOV          ACC, #0x7f00 << 15
003f1257   7f00
003f1258   1e42       MOVL         *-SP[2], ACC
003f1259   0644       MOVL         ACC, *-SP[4]
003f125a   767f       LCR          0x3fdeb8
003f125b   deb8
003f125c   8ba9       MOVL         XAR1, ACC
3f125d:              $C$L8:
003f125d   28a9       MOV          AL, #0xaefb
003f125e   aefb
003f125f   28a8       MOV          AH, #0x3c6a
003f1260   3c6a
003f1261   1e42       MOVL         *-SP[2], ACC
003f1262   aaa9       MOVL         ACC, XAR2
003f1263   767f       LCR          0x3fdde7
003f1264   dde7
003f1265   d035       MOVB         XAR0, #0x35
003f1266   86a9       MOVL         XAR2, ACC
003f1267   9293       MOV          AL, *+XAR3[AR0]
003f1268   767f       LCR          0x3ff8bd
003f1269   f8bd
003f126a   1e42       MOVL         *-SP[2], ACC
003f126b   aaa9       MOVL         ACC, XAR2
003f126c   767f       LCR          0x3fdde7
003f126d   dde7
003f126e   1ea6       MOVL         XAR6, ACC
003f126f   ff2f       MOV          ACC, #0x7f80 << 15
003f1270   7f80
003f1271   1e42       MOVL         *-SP[2], ACC
003f1272   06a6       MOVL         ACC, XAR6
003f1273   767f       LCR          0x3fdde7
003f1274   dde7
003f1275   86a9       MOVL         XAR2, ACC
003f1276   b2a9       MOVL         ACC, XAR1
003f1277   767f       LCR          0x3fff4d
003f1278   ff4d
003f1279   1e42       MOVL         *-SP[2], ACC
003f127a   9a00       MOVB         AL, #0x0
003f127b   28a8       MOV          AH, #0x4000
003f127c   4000
003f127d   767f       LCR          0x3fdd64
003f127e   dd64
003f127f   1e42       MOVL         *-SP[2], ACC
003f1280   aaa9       MOVL         ACC, XAR2
003f1281   767f       LCR          0x3fdde7
003f1282   dde7
003f1283   88ad       MOVZ         AR6, SP
003f1284   de8c       SUBB         XAR6, #12
003f1285   767f       LCR          0x3fdfb7
003f1286   dfb7
003f1287   5cad       MOVZ         AR4, SP
003f1288   88ad       MOVZ         AR6, SP
003f1289   8f7f       MOVL         XAR5, #0x3f63e4
003f128a   63e4
003f128b   dc8c       SUBB         XAR4, #12
003f128c   de88       SUBB         XAR6, #8
003f128d   767f       LCR          0x3fdc5e
003f128e   dc5e
003f128f   5cad       MOVZ         AR4, SP
003f1290   dc88       SUBB         XAR4, #8
003f1291   767f       LCR          0x3fdf7b
003f1292   df7b
003f1293   fe8c       SUBB         SP, #12
003f1294   82be       MOVL         XAR3, *--SP
003f1295   86be       MOVL         XAR2, *--SP
003f1296   8bbe       MOVL         XAR1, *--SP
003f1297   0006       LRETR        
3f1298:              _USER_computeFlux_pu_to_Wb_sf:
003f1298   b2bd       MOVL         *SP++, XAR1
003f1299   fe0c       ADDB         SP, #12
003f129a   d034       MOVB         XAR0, #0x34
003f129b   9294       MOV          AL, *+XAR4[AR0]
003f129c   ec06       SBF          6, EQ
003f129d   28a9       MOV          AL, #0x3333
003f129e   3333
003f129f   28a8       MOV          AH, #0x3f33
003f12a0   3f33
003f12a1   6f05       SB           5, UNC
3f12a2:              $C$L9:
003f12a2   28a9       MOV          AL, #0xcccd
003f12a3   cccd
003f12a4   28a8       MOV          AH, #0x3d4c
003f12a5   3d4c
3f12a6:              $C$L10:
003f12a6   1e42       MOVL         *-SP[2], ACC
003f12a7   d036       MOVB         XAR0, #0x36
003f12a8   0694       MOVL         ACC, *+XAR4[AR0]
003f12a9   767f       LCR          0x3fdde7
003f12aa   dde7
003f12ab   1e42       MOVL         *-SP[2], ACC
003f12ac   28a9       MOV          AL, #0x51ec
003f12ad   51ec
003f12ae   28a8       MOV          AH, #0x3db8
003f12af   3db8
003f12b0   767f       LCR          0x3fdce1
003f12b1   dce1
003f12b2   767f       LCR          0x3fda88
003f12b3   da88
003f12b4   8ba9       MOVL         XAR1, ACC
003f12b5   9a00       MOVB         AL, #0x0
003f12b6   28a8       MOV          AH, #0x4000
003f12b7   4000
003f12b8   767f       LCR          0x3fda88
003f12b9   da88
003f12ba   1e42       MOVL         *-SP[2], ACC
003f12bb   b2a9       MOVL         ACC, XAR1
003f12bc   767f       LCR          0x3fdce1
003f12bd   dce1
003f12be   5cad       MOVZ         AR4, SP
003f12bf   dc84       SUBB         XAR4, #4
003f12c0   767f       LCR          0x3fde82
003f12c1   de82
003f12c2   1ea6       MOVL         XAR6, ACC
003f12c3   9a00       MOVB         AL, #0x0
003f12c4   9b00       MOVB         AH, #0x0
003f12c5   1e42       MOVL         *-SP[2], ACC
003f12c6   06a6       MOVL         ACC, XAR6
003f12c7   767f       LCR          0x3fdf2b
003f12c8   df2b
003f12c9   5200       CMPB         AL, #0x0
003f12ca   6203       SB           3, GT
003f12cb   0644       MOVL         ACC, *-SP[4]
003f12cc   6f07       SB           7, UNC
3f12cd:              $C$L11:
003f12cd   ff2f       MOV          ACC, #0x7f00 << 15
003f12ce   7f00
003f12cf   1e42       MOVL         *-SP[2], ACC
003f12d0   0644       MOVL         ACC, *-SP[4]
003f12d1   767f       LCR          0x3fdeb8
003f12d2   deb8
3f12d3:              $C$L12:
003f12d3   767f       LCR          0x3fff4d
003f12d4   ff4d
003f12d5   1e42       MOVL         *-SP[2], ACC
003f12d6   9a00       MOVB         AL, #0x0
003f12d7   28a8       MOV          AH, #0x4000
003f12d8   4000
003f12d9   767f       LCR          0x3fdd64
003f12da   dd64
003f12db   1ea6       MOVL         XAR6, ACC
003f12dc   28a9       MOV          AL, #0xaefb
003f12dd   aefb
003f12de   28a8       MOV          AH, #0x3c6a
003f12df   3c6a
003f12e0   1e42       MOVL         *-SP[2], ACC
003f12e1   06a6       MOVL         ACC, XAR6
003f12e2   767f       LCR          0x3fdde7
003f12e3   dde7
003f12e4   88ad       MOVZ         AR6, SP
003f12e5   de8c       SUBB         XAR6, #12
003f12e6   767f       LCR          0x3fdfb7
003f12e7   dfb7
003f12e8   5cad       MOVZ         AR4, SP
003f12e9   88ad       MOVZ         AR6, SP
003f12ea   8f7f       MOVL         XAR5, #0x3f63e4
003f12eb   63e4
003f12ec   dc8c       SUBB         XAR4, #12
003f12ed   de88       SUBB         XAR6, #8
003f12ee   767f       LCR          0x3fdc5e
003f12ef   dc5e
003f12f0   5cad       MOVZ         AR4, SP
003f12f1   dc88       SUBB         XAR4, #8
003f12f2   767f       LCR          0x3fdf7b
003f12f3   df7b
003f12f4   fe8c       SUBB         SP, #12
003f12f5   8bbe       MOVL         XAR1, *--SP
003f12f6   0006       LRETR        
3f12f7:              _USER_computeFlux_pu_to_VpHz_sf:
003f12f7   b2bd       MOVL         *SP++, XAR1
003f12f8   fe0c       ADDB         SP, #12
003f12f9   d034       MOVB         XAR0, #0x34
003f12fa   9294       MOV          AL, *+XAR4[AR0]
003f12fb   ec06       SBF          6, EQ
003f12fc   28a9       MOV          AL, #0x3333
003f12fd   3333
003f12fe   28a8       MOV          AH, #0x3f33
003f12ff   3f33
003f1300   6f05       SB           5, UNC
3f1301:              $C$L13:
003f1301   28a9       MOV          AL, #0xcccd
003f1302   cccd
003f1303   28a8       MOV          AH, #0x3d4c
003f1304   3d4c
3f1305:              $C$L14:
003f1305   1e42       MOVL         *-SP[2], ACC
003f1306   d036       MOVB         XAR0, #0x36
003f1307   0694       MOVL         ACC, *+XAR4[AR0]
003f1308   767f       LCR          0x3fdde7
003f1309   dde7
003f130a   1e42       MOVL         *-SP[2], ACC
003f130b   28a9       MOV          AL, #0x51ec
003f130c   51ec
003f130d   28a8       MOV          AH, #0x3db8
003f130e   3db8
003f130f   767f       LCR          0x3fdce1
003f1310   dce1
003f1311   767f       LCR          0x3fda88
003f1312   da88
003f1313   8ba9       MOVL         XAR1, ACC
003f1314   9a00       MOVB         AL, #0x0
003f1315   28a8       MOV          AH, #0x4000
003f1316   4000
003f1317   767f       LCR          0x3fda88
003f1318   da88
003f1319   1e42       MOVL         *-SP[2], ACC
003f131a   b2a9       MOVL         ACC, XAR1
003f131b   767f       LCR          0x3fdce1
003f131c   dce1
003f131d   5cad       MOVZ         AR4, SP
003f131e   dc84       SUBB         XAR4, #4
003f131f   767f       LCR          0x3fde82
003f1320   de82
003f1321   1ea6       MOVL         XAR6, ACC
003f1322   9a00       MOVB         AL, #0x0
003f1323   9b00       MOVB         AH, #0x0
003f1324   1e42       MOVL         *-SP[2], ACC
003f1325   06a6       MOVL         ACC, XAR6
003f1326   767f       LCR          0x3fdf2b
003f1327   df2b
003f1328   5200       CMPB         AL, #0x0
003f1329   6203       SB           3, GT
003f132a   0644       MOVL         ACC, *-SP[4]
003f132b   6f07       SB           7, UNC
3f132c:              $C$L15:
003f132c   ff2f       MOV          ACC, #0x7f00 << 15
003f132d   7f00
003f132e   1e42       MOVL         *-SP[2], ACC
003f132f   0644       MOVL         ACC, *-SP[4]
003f1330   767f       LCR          0x3fdeb8
003f1331   deb8
3f1332:              $C$L16:
003f1332   767f       LCR          0x3fff4d
003f1333   ff4d
003f1334   1e42       MOVL         *-SP[2], ACC
003f1335   9a00       MOVB         AL, #0x0
003f1336   28a8       MOV          AH, #0x4000
003f1337   4000
003f1338   767f       LCR          0x3fdd64
003f1339   dd64
003f133a   1ea6       MOVL         XAR6, ACC
003f133b   28a9       MOV          AL, #0x51ec
003f133c   51ec
003f133d   28a8       MOV          AH, #0x3db8
003f133e   3db8
003f133f   1e42       MOVL         *-SP[2], ACC
003f1340   06a6       MOVL         ACC, XAR6
003f1341   767f       LCR          0x3fdde7
003f1342   dde7
003f1343   88ad       MOVZ         AR6, SP
003f1344   de8c       SUBB         XAR6, #12
003f1345   767f       LCR          0x3fdfb7
003f1346   dfb7
003f1347   5cad       MOVZ         AR4, SP
003f1348   88ad       MOVZ         AR6, SP
003f1349   8f7f       MOVL         XAR5, #0x3f63e4
003f134a   63e4
003f134b   dc8c       SUBB         XAR4, #12
003f134c   de88       SUBB         XAR6, #8
003f134d   767f       LCR          0x3fdc5e
003f134e   dc5e
003f134f   5cad       MOVZ         AR4, SP
003f1350   dc88       SUBB         XAR4, #8
003f1351   767f       LCR          0x3fdf7b
003f1352   df7b
003f1353   fe8c       SUBB         SP, #12
003f1354   8bbe       MOVL         XAR1, *--SP
003f1355   0006       LRETR        
3f1356:              _USER_computeFlux:
003f1356   b2bd       MOVL         *SP++, XAR1
003f1357   d018       MOVB         XAR0, #0x18
003f1358   8ba9       MOVL         XAR1, ACC
003f1359   8a94       MOVL         XAR4, *+XAR4[AR0]
003f135a   767f       LCR          0x3fd090
003f135b   d090
003f135c   1eac       MOVL         XT, ACC
003f135d   5605       IMPYL        P, XT, XAR1
003f135e   00a1
003f135f   5663       QMPYL        ACC, XT, XAR1
003f1360   00a1
003f1361   8bbe       MOVL         XAR1, *--SP
003f1362   56a7       LSL64        ACC:P, 8
003f1363   0006       LRETR        
3f1364:              _USER_checkForErrors:
003f1364   b2bd       MOVL         *SP++, XAR1
003f1365   aabd       MOVL         *SP++, XAR2
003f1366   a2bd       MOVL         *SP++, XAR3
003f1367   fe04       ADDB         SP, #4
003f1368   9a00       MOVB         AL, #0x0
003f1369   767f       LCR          0x3f1094
003f136a   1094
003f136b   8ba4       MOVL         XAR1, XAR4
003f136c   86c1       MOVL         XAR2, *+XAR1[0]
003f136d   9b00       MOVB         AH, #0x0
003f136e   9a00       MOVB         AL, #0x0
003f136f   1e42       MOVL         *-SP[2], ACC
003f1370   aaa9       MOVL         ACC, XAR2
003f1371   767f       LCR          0x3fdf2b
003f1372   df2b
003f1373   5200       CMPB         AL, #0x0
003f1374   6542       SB           66, LEQ
003f1375   d040       MOVB         XAR0, #0x40
003f1376   8291       MOVL         XAR3, *+XAR1[AR0]
003f1377   28a9       MOV          AL, #0xd70a
003f1378   d70a
003f1379   28a8       MOV          AH, #0x3ca3
003f137a   3ca3
003f137b   1e42       MOVL         *-SP[2], ACC
003f137c   a2a9       MOVL         ACC, XAR3
003f137d   767f       LCR          0x3fdde7
003f137e   dde7
003f137f   1ea6       MOVL         XAR6, ACC
003f1380   9a00       MOVB         AL, #0x0
003f1381   28a8       MOV          AH, #0x4348
003f1382   4348
003f1383   1e42       MOVL         *-SP[2], ACC
003f1384   06a6       MOVL         ACC, XAR6
003f1385   767f       LCR          0x3fdde7
003f1386   dde7
003f1387   1ea6       MOVL         XAR6, ACC
003f1388   ff2f       MOV          ACC, #0x7800 << 15
003f1389   7800
003f138a   1e42       MOVL         *-SP[2], ACC
003f138b   06a6       MOVL         ACC, XAR6
003f138c   767f       LCR          0x3fdde7
003f138d   dde7
003f138e   1e42       MOVL         *-SP[2], ACC
003f138f   aaa9       MOVL         ACC, XAR2
003f1390   767f       LCR          0x3fdf2b
003f1391   df2b
003f1392   5200       CMPB         AL, #0x0
003f1393   6523       SB           35, LEQ
003f1394   a242       MOVL         *-SP[2], XAR3
003f1395   a2a9       MOVL         ACC, XAR3
003f1396   767f       LCR          0x3fdeb8
003f1397   deb8
003f1398   1ea6       MOVL         XAR6, ACC
003f1399   9a00       MOVB         AL, #0x0
003f139a   28a8       MOV          AH, #0x4348
003f139b   4348
003f139c   1e42       MOVL         *-SP[2], ACC
003f139d   06a6       MOVL         ACC, XAR6
003f139e   767f       LCR          0x3fdde7
003f139f   dde7
003f13a0   1ea6       MOVL         XAR6, ACC
003f13a1   28a9       MOV          AL, #0xb717
003f13a2   b717
003f13a3   28a8       MOV          AH, #0x3951
003f13a4   3951
003f13a5   1e42       MOVL         *-SP[2], ACC
003f13a6   06a6       MOVL         ACC, XAR6
003f13a7   767f       LCR          0x3fdde7
003f13a8   dde7
003f13a9   1ea6       MOVL         XAR6, ACC
003f13aa   ff2f       MOV          ACC, #0x7800 << 15
003f13ab   7800
003f13ac   1e42       MOVL         *-SP[2], ACC
003f13ad   06a6       MOVL         ACC, XAR6
003f13ae   767f       LCR          0x3fdde7
003f13af   dde7
003f13b0   1e42       MOVL         *-SP[2], ACC
003f13b1   aaa9       MOVL         ACC, XAR2
003f13b2   767f       LCR          0x3fdf2b
003f13b3   df2b
003f13b4   5200       CMPB         AL, #0x0
003f13b5   6206       SB           6, GT
3f13b6:              $C$L17:
003f13b6   9a02       MOVB         AL, #0x2
003f13b7   8aa1       MOVL         XAR4, XAR1
003f13b8   767f       LCR          0x3f1094
003f13b9   1094
003f13ba   86c1       MOVL         XAR2, *+XAR1[0]
3f13bb:              $C$L18:
003f13bb   d04a       MOVB         XAR0, #0x4a
003f13bc   0691       MOVL         ACC, *+XAR1[AR0]
003f13bd   1e42       MOVL         *-SP[2], ACC
003f13be   aaa9       MOVL         ACC, XAR2
003f13bf   767f       LCR          0x3fdf2b
003f13c0   df2b
003f13c1   5200       CMPB         AL, #0x0
003f13c2   6419       SB           25, LT
003f13c3   d042       MOVB         XAR0, #0x42
003f13c4   0691       MOVL         ACC, *+XAR1[AR0]
003f13c5   1e42       MOVL         *-SP[2], ACC
003f13c6   aaa9       MOVL         ACC, XAR2
003f13c7   767f       LCR          0x3fdf2b
003f13c8   df2b
003f13c9   5200       CMPB         AL, #0x0
003f13ca   6411       SB           17, LT
003f13cb   d044       MOVB         XAR0, #0x44
003f13cc   0691       MOVL         ACC, *+XAR1[AR0]
003f13cd   1e42       MOVL         *-SP[2], ACC
003f13ce   aaa9       MOVL         ACC, XAR2
003f13cf   767f       LCR          0x3fdf2b
003f13d0   df2b
003f13d1   5200       CMPB         AL, #0x0
003f13d2   6409       SB           9, LT
003f13d3   d040       MOVB         XAR0, #0x40
003f13d4   0691       MOVL         ACC, *+XAR1[AR0]
003f13d5   1e42       MOVL         *-SP[2], ACC
003f13d6   aaa9       MOVL         ACC, XAR2
003f13d7   767f       LCR          0x3fdf2b
003f13d8   df2b
003f13d9   5200       CMPB         AL, #0x0
003f13da   6305       SB           5, GEQ
3f13db:              $C$L19:
003f13db   9a02       MOVB         AL, #0x2
003f13dc   8aa1       MOVL         XAR4, XAR1
003f13dd   767f       LCR          0x3f1094
003f13de   1094
3f13df:              $C$L20:
003f13df   d036       MOVB         XAR0, #0x36
003f13e0   8691       MOVL         XAR2, *+XAR1[AR0]
003f13e1   9a00       MOVB         AL, #0x0
003f13e2   9b00       MOVB         AH, #0x0
003f13e3   1e42       MOVL         *-SP[2], ACC
003f13e4   aaa9       MOVL         ACC, XAR2
003f13e5   767f       LCR          0x3fdf2b
003f13e6   df2b
003f13e7   5200       CMPB         AL, #0x0
003f13e8   6550       SB           80, LEQ
003f13e9   d034       MOVB         XAR0, #0x34
003f13ea   9291       MOV          AL, *+XAR1[AR0]
003f13eb   5201       CMPB         AL, #0x1
003f13ec   ed22       SBF          34, NEQ
003f13ed   28a9       MOV          AL, #0x4000
003f13ee   4000
003f13ef   28a8       MOV          AH, #0x459c
003f13f0   459c
003f13f1   1e42       MOVL         *-SP[2], ACC
003f13f2   aaa9       MOVL         ACC, XAR2
003f13f3   767f       LCR          0x3fdde7
003f13f4   dde7
003f13f5   1ea6       MOVL         XAR6, ACC
003f13f6   28a9       MOV          AL, #0x3333
003f13f7   3333
003f13f8   28a8       MOV          AH, #0x3f33
003f13f9   3f33
003f13fa   1e42       MOVL         *-SP[2], ACC
003f13fb   06a6       MOVL         ACC, XAR6
003f13fc   767f       LCR          0x3fdde7
003f13fd   dde7
003f13fe   1ea6       MOVL         XAR6, ACC
003f13ff   9a00       MOVB         AL, #0x0
003f1400   28a8       MOV          AH, #0x43e1
003f1401   43e1
003f1402   1e42       MOVL         *-SP[2], ACC
003f1403   06a6       MOVL         ACC, XAR6
003f1404   767f       LCR          0x3fdf2b
003f1405   df2b
003f1406   5200       CMPB         AL, #0x0
003f1407   6207       SB           7, GT
003f1408   9a03       MOVB         AL, #0x3
003f1409   8aa1       MOVL         XAR4, XAR1
003f140a   767f       LCR          0x3f1094
003f140b   1094
003f140c   d036       MOVB         XAR0, #0x36
003f140d   8691       MOVL         XAR2, *+XAR1[AR0]
3f140e:              $C$L21:
003f140e   9a00       MOVB         AL, #0x0
003f140f   9b00       MOVB         AH, #0x0
003f1410   1e42       MOVL         *-SP[2], ACC
003f1411   aaa9       MOVL         ACC, XAR2
003f1412   767f       LCR          0x3fdf2b
003f1413   df2b
003f1414   5200       CMPB         AL, #0x0
003f1415   6523       SB           35, LEQ
003f1416   d034       MOVB         XAR0, #0x34
003f1417   9291       MOV          AL, *+XAR1[AR0]
003f1418   ed20       SBF          32, NEQ
003f1419   28a9       MOV          AL, #0x4000
003f141a   4000
003f141b   28a8       MOV          AH, #0x459c
003f141c   459c
003f141d   1e42       MOVL         *-SP[2], ACC
003f141e   aaa9       MOVL         ACC, XAR2
003f141f   767f       LCR          0x3fdde7
003f1420   dde7
003f1421   1ea6       MOVL         XAR6, ACC
003f1422   28a9       MOV          AL, #0xcccd
003f1423   cccd
003f1424   28a8       MOV          AH, #0x3d4c
003f1425   3d4c
003f1426   1e42       MOVL         *-SP[2], ACC
003f1427   06a6       MOVL         ACC, XAR6
003f1428   767f       LCR          0x3fdde7
003f1429   dde7
003f142a   1ea6       MOVL         XAR6, ACC
003f142b   9a00       MOVB         AL, #0x0
003f142c   28a8       MOV          AH, #0x43e1
003f142d   43e1
003f142e   1e42       MOVL         *-SP[2], ACC
003f142f   06a6       MOVL         ACC, XAR6
003f1430   767f       LCR          0x3fdf2b
003f1431   df2b
003f1432   5200       CMPB         AL, #0x0
003f1433   6205       SB           5, GT
003f1434   9a03       MOVB         AL, #0x3
003f1435   8aa1       MOVL         XAR4, XAR1
003f1436   767f       LCR          0x3f1094
003f1437   1094
3f1438:              $C$L22:
003f1438   d040       MOVB         XAR0, #0x40
003f1439   8291       MOVL         XAR3, *+XAR1[AR0]
003f143a   ff2f       MOV          ACC, #0x7e00 << 15
003f143b   7e00
003f143c   1e42       MOVL         *-SP[2], ACC
003f143d   a2a9       MOVL         ACC, XAR3
003f143e   767f       LCR          0x3fdde7
003f143f   dde7
003f1440   d03c       MOVB         XAR0, #0x3c
003f1441   86a9       MOVL         XAR2, ACC
003f1442   1e42       MOVL         *-SP[2], ACC
003f1443   0691       MOVL         ACC, *+XAR1[AR0]
003f1444   767f       LCR          0x3fdde7
003f1445   dde7
003f1446   1ea6       MOVL         XAR6, ACC
003f1447   28a9       MOV          AL, #0x47c9
003f1448   47c9
003f1449   28a8       MOV          AH, #0x4512
003f144a   4512
003f144b   1e42       MOVL         *-SP[2], ACC
003f144c   06a6       MOVL         ACC, XAR6
003f144d   767f       LCR          0x3fdde7
003f144e   dde7
003f144f   1ea6       MOVL         XAR6, ACC
003f1450   9a00       MOVB         AL, #0x0
003f1451   28a8       MOV          AH, #0x43e1
003f1452   43e1
003f1453   1e42       MOVL         *-SP[2], ACC
003f1454   06a6       MOVL         ACC, XAR6
003f1455   767f       LCR          0x3fdf2b
003f1456   df2b
003f1457   5200       CMPB         AL, #0x0
003f1458   6319       SB           25, GEQ
003f1459   aa42       MOVL         *-SP[2], XAR2
003f145a   d03e       MOVB         XAR0, #0x3e
003f145b   0691       MOVL         ACC, *+XAR1[AR0]
003f145c   767f       LCR          0x3fdde7
003f145d   dde7
003f145e   1ea6       MOVL         XAR6, ACC
003f145f   28a9       MOV          AL, #0x47c9
003f1460   47c9
003f1461   28a8       MOV          AH, #0x4512
003f1462   4512
003f1463   1e42       MOVL         *-SP[2], ACC
003f1464   06a6       MOVL         ACC, XAR6
003f1465   767f       LCR          0x3fdde7
003f1466   dde7
003f1467   1ea6       MOVL         XAR6, ACC
003f1468   9a00       MOVB         AL, #0x0
003f1469   28a8       MOV          AH, #0x43e1
003f146a   43e1
003f146b   1e42       MOVL         *-SP[2], ACC
003f146c   06a6       MOVL         ACC, XAR6
003f146d   767f       LCR          0x3fdf2b
003f146e   df2b
003f146f   5200       CMPB         AL, #0x0
003f1470   6407       SB           7, LT
3f1471:              $C$L23:
003f1471   9a04       MOVB         AL, #0x4
003f1472   8aa1       MOVL         XAR4, XAR1
003f1473   767f       LCR          0x3f1094
003f1474   1094
003f1475   d040       MOVB         XAR0, #0x40
003f1476   8291       MOVL         XAR3, *+XAR1[AR0]
3f1477:              $C$L24:
003f1477   9a00       MOVB         AL, #0x0
003f1478   28a8       MOV          AH, #0x4300
003f1479   4300
003f147a   1e42       MOVL         *-SP[2], ACC
003f147b   06c1       MOVL         ACC, *+XAR1[0]
003f147c   767f       LCR          0x3fdde7
003f147d   dde7
003f147e   86a9       MOVL         XAR2, ACC
003f147f   28a9       MOV          AL, #0xd70a
003f1480   d70a
003f1481   28a8       MOV          AH, #0x3ca3
003f1482   3ca3
003f1483   1e42       MOVL         *-SP[2], ACC
003f1484   a2a9       MOVL         ACC, XAR3
003f1485   767f       LCR          0x3fdde7
003f1486   dde7
003f1487   1e42       MOVL         *-SP[2], ACC
003f1488   aaa9       MOVL         ACC, XAR2
003f1489   767f       LCR          0x3fdce1
003f148a   dce1
003f148b   1ea6       MOVL         XAR6, ACC
003f148c   9a00       MOVB         AL, #0x0
003f148d   28a8       MOV          AH, #0x4348
003f148e   4348
003f148f   1e42       MOVL         *-SP[2], ACC
003f1490   06a6       MOVL         ACC, XAR6
003f1491   767f       LCR          0x3fdf2b
003f1492   df2b
003f1493   5200       CMPB         AL, #0x0
003f1494   6542       SB           66, LEQ
003f1495   a242       MOVL         *-SP[2], XAR3
003f1496   a2a9       MOVL         ACC, XAR3
003f1497   767f       LCR          0x3fdeb8
003f1498   deb8
003f1499   1ea6       MOVL         XAR6, ACC
003f149a   28a9       MOV          AL, #0xb717
003f149b   b717
003f149c   28a8       MOV          AH, #0x3951
003f149d   3951
003f149e   1e42       MOVL         *-SP[2], ACC
003f149f   06a6       MOVL         ACC, XAR6
003f14a0   767f       LCR          0x3fdde7
003f14a1   dde7
003f14a2   1e42       MOVL         *-SP[2], ACC
003f14a3   aaa9       MOVL         ACC, XAR2
003f14a4   767f       LCR          0x3fdce1
003f14a5   dce1
003f14a6   1ea6       MOVL         XAR6, ACC
003f14a7   9a00       MOVB         AL, #0x0
003f14a8   28a8       MOV          AH, #0x4348
003f14a9   4348
003f14aa   1e42       MOVL         *-SP[2], ACC
003f14ab   06a6       MOVL         ACC, XAR6
003f14ac   767f       LCR          0x3fdf2b
003f14ad   df2b
003f14ae   5200       CMPB         AL, #0x0
003f14af   6527       SB           39, LEQ
003f14b0   d035       MOVB         XAR0, #0x35
003f14b1   9291       MOV          AL, *+XAR1[AR0]
003f14b2   767f       LCR          0x3ff8bd
003f14b3   f8bd
003f14b4   1ea6       MOVL         XAR6, ACC
003f14b5   9a00       MOVB         AL, #0x0
003f14b6   28a8       MOV          AH, #0x4300
003f14b7   4300
003f14b8   1e42       MOVL         *-SP[2], ACC
003f14b9   06a6       MOVL         ACC, XAR6
003f14ba   767f       LCR          0x3fdde7
003f14bb   dde7
003f14bc   1ea6       MOVL         XAR6, ACC
003f14bd   9a00       MOVB         AL, #0x0
003f14be   28a8       MOV          AH, #0x447a
003f14bf   447a
003f14c0   1e42       MOVL         *-SP[2], ACC
003f14c1   06a6       MOVL         ACC, XAR6
003f14c2   767f       LCR          0x3fdde7
003f14c3   dde7
003f14c4   1ea6       MOVL         XAR6, ACC
003f14c5   9a00       MOVB         AL, #0x0
003f14c6   28a8       MOV          AH, #0x4270
003f14c7   4270
003f14c8   1e42       MOVL         *-SP[2], ACC
003f14c9   06a6       MOVL         ACC, XAR6
003f14ca   767f       LCR          0x3fdce1
003f14cb   dce1
003f14cc   1ea6       MOVL         XAR6, ACC
003f14cd   9a00       MOVB         AL, #0x0
003f14ce   28a8       MOV          AH, #0x4348
003f14cf   4348
003f14d0   1e42       MOVL         *-SP[2], ACC
003f14d1   06a6       MOVL         ACC, XAR6
003f14d2   767f       LCR          0x3fdf2b
003f14d3   df2b
003f14d4   5200       CMPB         AL, #0x0
003f14d5   6205       SB           5, GT
3f14d6:              $C$L25:
003f14d6   9a05       MOVB         AL, #0x5
003f14d7   8aa1       MOVL         XAR4, XAR1
003f14d8   767f       LCR          0x3f1094
003f14d9   1094
3f14da:              $C$L26:
003f14da   9a00       MOVB         AL, #0x0
003f14db   28a8       MOV          AH, #0x4348
003f14dc   4348
003f14dd   d052       MOVB         XAR0, #0x52
003f14de   1e42       MOVL         *-SP[2], ACC
003f14df   0691       MOVL         ACC, *+XAR1[AR0]
003f14e0   767f       LCR          0x3fdf2b
003f14e1   df2b
003f14e2   5200       CMPB         AL, #0x0
003f14e3   621f       SB           31, GT
003f14e4   d035       MOVB         XAR0, #0x35
003f14e5   9291       MOV          AL, *+XAR1[AR0]
003f14e6   767f       LCR          0x3ff8bd
003f14e7   f8bd
003f14e8   1ea6       MOVL         XAR6, ACC
003f14e9   9a00       MOVB         AL, #0x0
003f14ea   28a8       MOV          AH, #0x447a
003f14eb   447a
003f14ec   1e42       MOVL         *-SP[2], ACC
003f14ed   06a6       MOVL         ACC, XAR6
003f14ee   767f       LCR          0x3fdde7
003f14ef   dde7
003f14f0   1ea6       MOVL         XAR6, ACC
003f14f1   9a00       MOVB         AL, #0x0
003f14f2   28a8       MOV          AH, #0x45f0
003f14f3   45f0
003f14f4   1e42       MOVL         *-SP[2], ACC
003f14f5   06a6       MOVL         ACC, XAR6
003f14f6   767f       LCR          0x3fdce1
003f14f7   dce1
003f14f8   1ea6       MOVL         XAR6, ACC
003f14f9   9a00       MOVB         AL, #0x0
003f14fa   28a8       MOV          AH, #0x4348
003f14fb   4348
003f14fc   1e42       MOVL         *-SP[2], ACC
003f14fd   06a6       MOVL         ACC, XAR6
003f14fe   767f       LCR          0x3fdf2b
003f14ff   df2b
003f1500   5200       CMPB         AL, #0x0
003f1501   6405       SB           5, LT
3f1502:              $C$L27:
003f1502   9a06       MOVB         AL, #0x6
003f1503   8aa1       MOVL         XAR4, XAR1
003f1504   767f       LCR          0x3f1094
003f1505   1094
3f1506:              $C$L28:
003f1506   d040       MOVB         XAR0, #0x40
003f1507   0691       MOVL         ACC, *+XAR1[AR0]
003f1508   1e42       MOVL         *-SP[2], ACC
003f1509   06c1       MOVL         ACC, *+XAR1[0]
003f150a   767f       LCR          0x3fdce1
003f150b   dce1
003f150c   1ea6       MOVL         XAR6, ACC
003f150d   ff2f       MOV          ACC, #0x7f00 << 15
003f150e   7f00
003f150f   1e42       MOVL         *-SP[2], ACC
003f1510   06a6       MOVL         ACC, XAR6
003f1511   767f       LCR          0x3fdf2b
003f1512   df2b
003f1513   5200       CMPB         AL, #0x0
003f1514   6305       SB           5, GEQ
003f1515   9a2b       MOVB         AL, #0x2b
003f1516   8aa1       MOVL         XAR4, XAR1
003f1517   767f       LCR          0x3f1094
003f1518   1094
3f1519:              $C$L29:
003f1519   d034       MOVB         XAR0, #0x34
003f151a   9291       MOV          AL, *+XAR1[AR0]
003f151b   ec07       SBF          7, EQ
003f151c   5201       CMPB         AL, #0x1
003f151d   ec05       SBF          5, EQ
003f151e   9a3d       MOVB         AL, #0x3d
003f151f   8aa1       MOVL         XAR4, XAR1
003f1520   767f       LCR          0x3f1094
003f1521   1094
3f1522:              $C$L30:
003f1522   d035       MOVB         XAR0, #0x35
003f1523   9291       MOV          AL, *+XAR1[AR0]
003f1524   ed05       SBF          5, NEQ
003f1525   9a3f       MOVB         AL, #0x3f
003f1526   8aa1       MOVL         XAR4, XAR1
003f1527   767f       LCR          0x3f1094
003f1528   1094
3f1529:              $C$L31:
003f1529   d036       MOVB         XAR0, #0x36
003f152a   8691       MOVL         XAR2, *+XAR1[AR0]
003f152b   9a00       MOVB         AL, #0x0
003f152c   9b00       MOVB         AH, #0x0
003f152d   1e42       MOVL         *-SP[2], ACC
003f152e   aaa9       MOVL         ACC, XAR2
003f152f   767f       LCR          0x3fdf2b
003f1530   df2b
003f1531   5200       CMPB         AL, #0x0
003f1532   614e       SB           78, EQ
003f1533   d034       MOVB         XAR0, #0x34
003f1534   9291       MOV          AL, *+XAR1[AR0]
003f1535   5201       CMPB         AL, #0x1
003f1536   ed21       SBF          33, NEQ
003f1537   28a9       MOV          AL, #0x0ea1
003f1538   0ea1
003f1539   28a8       MOV          AH, #0x456a
003f153a   456a
003f153b   1e42       MOVL         *-SP[2], ACC
003f153c   aaa9       MOVL         ACC, XAR2
003f153d   767f       LCR          0x3fdf2b
003f153e   df2b
003f153f   5200       CMPB         AL, #0x0
003f1540   6507       SB           7, LEQ
003f1541   9a40       MOVB         AL, #0x40
003f1542   8aa1       MOVL         XAR4, XAR1
003f1543   767f       LCR          0x3f1094
003f1544   1094
003f1545   d036       MOVB         XAR0, #0x36
003f1546   8691       MOVL         XAR2, *+XAR1[AR0]
3f1547:              $C$L32:
003f1547   28a9       MOV          AL, #0xa83b
003f1548   a83b
003f1549   28a8       MOV          AH, #0x3e03
003f154a   3e03
003f154b   1e42       MOVL         *-SP[2], ACC
003f154c   aaa9       MOVL         ACC, XAR2
003f154d   767f       LCR          0x3fdf2b
003f154e   df2b
003f154f   5200       CMPB         AL, #0x0
003f1550   6307       SB           7, GEQ
003f1551   9a41       MOVB         AL, #0x41
003f1552   8aa1       MOVL         XAR4, XAR1
003f1553   767f       LCR          0x3f1094
003f1554   1094
003f1555   d036       MOVB         XAR0, #0x36
003f1556   8691       MOVL         XAR2, *+XAR1[AR0]
3f1557:              $C$L33:
003f1557   9a00       MOVB         AL, #0x0
003f1558   9b00       MOVB         AH, #0x0
003f1559   1e42       MOVL         *-SP[2], ACC
003f155a   aaa9       MOVL         ACC, XAR2
003f155b   767f       LCR          0x3fdf2b
003f155c   df2b
003f155d   5200       CMPB         AL, #0x0
003f155e   6122       SB           34, EQ
003f155f   d034       MOVB         XAR0, #0x34
003f1560   9291       MOV          AL, *+XAR1[AR0]
003f1561   ed1f       SBF          31, NEQ
003f1562   28a9       MOV          AL, #0xcccc
003f1563   cccc
003f1564   28a8       MOV          AH, #0x474c
003f1565   474c
003f1566   1e42       MOVL         *-SP[2], ACC
003f1567   aaa9       MOVL         ACC, XAR2
003f1568   767f       LCR          0x3fdf2b
003f1569   df2b
003f156a   5200       CMPB         AL, #0x0
003f156b   6507       SB           7, LEQ
003f156c   9a40       MOVB         AL, #0x40
003f156d   8aa1       MOVL         XAR4, XAR1
003f156e   767f       LCR          0x3f1094
003f156f   1094
003f1570   d036       MOVB         XAR0, #0x36
003f1571   8691       MOVL         XAR2, *+XAR1[AR0]
3f1572:              $C$L34:
003f1572   28a9       MOV          AL, #0x6667
003f1573   6667
003f1574   28a8       MOV          AH, #0x3fe6
003f1575   3fe6
003f1576   1e42       MOVL         *-SP[2], ACC
003f1577   aaa9       MOVL         ACC, XAR2
003f1578   767f       LCR          0x3fdf2b
003f1579   df2b
003f157a   5200       CMPB         AL, #0x0
003f157b   6305       SB           5, GEQ
003f157c   9a41       MOVB         AL, #0x41
003f157d   8aa1       MOVL         XAR4, XAR1
003f157e   767f       LCR          0x3f1094
003f157f   1094
3f1580:              $C$L35:
003f1580   d034       MOVB         XAR0, #0x34
003f1581   9291       MOV          AL, *+XAR1[AR0]
003f1582   5201       CMPB         AL, #0x1
003f1583   ed1d       SBF          29, NEQ
003f1584   d038       MOVB         XAR0, #0x38
003f1585   8691       MOVL         XAR2, *+XAR1[AR0]
003f1586   9a00       MOVB         AL, #0x0
003f1587   9b00       MOVB         AH, #0x0
003f1588   1e42       MOVL         *-SP[2], ACC
003f1589   aaa9       MOVL         ACC, XAR2
003f158a   767f       LCR          0x3fdf2b
003f158b   df2b
003f158c   5200       CMPB         AL, #0x0
003f158d   6507       SB           7, LEQ
003f158e   9a42       MOVB         AL, #0x42
003f158f   8aa1       MOVL         XAR4, XAR1
003f1590   767f       LCR          0x3f1094
003f1591   1094
003f1592   d038       MOVB         XAR0, #0x38
003f1593   8691       MOVL         XAR2, *+XAR1[AR0]
3f1594:              $C$L36:
003f1594   9a00       MOVB         AL, #0x0
003f1595   9b00       MOVB         AH, #0x0
003f1596   1e42       MOVL         *-SP[2], ACC
003f1597   aaa9       MOVL         ACC, XAR2
003f1598   767f       LCR          0x3fdf2b
003f1599   df2b
003f159a   5200       CMPB         AL, #0x0
003f159b   6305       SB           5, GEQ
003f159c   9a43       MOVB         AL, #0x43
003f159d   8aa1       MOVL         XAR4, XAR1
003f159e   767f       LCR          0x3f1094
003f159f   1094
3f15a0:              $C$L37:
003f15a0   d038       MOVB         XAR0, #0x38
003f15a1   8691       MOVL         XAR2, *+XAR1[AR0]
003f15a2   9a00       MOVB         AL, #0x0
003f15a3   9b00       MOVB         AH, #0x0
003f15a4   1e42       MOVL         *-SP[2], ACC
003f15a5   aaa9       MOVL         ACC, XAR2
003f15a6   767f       LCR          0x3fdf2b
003f15a7   df2b
003f15a8   5200       CMPB         AL, #0x0
003f15a9   6131       SB           49, EQ
003f15aa   d034       MOVB         XAR0, #0x34
003f15ab   9291       MOV          AL, *+XAR1[AR0]
003f15ac   ed2e       SBF          46, NEQ
003f15ad   82c1       MOVL         XAR3, *+XAR1[0]
003f15ae   28a9       MOV          AL, #0x8000
003f15af   8000
003f15b0   28a8       MOV          AH, #0x4b9d
003f15b1   4b9d
003f15b2   a242       MOVL         *-SP[2], XAR3
003f15b3   767f       LCR          0x3fdce1
003f15b4   dce1
003f15b5   1e42       MOVL         *-SP[2], ACC
003f15b6   aaa9       MOVL         ACC, XAR2
003f15b7   767f       LCR          0x3fdf2b
003f15b8   df2b
003f15b9   5200       CMPB         AL, #0x0
003f15ba   6508       SB           8, LEQ
003f15bb   9a42       MOVB         AL, #0x42
003f15bc   8aa1       MOVL         XAR4, XAR1
003f15bd   767f       LCR          0x3f1094
003f15be   1094
003f15bf   d038       MOVB         XAR0, #0x38
003f15c0   82c1       MOVL         XAR3, *+XAR1[0]
003f15c1   8691       MOVL         XAR2, *+XAR1[AR0]
3f15c2:              $C$L38:
003f15c2   9a00       MOVB         AL, #0x0
003f15c3   28a8       MOV          AH, #0x4780
003f15c4   4780
003f15c5   1e42       MOVL         *-SP[2], ACC
003f15c6   a2a9       MOVL         ACC, XAR3
003f15c7   767f       LCR          0x3fdde7
003f15c8   dde7
003f15c9   1e42       MOVL         *-SP[2], ACC
003f15ca   28a9       MOV          AL, #0x8000
003f15cb   8000
003f15cc   28a8       MOV          AH, #0x439d
003f15cd   439d
003f15ce   767f       LCR          0x3fdce1
003f15cf   dce1
003f15d0   1e42       MOVL         *-SP[2], ACC
003f15d1   aaa9       MOVL         ACC, XAR2
003f15d2   767f       LCR          0x3fdf2b
003f15d3   df2b
003f15d4   5200       CMPB         AL, #0x0
003f15d5   6305       SB           5, GEQ
003f15d6   9a43       MOVB         AL, #0x43
003f15d7   8aa1       MOVL         XAR4, XAR1
003f15d8   767f       LCR          0x3f1094
003f15d9   1094
3f15da:              $C$L39:
003f15da   d03a       MOVB         XAR0, #0x3a
003f15db   8691       MOVL         XAR2, *+XAR1[AR0]
003f15dc   9a00       MOVB         AL, #0x0
003f15dd   9b00       MOVB         AH, #0x0
003f15de   1e42       MOVL         *-SP[2], ACC
003f15df   aaa9       MOVL         ACC, XAR2
003f15e0   767f       LCR          0x3fdf2b
003f15e1   df2b
003f15e2   5200       CMPB         AL, #0x0
003f15e3   612e       SB           46, EQ
003f15e4   82c1       MOVL         XAR3, *+XAR1[0]
003f15e5   28a9       MOV          AL, #0x8000
003f15e6   8000
003f15e7   28a8       MOV          AH, #0x4b9d
003f15e8   4b9d
003f15e9   a242       MOVL         *-SP[2], XAR3
003f15ea   767f       LCR          0x3fdce1
003f15eb   dce1
003f15ec   1e42       MOVL         *-SP[2], ACC
003f15ed   aaa9       MOVL         ACC, XAR2
003f15ee   767f       LCR          0x3fdf2b
003f15ef   df2b
003f15f0   5200       CMPB         AL, #0x0
003f15f1   6508       SB           8, LEQ
003f15f2   9a44       MOVB         AL, #0x44
003f15f3   8aa1       MOVL         XAR4, XAR1
003f15f4   767f       LCR          0x3f1094
003f15f5   1094
003f15f6   d03a       MOVB         XAR0, #0x3a
003f15f7   82c1       MOVL         XAR3, *+XAR1[0]
003f15f8   8691       MOVL         XAR2, *+XAR1[AR0]
3f15f9:              $C$L40:
003f15f9   9a00       MOVB         AL, #0x0
003f15fa   28a8       MOV          AH, #0x4780
003f15fb   4780
003f15fc   1e42       MOVL         *-SP[2], ACC
003f15fd   a2a9       MOVL         ACC, XAR3
003f15fe   767f       LCR          0x3fdde7
003f15ff   dde7
003f1600   1e42       MOVL         *-SP[2], ACC
003f1601   28a9       MOV          AL, #0x8000
003f1602   8000
003f1603   28a8       MOV          AH, #0x439d
003f1604   439d
003f1605   767f       LCR          0x3fdce1
003f1606   dce1
003f1607   1e42       MOVL         *-SP[2], ACC
003f1608   aaa9       MOVL         ACC, XAR2
003f1609   767f       LCR          0x3fdf2b
003f160a   df2b
003f160b   5200       CMPB         AL, #0x0
003f160c   6305       SB           5, GEQ
003f160d   9a45       MOVB         AL, #0x45
003f160e   8aa1       MOVL         XAR4, XAR1
003f160f   767f       LCR          0x3f1094
003f1610   1094
3f1611:              $C$L41:
003f1611   d03c       MOVB         XAR0, #0x3c
003f1612   8291       MOVL         XAR3, *+XAR1[AR0]
003f1613   9a00       MOVB         AL, #0x0
003f1614   9b00       MOVB         AH, #0x0
003f1615   1e42       MOVL         *-SP[2], ACC
003f1616   a2a9       MOVL         ACC, XAR3
003f1617   767f       LCR          0x3fdf2b
003f1618   df2b
003f1619   5200       CMPB         AL, #0x0
003f161a   613e       SB           62, EQ
003f161b   28a9       MOV          AL, #0x47c9
003f161c   47c9
003f161d   28a8       MOV          AH, #0x4512
003f161e   4512
003f161f   1e42       MOVL         *-SP[2], ACC
003f1620   06c1       MOVL         ACC, *+XAR1[0]
003f1621   767f       LCR          0x3fdde7
003f1622   dde7
003f1623   86a9       MOVL         XAR2, ACC
003f1624   1e42       MOVL         *-SP[2], ACC
003f1625   28a9       MOV          AL, #0x8000
003f1626   8000
003f1627   28a8       MOV          AH, #0x4b9d
003f1628   4b9d
003f1629   767f       LCR          0x3fdce1
003f162a   dce1
003f162b   1e42       MOVL         *-SP[2], ACC
003f162c   a2a9       MOVL         ACC, XAR3
003f162d   767f       LCR          0x3fdf2b
003f162e   df2b
003f162f   5200       CMPB         AL, #0x0
003f1630   6510       SB           16, LEQ
003f1631   9a46       MOVB         AL, #0x46
003f1632   8aa1       MOVL         XAR4, XAR1
003f1633   767f       LCR          0x3f1094
003f1634   1094
003f1635   28a8       MOV          AH, #0x4512
003f1636   4512
003f1637   d03c       MOVB         XAR0, #0x3c
003f1638   28a9       MOV          AL, #0x47c9
003f1639   47c9
003f163a   8291       MOVL         XAR3, *+XAR1[AR0]
003f163b   1e42       MOVL         *-SP[2], ACC
003f163c   06c1       MOVL         ACC, *+XAR1[0]
003f163d   767f       LCR          0x3fdde7
003f163e   dde7
003f163f   86a9       MOVL         XAR2, ACC
3f1640:              $C$L42:
003f1640   9a00       MOVB         AL, #0x0
003f1641   28a8       MOV          AH, #0x4780
003f1642   4780
003f1643   1e42       MOVL         *-SP[2], ACC
003f1644   aaa9       MOVL         ACC, XAR2
003f1645   767f       LCR          0x3fdde7
003f1646   dde7
003f1647   1e42       MOVL         *-SP[2], ACC
003f1648   28a9       MOV          AL, #0x8000
003f1649   8000
003f164a   28a8       MOV          AH, #0x439d
003f164b   439d
003f164c   767f       LCR          0x3fdce1
003f164d   dce1
003f164e   1e42       MOVL         *-SP[2], ACC
003f164f   a2a9       MOVL         ACC, XAR3
003f1650   767f       LCR          0x3fdf2b
003f1651   df2b
003f1652   5200       CMPB         AL, #0x0
003f1653   6305       SB           5, GEQ
003f1654   9a47       MOVB         AL, #0x47
003f1655   8aa1       MOVL         XAR4, XAR1
003f1656   767f       LCR          0x3f1094
003f1657   1094
3f1658:              $C$L43:
003f1658   d03e       MOVB         XAR0, #0x3e
003f1659   8291       MOVL         XAR3, *+XAR1[AR0]
003f165a   9a00       MOVB         AL, #0x0
003f165b   9b00       MOVB         AH, #0x0
003f165c   1e42       MOVL         *-SP[2], ACC
003f165d   a2a9       MOVL         ACC, XAR3
003f165e   767f       LCR          0x3fdf2b
003f165f   df2b
003f1660   5200       CMPB         AL, #0x0
003f1661   613e       SB           62, EQ
003f1662   28a9       MOV          AL, #0x47c9
003f1663   47c9
003f1664   28a8       MOV          AH, #0x4512
003f1665   4512
003f1666   1e42       MOVL         *-SP[2], ACC
003f1667   06c1       MOVL         ACC, *+XAR1[0]
003f1668   767f       LCR          0x3fdde7
003f1669   dde7
003f166a   86a9       MOVL         XAR2, ACC
003f166b   1e42       MOVL         *-SP[2], ACC
003f166c   28a9       MOV          AL, #0x8000
003f166d   8000
003f166e   28a8       MOV          AH, #0x4b9d
003f166f   4b9d
003f1670   767f       LCR          0x3fdce1
003f1671   dce1
003f1672   1e42       MOVL         *-SP[2], ACC
003f1673   a2a9       MOVL         ACC, XAR3
003f1674   767f       LCR          0x3fdf2b
003f1675   df2b
003f1676   5200       CMPB         AL, #0x0
003f1677   6510       SB           16, LEQ
003f1678   9a48       MOVB         AL, #0x48
003f1679   8aa1       MOVL         XAR4, XAR1
003f167a   767f       LCR          0x3f1094
003f167b   1094
003f167c   28a8       MOV          AH, #0x4512
003f167d   4512
003f167e   d03e       MOVB         XAR0, #0x3e
003f167f   28a9       MOV          AL, #0x47c9
003f1680   47c9
003f1681   8291       MOVL         XAR3, *+XAR1[AR0]
003f1682   1e42       MOVL         *-SP[2], ACC
003f1683   06c1       MOVL         ACC, *+XAR1[0]
003f1684   767f       LCR          0x3fdde7
003f1685   dde7
003f1686   86a9       MOVL         XAR2, ACC
3f1687:              $C$L44:
003f1687   9a00       MOVB         AL, #0x0
003f1688   28a8       MOV          AH, #0x4780
003f1689   4780
003f168a   1e42       MOVL         *-SP[2], ACC
003f168b   aaa9       MOVL         ACC, XAR2
003f168c   767f       LCR          0x3fdde7
003f168d   dde7
003f168e   1e42       MOVL         *-SP[2], ACC
003f168f   28a9       MOV          AL, #0x8000
003f1690   8000
003f1691   28a8       MOV          AH, #0x439d
003f1692   439d
003f1693   767f       LCR          0x3fdce1
003f1694   dce1
003f1695   1e42       MOVL         *-SP[2], ACC
003f1696   a2a9       MOVL         ACC, XAR3
003f1697   767f       LCR          0x3fdf2b
003f1698   df2b
003f1699   5200       CMPB         AL, #0x0
003f169a   6305       SB           5, GEQ
003f169b   9a49       MOVB         AL, #0x49
003f169c   8aa1       MOVL         XAR4, XAR1
003f169d   767f       LCR          0x3f1094
003f169e   1094
3f169f:              $C$L45:
003f169f   d042       MOVB         XAR0, #0x42
003f16a0   8691       MOVL         XAR2, *+XAR1[AR0]
003f16a1   d040       MOVB         XAR0, #0x40
003f16a2   0691       MOVL         ACC, *+XAR1[AR0]
003f16a3   1e42       MOVL         *-SP[2], ACC
003f16a4   aaa9       MOVL         ACC, XAR2
003f16a5   767f       LCR          0x3fdf2b
003f16a6   df2b
003f16a7   5200       CMPB         AL, #0x0
003f16a8   6507       SB           7, LEQ
003f16a9   9a4c       MOVB         AL, #0x4c
003f16aa   8aa1       MOVL         XAR4, XAR1
003f16ab   767f       LCR          0x3f1094
003f16ac   1094
003f16ad   d042       MOVB         XAR0, #0x42
003f16ae   8691       MOVL         XAR2, *+XAR1[AR0]
3f16af:              $C$L46:
003f16af   9a00       MOVB         AL, #0x0
003f16b0   9b00       MOVB         AH, #0x0
003f16b1   1e42       MOVL         *-SP[2], ACC
003f16b2   aaa9       MOVL         ACC, XAR2
003f16b3   767f       LCR          0x3fdf2b
003f16b4   df2b
003f16b5   5200       CMPB         AL, #0x0
003f16b6   6305       SB           5, GEQ
003f16b7   9a4d       MOVB         AL, #0x4d
003f16b8   8aa1       MOVL         XAR4, XAR1
003f16b9   767f       LCR          0x3f1094
003f16ba   1094
3f16bb:              $C$L47:
003f16bb   d034       MOVB         XAR0, #0x34
003f16bc   9291       MOV          AL, *+XAR1[AR0]
003f16bd   5201       CMPB         AL, #0x1
003f16be   ed1f       SBF          31, NEQ
003f16bf   d044       MOVB         XAR0, #0x44
003f16c0   8691       MOVL         XAR2, *+XAR1[AR0]
003f16c1   9a00       MOVB         AL, #0x0
003f16c2   9b00       MOVB         AH, #0x0
003f16c3   1e42       MOVL         *-SP[2], ACC
003f16c4   aaa9       MOVL         ACC, XAR2
003f16c5   767f       LCR          0x3fdf2b
003f16c6   df2b
003f16c7   5200       CMPB         AL, #0x0
003f16c8   6507       SB           7, LEQ
003f16c9   9a4e       MOVB         AL, #0x4e
003f16ca   8aa1       MOVL         XAR4, XAR1
003f16cb   767f       LCR          0x3f1094
003f16cc   1094
003f16cd   d044       MOVB         XAR0, #0x44
003f16ce   8691       MOVL         XAR2, *+XAR1[AR0]
3f16cf:              $C$L48:
003f16cf   d040       MOVB         XAR0, #0x40
003f16d0   0691       MOVL         ACC, *+XAR1[AR0]
003f16d1   767f       LCR          0x3fff4d
003f16d2   ff4d
003f16d3   1e42       MOVL         *-SP[2], ACC
003f16d4   aaa9       MOVL         ACC, XAR2
003f16d5   767f       LCR          0x3fdf2b
003f16d6   df2b
003f16d7   5200       CMPB         AL, #0x0
003f16d8   6305       SB           5, GEQ
003f16d9   9a4f       MOVB         AL, #0x4f
003f16da   8aa1       MOVL         XAR4, XAR1
003f16db   767f       LCR          0x3f1094
003f16dc   1094
3f16dd:              $C$L49:
003f16dd   d034       MOVB         XAR0, #0x34
003f16de   9291       MOV          AL, *+XAR1[AR0]
003f16df   ed1d       SBF          29, NEQ
003f16e0   d044       MOVB         XAR0, #0x44
003f16e1   8691       MOVL         XAR2, *+XAR1[AR0]
003f16e2   9a00       MOVB         AL, #0x0
003f16e3   9b00       MOVB         AH, #0x0
003f16e4   1e42       MOVL         *-SP[2], ACC
003f16e5   aaa9       MOVL         ACC, XAR2
003f16e6   767f       LCR          0x3fdf2b
003f16e7   df2b
003f16e8   5200       CMPB         AL, #0x0
003f16e9   6507       SB           7, LEQ
003f16ea   9a4e       MOVB         AL, #0x4e
003f16eb   8aa1       MOVL         XAR4, XAR1
003f16ec   767f       LCR          0x3f1094
003f16ed   1094
003f16ee   d044       MOVB         XAR0, #0x44
003f16ef   8691       MOVL         XAR2, *+XAR1[AR0]
3f16f0:              $C$L50:
003f16f0   9a00       MOVB         AL, #0x0
003f16f1   9b00       MOVB         AH, #0x0
003f16f2   1e42       MOVL         *-SP[2], ACC
003f16f3   aaa9       MOVL         ACC, XAR2
003f16f4   767f       LCR          0x3fdf2b
003f16f5   df2b
003f16f6   5200       CMPB         AL, #0x0
003f16f7   6305       SB           5, GEQ
003f16f8   9a4f       MOVB         AL, #0x4f
003f16f9   8aa1       MOVL         XAR4, XAR1
003f16fa   767f       LCR          0x3f1094
003f16fb   1094
3f16fc:              $C$L51:
003f16fc   d040       MOVB         XAR0, #0x40
003f16fd   8691       MOVL         XAR2, *+XAR1[AR0]
003f16fe   06c1       MOVL         ACC, *+XAR1[0]
003f16ff   1e42       MOVL         *-SP[2], ACC
003f1700   aaa9       MOVL         ACC, XAR2
003f1701   767f       LCR          0x3fdf2b
003f1702   df2b
003f1703   5200       CMPB         AL, #0x0
003f1704   6507       SB           7, LEQ
003f1705   9a4a       MOVB         AL, #0x4a
003f1706   8aa1       MOVL         XAR4, XAR1
003f1707   767f       LCR          0x3f1094
003f1708   1094
003f1709   d040       MOVB         XAR0, #0x40
003f170a   8691       MOVL         XAR2, *+XAR1[AR0]
3f170b:              $C$L52:
003f170b   9a00       MOVB         AL, #0x0
003f170c   9b00       MOVB         AH, #0x0
003f170d   1e42       MOVL         *-SP[2], ACC
003f170e   aaa9       MOVL         ACC, XAR2
003f170f   767f       LCR          0x3fdf2b
003f1710   df2b
003f1711   5200       CMPB         AL, #0x0
003f1712   6205       SB           5, GT
003f1713   9a4b       MOVB         AL, #0x4b
003f1714   8aa1       MOVL         XAR4, XAR1
003f1715   767f       LCR          0x3f1094
003f1716   1094
3f1717:              $C$L53:
003f1717   d046       MOVB         XAR0, #0x46
003f1718   8691       MOVL         XAR2, *+XAR1[AR0]
003f1719   ff2f       MOV          ACC, #0x7f00 << 15
003f171a   7f00
003f171b   1e42       MOVL         *-SP[2], ACC
003f171c   aaa9       MOVL         ACC, XAR2
003f171d   767f       LCR          0x3fdf2b
003f171e   df2b
003f171f   5200       CMPB         AL, #0x0
003f1720   6507       SB           7, LEQ
003f1721   9a50       MOVB         AL, #0x50
003f1722   8aa1       MOVL         XAR4, XAR1
003f1723   767f       LCR          0x3f1094
003f1724   1094
003f1725   d046       MOVB         XAR0, #0x46
003f1726   8691       MOVL         XAR2, *+XAR1[AR0]
3f1727:              $C$L54:
003f1727   9a00       MOVB         AL, #0x0
003f1728   9b00       MOVB         AH, #0x0
003f1729   1e42       MOVL         *-SP[2], ACC
003f172a   aaa9       MOVL         ACC, XAR2
003f172b   767f       LCR          0x3fdf2b
003f172c   df2b
003f172d   5200       CMPB         AL, #0x0
003f172e   6205       SB           5, GT
003f172f   9a51       MOVB         AL, #0x51
003f1730   8aa1       MOVL         XAR4, XAR1
003f1731   767f       LCR          0x3f1094
003f1732   1094
3f1733:              $C$L55:
003f1733   d048       MOVB         XAR0, #0x48
003f1734   8691       MOVL         XAR2, *+XAR1[AR0]
003f1735   ff2f       MOV          ACC, #0x7f00 << 15
003f1736   7f00
003f1737   1e42       MOVL         *-SP[2], ACC
003f1738   aaa9       MOVL         ACC, XAR2
003f1739   767f       LCR          0x3fdf2b
003f173a   df2b
003f173b   5200       CMPB         AL, #0x0
003f173c   6507       SB           7, LEQ
003f173d   9a52       MOVB         AL, #0x52
003f173e   8aa1       MOVL         XAR4, XAR1
003f173f   767f       LCR          0x3f1094
003f1740   1094
003f1741   d048       MOVB         XAR0, #0x48
003f1742   8691       MOVL         XAR2, *+XAR1[AR0]
3f1743:              $C$L56:
003f1743   9a00       MOVB         AL, #0x0
003f1744   9b00       MOVB         AH, #0x0
003f1745   1e42       MOVL         *-SP[2], ACC
003f1746   aaa9       MOVL         ACC, XAR2
003f1747   767f       LCR          0x3fdf2b
003f1748   df2b
003f1749   5200       CMPB         AL, #0x0
003f174a   6205       SB           5, GT
003f174b   9a53       MOVB         AL, #0x53
003f174c   8aa1       MOVL         XAR4, XAR1
003f174d   767f       LCR          0x3f1094
003f174e   1094
3f174f:              $C$L57:
003f174f   d034       MOVB         XAR0, #0x34
003f1750   9291       MOV          AL, *+XAR1[AR0]
003f1751   5201       CMPB         AL, #0x1
003f1752   ed1d       SBF          29, NEQ
003f1753   d04a       MOVB         XAR0, #0x4a
003f1754   8691       MOVL         XAR2, *+XAR1[AR0]
003f1755   9a00       MOVB         AL, #0x0
003f1756   9b00       MOVB         AH, #0x0
003f1757   1e42       MOVL         *-SP[2], ACC
003f1758   aaa9       MOVL         ACC, XAR2
003f1759   767f       LCR          0x3fdf2b
003f175a   df2b
003f175b   5200       CMPB         AL, #0x0
003f175c   6507       SB           7, LEQ
003f175d   9a54       MOVB         AL, #0x54
003f175e   8aa1       MOVL         XAR4, XAR1
003f175f   767f       LCR          0x3f1094
003f1760   1094
003f1761   d04a       MOVB         XAR0, #0x4a
003f1762   8691       MOVL         XAR2, *+XAR1[AR0]
3f1763:              $C$L58:
003f1763   9a00       MOVB         AL, #0x0
003f1764   9b00       MOVB         AH, #0x0
003f1765   1e42       MOVL         *-SP[2], ACC
003f1766   aaa9       MOVL         ACC, XAR2
003f1767   767f       LCR          0x3fdf2b
003f1768   df2b
003f1769   5200       CMPB         AL, #0x0
003f176a   6305       SB           5, GEQ
003f176b   9a55       MOVB         AL, #0x55
003f176c   8aa1       MOVL         XAR4, XAR1
003f176d   767f       LCR          0x3f1094
003f176e   1094
3f176f:              $C$L59:
003f176f   d034       MOVB         XAR0, #0x34
003f1770   9291       MOV          AL, *+XAR1[AR0]
003f1771   ed6e       SBF          110, NEQ
003f1772   d04a       MOVB         XAR0, #0x4a
003f1773   8691       MOVL         XAR2, *+XAR1[AR0]
003f1774   d040       MOVB         XAR0, #0x40
003f1775   0691       MOVL         ACC, *+XAR1[AR0]
003f1776   1e42       MOVL         *-SP[2], ACC
003f1777   aaa9       MOVL         ACC, XAR2
003f1778   767f       LCR          0x3fdf2b
003f1779   df2b
003f177a   5200       CMPB         AL, #0x0
003f177b   6507       SB           7, LEQ
003f177c   9a54       MOVB         AL, #0x54
003f177d   8aa1       MOVL         XAR4, XAR1
003f177e   767f       LCR          0x3f1094
003f177f   1094
003f1780   d04a       MOVB         XAR0, #0x4a
003f1781   8691       MOVL         XAR2, *+XAR1[AR0]
3f1782:              $C$L60:
003f1782   9a00       MOVB         AL, #0x0
003f1783   9b00       MOVB         AH, #0x0
003f1784   1e42       MOVL         *-SP[2], ACC
003f1785   aaa9       MOVL         ACC, XAR2
003f1786   767f       LCR          0x3fdf2b
003f1787   df2b
003f1788   5200       CMPB         AL, #0x0
003f1789   6305       SB           5, GEQ
003f178a   9a55       MOVB         AL, #0x55
003f178b   8aa1       MOVL         XAR4, XAR1
003f178c   767f       LCR          0x3f1094
003f178d   1094
3f178e:              $C$L61:
003f178e   d034       MOVB         XAR0, #0x34
003f178f   5a91       MOVZ         AR2, *+XAR1[AR0]
003f1790   92a2       MOV          AL, AR2
003f1791   ed4e       SBF          78, NEQ
003f1792   28a9       MOV          AL, #0x999a
003f1793   999a
003f1794   28a8       MOV          AH, #0x3f99
003f1795   3f99
003f1796   d040       MOVB         XAR0, #0x40
003f1797   1e42       MOVL         *-SP[2], ACC
003f1798   0691       MOVL         ACC, *+XAR1[AR0]
003f1799   767f       LCR          0x3fdde7
003f179a   dde7
003f179b   1e42       MOVL         *-SP[2], ACC
003f179c   06c1       MOVL         ACC, *+XAR1[0]
003f179d   767f       LCR          0x3fdce1
003f179e   dce1
003f179f   1ea6       MOVL         XAR6, ACC
003f17a0   ff2f       MOV          ACC, #0x7f00 << 15
003f17a1   7f00
003f17a2   1e42       MOVL         *-SP[2], ACC
003f17a3   06a6       MOVL         ACC, XAR6
003f17a4   767f       LCR          0x3fdf2b
003f17a5   df2b
003f17a6   5200       CMPB         AL, #0x0
003f17a7   6307       SB           7, GEQ
003f17a8   9a58       MOVB         AL, #0x58
003f17a9   8aa1       MOVL         XAR4, XAR1
003f17aa   767f       LCR          0x3f1094
003f17ab   1094
003f17ac   d034       MOVB         XAR0, #0x34
003f17ad   5a91       MOVZ         AR2, *+XAR1[AR0]
3f17ae:              $C$L62:
003f17ae   92a2       MOV          AL, AR2
003f17af   ed30       SBF          48, NEQ
003f17b0   d040       MOVB         XAR0, #0x40
003f17b1   0691       MOVL         ACC, *+XAR1[AR0]
003f17b2   1e42       MOVL         *-SP[2], ACC
003f17b3   06c1       MOVL         ACC, *+XAR1[0]
003f17b4   767f       LCR          0x3fdce1
003f17b5   dce1
003f17b6   1ea6       MOVL         XAR6, ACC
003f17b7   ff2f       MOV          ACC, #0x7f00 << 15
003f17b8   7f00
003f17b9   1e42       MOVL         *-SP[2], ACC
003f17ba   06a6       MOVL         ACC, XAR6
003f17bb   767f       LCR          0x3fdf2b
003f17bc   df2b
003f17bd   5200       CMPB         AL, #0x0
003f17be   6307       SB           7, GEQ
003f17bf   9a56       MOVB         AL, #0x56
003f17c0   8aa1       MOVL         XAR4, XAR1
003f17c1   767f       LCR          0x3f1094
003f17c2   1094
003f17c3   d034       MOVB         XAR0, #0x34
003f17c4   5a91       MOVZ         AR2, *+XAR1[AR0]
3f17c5:              $C$L63:
003f17c5   92a2       MOV          AL, AR2
003f17c6   ed19       SBF          25, NEQ
003f17c7   d040       MOVB         XAR0, #0x40
003f17c8   0691       MOVL         ACC, *+XAR1[AR0]
003f17c9   1e42       MOVL         *-SP[2], ACC
003f17ca   767f       LCR          0x3fdeb8
003f17cb   deb8
003f17cc   1e42       MOVL         *-SP[2], ACC
003f17cd   06c1       MOVL         ACC, *+XAR1[0]
003f17ce   767f       LCR          0x3fdce1
003f17cf   dce1
003f17d0   1ea6       MOVL         XAR6, ACC
003f17d1   28a9       MOV          AL, #0xb717
003f17d2   b717
003f17d3   28a8       MOV          AH, #0x38d1
003f17d4   38d1
003f17d5   1e42       MOVL         *-SP[2], ACC
003f17d6   06a6       MOVL         ACC, XAR6
003f17d7   767f       LCR          0x3fdf2b
003f17d8   df2b
003f17d9   5200       CMPB         AL, #0x0
003f17da   6305       SB           5, GEQ
003f17db   9a5a       MOVB         AL, #0x5a
003f17dc   8aa1       MOVL         XAR4, XAR1
003f17dd   767f       LCR          0x3f1094
003f17de   1094
3f17df:              $C$L64:
003f17df   d052       MOVB         XAR0, #0x52
003f17e0   8691       MOVL         XAR2, *+XAR1[AR0]
003f17e1   9a00       MOVB         AL, #0x0
003f17e2   28a8       MOV          AH, #0x4348
003f17e3   4348
003f17e4   1e42       MOVL         *-SP[2], ACC
003f17e5   aaa9       MOVL         ACC, XAR2
003f17e6   767f       LCR          0x3fdf2b
003f17e7   df2b
003f17e8   5200       CMPB         AL, #0x0
003f17e9   6507       SB           7, LEQ
003f17ea   9a5c       MOVB         AL, #0x5c
003f17eb   8aa1       MOVL         XAR4, XAR1
003f17ec   767f       LCR          0x3f1094
003f17ed   1094
003f17ee   d052       MOVB         XAR0, #0x52
003f17ef   8691       MOVL         XAR2, *+XAR1[AR0]
3f17f0:              $C$L65:
003f17f0   9a00       MOVB         AL, #0x0
003f17f1   9b00       MOVB         AH, #0x0
003f17f2   1e42       MOVL         *-SP[2], ACC
003f17f3   aaa9       MOVL         ACC, XAR2
003f17f4   767f       LCR          0x3fdf2b
003f17f5   df2b
003f17f6   5200       CMPB         AL, #0x0
003f17f7   6409       SB           9, LT
003f17f8   ff2f       MOV          ACC, #0x7f00 << 15
003f17f9   7f00
003f17fa   1e42       MOVL         *-SP[2], ACC
003f17fb   aaa9       MOVL         ACC, XAR2
003f17fc   767f       LCR          0x3fdf2b
003f17fd   df2b
003f17fe   5200       CMPB         AL, #0x0
003f17ff   6305       SB           5, GEQ
3f1800:              $C$L66:
003f1800   9a5d       MOVB         AL, #0x5d
003f1801   8aa1       MOVL         XAR4, XAR1
003f1802   767f       LCR          0x3f1094
003f1803   1094
3f1804:              $C$L67:
003f1804   d03c       MOVB         XAR0, #0x3c
003f1805   9a00       MOVB         AL, #0x0
003f1806   8691       MOVL         XAR2, *+XAR1[AR0]
003f1807   9b00       MOVB         AH, #0x0
003f1808   82c1       MOVL         XAR3, *+XAR1[0]
003f1809   1e42       MOVL         *-SP[2], ACC
003f180a   aaa9       MOVL         ACC, XAR2
003f180b   767f       LCR          0x3fdf2b
003f180c   df2b
003f180d   5200       CMPB         AL, #0x0
003f180e   6129       SB           41, EQ
003f180f   28a9       MOV          AL, #0x705f
003f1810   705f
003f1811   28a8       MOV          AH, #0x3089
003f1812   3089
003f1813   1e42       MOVL         *-SP[2], ACC
003f1814   aaa9       MOVL         ACC, XAR2
003f1815   767f       LCR          0x3fdeb8
003f1816   deb8
003f1817   1ea6       MOVL         XAR6, ACC
003f1818   ff2f       MOV          ACC, #0x7e00 << 15
003f1819   7e00
003f181a   1e42       MOVL         *-SP[2], ACC
003f181b   06a6       MOVL         ACC, XAR6
003f181c   767f       LCR          0x3fdde7
003f181d   dde7
003f181e   a242       MOVL         *-SP[2], XAR3
003f181f   767f       LCR          0x3fdde7
003f1820   dde7
003f1821   1e42       MOVL         *-SP[2], ACC
003f1822   9a00       MOVB         AL, #0x0
003f1823   28a8       MOV          AH, #0x4761
003f1824   4761
003f1825   767f       LCR          0x3fdce1
003f1826   dce1
003f1827   1ea6       MOVL         XAR6, ACC
003f1828   28a9       MOV          AL, #0x4000
003f1829   4000
003f182a   28a8       MOV          AH, #0x459c
003f182b   459c
003f182c   1e42       MOVL         *-SP[2], ACC
003f182d   06a6       MOVL         ACC, XAR6
003f182e   767f       LCR          0x3fdf2b
003f182f   df2b
003f1830   5200       CMPB         AL, #0x0
003f1831   6206       SB           6, GT
003f1832   9a5e       MOVB         AL, #0x5e
003f1833   8aa1       MOVL         XAR4, XAR1
003f1834   767f       LCR          0x3f1094
003f1835   1094
003f1836   82c1       MOVL         XAR3, *+XAR1[0]
3f1837:              $C$L68:
003f1837   d03e       MOVB         XAR0, #0x3e
003f1838   8691       MOVL         XAR2, *+XAR1[AR0]
003f1839   9a00       MOVB         AL, #0x0
003f183a   9b00       MOVB         AH, #0x0
003f183b   1e42       MOVL         *-SP[2], ACC
003f183c   aaa9       MOVL         ACC, XAR2
003f183d   767f       LCR          0x3fdf2b
003f183e   df2b
003f183f   5200       CMPB         AL, #0x0
003f1840   6129       SB           41, EQ
003f1841   28a9       MOV          AL, #0x705f
003f1842   705f
003f1843   28a8       MOV          AH, #0x3089
003f1844   3089
003f1845   1e42       MOVL         *-SP[2], ACC
003f1846   aaa9       MOVL         ACC, XAR2
003f1847   767f       LCR          0x3fdeb8
003f1848   deb8
003f1849   1ea6       MOVL         XAR6, ACC
003f184a   ff2f       MOV          ACC, #0x7e00 << 15
003f184b   7e00
003f184c   1e42       MOVL         *-SP[2], ACC
003f184d   06a6       MOVL         ACC, XAR6
003f184e   767f       LCR          0x3fdde7
003f184f   dde7
003f1850   a242       MOVL         *-SP[2], XAR3
003f1851   767f       LCR          0x3fdde7
003f1852   dde7
003f1853   1e42       MOVL         *-SP[2], ACC
003f1854   9a00       MOVB         AL, #0x0
003f1855   28a8       MOV          AH, #0x4761
003f1856   4761
003f1857   767f       LCR          0x3fdce1
003f1858   dce1
003f1859   1ea6       MOVL         XAR6, ACC
003f185a   28a9       MOV          AL, #0x4000
003f185b   4000
003f185c   28a8       MOV          AH, #0x459c
003f185d   459c
003f185e   1e42       MOVL         *-SP[2], ACC
003f185f   06a6       MOVL         ACC, XAR6
003f1860   767f       LCR          0x3fdf2b
003f1861   df2b
003f1862   5200       CMPB         AL, #0x0
003f1863   6206       SB           6, GT
003f1864   9a5e       MOVB         AL, #0x5e
003f1865   8aa1       MOVL         XAR4, XAR1
003f1866   767f       LCR          0x3f1094
003f1867   1094
003f1868   82c1       MOVL         XAR3, *+XAR1[0]
3f1869:              $C$L69:
003f1869   9a00       MOVB         AL, #0x0
003f186a   28a8       MOV          AH, #0x43c8
003f186b   43c8
003f186c   d040       MOVB         XAR0, #0x40
003f186d   1e42       MOVL         *-SP[2], ACC
003f186e   0691       MOVL         ACC, *+XAR1[AR0]
003f186f   767f       LCR          0x3fdde7
003f1870   dde7
003f1871   86a9       MOVL         XAR2, ACC
003f1872   9a00       MOVB         AL, #0x0
003f1873   28a8       MOV          AH, #0x4300
003f1874   4300
003f1875   1e42       MOVL         *-SP[2], ACC
003f1876   a2a9       MOVL         ACC, XAR3
003f1877   767f       LCR          0x3fdde7
003f1878   dde7
003f1879   1e42       MOVL         *-SP[2], ACC
003f187a   aaa9       MOVL         ACC, XAR2
003f187b   767f       LCR          0x3fdce1
003f187c   dce1
003f187d   1ea6       MOVL         XAR6, ACC
003f187e   28a9       MOV          AL, #0x4000
003f187f   4000
003f1880   28a8       MOV          AH, #0x459c
003f1881   459c
003f1882   1e42       MOVL         *-SP[2], ACC
003f1883   06a6       MOVL         ACC, XAR6
003f1884   767f       LCR          0x3fdf2b
003f1885   df2b
003f1886   5200       CMPB         AL, #0x0
003f1887   6405       SB           5, LT
003f1888   9a5f       MOVB         AL, #0x5f
003f1889   8aa1       MOVL         XAR4, XAR1
003f188a   767f       LCR          0x3f1094
003f188b   1094
3f188c:              $C$L70:
003f188c   d03a       MOVB         XAR0, #0x3a
003f188d   8691       MOVL         XAR2, *+XAR1[AR0]
003f188e   9a00       MOVB         AL, #0x0
003f188f   9b00       MOVB         AH, #0x0
003f1890   1e42       MOVL         *-SP[2], ACC
003f1891   aaa9       MOVL         ACC, XAR2
003f1892   767f       LCR          0x3fdf2b
003f1893   df2b
003f1894   5200       CMPB         AL, #0x0
003f1895   6148       SB           72, EQ
003f1896   d03c       MOVB         XAR0, #0x3c
003f1897   8291       MOVL         XAR3, *+XAR1[AR0]
003f1898   9a00       MOVB         AL, #0x0
003f1899   9b00       MOVB         AH, #0x0
003f189a   1e42       MOVL         *-SP[2], ACC
003f189b   a2a9       MOVL         ACC, XAR3
003f189c   767f       LCR          0x3fdf2b
003f189d   df2b
003f189e   5200       CMPB         AL, #0x0
003f189f   613e       SB           62, EQ
003f18a0   d03e       MOVB         XAR0, #0x3e
003f18a1   c491       MOVL         XAR6, *+XAR1[AR0]
003f18a2   9a00       MOVB         AL, #0x0
003f18a3   9b00       MOVB         AH, #0x0
003f18a4   c244       MOVL         *-SP[4], XAR6
003f18a5   1e42       MOVL         *-SP[2], ACC
003f18a6   06a6       MOVL         ACC, XAR6
003f18a7   767f       LCR          0x3fdf2b
003f18a8   df2b
003f18a9   5200       CMPB         AL, #0x0
003f18aa   6133       SB           51, EQ
003f18ab   28a9       MOV          AL, #0x705f
003f18ac   705f
003f18ad   28a8       MOV          AH, #0x3089
003f18ae   3089
003f18af   1e42       MOVL         *-SP[2], ACC
003f18b0   a2a9       MOVL         ACC, XAR3
003f18b1   767f       LCR          0x3fdeb8
003f18b2   deb8
003f18b3   1e42       MOVL         *-SP[2], ACC
003f18b4   aaa9       MOVL         ACC, XAR2
003f18b5   767f       LCR          0x3fdce1
003f18b6   dce1
003f18b7   1ea6       MOVL         XAR6, ACC
003f18b8   28a9       MOV          AL, #0x4000
003f18b9   4000
003f18ba   28a8       MOV          AH, #0x459c
003f18bb   459c
003f18bc   1e42       MOVL         *-SP[2], ACC
003f18bd   06a6       MOVL         ACC, XAR6
003f18be   767f       LCR          0x3fdf2b
003f18bf   df2b
003f18c0   5200       CMPB         AL, #0x0
003f18c1   6318       SB           24, GEQ
003f18c2   28a9       MOV          AL, #0x705f
003f18c3   705f
003f18c4   28a8       MOV          AH, #0x3089
003f18c5   3089
003f18c6   1e42       MOVL         *-SP[2], ACC
003f18c7   0644       MOVL         ACC, *-SP[4]
003f18c8   767f       LCR          0x3fdeb8
003f18c9   deb8
003f18ca   1e42       MOVL         *-SP[2], ACC
003f18cb   aaa9       MOVL         ACC, XAR2
003f18cc   767f       LCR          0x3fdce1
003f18cd   dce1
003f18ce   1ea6       MOVL         XAR6, ACC
003f18cf   28a9       MOV          AL, #0x4000
003f18d0   4000
003f18d1   28a8       MOV          AH, #0x459c
003f18d2   459c
003f18d3   1e42       MOVL         *-SP[2], ACC
003f18d4   06a6       MOVL         ACC, XAR6
003f18d5   767f       LCR          0x3fdf2b
003f18d6   df2b
003f18d7   5200       CMPB         AL, #0x0
003f18d8   6405       SB           5, LT
3f18d9:              $C$L71:
003f18d9   9a5f       MOVB         AL, #0x5f
003f18da   8aa1       MOVL         XAR4, XAR1
003f18db   767f       LCR          0x3f1094
003f18dc   1094
3f18dd:              $C$L72:
003f18dd   d0a8       MOVB         XAR0, #0xa8
003f18de   8691       MOVL         XAR2, *+XAR1[AR0]
003f18df   9a00       MOVB         AL, #0x0
003f18e0   9b00       MOVB         AH, #0x0
003f18e1   1e42       MOVL         *-SP[2], ACC
003f18e2   aaa9       MOVL         ACC, XAR2
003f18e3   767f       LCR          0x3fdf2b
003f18e4   df2b
003f18e5   5200       CMPB         AL, #0x0
003f18e6   6507       SB           7, LEQ
003f18e7   9a68       MOVB         AL, #0x68
003f18e8   8aa1       MOVL         XAR4, XAR1
003f18e9   767f       LCR          0x3f1094
003f18ea   1094
003f18eb   d0a8       MOVB         XAR0, #0xa8
003f18ec   8691       MOVL         XAR2, *+XAR1[AR0]
3f18ed:              $C$L73:
003f18ed   d040       MOVB         XAR0, #0x40
003f18ee   0691       MOVL         ACC, *+XAR1[AR0]
003f18ef   767f       LCR          0x3fff4d
003f18f0   ff4d
003f18f1   1e42       MOVL         *-SP[2], ACC
003f18f2   aaa9       MOVL         ACC, XAR2
003f18f3   767f       LCR          0x3fdf2b
003f18f4   df2b
003f18f5   5200       CMPB         AL, #0x0
003f18f6   6305       SB           5, GEQ
003f18f7   9a69       MOVB         AL, #0x69
003f18f8   8aa1       MOVL         XAR4, XAR1
003f18f9   767f       LCR          0x3f1094
003f18fa   1094
3f18fb:              $C$L74:
003f18fb   fe84       SUBB         SP, #4
003f18fc   82be       MOVL         XAR3, *--SP
003f18fd   86be       MOVL         XAR2, *--SP
003f18fe   8bbe       MOVL         XAR1, *--SP
003f18ff   0006       LRETR        
3f1900:              _USER_checkDefErrors:
003f1900   b2bd       MOVL         *SP++, XAR1
003f1901   aabd       MOVL         *SP++, XAR2
003f1902   fe02       ADDB         SP, #2
003f1903   d02c       MOVB         XAR0, #0x2c
003f1904   8ba4       MOVL         XAR1, XAR4
003f1905   8691       MOVL         XAR2, *+XAR1[AR0]
003f1906   9a00       MOVB         AL, #0x0
003f1907   28a8       MOV          AH, #0x4300
003f1908   4300
003f1909   1e42       MOVL         *-SP[2], ACC
003f190a   aaa9       MOVL         ACC, XAR2
003f190b   767f       LCR          0x3fdf2b
003f190c   df2b
003f190d   5200       CMPB         AL, #0x0
003f190e   6407       SB           7, LT
003f190f   9a35       MOVB         AL, #0x35
003f1910   8aa1       MOVL         XAR4, XAR1
003f1911   767f       LCR          0x3f1094
003f1912   1094
003f1913   d02c       MOVB         XAR0, #0x2c
003f1914   8691       MOVL         XAR2, *+XAR1[AR0]
3f1915:              $C$L75:
003f1915   28a9       MOV          AL, #0xcccd
003f1916   cccd
003f1917   28a8       MOV          AH, #0x3dcc
003f1918   3dcc
003f1919   1e42       MOVL         *-SP[2], ACC
003f191a   aaa9       MOVL         ACC, XAR2
003f191b   767f       LCR          0x3fdf2b
003f191c   df2b
003f191d   5200       CMPB         AL, #0x0
003f191e   6305       SB           5, GEQ
003f191f   9a36       MOVB         AL, #0x36
003f1920   8aa1       MOVL         XAR4, XAR1
003f1921   767f       LCR          0x3f1094
003f1922   1094
3f1923:              $C$L76:
003f1923   fe82       SUBB         SP, #2
003f1924   86be       MOVL         XAR2, *--SP
003f1925   8bbe       MOVL         XAR1, *--SP
003f1926   0006       LRETR        
3f1927:              _USER_calcPIgains:
003f1927   b2bd       MOVL         *SP++, XAR1
003f1928   aabd       MOVL         *SP++, XAR2
003f1929   a2bd       MOVL         *SP++, XAR3
003f192a   fe16       ADDB         SP, #22
003f192b   d0a6       MOVB         XAR0, #0xa6
003f192c   8ba4       MOVL         XAR1, XAR4
003f192d   06c5       MOVL         ACC, *+XAR5[0]
003f192e   1e4e       MOVL         *-SP[14], ACC
003f192f   86d5       MOVL         XAR2, *+XAR5[2]
003f1930   0691       MOVL         ACC, *+XAR1[AR0]
003f1931   d018       MOVB         XAR0, #0x18
003f1932   1e50       MOVL         *-SP[16], ACC
003f1933   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1934   767f       LCR          0x3fcfda
003f1935   cfda
003f1936   d018       MOVB         XAR0, #0x18
003f1937   82a9       MOVL         XAR3, ACC
003f1938   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1939   767f       LCR          0x3fcfb3
003f193a   cfb3
003f193b   d018       MOVB         XAR0, #0x18
003f193c   1e52       MOVL         *-SP[18], ACC
003f193d   8a91       MOVL         XAR4, *+XAR1[AR0]
003f193e   767f       LCR          0x3fcef8
003f193f   cef8
003f1940   1e54       MOVL         *-SP[20], ACC
003f1941   aa42       MOVL         *-SP[2], XAR2
003f1942   0650       MOVL         ACC, *-SP[16]
003f1943   767f       LCR          0x3fdde7
003f1944   dde7
003f1945   86a9       MOVL         XAR2, ACC
003f1946   ff2f       MOV          ACC, #0x7d00 << 15
003f1947   7d00
003f1948   1e42       MOVL         *-SP[2], ACC
003f1949   a2a9       MOVL         ACC, XAR3
003f194a   767f       LCR          0x3fdde7
003f194b   dde7
003f194c   c44e       MOVL         XAR6, *-SP[14]
003f194d   c242       MOVL         *-SP[2], XAR6
003f194e   767f       LCR          0x3fdde7
003f194f   dde7
003f1950   aa42       MOVL         *-SP[2], XAR2
003f1951   767f       LCR          0x3fdce1
003f1952   dce1
003f1953   88ad       MOVZ         AR6, SP
003f1954   de8c       SUBB         XAR6, #12
003f1955   767f       LCR          0x3fdfb7
003f1956   dfb7
003f1957   5cad       MOVZ         AR4, SP
003f1958   88ad       MOVZ         AR6, SP
003f1959   8f7f       MOVL         XAR5, #0x3f63e4
003f195a   63e4
003f195b   dc8c       SUBB         XAR4, #12
003f195c   de88       SUBB         XAR6, #8
003f195d   767f       LCR          0x3fdc5e
003f195e   dc5e
003f195f   5cad       MOVZ         AR4, SP
003f1960   dc88       SUBB         XAR4, #8
003f1961   767f       LCR          0x3fdf7b
003f1962   df7b
003f1963   1e56       MOVL         *-SP[22], ACC
003f1964   a242       MOVL         *-SP[2], XAR3
003f1965   0654       MOVL         ACC, *-SP[20]
003f1966   767f       LCR          0x3fdce1
003f1967   dce1
003f1968   c450       MOVL         XAR6, *-SP[16]
003f1969   c242       MOVL         *-SP[2], XAR6
003f196a   767f       LCR          0x3fdde7
003f196b   dde7
003f196c   88ad       MOVZ         AR6, SP
003f196d   de8c       SUBB         XAR6, #12
003f196e   767f       LCR          0x3fdfb7
003f196f   dfb7
003f1970   5cad       MOVZ         AR4, SP
003f1971   88ad       MOVZ         AR6, SP
003f1972   8f7f       MOVL         XAR5, #0x3f63e4
003f1973   63e4
003f1974   dc8c       SUBB         XAR4, #12
003f1975   de88       SUBB         XAR6, #8
003f1976   767f       LCR          0x3fdc5e
003f1977   dc5e
003f1978   5cad       MOVZ         AR4, SP
003f1979   dc88       SUBB         XAR4, #8
003f197a   767f       LCR          0x3fdf7b
003f197b   df7b
003f197c   82a9       MOVL         XAR3, ACC
003f197d   ff2f       MOV          ACC, #0x7d00 << 15
003f197e   7d00
003f197f   1e42       MOVL         *-SP[2], ACC
003f1980   0652       MOVL         ACC, *-SP[18]
003f1981   767f       LCR          0x3fdde7
003f1982   dde7
003f1983   c44e       MOVL         XAR6, *-SP[14]
003f1984   c242       MOVL         *-SP[2], XAR6
003f1985   767f       LCR          0x3fdde7
003f1986   dde7
003f1987   aa42       MOVL         *-SP[2], XAR2
003f1988   767f       LCR          0x3fdce1
003f1989   dce1
003f198a   88ad       MOVZ         AR6, SP
003f198b   de8c       SUBB         XAR6, #12
003f198c   767f       LCR          0x3fdfb7
003f198d   dfb7
003f198e   5cad       MOVZ         AR4, SP
003f198f   88ad       MOVZ         AR6, SP
003f1990   8f7f       MOVL         XAR5, #0x3f63e4
003f1991   63e4
003f1992   dc8c       SUBB         XAR4, #12
003f1993   de88       SUBB         XAR6, #8
003f1994   767f       LCR          0x3fdc5e
003f1995   dc5e
003f1996   5cad       MOVZ         AR4, SP
003f1997   dc88       SUBB         XAR4, #8
003f1998   767f       LCR          0x3fdf7b
003f1999   df7b
003f199a   1e4e       MOVL         *-SP[14], ACC
003f199b   0652       MOVL         ACC, *-SP[18]
003f199c   1e42       MOVL         *-SP[2], ACC
003f199d   0654       MOVL         ACC, *-SP[20]
003f199e   767f       LCR          0x3fdce1
003f199f   dce1
003f19a0   c450       MOVL         XAR6, *-SP[16]
003f19a1   c242       MOVL         *-SP[2], XAR6
003f19a2   767f       LCR          0x3fdde7
003f19a3   dde7
003f19a4   88ad       MOVZ         AR6, SP
003f19a5   de8c       SUBB         XAR6, #12
003f19a6   767f       LCR          0x3fdfb7
003f19a7   dfb7
003f19a8   5cad       MOVZ         AR4, SP
003f19a9   88ad       MOVZ         AR6, SP
003f19aa   8f7f       MOVL         XAR5, #0x3f63e4
003f19ab   63e4
003f19ac   dc8c       SUBB         XAR4, #12
003f19ad   de88       SUBB         XAR6, #8
003f19ae   767f       LCR          0x3fdc5e
003f19af   dc5e
003f19b0   5cad       MOVZ         AR4, SP
003f19b1   dc88       SUBB         XAR4, #8
003f19b2   767f       LCR          0x3fdf7b
003f19b3   df7b
003f19b4   d020       MOVB         XAR0, #0x20
003f19b5   8a91       MOVL         XAR4, *+XAR1[AR0]
003f19b6   86a9       MOVL         XAR2, ACC
003f19b7   0200       MOVB         ACC, #0
003f19b8   a2d4       MOVL         *+XAR4[2], XAR3
003f19b9   a242       MOVL         *-SP[2], XAR3
003f19ba   1e44       MOVL         *-SP[4], ACC
003f19bb   0656       MOVL         ACC, *-SP[22]
003f19bc   d501       MOVB         XAR5, #0x1
003f19bd   8aa1       MOVL         XAR4, XAR1
003f19be   767f       LCR          0x3f2ce0
003f19bf   2ce0
003f19c0   d032       MOVB         XAR0, #0x32
003f19c1   8a91       MOVL         XAR4, *+XAR1[AR0]
003f19c2   0200       MOVB         ACC, #0
003f19c3   aad4       MOVL         *+XAR4[2], XAR2
003f19c4   aa42       MOVL         *-SP[2], XAR2
003f19c5   1e44       MOVL         *-SP[4], ACC
003f19c6   064e       MOVL         ACC, *-SP[14]
003f19c7   d502       MOVB         XAR5, #0x2
003f19c8   8aa1       MOVL         XAR4, XAR1
003f19c9   767f       LCR          0x3f2ce0
003f19ca   2ce0
003f19cb   fe96       SUBB         SP, #22
003f19cc   82be       MOVL         XAR3, *--SP
003f19cd   86be       MOVL         XAR2, *--SP
003f19ce   8bbe       MOVL         XAR1, *--SP
003f19cf   0006       LRETR        
3f19d0:              _HAL_setupTimers:
003f19d0   b2bd       MOVL         *SP++, XAR1
003f19d1   aabd       MOVL         *SP++, XAR2
003f19d2   a2bd       MOVL         *SP++, XAR3
003f19d3   fe02       ADDB         SP, #2
003f19d4   86a9       MOVL         XAR2, ACC
003f19d5   028a       MOVB         ACC, #138
003f19d6   07a4       ADDL         ACC, XAR4
003f19d7   8ba9       MOVL         XAR1, ACC
003f19d8   9a00       MOVB         AL, #0x0
003f19d9   8ac1       MOVL         XAR4, *+XAR1[0]
003f19da   767f       LCR          0x3f45bf
003f19db   45bf
003f19dc   28a9       MOV          AL, #0x0800
003f19dd   0800
003f19de   8ac1       MOVL         XAR4, *+XAR1[0]
003f19df   767f       LCR          0x3f45bb
003f19e0   45bb
003f19e1   9a00       MOVB         AL, #0x0
003f19e2   28a8       MOV          AH, #0x43fa
003f19e3   43fa
003f19e4   82c1       MOVL         XAR3, *+XAR1[0]
003f19e5   1e42       MOVL         *-SP[2], ACC
003f19e6   aaa9       MOVL         ACC, XAR2
003f19e7   767f       LCR          0x3fdde7
003f19e8   dde7
003f19e9   767f       LCR          0x3f467e
003f19ea   467e
003f19eb   1901       SUBB         ACC, #1
003f19ec   1ed3       MOVL         *+XAR3[2], ACC
003f19ed   9a00       MOVB         AL, #0x0
003f19ee   8ac1       MOVL         XAR4, *+XAR1[0]
003f19ef   767f       LCR          0x3f45ad
003f19f0   45ad
003f19f1   9a00       MOVB         AL, #0x0
003f19f2   8ad1       MOVL         XAR4, *+XAR1[2]
003f19f3   767f       LCR          0x3f45bf
003f19f4   45bf
003f19f5   28a9       MOV          AL, #0x0800
003f19f6   0800
003f19f7   8ad1       MOVL         XAR4, *+XAR1[2]
003f19f8   767f       LCR          0x3f45bb
003f19f9   45bb
003f19fa   28a9       MOV          AL, #0x4000
003f19fb   4000
003f19fc   28a8       MOV          AH, #0x461c
003f19fd   461c
003f19fe   82d1       MOVL         XAR3, *+XAR1[2]
003f19ff   1e42       MOVL         *-SP[2], ACC
003f1a00   aaa9       MOVL         ACC, XAR2
003f1a01   767f       LCR          0x3fdde7
003f1a02   dde7
003f1a03   767f       LCR          0x3f467e
003f1a04   467e
003f1a05   1901       SUBB         ACC, #1
003f1a06   1ed3       MOVL         *+XAR3[2], ACC
003f1a07   9a00       MOVB         AL, #0x0
003f1a08   8ad1       MOVL         XAR4, *+XAR1[2]
003f1a09   767f       LCR          0x3f45ad
003f1a0a   45ad
003f1a0b   9a00       MOVB         AL, #0x0
003f1a0c   8ae1       MOVL         XAR4, *+XAR1[4]
003f1a0d   767f       LCR          0x3f45bf
003f1a0e   45bf
003f1a0f   8ae1       MOVL         XAR4, *+XAR1[4]
003f1a10   28a9       MOV          AL, #0x0800
003f1a11   0800
003f1a12   767f       LCR          0x3f45bb
003f1a13   45bb
003f1a14   8ae1       MOVL         XAR4, *+XAR1[4]
003f1a15   0200       MOVB         ACC, #0
003f1a16   1901       SUBB         ACC, #1
003f1a17   1ed4       MOVL         *+XAR4[2], ACC
003f1a18   9a00       MOVB         AL, #0x0
003f1a19   8ae1       MOVL         XAR4, *+XAR1[4]
003f1a1a   767f       LCR          0x3f45ad
003f1a1b   45ad
003f1a1c   fe82       SUBB         SP, #2
003f1a1d   82be       MOVL         XAR3, *--SP
003f1a1e   86be       MOVL         XAR2, *--SP
003f1a1f   8bbe       MOVL         XAR1, *--SP
003f1a20   0006       LRETR        
3f1a21:              _HAL_setupSpiA:
003f1a21   b2bd       MOVL         *SP++, XAR1
003f1a22   d092       MOVB         XAR0, #0x92
003f1a23   8ba4       MOVL         XAR1, XAR4
003f1a24   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a25   767f       LCR          0x3f4368
003f1a26   4368
003f1a27   d092       MOVB         XAR0, #0x92
003f1a28   9a04       MOVB         AL, #0x4
003f1a29   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a2a   767f       LCR          0x3f434e
003f1a2b   434e
003f1a2c   d092       MOVB         XAR0, #0x92
003f1a2d   9a40       MOVB         AL, #0x40
003f1a2e   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a2f   767f       LCR          0x3f4350
003f1a30   4350
003f1a31   d092       MOVB         XAR0, #0x92
003f1a32   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a33   767f       LCR          0x3f438b
003f1a34   438b
003f1a35   d092       MOVB         XAR0, #0x92
003f1a36   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a37   767f       LCR          0x3f4383
003f1a38   4383
003f1a39   d092       MOVB         XAR0, #0x92
003f1a3a   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a3b   767f       LCR          0x3f4387
003f1a3c   4387
003f1a3d   d092       MOVB         XAR0, #0x92
003f1a3e   9a10       MOVB         AL, #0x10
003f1a3f   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a40   767f       LCR          0x3f4328
003f1a41   4328
003f1a42   d092       MOVB         XAR0, #0x92
003f1a43   9a04       MOVB         AL, #0x4
003f1a44   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a45   767f       LCR          0x3f435a
003f1a46   435a
003f1a47   d092       MOVB         XAR0, #0x92
003f1a48   9a0f       MOVB         AL, #0xf
003f1a49   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a4a   767f       LCR          0x3f4356
003f1a4b   4356
003f1a4c   d092       MOVB         XAR0, #0x92
003f1a4d   9a10       MOVB         AL, #0x10
003f1a4e   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a4f   767f       LCR          0x3f4332
003f1a50   4332
003f1a51   d092       MOVB         XAR0, #0x92
003f1a52   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a53   767f       LCR          0x3f43a3
003f1a54   43a3
003f1a55   8bbe       MOVL         XAR1, *--SP
003f1a56   0006       LRETR        
3f1a57:              _HAL_setupScia:
003f1a57   b2bd       MOVL         *SP++, XAR1
003f1a58   d096       MOVB         XAR0, #0x96
003f1a59   8ba4       MOVL         XAR1, XAR4
003f1a5a   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a5b   767f       LCR          0x3f4237
003f1a5c   4237
003f1a5d   d096       MOVB         XAR0, #0x96
003f1a5e   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a5f   767f       LCR          0x3f4233
003f1a60   4233
003f1a61   d096       MOVB         XAR0, #0x96
003f1a62   9a00       MOVB         AL, #0x0
003f1a63   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a64   767f       LCR          0x3f4162
003f1a65   4162
003f1a66   d096       MOVB         XAR0, #0x96
003f1a67   9a07       MOVB         AL, #0x7
003f1a68   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a69   767f       LCR          0x3f417f
003f1a6a   417f
003f1a6b   d096       MOVB         XAR0, #0x96
003f1a6c   9a00       MOVB         AL, #0x0
003f1a6d   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a6e   767f       LCR          0x3f4177
003f1a6f   4177
003f1a70   d096       MOVB         XAR0, #0x96
003f1a71   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a72   767f       LCR          0x3f41fb
003f1a73   41fb
003f1a74   d096       MOVB         XAR0, #0x96
003f1a75   9a00       MOVB         AL, #0x0
003f1a76   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a77   767f       LCR          0x3f4173
003f1a78   4173
003f1a79   d096       MOVB         XAR0, #0x96
003f1a7a   9a00       MOVB         AL, #0x0
003f1a7b   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a7c   767f       LCR          0x3f417b
003f1a7d   417b
003f1a7e   d096       MOVB         XAR0, #0x96
003f1a7f   9a0f       MOVB         AL, #0xf
003f1a80   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a81   767f       LCR          0x3f4183
003f1a82   4183
003f1a83   d096       MOVB         XAR0, #0x96
003f1a84   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a85   767f       LCR          0x3f41e4
003f1a86   41e4
003f1a87   d096       MOVB         XAR0, #0x96
003f1a88   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a89   767f       LCR          0x3f41f8
003f1a8a   41f8
003f1a8b   d096       MOVB         XAR0, #0x96
003f1a8c   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a8d   767f       LCR          0x3f421d
003f1a8e   421d
003f1a8f   d096       MOVB         XAR0, #0x96
003f1a90   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a91   767f       LCR          0x3f420c
003f1a92   420c
003f1a93   d096       MOVB         XAR0, #0x96
003f1a94   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1a95   767f       LCR          0x3f4209
003f1a96   4209
003f1a97   8bbe       MOVL         XAR1, *--SP
003f1a98   0006       LRETR        
3f1a99:              _HAL_setupPwms:
003f1a99   b2bd       MOVL         *SP++, XAR1
003f1a9a   aabd       MOVL         *SP++, XAR2
003f1a9b   a2bd       MOVL         *SP++, XAR3
003f1a9c   fe06       ADDB         SP, #6
003f1a9d   8ba4       MOVL         XAR1, XAR4
003f1a9e   c450       MOVL         XAR6, *-SP[16]
003f1a9f   82a4       MOVL         XAR3, XAR4
003f1aa0   a846       MOVL         *-SP[6], XAR4
003f1aa1   7d43       MOV          *-SP[3], AR5
003f1aa2   c242       MOVL         *-SP[2], XAR6
003f1aa3   767f       LCR          0x3fdde7
003f1aa4   dde7
003f1aa5   767f       LCR          0x3f46bf
003f1aa6   46bf
003f1aa7   db7c       ADDB         XAR3, #124
003f1aa8   ffc0       LSR          AL, 1
003f1aa9   9644       MOV          *-SP[4], AL
003f1aaa   8ac3       MOVL         XAR4, *+XAR3[0]
003f1aab   7622       EALLOW       
003f1aac   dc18       ADDB         XAR4, #24
003f1aad   1ac4       OR           *+XAR4[0], #0x0004
003f1aae   0004
003f1aaf   761a       EDIS         
003f1ab0   8ad3       MOVL         XAR4, *+XAR3[2]
003f1ab1   7622       EALLOW       
003f1ab2   dc18       ADDB         XAR4, #24
003f1ab3   1ac4       OR           *+XAR4[0], #0x0004
003f1ab4   0004
003f1ab5   761a       EDIS         
003f1ab6   7622       EALLOW       
003f1ab7   8ae3       MOVL         XAR4, *+XAR3[4]
003f1ab8   dc18       ADDB         XAR4, #24
003f1ab9   1ac4       OR           *+XAR4[0], #0x0004
003f1aba   0004
003f1abb   761a       EDIS         
003f1abc   ff69       SPM          #0
003f1abd   8ad1       MOVL         XAR4, *+XAR1[2]
003f1abe   767f       LCR          0x3f3ed5
003f1abf   3ed5
003f1ac0   d202       MOVB         XAR2, #0x2
003f1ac1   8ba3       MOVL         XAR1, XAR3
3f1ac2:              $C$L1:
003f1ac2   8ac1       MOVL         XAR4, *+XAR1[0]
003f1ac3   9a02       MOVB         AL, #0x2
003f1ac4   767f       LCR          0x3f357a
003f1ac5   357a
003f1ac6   8ac1       MOVL         XAR4, *+XAR1[0]
003f1ac7   767f       LCR          0x3f36c2
003f1ac8   36c2
003f1ac9   9a08       MOVB         AL, #0x8
003f1aca   8ac1       MOVL         XAR4, *+XAR1[0]
003f1acb   767f       LCR          0x3f34a1
003f1acc   34a1
003f1acd   9a00       MOVB         AL, #0x0
003f1ace   8ac1       MOVL         XAR4, *+XAR1[0]
003f1acf   767f       LCR          0x3f345f
003f1ad0   345f
003f1ad1   9a00       MOVB         AL, #0x0
003f1ad2   8ac1       MOVL         XAR4, *+XAR1[0]
003f1ad3   767f       LCR          0x3f34e2
003f1ad4   34e2
003f1ad5   9a00       MOVB         AL, #0x0
003f1ad6   8ac1       MOVL         XAR4, *+XAR1[0]
003f1ad7   767f       LCR          0x3f3580
003f1ad8   3580
003f1ad9   28a9       MOV          AL, #0x2000
003f1ada   2000
003f1adb   8ac1       MOVL         XAR4, *+XAR1[0]
003f1adc   767f       LCR          0x3f349b
003f1add   349b
003f1ade   28a9       MOV          AL, #0x8000
003f1adf   8000
003f1ae0   8ac1       MOVL         XAR4, *+XAR1[0]
003f1ae1   767f       LCR          0x3f3497
003f1ae2   3497
003f1ae3   9a00       MOVB         AL, #0x0
003f1ae4   8ac1       MOVL         XAR4, *+XAR1[0]
003f1ae5   767f       LCR          0x3f349f
003f1ae6   349f
003f1ae7   9a00       MOVB         AL, #0x0
003f1ae8   8ac1       MOVL         XAR4, *+XAR1[0]
003f1ae9   767f       LCR          0x3f357e
003f1aea   357e
003f1aeb   9a00       MOVB         AL, #0x0
003f1aec   8ac1       MOVL         XAR4, *+XAR1[0]
003f1aed   767f       LCR          0x3f34aa
003f1aee   34aa
003f1aef   8ac1       MOVL         XAR4, *+XAR1[0]
003f1af0   9a00       MOVB         AL, #0x0
003f1af1   767f       LCR          0x3f34b2
003f1af2   34b2
003f1af3   9a00       MOVB         AL, #0x0
003f1af4   8ac1       MOVL         XAR4, *+XAR1[0]
003f1af5   767f       LCR          0x3f34ac
003f1af6   34ac
003f1af7   9a00       MOVB         AL, #0x0
003f1af8   8ac1       MOVL         XAR4, *+XAR1[0]
003f1af9   767f       LCR          0x3f3491
003f1afa   3491
003f1afb   9a01       MOVB         AL, #0x1
003f1afc   8ac1       MOVL         XAR4, *+XAR1[0]
003f1afd   767f       LCR          0x3f348b
003f1afe   348b
003f1aff   9a02       MOVB         AL, #0x2
003f1b00   8ac1       MOVL         XAR4, *+XAR1[0]
003f1b01   767f       LCR          0x3f35d4
003f1b02   35d4
003f1b03   9a01       MOVB         AL, #0x1
003f1b04   8ac1       MOVL         XAR4, *+XAR1[0]
003f1b05   767f       LCR          0x3f35f8
003f1b06   35f8
003f1b07   9a03       MOVB         AL, #0x3
003f1b08   8ac1       MOVL         XAR4, *+XAR1[0]
003f1b09   767f       LCR          0x3f3569
003f1b0a   3569
003f1b0b   9a08       MOVB         AL, #0x8
003f1b0c   8ac1       MOVL         XAR4, *+XAR1[0]
003f1b0d   767f       LCR          0x3f3562
003f1b0e   3562
003f1b0f   9a78       MOVB         AL, #0x78
003f1b10   8ac1       MOVL         XAR4, *+XAR1[0]
003f1b11   767f       LCR          0x3f355f
003f1b12   355f
003f1b13   9a78       MOVB         AL, #0x78
003f1b14   8ac1       MOVL         XAR4, *+XAR1[0]
003f1b15   767f       LCR          0x3f3577
003f1b16   3577
003f1b17   8ac1       MOVL         XAR4, *+XAR1[0]
003f1b18   767f       LCR          0x3f36c5
003f1b19   36c5
003f1b1a   8ac1       MOVL         XAR4, *+XAR1[0]
003f1b1b   767f       LCR          0x3f367f
003f1b1c   367f
003f1b1d   d902       ADDB         XAR1, #2
003f1b1e   000a       BANZ         -92,AR2--
003f1b1f   ffa4
003f1b20   8ac3       MOVL         XAR4, *+XAR3[0]
003f1b21   767f       LCR          0x3f369b
003f1b22   369b
003f1b23   9a01       MOVB         AL, #0x1
003f1b24   8ac3       MOVL         XAR4, *+XAR3[0]
003f1b25   767f       LCR          0x3f3478
003f1b26   3478
003f1b27   8ac3       MOVL         XAR4, *+XAR3[0]
003f1b28   767f       LCR          0x3f3649
003f1b29   3649
003f1b2a   9243       MOV          AL, *-SP[3]
003f1b2b   5203       CMPB         AL, #0x3
003f1b2c   ec0f       SBF          15, EQ
003f1b2d   5202       CMPB         AL, #0x2
003f1b2e   ec07       SBF          7, EQ
003f1b2f   8ac3       MOVL         XAR4, *+XAR3[0]
003f1b30   9a01       MOVB         AL, #0x1
003f1b31   767f       LCR          0x3f34b6
003f1b32   34b6
003f1b33   9a01       MOVB         AL, #0x1
003f1b34   6f0c       SB           12, UNC
3f1b35:              $C$L2:
003f1b35   8ac3       MOVL         XAR4, *+XAR3[0]
003f1b36   9a02       MOVB         AL, #0x2
003f1b37   767f       LCR          0x3f34b6
003f1b38   34b6
003f1b39   9a02       MOVB         AL, #0x2
003f1b3a   6f06       SB           6, UNC
3f1b3b:              $C$L3:
003f1b3b   8ac3       MOVL         XAR4, *+XAR3[0]
003f1b3c   9a03       MOVB         AL, #0x3
003f1b3d   767f       LCR          0x3f34b6
003f1b3e   34b6
003f1b3f   9a03       MOVB         AL, #0x3
3f1b40:              $C$L4:
003f1b40   8ac3       MOVL         XAR4, *+XAR3[0]
003f1b41   767f       LCR          0x3f3482
003f1b42   3482
003f1b43   8ac3       MOVL         XAR4, *+XAR3[0]
003f1b44   d01c       MOVB         XAR0, #0x1c
003f1b45   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f1b46   0194
003f1b47   8ac3       MOVL         XAR4, *+XAR3[0]
003f1b48   d01c       MOVB         XAR0, #0x1c
003f1b49   56bf       MOVB         *+XAR4[AR0], #0x04, UNC
003f1b4a   0494
003f1b4b   5944       MOVZ         AR1, *-SP[4]
003f1b4c   8ac3       MOVL         XAR4, *+XAR3[0]
003f1b4d   92a1       MOV          AL, AR1
003f1b4e   767f       LCR          0x3f34aa
003f1b4f   34aa
003f1b50   8ad3       MOVL         XAR4, *+XAR3[2]
003f1b51   92a1       MOV          AL, AR1
003f1b52   767f       LCR          0x3f34aa
003f1b53   34aa
003f1b54   8ae3       MOVL         XAR4, *+XAR3[4]
003f1b55   92a1       MOV          AL, AR1
003f1b56   767f       LCR          0x3f34aa
003f1b57   34aa
003f1b58   8a46       MOVL         XAR4, *-SP[6]
003f1b59   8ad4       MOVL         XAR4, *+XAR4[2]
003f1b5a   767f       LCR          0x3f3e5e
003f1b5b   3e5e
003f1b5c   fe86       SUBB         SP, #6
003f1b5d   82be       MOVL         XAR3, *--SP
003f1b5e   86be       MOVL         XAR2, *--SP
003f1b5f   8bbe       MOVL         XAR1, *--SP
003f1b60   0006       LRETR        
3f1b61:              _HAL_setupPll:
003f1b61   b2bd       MOVL         *SP++, XAR1
003f1b62   d07a       MOVB         XAR0, #0x7a
003f1b63   59a9       MOVZ         AR1, AL
003f1b64   aabd       MOVL         *SP++, XAR2
003f1b65   86a4       MOVL         XAR2, XAR4
003f1b66   8a92       MOVL         XAR4, *+XAR2[AR0]
003f1b67   767f       LCR          0x3f445d
003f1b68   445d
003f1b69   5200       CMPB         AL, #0x0
003f1b6a   ec06       SBF          6, EQ
003f1b6b   d07a       MOVB         XAR0, #0x7a
003f1b6c   8a92       MOVL         XAR4, *+XAR2[AR0]
003f1b6d   767f       LCR          0x3f444b
003f1b6e   444b
003f1b6f   7625       ESTOP0       
3f1b70:              $C$L5:
003f1b70   d07a       MOVB         XAR0, #0x7a
003f1b71   ff69       SPM          #0
003f1b72   8a92       MOVL         XAR4, *+XAR2[AR0]
003f1b73   767f       LCR          0x3f445a
003f1b74   445a
003f1b75   5200       CMPB         AL, #0x0
003f1b76   ec06       SBF          6, EQ
003f1b77   d07a       MOVB         XAR0, #0x7a
003f1b78   9a00       MOVB         AL, #0x0
003f1b79   8a92       MOVL         XAR4, *+XAR2[AR0]
003f1b7a   767f       LCR          0x3f443e
003f1b7b   443e
3f1b7c:              $C$L6:
003f1b7c   d07a       MOVB         XAR0, #0x7a
003f1b7d   8a92       MOVL         XAR4, *+XAR2[AR0]
003f1b7e   767f       LCR          0x3f4460
003f1b7f   4460
003f1b80   93a1       MOV          AH, AR1
003f1b81   55a9       CMP          AH, @AL
003f1b82   ec0a       SBF          10, EQ
003f1b83   d07a       MOVB         XAR0, #0x7a
003f1b84   8a92       MOVL         XAR4, *+XAR2[AR0]
003f1b85   767f       LCR          0x3f4488
003f1b86   4488
003f1b87   d07a       MOVB         XAR0, #0x7a
003f1b88   92a1       MOV          AL, AR1
003f1b89   8a92       MOVL         XAR4, *+XAR2[AR0]
003f1b8a   767f       LCR          0x3f4445
003f1b8b   4445
3f1b8c:              $C$L7:
003f1b8c   d07a       MOVB         XAR0, #0x7a
003f1b8d   8a92       MOVL         XAR4, *+XAR2[AR0]
003f1b8e   767f       LCR          0x3f4457
003f1b8f   4457
003f1b90   5200       CMPB         AL, #0x0
003f1b91   ecfb       SBF          -5, EQ
003f1b92   d07a       MOVB         XAR0, #0x7a
003f1b93   8a92       MOVL         XAR4, *+XAR2[AR0]
003f1b94   767f       LCR          0x3f4470
003f1b95   4470
003f1b96   d07a       MOVB         XAR0, #0x7a
003f1b97   28a9       MOV          AL, #0x0100
003f1b98   0100
003f1b99   8a92       MOVL         XAR4, *+XAR2[AR0]
003f1b9a   767f       LCR          0x3f443e
003f1b9b   443e
003f1b9c   86be       MOVL         XAR2, *--SP
003f1b9d   8bbe       MOVL         XAR1, *--SP
003f1b9e   0006       LRETR        
3f1b9f:              _HAL_setupPie:
003f1b9f   b2bd       MOVL         *SP++, XAR1
003f1ba0   d078       MOVB         XAR0, #0x78
003f1ba1   8ba4       MOVL         XAR1, XAR4
003f1ba2   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1ba3   767f       LCR          0x3f4044
003f1ba4   4044
003f1ba5   d078       MOVB         XAR0, #0x78
003f1ba6   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1ba7   767f       LCR          0x3f403a
003f1ba8   403a
003f1ba9   d078       MOVB         XAR0, #0x78
003f1baa   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1bab   767f       LCR          0x3f4047
003f1bac   4047
003f1bad   d078       MOVB         XAR0, #0x78
003f1bae   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1baf   767f       LCR          0x3f404a
003f1bb0   404a
003f1bb1   d078       MOVB         XAR0, #0x78
003f1bb2   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1bb3   767f       LCR          0x3f3f74
003f1bb4   3f74
003f1bb5   d078       MOVB         XAR0, #0x78
003f1bb6   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1bb7   767f       LCR          0x3f401b
003f1bb8   401b
003f1bb9   8bbe       MOVL         XAR1, *--SP
003f1bba   0006       LRETR        
3f1bbb:              _HAL_setupPeripheralClks:
003f1bbb   b2bd       MOVL         *SP++, XAR1
003f1bbc   8ba4       MOVL         XAR1, XAR4
003f1bbd   8ad1       MOVL         XAR4, *+XAR1[2]
003f1bbe   767f       LCR          0x3f3ec8
003f1bbf   3ec8
003f1bc0   9a01       MOVB         AL, #0x1
003f1bc1   8ad1       MOVL         XAR4, *+XAR1[2]
003f1bc2   767f       LCR          0x3f3ebc
003f1bc3   3ebc
003f1bc4   9a02       MOVB         AL, #0x2
003f1bc5   8ad1       MOVL         XAR4, *+XAR1[2]
003f1bc6   767f       LCR          0x3f3ebc
003f1bc7   3ebc
003f1bc8   9a04       MOVB         AL, #0x4
003f1bc9   8ad1       MOVL         XAR4, *+XAR1[2]
003f1bca   767f       LCR          0x3f3ebc
003f1bcb   3ebc
003f1bcc   8ad1       MOVL         XAR4, *+XAR1[2]
003f1bcd   767f       LCR          0x3f3ea9
003f1bce   3ea9
003f1bcf   9a00       MOVB         AL, #0x0
003f1bd0   8ad1       MOVL         XAR4, *+XAR1[2]
003f1bd1   767f       LCR          0x3f3e73
003f1bd2   3e73
003f1bd3   9a01       MOVB         AL, #0x1
003f1bd4   8ad1       MOVL         XAR4, *+XAR1[2]
003f1bd5   767f       LCR          0x3f3e73
003f1bd6   3e73
003f1bd7   9a02       MOVB         AL, #0x2
003f1bd8   8ad1       MOVL         XAR4, *+XAR1[2]
003f1bd9   767f       LCR          0x3f3e73
003f1bda   3e73
003f1bdb   9a03       MOVB         AL, #0x3
003f1bdc   8ad1       MOVL         XAR4, *+XAR1[2]
003f1bdd   767f       LCR          0x3f3e73
003f1bde   3e73
003f1bdf   8ad1       MOVL         XAR4, *+XAR1[2]
003f1be0   767f       LCR          0x3f3f13
003f1be1   3f13
003f1be2   8ad1       MOVL         XAR4, *+XAR1[2]
003f1be3   767f       LCR          0x3f3e94
003f1be4   3e94
003f1be5   8ad1       MOVL         XAR4, *+XAR1[2]
003f1be6   767f       LCR          0x3f3e6c
003f1be7   3e6c
003f1be8   8ad1       MOVL         XAR4, *+XAR1[2]
003f1be9   767f       LCR          0x3f3e65
003f1bea   3e65
003f1beb   8ad1       MOVL         XAR4, *+XAR1[2]
003f1bec   767f       LCR          0x3f3e5e
003f1bed   3e5e
003f1bee   8bbe       MOVL         XAR1, *--SP
003f1bef   0006       LRETR        
3f1bf0:              _HAL_setupI2cs:
003f1bf0   b2bd       MOVL         *SP++, XAR1
003f1bf1   d090       MOVB         XAR0, #0x90
003f1bf2   8ba4       MOVL         XAR1, XAR4
003f1bf3   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1bf4   767f       LCR          0x3f428d
003f1bf5   428d
003f1bf6   d090       MOVB         XAR0, #0x90
003f1bf7   9a3f       MOVB         AL, #0x3f
003f1bf8   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1bf9   767f       LCR          0x3f4255
003f1bfa   4255
003f1bfb   d090       MOVB         XAR0, #0x90
003f1bfc   9a07       MOVB         AL, #0x7
003f1bfd   9b19       MOVB         AH, #0x19
003f1bfe   d519       MOVB         XAR5, #0x19
003f1bff   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c00   767f       LCR          0x3f424a
003f1c01   424a
003f1c02   d090       MOVB         XAR0, #0x90
003f1c03   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c04   767f       LCR          0x3f425c
003f1c05   425c
003f1c06   d090       MOVB         XAR0, #0x90
003f1c07   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c08   767f       LCR          0x3f4282
003f1c09   4282
003f1c0a   8bbe       MOVL         XAR1, *--SP
003f1c0b   0006       LRETR        
3f1c0c:              _HAL_setupGpios:
003f1c0c   b2bd       MOVL         *SP++, XAR1
003f1c0d   d008       MOVB         XAR0, #0x8
003f1c0e   9a00       MOVB         AL, #0x0
003f1c0f   9b01       MOVB         AH, #0x1
003f1c10   8ba4       MOVL         XAR1, XAR4
003f1c11   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c12   767f       LCR          0x3f3d51
003f1c13   3d51
003f1c14   d008       MOVB         XAR0, #0x8
003f1c15   9a01       MOVB         AL, #0x1
003f1c16   9b01       MOVB         AH, #0x1
003f1c17   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c18   767f       LCR          0x3f3d51
003f1c19   3d51
003f1c1a   d008       MOVB         XAR0, #0x8
003f1c1b   9a02       MOVB         AL, #0x2
003f1c1c   9b01       MOVB         AH, #0x1
003f1c1d   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c1e   767f       LCR          0x3f3d51
003f1c1f   3d51
003f1c20   d008       MOVB         XAR0, #0x8
003f1c21   9a03       MOVB         AL, #0x3
003f1c22   9b01       MOVB         AH, #0x1
003f1c23   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c24   767f       LCR          0x3f3d51
003f1c25   3d51
003f1c26   d008       MOVB         XAR0, #0x8
003f1c27   9a04       MOVB         AL, #0x4
003f1c28   9b01       MOVB         AH, #0x1
003f1c29   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c2a   767f       LCR          0x3f3d51
003f1c2b   3d51
003f1c2c   d008       MOVB         XAR0, #0x8
003f1c2d   9a05       MOVB         AL, #0x5
003f1c2e   9b01       MOVB         AH, #0x1
003f1c2f   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c30   767f       LCR          0x3f3d51
003f1c31   3d51
003f1c32   d008       MOVB         XAR0, #0x8
003f1c33   9a06       MOVB         AL, #0x6
003f1c34   9b00       MOVB         AH, #0x0
003f1c35   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c36   767f       LCR          0x3f3d51
003f1c37   3d51
003f1c38   d008       MOVB         XAR0, #0x8
003f1c39   9a06       MOVB         AL, #0x6
003f1c3a   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c3b   767f       LCR          0x3f3d95
003f1c3c   3d95
003f1c3d   d008       MOVB         XAR0, #0x8
003f1c3e   9a06       MOVB         AL, #0x6
003f1c3f   9b01       MOVB         AH, #0x1
003f1c40   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c41   767f       LCR          0x3f3db3
003f1c42   3db3
003f1c43   d008       MOVB         XAR0, #0x8
003f1c44   9a07       MOVB         AL, #0x7
003f1c45   9b00       MOVB         AH, #0x0
003f1c46   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c47   767f       LCR          0x3f3d51
003f1c48   3d51
003f1c49   d008       MOVB         XAR0, #0x8
003f1c4a   9a07       MOVB         AL, #0x7
003f1c4b   9b0a       MOVB         AH, #0xa
003f1c4c   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c4d   767f       LCR          0x3f3cc6
003f1c4e   3cc6
003f1c4f   d008       MOVB         XAR0, #0x8
003f1c50   9a07       MOVB         AL, #0x7
003f1c51   9b00       MOVB         AH, #0x0
003f1c52   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c53   767f       LCR          0x3f3db3
003f1c54   3db3
003f1c55   d008       MOVB         XAR0, #0x8
003f1c56   9a0c       MOVB         AL, #0xc
003f1c57   9b00       MOVB         AH, #0x0
003f1c58   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c59   767f       LCR          0x3f3d51
003f1c5a   3d51
003f1c5b   d008       MOVB         XAR0, #0x8
003f1c5c   9a0c       MOVB         AL, #0xc
003f1c5d   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c5e   767f       LCR          0x3f3d95
003f1c5f   3d95
003f1c60   d008       MOVB         XAR0, #0x8
003f1c61   9a0c       MOVB         AL, #0xc
003f1c62   9b01       MOVB         AH, #0x1
003f1c63   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c64   767f       LCR          0x3f3db3
003f1c65   3db3
003f1c66   d008       MOVB         XAR0, #0x8
003f1c67   9a10       MOVB         AL, #0x10
003f1c68   9b01       MOVB         AH, #0x1
003f1c69   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c6a   767f       LCR          0x3f3d51
003f1c6b   3d51
003f1c6c   d008       MOVB         XAR0, #0x8
003f1c6d   9a11       MOVB         AL, #0x11
003f1c6e   9b01       MOVB         AH, #0x1
003f1c6f   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c70   767f       LCR          0x3f3d51
003f1c71   3d51
003f1c72   d008       MOVB         XAR0, #0x8
003f1c73   9a12       MOVB         AL, #0x12
003f1c74   9b01       MOVB         AH, #0x1
003f1c75   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c76   767f       LCR          0x3f3d51
003f1c77   3d51
003f1c78   d008       MOVB         XAR0, #0x8
003f1c79   9a13       MOVB         AL, #0x13
003f1c7a   9b01       MOVB         AH, #0x1
003f1c7b   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c7c   767f       LCR          0x3f3d51
003f1c7d   3d51
003f1c7e   d008       MOVB         XAR0, #0x8
003f1c7f   9a1c       MOVB         AL, #0x1c
003f1c80   9b01       MOVB         AH, #0x1
003f1c81   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c82   767f       LCR          0x3f3d51
003f1c83   3d51
003f1c84   d008       MOVB         XAR0, #0x8
003f1c85   9a1d       MOVB         AL, #0x1d
003f1c86   9b01       MOVB         AH, #0x1
003f1c87   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c88   767f       LCR          0x3f3d51
003f1c89   3d51
003f1c8a   d008       MOVB         XAR0, #0x8
003f1c8b   9a20       MOVB         AL, #0x20
003f1c8c   9b01       MOVB         AH, #0x1
003f1c8d   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c8e   767f       LCR          0x3f3d51
003f1c8f   3d51
003f1c90   d008       MOVB         XAR0, #0x8
003f1c91   9a21       MOVB         AL, #0x21
003f1c92   9b01       MOVB         AH, #0x1
003f1c93   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c94   767f       LCR          0x3f3d51
003f1c95   3d51
003f1c96   d008       MOVB         XAR0, #0x8
003f1c97   9a22       MOVB         AL, #0x22
003f1c98   9b00       MOVB         AH, #0x0
003f1c99   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c9a   767f       LCR          0x3f3d51
003f1c9b   3d51
003f1c9c   d008       MOVB         XAR0, #0x8
003f1c9d   9a22       MOVB         AL, #0x22
003f1c9e   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1c9f   767f       LCR          0x3f3d95
003f1ca0   3d95
003f1ca1   d008       MOVB         XAR0, #0x8
003f1ca2   9a22       MOVB         AL, #0x22
003f1ca3   9b01       MOVB         AH, #0x1
003f1ca4   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1ca5   767f       LCR          0x3f3db3
003f1ca6   3db3
003f1ca7   d008       MOVB         XAR0, #0x8
003f1ca8   9a23       MOVB         AL, #0x23
003f1ca9   9b00       MOVB         AH, #0x0
003f1caa   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1cab   767f       LCR          0x3f3d51
003f1cac   3d51
003f1cad   d008       MOVB         XAR0, #0x8
003f1cae   9a24       MOVB         AL, #0x24
003f1caf   9b00       MOVB         AH, #0x0
003f1cb0   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1cb1   767f       LCR          0x3f3d51
003f1cb2   3d51
003f1cb3   d008       MOVB         XAR0, #0x8
003f1cb4   9a25       MOVB         AL, #0x25
003f1cb5   9b00       MOVB         AH, #0x0
003f1cb6   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1cb7   767f       LCR          0x3f3d51
003f1cb8   3d51
003f1cb9   d008       MOVB         XAR0, #0x8
003f1cba   9a26       MOVB         AL, #0x26
003f1cbb   9b00       MOVB         AH, #0x0
003f1cbc   8a91       MOVL         XAR4, *+XAR1[AR0]
003f1cbd   767f       LCR          0x3f3d51
003f1cbe   3d51
003f1cbf   8bbe       MOVL         XAR1, *--SP
003f1cc0   0006       LRETR        
3f1cc1:              _HAL_setupFaults:
003f1cc1   b2bd       MOVL         *SP++, XAR1
003f1cc2   dc7c       ADDB         XAR4, #124
003f1cc3   8ba4       MOVL         XAR1, XAR4
003f1cc4   aabd       MOVL         *SP++, XAR2
003f1cc5   d202       MOVB         XAR2, #0x2
3f1cc6:              $C$L8:
003f1cc6   8ac1       MOVL         XAR4, *+XAR1[0]
003f1cc7   9a20       MOVB         AL, #0x20
003f1cc8   767f       LCR          0x3f3639
003f1cc9   3639
003f1cca   28a9       MOV          AL, #0x0100
003f1ccb   0100
003f1ccc   8ac1       MOVL         XAR4, *+XAR1[0]
003f1ccd   767f       LCR          0x3f3639
003f1cce   3639
003f1ccf   9a02       MOVB         AL, #0x2
003f1cd0   8ac1       MOVL         XAR4, *+XAR1[0]
003f1cd1   767f       LCR          0x3f33f7
003f1cd2   33f7
003f1cd3   9a02       MOVB         AL, #0x2
003f1cd4   8ac1       MOVL         XAR4, *+XAR1[0]
003f1cd5   767f       LCR          0x3f33eb
003f1cd6   33eb
003f1cd7   d902       ADDB         XAR1, #2
003f1cd8   000a       BANZ         -18,AR2--
003f1cd9   ffee
003f1cda   86be       MOVL         XAR2, *--SP
003f1cdb   8bbe       MOVL         XAR1, *--SP
003f1cdc   0006       LRETR        
3f1cdd:              _HAL_setupClks:
003f1cdd   b2bd       MOVL         *SP++, XAR1
003f1cde   8ba4       MOVL         XAR1, XAR4
003f1cdf   8ad1       MOVL         XAR4, *+XAR1[2]
003f1ce0   767f       LCR          0x3f3e8e
003f1ce1   3e8e
003f1ce2   9a00       MOVB         AL, #0x0
003f1ce3   8ad1       MOVL         XAR4, *+XAR1[2]
003f1ce4   767f       LCR          0x3f3e37
003f1ce5   3e37
003f1ce6   8ad1       MOVL         XAR4, *+XAR1[2]
003f1ce7   767f       LCR          0x3f3f39
003f1ce8   3f39
003f1ce9   8ad1       MOVL         XAR4, *+XAR1[2]
003f1cea   767f       LCR          0x3f3f28
003f1ceb   3f28
003f1cec   8ad1       MOVL         XAR4, *+XAR1[2]
003f1ced   767f       LCR          0x3f3efa
003f1cee   3efa
003f1cef   9a02       MOVB         AL, #0x2
003f1cf0   8ad1       MOVL         XAR4, *+XAR1[2]
003f1cf1   767f       LCR          0x3f3e45
003f1cf2   3e45
003f1cf3   9a02       MOVB         AL, #0x2
003f1cf4   8ad1       MOVL         XAR4, *+XAR1[2]
003f1cf5   767f       LCR          0x3f3e4b
003f1cf6   3e4b
003f1cf7   8bbe       MOVL         XAR1, *--SP
003f1cf8   0006       LRETR        
3f1cf9:              _HAL_setupAdcs:
003f1cf9   b2bd       MOVL         *SP++, XAR1
003f1cfa   8ba4       MOVL         XAR1, XAR4
003f1cfb   8ac1       MOVL         XAR4, *+XAR1[0]
003f1cfc   767f       LCR          0x3f3b1b
003f1cfd   3b1b
003f1cfe   8ac1       MOVL         XAR4, *+XAR1[0]
003f1cff   767f       LCR          0x3f3abe
003f1d00   3abe
003f1d01   9a00       MOVB         AL, #0x0
003f1d02   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d03   767f       LCR          0x3f3959
003f1d04   3959
003f1d05   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d06   767f       LCR          0x3f3a91
003f1d07   3a91
003f1d08   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d09   767f       LCR          0x3f3a64
003f1d0a   3a64
003f1d0b   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d0c   767f       LCR          0x3f3ac9
003f1d0d   3ac9
003f1d0e   9a04       MOVB         AL, #0x4
003f1d0f   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d10   767f       LCR          0x3f3a18
003f1d11   3a18
003f1d12   9a00       MOVB         AL, #0x0
003f1d13   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d14   767f       LCR          0x3f396b
003f1d15   396b
003f1d16   9a00       MOVB         AL, #0x0
003f1d17   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d18   767f       LCR          0x3f3af5
003f1d19   3af5
003f1d1a   9a00       MOVB         AL, #0x0
003f1d1b   9b00       MOVB         AH, #0x0
003f1d1c   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d1d   767f       LCR          0x3f3a2a
003f1d1e   3a2a
003f1d1f   9a00       MOVB         AL, #0x0
003f1d20   9b0b       MOVB         AH, #0xb
003f1d21   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d22   767f       LCR          0x3f39fb
003f1d23   39fb
003f1d24   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d25   9a00       MOVB         AL, #0x0
003f1d26   9b40       MOVB         AH, #0x40
003f1d27   767f       LCR          0x3f39b4
003f1d28   39b4
003f1d29   9a00       MOVB         AL, #0x0
003f1d2a   28a8       MOV          AH, #0x2800
003f1d2b   2800
003f1d2c   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d2d   767f       LCR          0x3f397d
003f1d2e   397d
003f1d2f   9a00       MOVB         AL, #0x0
003f1d30   9b06       MOVB         AH, #0x6
003f1d31   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d32   767f       LCR          0x3f3990
003f1d33   3990
003f1d34   9a01       MOVB         AL, #0x1
003f1d35   9b40       MOVB         AH, #0x40
003f1d36   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d37   767f       LCR          0x3f39b4
003f1d38   39b4
003f1d39   9a01       MOVB         AL, #0x1
003f1d3a   28a8       MOV          AH, #0x2800
003f1d3b   2800
003f1d3c   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d3d   767f       LCR          0x3f397d
003f1d3e   397d
003f1d3f   9a01       MOVB         AL, #0x1
003f1d40   9b06       MOVB         AH, #0x6
003f1d41   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d42   767f       LCR          0x3f3990
003f1d43   3990
003f1d44   9a02       MOVB         AL, #0x2
003f1d45   28a8       MOV          AH, #0x0240
003f1d46   0240
003f1d47   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d48   767f       LCR          0x3f39b4
003f1d49   39b4
003f1d4a   9a02       MOVB         AL, #0x2
003f1d4b   28a8       MOV          AH, #0x2800
003f1d4c   2800
003f1d4d   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d4e   767f       LCR          0x3f397d
003f1d4f   397d
003f1d50   9a02       MOVB         AL, #0x2
003f1d51   9b06       MOVB         AH, #0x6
003f1d52   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d53   767f       LCR          0x3f3990
003f1d54   3990
003f1d55   9a03       MOVB         AL, #0x3
003f1d56   9bc0       MOVB         AH, #0xc0
003f1d57   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d58   767f       LCR          0x3f39b4
003f1d59   39b4
003f1d5a   9a03       MOVB         AL, #0x3
003f1d5b   28a8       MOV          AH, #0x2800
003f1d5c   2800
003f1d5d   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d5e   767f       LCR          0x3f397d
003f1d5f   397d
003f1d60   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d61   9a03       MOVB         AL, #0x3
003f1d62   9b06       MOVB         AH, #0x6
003f1d63   767f       LCR          0x3f3990
003f1d64   3990
003f1d65   9a04       MOVB         AL, #0x4
003f1d66   28a8       MOV          AH, #0x03c0
003f1d67   03c0
003f1d68   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d69   767f       LCR          0x3f39b4
003f1d6a   39b4
003f1d6b   9a04       MOVB         AL, #0x4
003f1d6c   28a8       MOV          AH, #0x2800
003f1d6d   2800
003f1d6e   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d6f   767f       LCR          0x3f397d
003f1d70   397d
003f1d71   9a04       MOVB         AL, #0x4
003f1d72   9b06       MOVB         AH, #0x6
003f1d73   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d74   767f       LCR          0x3f3990
003f1d75   3990
003f1d76   9a05       MOVB         AL, #0x5
003f1d77   28a8       MOV          AH, #0x0380
003f1d78   0380
003f1d79   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d7a   767f       LCR          0x3f39b4
003f1d7b   39b4
003f1d7c   9a05       MOVB         AL, #0x5
003f1d7d   28a8       MOV          AH, #0x2800
003f1d7e   2800
003f1d7f   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d80   767f       LCR          0x3f397d
003f1d81   397d
003f1d82   9a05       MOVB         AL, #0x5
003f1d83   9b06       MOVB         AH, #0x6
003f1d84   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d85   767f       LCR          0x3f3990
003f1d86   3990
003f1d87   9a06       MOVB         AL, #0x6
003f1d88   28a8       MOV          AH, #0x0300
003f1d89   0300
003f1d8a   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d8b   767f       LCR          0x3f39b4
003f1d8c   39b4
003f1d8d   9a06       MOVB         AL, #0x6
003f1d8e   28a8       MOV          AH, #0x2800
003f1d8f   2800
003f1d90   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d91   767f       LCR          0x3f397d
003f1d92   397d
003f1d93   9a06       MOVB         AL, #0x6
003f1d94   9b06       MOVB         AH, #0x6
003f1d95   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d96   767f       LCR          0x3f3990
003f1d97   3990
003f1d98   9a07       MOVB         AL, #0x7
003f1d99   28a8       MOV          AH, #0x01c0
003f1d9a   01c0
003f1d9b   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d9c   767f       LCR          0x3f39b4
003f1d9d   39b4
003f1d9e   8ac1       MOVL         XAR4, *+XAR1[0]
003f1d9f   9a07       MOVB         AL, #0x7
003f1da0   28a8       MOV          AH, #0x2800
003f1da1   2800
003f1da2   767f       LCR          0x3f397d
003f1da3   397d
003f1da4   9a07       MOVB         AL, #0x7
003f1da5   9b06       MOVB         AH, #0x6
003f1da6   8ac1       MOVL         XAR4, *+XAR1[0]
003f1da7   767f       LCR          0x3f3990
003f1da8   3990
003f1da9   9a08       MOVB         AL, #0x8
003f1daa   28a8       MOV          AH, #0x0100
003f1dab   0100
003f1dac   8ac1       MOVL         XAR4, *+XAR1[0]
003f1dad   767f       LCR          0x3f39b4
003f1dae   39b4
003f1daf   9a08       MOVB         AL, #0x8
003f1db0   28a8       MOV          AH, #0x2800
003f1db1   2800
003f1db2   8ac1       MOVL         XAR4, *+XAR1[0]
003f1db3   767f       LCR          0x3f397d
003f1db4   397d
003f1db5   9a08       MOVB         AL, #0x8
003f1db6   9b06       MOVB         AH, #0x6
003f1db7   8ac1       MOVL         XAR4, *+XAR1[0]
003f1db8   767f       LCR          0x3f3990
003f1db9   3990
003f1dba   9a09       MOVB         AL, #0x9
003f1dbb   28a8       MOV          AH, #0x0180
003f1dbc   0180
003f1dbd   8ac1       MOVL         XAR4, *+XAR1[0]
003f1dbe   767f       LCR          0x3f39b4
003f1dbf   39b4
003f1dc0   9a09       MOVB         AL, #0x9
003f1dc1   28a8       MOV          AH, #0x2800
003f1dc2   2800
003f1dc3   8ac1       MOVL         XAR4, *+XAR1[0]
003f1dc4   767f       LCR          0x3f397d
003f1dc5   397d
003f1dc6   9a09       MOVB         AL, #0x9
003f1dc7   9b06       MOVB         AH, #0x6
003f1dc8   8ac1       MOVL         XAR4, *+XAR1[0]
003f1dc9   767f       LCR          0x3f3990
003f1dca   3990
003f1dcb   9a0a       MOVB         AL, #0xa
003f1dcc   28a8       MOV          AH, #0x02c0
003f1dcd   02c0
003f1dce   8ac1       MOVL         XAR4, *+XAR1[0]
003f1dcf   767f       LCR          0x3f39b4
003f1dd0   39b4
003f1dd1   9a0a       MOVB         AL, #0xa
003f1dd2   28a8       MOV          AH, #0x2800
003f1dd3   2800
003f1dd4   8ac1       MOVL         XAR4, *+XAR1[0]
003f1dd5   767f       LCR          0x3f397d
003f1dd6   397d
003f1dd7   9a0a       MOVB         AL, #0xa
003f1dd8   9b06       MOVB         AH, #0x6
003f1dd9   8ac1       MOVL         XAR4, *+XAR1[0]
003f1dda   767f       LCR          0x3f3990
003f1ddb   3990
003f1ddc   8ac1       MOVL         XAR4, *+XAR1[0]
003f1ddd   9a0b       MOVB         AL, #0xb
003f1dde   28a8       MOV          AH, #0x0280
003f1ddf   0280
003f1de0   767f       LCR          0x3f39b4
003f1de1   39b4
003f1de2   9a0b       MOVB         AL, #0xb
003f1de3   28a8       MOV          AH, #0x2800
003f1de4   2800
003f1de5   8ac1       MOVL         XAR4, *+XAR1[0]
003f1de6   767f       LCR          0x3f397d
003f1de7   397d
003f1de8   9a0b       MOVB         AL, #0xb
003f1de9   9b06       MOVB         AH, #0x6
003f1dea   8ac1       MOVL         XAR4, *+XAR1[0]
003f1deb   767f       LCR          0x3f3990
003f1dec   3990
003f1ded   8bbe       MOVL         XAR1, *--SP
003f1dee   0006       LRETR        
3f1def:              _HAL_setupAdcParams:
003f1def   b2bd       MOVL         *SP++, XAR1
003f1df0   aabd       MOVL         *SP++, XAR2
003f1df1   fe08       ADDB         SP, #8
003f1df2   d02c       MOVB         XAR0, #0x2c
003f1df3   88ad       MOVZ         AR6, SP
003f1df4   86a5       MOVL         XAR2, XAR5
003f1df5   8ba4       MOVL         XAR1, XAR4
003f1df6   de88       SUBB         XAR6, #8
003f1df7   0692       MOVL         ACC, *+XAR2[AR0]
003f1df8   767f       LCR          0x3fdfb7
003f1df9   dfb7
003f1dfa   5cad       MOVZ         AR4, SP
003f1dfb   88ad       MOVZ         AR6, SP
003f1dfc   8f7f       MOVL         XAR5, #0x3f63ec
003f1dfd   63ec
003f1dfe   dc88       SUBB         XAR4, #8
003f1dff   de84       SUBB         XAR6, #4
003f1e00   767f       LCR          0x3fdc5e
003f1e01   dc5e
003f1e02   5cad       MOVZ         AR4, SP
003f1e03   dc84       SUBB         XAR4, #4
003f1e04   767f       LCR          0x3fdf7b
003f1e05   df7b
003f1e06   8f00       MOVL         XAR4, #0x000800
003f1e07   0800
003f1e08   be00       MOVB         XAR6, #0x00
003f1e09   a8ac       MOVL         XT, XAR4
003f1e0a   5605       IMPYL        P, XT, ACC
003f1e0b   00a9
003f1e0c   5663       QMPYL        ACC, XT, ACC
003f1e0d   00a9
003f1e0e   568b       ASR64        ACC:P, 12
003f1e0f   6f13       SB           19, UNC
3f1e10:              $C$L9:
003f1e10   0ea6       MOVU         ACC, AR6
003f1e11   8aa1       MOVL         XAR4, XAR1
003f1e12   d09e       MOVB         XAR0, #0x9e
003f1e13   ff30       LSL          ACC, 1
003f1e14   de01       ADDB         XAR6, #1
003f1e15   5601       ADDL         XAR4, ACC
003f1e16   00a4
003f1e17   0200       MOVB         ACC, #0
003f1e18   1e94       MOVL         *+XAR4[AR0], ACC
003f1e19   6f22       SB           34, UNC
3f1e1a:              $C$L10:
003f1e1a   0ea6       MOVU         ACC, AR6
003f1e1b   8aa1       MOVL         XAR4, XAR1
003f1e1c   d098       MOVB         XAR0, #0x98
003f1e1d   de01       ADDB         XAR6, #1
003f1e1e   ff30       LSL          ACC, 1
003f1e1f   5601       ADDL         XAR4, ACC
003f1e20   00a4
003f1e21   a994       MOVL         *+XAR4[AR0], P
3f1e22:              $C$L11:
003f1e22   d0b2       MOVB         XAR0, #0xb2
003f1e23   92a6       MOV          AL, AR6
003f1e24   5491       CMP          AL, *+XAR1[AR0]
003f1e25   68f5       SB           -11, LO
003f1e26   d02c       MOVB         XAR0, #0x2c
003f1e27   88ad       MOVZ         AR6, SP
003f1e28   0692       MOVL         ACC, *+XAR2[AR0]
003f1e29   de88       SUBB         XAR6, #8
003f1e2a   767f       LCR          0x3fdfb7
003f1e2b   dfb7
003f1e2c   5cad       MOVZ         AR4, SP
003f1e2d   88ad       MOVZ         AR6, SP
003f1e2e   8f7f       MOVL         XAR5, #0x3f63ec
003f1e2f   63ec
003f1e30   dc88       SUBB         XAR4, #8
003f1e31   de84       SUBB         XAR6, #4
003f1e32   767f       LCR          0x3fdc5e
003f1e33   dc5e
003f1e34   5cad       MOVZ         AR4, SP
003f1e35   dc84       SUBB         XAR4, #4
003f1e36   767f       LCR          0x3fdf7b
003f1e37   df7b
003f1e38   d0ae       MOVB         XAR0, #0xae
003f1e39   be00       MOVB         XAR6, #0x00
003f1e3a   1e91       MOVL         *+XAR1[AR0], ACC
3f1e3b:              $C$L12:
003f1e3b   d0b3       MOVB         XAR0, #0xb3
003f1e3c   92a6       MOV          AL, AR6
003f1e3d   5491       CMP          AL, *+XAR1[AR0]
003f1e3e   68d2       SB           -46, LO
003f1e3f   d02a       MOVB         XAR0, #0x2a
003f1e40   88ad       MOVZ         AR6, SP
003f1e41   0692       MOVL         ACC, *+XAR2[AR0]
003f1e42   de88       SUBB         XAR6, #8
003f1e43   767f       LCR          0x3fdfb7
003f1e44   dfb7
003f1e45   5cad       MOVZ         AR4, SP
003f1e46   88ad       MOVZ         AR6, SP
003f1e47   8f7f       MOVL         XAR5, #0x3f63ec
003f1e48   63ec
003f1e49   dc88       SUBB         XAR4, #8
003f1e4a   de84       SUBB         XAR6, #4
003f1e4b   767f       LCR          0x3fdc5e
003f1e4c   dc5e
003f1e4d   5cad       MOVZ         AR4, SP
003f1e4e   dc84       SUBB         XAR4, #4
003f1e4f   767f       LCR          0x3fdf7b
003f1e50   df7b
003f1e51   d0b0       MOVB         XAR0, #0xb0
003f1e52   1e91       MOVL         *+XAR1[AR0], ACC
003f1e53   fe88       SUBB         SP, #8
003f1e54   86be       MOVL         XAR2, *--SP
003f1e55   8bbe       MOVL         XAR1, *--SP
003f1e56   0006       LRETR        
3f1e57:              _HAL_AdcCalChanSelect:
003f1e57   b2bd       MOVL         *SP++, XAR1
003f1e58   59a9       MOVZ         AR1, AL
003f1e59   9a00       MOVB         AL, #0x0
003f1e5a   aabd       MOVL         *SP++, XAR2
003f1e5b   93a1       MOV          AH, AR1
003f1e5c   86a4       MOVL         XAR2, XAR4
003f1e5d   8ac2       MOVL         XAR4, *+XAR2[0]
003f1e5e   767f       LCR          0x3f39b4
003f1e5f   39b4
003f1e60   9a01       MOVB         AL, #0x1
003f1e61   93a1       MOV          AH, AR1
003f1e62   8ac2       MOVL         XAR4, *+XAR2[0]
003f1e63   767f       LCR          0x3f39b4
003f1e64   39b4
003f1e65   9a02       MOVB         AL, #0x2
003f1e66   93a1       MOV          AH, AR1
003f1e67   8ac2       MOVL         XAR4, *+XAR2[0]
003f1e68   767f       LCR          0x3f39b4
003f1e69   39b4
003f1e6a   9a03       MOVB         AL, #0x3
003f1e6b   93a1       MOV          AH, AR1
003f1e6c   8ac2       MOVL         XAR4, *+XAR2[0]
003f1e6d   767f       LCR          0x3f39b4
003f1e6e   39b4
003f1e6f   9a04       MOVB         AL, #0x4
003f1e70   93a1       MOV          AH, AR1
003f1e71   8ac2       MOVL         XAR4, *+XAR2[0]
003f1e72   767f       LCR          0x3f39b4
003f1e73   39b4
003f1e74   9a05       MOVB         AL, #0x5
003f1e75   93a1       MOV          AH, AR1
003f1e76   8ac2       MOVL         XAR4, *+XAR2[0]
003f1e77   767f       LCR          0x3f39b4
003f1e78   39b4
003f1e79   9a06       MOVB         AL, #0x6
003f1e7a   93a1       MOV          AH, AR1
003f1e7b   8ac2       MOVL         XAR4, *+XAR2[0]
003f1e7c   767f       LCR          0x3f39b4
003f1e7d   39b4
003f1e7e   9a07       MOVB         AL, #0x7
003f1e7f   93a1       MOV          AH, AR1
003f1e80   8ac2       MOVL         XAR4, *+XAR2[0]
003f1e81   767f       LCR          0x3f39b4
003f1e82   39b4
003f1e83   9a08       MOVB         AL, #0x8
003f1e84   93a1       MOV          AH, AR1
003f1e85   8ac2       MOVL         XAR4, *+XAR2[0]
003f1e86   767f       LCR          0x3f39b4
003f1e87   39b4
003f1e88   9a09       MOVB         AL, #0x9
003f1e89   93a1       MOV          AH, AR1
003f1e8a   8ac2       MOVL         XAR4, *+XAR2[0]
003f1e8b   767f       LCR          0x3f39b4
003f1e8c   39b4
003f1e8d   9a0a       MOVB         AL, #0xa
003f1e8e   93a1       MOV          AH, AR1
003f1e8f   8ac2       MOVL         XAR4, *+XAR2[0]
003f1e90   767f       LCR          0x3f39b4
003f1e91   39b4
003f1e92   8ac2       MOVL         XAR4, *+XAR2[0]
003f1e93   9a0b       MOVB         AL, #0xb
003f1e94   93a1       MOV          AH, AR1
003f1e95   767f       LCR          0x3f39b4
003f1e96   39b4
003f1e97   9a0c       MOVB         AL, #0xc
003f1e98   93a1       MOV          AH, AR1
003f1e99   8ac2       MOVL         XAR4, *+XAR2[0]
003f1e9a   767f       LCR          0x3f39b4
003f1e9b   39b4
003f1e9c   9a0d       MOVB         AL, #0xd
003f1e9d   93a1       MOV          AH, AR1
003f1e9e   8ac2       MOVL         XAR4, *+XAR2[0]
003f1e9f   767f       LCR          0x3f39b4
003f1ea0   39b4
003f1ea1   9a0e       MOVB         AL, #0xe
003f1ea2   93a1       MOV          AH, AR1
003f1ea3   8ac2       MOVL         XAR4, *+XAR2[0]
003f1ea4   767f       LCR          0x3f39b4
003f1ea5   39b4
003f1ea6   9a0f       MOVB         AL, #0xf
003f1ea7   93a1       MOV          AH, AR1
003f1ea8   8ac2       MOVL         XAR4, *+XAR2[0]
003f1ea9   767f       LCR          0x3f39b4
003f1eaa   39b4
003f1eab   86be       MOVL         XAR2, *--SP
003f1eac   8bbe       MOVL         XAR1, *--SP
003f1ead   0006       LRETR        
3f1eae:              _HAL_AdcCalConversion:
003f1eae   b2bd       MOVL         *SP++, XAR1
003f1eaf   9a00       MOVB         AL, #0x0
003f1eb0   9b06       MOVB         AH, #0x6
003f1eb1   aabd       MOVL         *SP++, XAR2
003f1eb2   86a4       MOVL         XAR2, XAR4
003f1eb3   8ac2       MOVL         XAR4, *+XAR2[0]
003f1eb4   767f       LCR          0x3f3990
003f1eb5   3990
003f1eb6   9a01       MOVB         AL, #0x1
003f1eb7   9b06       MOVB         AH, #0x6
003f1eb8   8ac2       MOVL         XAR4, *+XAR2[0]
003f1eb9   767f       LCR          0x3f3990
003f1eba   3990
003f1ebb   9a02       MOVB         AL, #0x2
003f1ebc   9b06       MOVB         AH, #0x6
003f1ebd   8ac2       MOVL         XAR4, *+XAR2[0]
003f1ebe   767f       LCR          0x3f3990
003f1ebf   3990
003f1ec0   9a03       MOVB         AL, #0x3
003f1ec1   9b06       MOVB         AH, #0x6
003f1ec2   8ac2       MOVL         XAR4, *+XAR2[0]
003f1ec3   767f       LCR          0x3f3990
003f1ec4   3990
003f1ec5   9a04       MOVB         AL, #0x4
003f1ec6   9b06       MOVB         AH, #0x6
003f1ec7   8ac2       MOVL         XAR4, *+XAR2[0]
003f1ec8   767f       LCR          0x3f3990
003f1ec9   3990
003f1eca   9a05       MOVB         AL, #0x5
003f1ecb   9b06       MOVB         AH, #0x6
003f1ecc   8ac2       MOVL         XAR4, *+XAR2[0]
003f1ecd   767f       LCR          0x3f3990
003f1ece   3990
003f1ecf   9a06       MOVB         AL, #0x6
003f1ed0   9b06       MOVB         AH, #0x6
003f1ed1   8ac2       MOVL         XAR4, *+XAR2[0]
003f1ed2   767f       LCR          0x3f3990
003f1ed3   3990
003f1ed4   9a07       MOVB         AL, #0x7
003f1ed5   9b06       MOVB         AH, #0x6
003f1ed6   8ac2       MOVL         XAR4, *+XAR2[0]
003f1ed7   767f       LCR          0x3f3990
003f1ed8   3990
003f1ed9   9a08       MOVB         AL, #0x8
003f1eda   9b06       MOVB         AH, #0x6
003f1edb   8ac2       MOVL         XAR4, *+XAR2[0]
003f1edc   767f       LCR          0x3f3990
003f1edd   3990
003f1ede   9a09       MOVB         AL, #0x9
003f1edf   9b06       MOVB         AH, #0x6
003f1ee0   8ac2       MOVL         XAR4, *+XAR2[0]
003f1ee1   767f       LCR          0x3f3990
003f1ee2   3990
003f1ee3   9a0a       MOVB         AL, #0xa
003f1ee4   9b06       MOVB         AH, #0x6
003f1ee5   8ac2       MOVL         XAR4, *+XAR2[0]
003f1ee6   767f       LCR          0x3f3990
003f1ee7   3990
003f1ee8   8ac2       MOVL         XAR4, *+XAR2[0]
003f1ee9   9a0b       MOVB         AL, #0xb
003f1eea   9b06       MOVB         AH, #0x6
003f1eeb   767f       LCR          0x3f3990
003f1eec   3990
003f1eed   9a0c       MOVB         AL, #0xc
003f1eee   9b06       MOVB         AH, #0x6
003f1eef   8ac2       MOVL         XAR4, *+XAR2[0]
003f1ef0   767f       LCR          0x3f3990
003f1ef1   3990
003f1ef2   9a0d       MOVB         AL, #0xd
003f1ef3   9b06       MOVB         AH, #0x6
003f1ef4   8ac2       MOVL         XAR4, *+XAR2[0]
003f1ef5   767f       LCR          0x3f3990
003f1ef6   3990
003f1ef7   9a0e       MOVB         AL, #0xe
003f1ef8   9b06       MOVB         AH, #0x6
003f1ef9   8ac2       MOVL         XAR4, *+XAR2[0]
003f1efa   767f       LCR          0x3f3990
003f1efb   3990
003f1efc   9a0f       MOVB         AL, #0xf
003f1efd   9b06       MOVB         AH, #0x6
003f1efe   8ac2       MOVL         XAR4, *+XAR2[0]
003f1eff   767f       LCR          0x3f3990
003f1f00   3990
003f1f01   9a00       MOVB         AL, #0x0
003f1f02   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f03   767f       LCR          0x3f3aa7
003f1f04   3aa7
003f1f05   9a01       MOVB         AL, #0x1
003f1f06   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f07   767f       LCR          0x3f3aa7
003f1f08   3aa7
003f1f09   9a00       MOVB         AL, #0x0
003f1f0a   9b40       MOVB         AH, #0x40
003f1f0b   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f0c   767f       LCR          0x3f3a2a
003f1f0d   3a2a
003f1f0e   9a01       MOVB         AL, #0x1
003f1f0f   9b40       MOVB         AH, #0x40
003f1f10   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f11   767f       LCR          0x3f3a2a
003f1f12   3a2a
003f1f13   9a04       MOVB         AL, #0x4
003f1f14   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f15   767f       LCR          0x3f3a18
003f1f16   3a18
003f1f17   9a00       MOVB         AL, #0x0
003f1f18   9b06       MOVB         AH, #0x6
003f1f19   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f1a   767f       LCR          0x3f39fb
003f1f1b   39fb
003f1f1c   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f1d   9a01       MOVB         AL, #0x1
003f1f1e   9b0e       MOVB         AH, #0xe
003f1f1f   767f       LCR          0x3f39fb
003f1f20   39fb
003f1f21   9a00       MOVB         AL, #0x0
003f1f22   9b02       MOVB         AH, #0x2
003f1f23   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f24   767f       LCR          0x3f392e
003f1f25   392e
003f1f26   9a01       MOVB         AL, #0x1
003f1f27   9b02       MOVB         AH, #0x2
003f1f28   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f29   767f       LCR          0x3f392e
003f1f2a   392e
003f1f2b   9a02       MOVB         AL, #0x2
003f1f2c   9b02       MOVB         AH, #0x2
003f1f2d   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f2e   767f       LCR          0x3f392e
003f1f2f   392e
003f1f30   9a03       MOVB         AL, #0x3
003f1f31   9b02       MOVB         AH, #0x2
003f1f32   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f33   767f       LCR          0x3f392e
003f1f34   392e
003f1f35   9a04       MOVB         AL, #0x4
003f1f36   9b02       MOVB         AH, #0x2
003f1f37   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f38   767f       LCR          0x3f392e
003f1f39   392e
003f1f3a   9a05       MOVB         AL, #0x5
003f1f3b   9b02       MOVB         AH, #0x2
003f1f3c   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f3d   767f       LCR          0x3f392e
003f1f3e   392e
003f1f3f   9a06       MOVB         AL, #0x6
003f1f40   9b02       MOVB         AH, #0x2
003f1f41   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f42   767f       LCR          0x3f392e
003f1f43   392e
003f1f44   9a07       MOVB         AL, #0x7
003f1f45   9b02       MOVB         AH, #0x2
003f1f46   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f47   767f       LCR          0x3f392e
003f1f48   392e
003f1f49   9a08       MOVB         AL, #0x8
003f1f4a   9b01       MOVB         AH, #0x1
003f1f4b   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f4c   767f       LCR          0x3f392e
003f1f4d   392e
003f1f4e   9a09       MOVB         AL, #0x9
003f1f4f   9b01       MOVB         AH, #0x1
003f1f50   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f51   767f       LCR          0x3f392e
003f1f52   392e
003f1f53   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f54   9a0a       MOVB         AL, #0xa
003f1f55   9b01       MOVB         AH, #0x1
003f1f56   767f       LCR          0x3f392e
003f1f57   392e
003f1f58   9a0b       MOVB         AL, #0xb
003f1f59   9b01       MOVB         AH, #0x1
003f1f5a   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f5b   767f       LCR          0x3f392e
003f1f5c   392e
003f1f5d   9a0c       MOVB         AL, #0xc
003f1f5e   9b01       MOVB         AH, #0x1
003f1f5f   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f60   767f       LCR          0x3f392e
003f1f61   392e
003f1f62   9a0d       MOVB         AL, #0xd
003f1f63   9b01       MOVB         AH, #0x1
003f1f64   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f65   767f       LCR          0x3f392e
003f1f66   392e
003f1f67   9a0e       MOVB         AL, #0xe
003f1f68   9b01       MOVB         AH, #0x1
003f1f69   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f6a   767f       LCR          0x3f392e
003f1f6b   392e
003f1f6c   9a0f       MOVB         AL, #0xf
003f1f6d   9b01       MOVB         AH, #0x1
003f1f6e   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f6f   767f       LCR          0x3f392e
003f1f70   392e
003f1f71   8f01       MOVL         XAR4, #0x01d4be
003f1f72   d4be
003f1f73   a8a9       MOVL         ACC, XAR4
003f1f74   7640       LCR          0x0086ff
003f1f75   86ff
003f1f76   9aff       MOVB         AL, #0xff
003f1f77   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f78   767f       LCR          0x3f39a3
003f1f79   39a3
003f1f7a   8ac2       MOVL         XAR4, *+XAR2[0]
003f1f7b   be0f       MOVB         XAR6, #0x0f
003f1f7c   d100       MOVB         XAR1, #0x0
3f1f7d:              $C$L13:
003f1f7d   8d00       MOVL         XAR0, #0x006604
003f1f7e   6604
003f1f7f   4094       TBIT         *+XAR4[AR0], #0x0
003f1f80   effd       SBF          -3, NTC
003f1f81   8d00       MOVL         XAR0, #0x006605
003f1f82   6605
003f1f83   b2a9       MOVL         ACC, XAR1
003f1f84   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f1f85   0194
003f1f86   0dc4       ADDU         ACC, *+XAR4[0]
003f1f87   8d00       MOVL         XAR0, #0x006604
003f1f88   6604
003f1f89   0dcc       ADDU         ACC, *+XAR4[1]
003f1f8a   0dd4       ADDU         ACC, *+XAR4[2]
003f1f8b   0ddc       ADDU         ACC, *+XAR4[3]
003f1f8c   0de4       ADDU         ACC, *+XAR4[4]
003f1f8d   0dec       ADDU         ACC, *+XAR4[5]
003f1f8e   0df4       ADDU         ACC, *+XAR4[6]
003f1f8f   0dfc       ADDU         ACC, *+XAR4[7]
3f1f90:              $C$L14:
003f1f90   4094       TBIT         *+XAR4[AR0], #0x0
003f1f91   efff       SBF          -1, NTC
003f1f92   8d00       MOVL         XAR0, #0x006605
003f1f93   6605
003f1f94   56bf       MOVB         *+XAR4[AR0], #0x02, UNC
003f1f95   0294
003f1f96   d008       MOVB         XAR0, #0x8
003f1f97   0d94       ADDU         ACC, *+XAR4[AR0]
003f1f98   d009       MOVB         XAR0, #0x9
003f1f99   0d94       ADDU         ACC, *+XAR4[AR0]
003f1f9a   d00a       MOVB         XAR0, #0xa
003f1f9b   0d94       ADDU         ACC, *+XAR4[AR0]
003f1f9c   d00b       MOVB         XAR0, #0xb
003f1f9d   0d94       ADDU         ACC, *+XAR4[AR0]
003f1f9e   d00c       MOVB         XAR0, #0xc
003f1f9f   0d94       ADDU         ACC, *+XAR4[AR0]
003f1fa0   d00d       MOVB         XAR0, #0xd
003f1fa1   0d94       ADDU         ACC, *+XAR4[AR0]
003f1fa2   d00e       MOVB         XAR0, #0xe
003f1fa3   0d94       ADDU         ACC, *+XAR4[AR0]
003f1fa4   d00f       MOVB         XAR0, #0xf
003f1fa5   0d94       ADDU         ACC, *+XAR4[AR0]
003f1fa6   8ba9       MOVL         XAR1, ACC
003f1fa7   000e       BANZ         -42,AR6--
003f1fa8   ffd6
003f1fa9   9a00       MOVB         AL, #0x0
003f1faa   767f       LCR          0x3f3af5
003f1fab   3af5
003f1fac   9a01       MOVB         AL, #0x1
003f1fad   8ac2       MOVL         XAR4, *+XAR2[0]
003f1fae   767f       LCR          0x3f3af5
003f1faf   3af5
003f1fb0   9a00       MOVB         AL, #0x0
003f1fb1   9b00       MOVB         AH, #0x0
003f1fb2   8ac2       MOVL         XAR4, *+XAR2[0]
003f1fb3   767f       LCR          0x3f392e
003f1fb4   392e
003f1fb5   9a01       MOVB         AL, #0x1
003f1fb6   9b00       MOVB         AH, #0x0
003f1fb7   8ac2       MOVL         XAR4, *+XAR2[0]
003f1fb8   767f       LCR          0x3f392e
003f1fb9   392e
003f1fba   9a02       MOVB         AL, #0x2
003f1fbb   9b00       MOVB         AH, #0x0
003f1fbc   8ac2       MOVL         XAR4, *+XAR2[0]
003f1fbd   767f       LCR          0x3f392e
003f1fbe   392e
003f1fbf   9a03       MOVB         AL, #0x3
003f1fc0   9b00       MOVB         AH, #0x0
003f1fc1   8ac2       MOVL         XAR4, *+XAR2[0]
003f1fc2   767f       LCR          0x3f392e
003f1fc3   392e
003f1fc4   9a04       MOVB         AL, #0x4
003f1fc5   9b00       MOVB         AH, #0x0
003f1fc6   8ac2       MOVL         XAR4, *+XAR2[0]
003f1fc7   767f       LCR          0x3f392e
003f1fc8   392e
003f1fc9   9a05       MOVB         AL, #0x5
003f1fca   9b00       MOVB         AH, #0x0
003f1fcb   8ac2       MOVL         XAR4, *+XAR2[0]
003f1fcc   767f       LCR          0x3f392e
003f1fcd   392e
003f1fce   9a06       MOVB         AL, #0x6
003f1fcf   9b00       MOVB         AH, #0x0
003f1fd0   8ac2       MOVL         XAR4, *+XAR2[0]
003f1fd1   767f       LCR          0x3f392e
003f1fd2   392e
003f1fd3   9a07       MOVB         AL, #0x7
003f1fd4   9b00       MOVB         AH, #0x0
003f1fd5   8ac2       MOVL         XAR4, *+XAR2[0]
003f1fd6   767f       LCR          0x3f392e
003f1fd7   392e
003f1fd8   9a08       MOVB         AL, #0x8
003f1fd9   9b00       MOVB         AH, #0x0
003f1fda   8ac2       MOVL         XAR4, *+XAR2[0]
003f1fdb   767f       LCR          0x3f392e
003f1fdc   392e
003f1fdd   8ac2       MOVL         XAR4, *+XAR2[0]
003f1fde   9a09       MOVB         AL, #0x9
003f1fdf   9b00       MOVB         AH, #0x0
003f1fe0   767f       LCR          0x3f392e
003f1fe1   392e
003f1fe2   9a0a       MOVB         AL, #0xa
003f1fe3   9b00       MOVB         AH, #0x0
003f1fe4   8ac2       MOVL         XAR4, *+XAR2[0]
003f1fe5   767f       LCR          0x3f392e
003f1fe6   392e
003f1fe7   9a0b       MOVB         AL, #0xb
003f1fe8   9b00       MOVB         AH, #0x0
003f1fe9   8ac2       MOVL         XAR4, *+XAR2[0]
003f1fea   767f       LCR          0x3f392e
003f1feb   392e
003f1fec   9a0c       MOVB         AL, #0xc
003f1fed   9b00       MOVB         AH, #0x0
003f1fee   8ac2       MOVL         XAR4, *+XAR2[0]
003f1fef   767f       LCR          0x3f392e
003f1ff0   392e
003f1ff1   9a0d       MOVB         AL, #0xd
003f1ff2   9b00       MOVB         AH, #0x0
003f1ff3   8ac2       MOVL         XAR4, *+XAR2[0]
003f1ff4   767f       LCR          0x3f392e
003f1ff5   392e
003f1ff6   9a0e       MOVB         AL, #0xe
003f1ff7   9b00       MOVB         AH, #0x0
003f1ff8   8ac2       MOVL         XAR4, *+XAR2[0]
003f1ff9   767f       LCR          0x3f392e
003f1ffa   392e
003f1ffb   9a0f       MOVB         AL, #0xf
003f1ffc   9b00       MOVB         AH, #0x0
003f1ffd   8ac2       MOVL         XAR4, *+XAR2[0]
003f1ffe   767f       LCR          0x3f392e
003f1fff   392e
003f2000   2901       CLRC         SXM
003f2001   b2a9       MOVL         ACC, XAR1
003f2002   ff47       SFR          ACC, 8
003f2003   86be       MOVL         XAR2, *--SP
003f2004   8bbe       MOVL         XAR1, *--SP
003f2005   0006       LRETR        
3f2006:              _HAL_AdcOffsetSelfCal:
003f2006   b2bd       MOVL         *SP++, XAR1
003f2007   8ba4       MOVL         XAR1, XAR4
003f2008   8ac1       MOVL         XAR4, *+XAR1[0]
003f2009   767f       LCR          0x3f3b1b
003f200a   3b1b
003f200b   8ac1       MOVL         XAR4, *+XAR1[0]
003f200c   767f       LCR          0x3f3abe
003f200d   3abe
003f200e   9a00       MOVB         AL, #0x0
003f200f   8ac1       MOVL         XAR4, *+XAR1[0]
003f2010   767f       LCR          0x3f3959
003f2011   3959
003f2012   8ac1       MOVL         XAR4, *+XAR1[0]
003f2013   767f       LCR          0x3f3a91
003f2014   3a91
003f2015   8ac1       MOVL         XAR4, *+XAR1[0]
003f2016   767f       LCR          0x3f3a64
003f2017   3a64
003f2018   8ac1       MOVL         XAR4, *+XAR1[0]
003f2019   767f       LCR          0x3f3ac9
003f201a   3ac9
003f201b   8ac1       MOVL         XAR4, *+XAR1[0]
003f201c   767f       LCR          0x3f3a86
003f201d   3a86
003f201e   28a9       MOV          AL, #0x0340
003f201f   0340
003f2020   8aa1       MOVL         XAR4, XAR1
003f2021   767f       LCR          0x3f1e57
003f2022   1e57
003f2023   9a50       MOVB         AL, #0x50
003f2024   8ac1       MOVL         XAR4, *+XAR1[0]
003f2025   767f       LCR          0x3f39f4
003f2026   39f4
003f2027   8aa1       MOVL         XAR4, XAR1
003f2028   767f       LCR          0x3f1eae
003f2029   1eae
003f202a   93a9       MOV          AH, @AL
003f202b   9a50       MOVB         AL, #0x50
003f202c   8ac1       MOVL         XAR4, *+XAR1[0]
003f202d   9ea8       SUB          AL, @AH
003f202e   767f       LCR          0x3f39f4
003f202f   39f4
003f2030   8ac1       MOVL         XAR4, *+XAR1[0]
003f2031   767f       LCR          0x3f3ad4
003f2032   3ad4
003f2033   8bbe       MOVL         XAR1, *--SP
003f2034   0006       LRETR        
3f2035:              _HAL_GetBoardNum:
003f2035   b2bd       MOVL         *SP++, XAR1
003f2036   8ba4       MOVL         XAR1, XAR4
003f2037   8ac1       MOVL         XAR4, *+XAR1[0]
003f2038   767f       LCR          0x3f3b1b
003f2039   3b1b
003f203a   8ac1       MOVL         XAR4, *+XAR1[0]
003f203b   767f       LCR          0x3f3abe
003f203c   3abe
003f203d   9a00       MOVB         AL, #0x0
003f203e   8ac1       MOVL         XAR4, *+XAR1[0]
003f203f   767f       LCR          0x3f3959
003f2040   3959
003f2041   8ac1       MOVL         XAR4, *+XAR1[0]
003f2042   767f       LCR          0x3f3a91
003f2043   3a91
003f2044   8ac1       MOVL         XAR4, *+XAR1[0]
003f2045   767f       LCR          0x3f3a64
003f2046   3a64
003f2047   8ac1       MOVL         XAR4, *+XAR1[0]
003f2048   767f       LCR          0x3f3ac9
003f2049   3ac9
003f204a   28a9       MOV          AL, #0x02c0
003f204b   02c0
003f204c   8aa1       MOVL         XAR4, XAR1
003f204d   767f       LCR          0x3f1e57
003f204e   1e57
003f204f   8aa1       MOVL         XAR4, XAR1
003f2050   767f       LCR          0x3f1eae
003f2051   1eae
003f2052   1ba9       CMP          AL, #3972
003f2053   0f84
003f2054   6644       SB           68, HI
003f2055   1ba9       CMP          AL, #3723
003f2056   0e8b
003f2057   d0b4       MOVB         XAR0, #0xb4
003f2058   6904       SB           4, LOS
003f2059   1ba9       CMP          AL, #3971
003f205a   0f83
003f205b   683a       SB           58, LO
3f205c:              $C$L15:
003f205c   1ba9       CMP          AL, #3227
003f205d   0c9b
003f205e   6904       SB           4, LOS
003f205f   1ba9       CMP          AL, #3475
003f2060   0d93
003f2061   6832       SB           50, LO
3f2062:              $C$L16:
003f2062   1ba9       CMP          AL, #2730
003f2063   0aaa
003f2064   6904       SB           4, LOS
003f2065   1ba9       CMP          AL, #2979
003f2066   0ba3
003f2067   682a       SB           42, LO
3f2068:              $C$L17:
003f2068   1ba9       CMP          AL, #2234
003f2069   08ba
003f206a   6904       SB           4, LOS
003f206b   1ba9       CMP          AL, #2482
003f206c   09b2
003f206d   6822       SB           34, LO
3f206e:              $C$L18:
003f206e   1ba9       CMP          AL, #1738
003f206f   06ca
003f2070   6904       SB           4, LOS
003f2071   1ba9       CMP          AL, #1986
003f2072   07c2
003f2073   681a       SB           26, LO
3f2074:              $C$L19:
003f2074   1ba9       CMP          AL, #1241
003f2075   04d9
003f2076   6904       SB           4, LOS
003f2077   1ba9       CMP          AL, #1489
003f2078   05d1
003f2079   6812       SB           18, LO
3f207a:              $C$L20:
003f207a   1ba9       CMP          AL, #745
003f207b   02e9
003f207c   6904       SB           4, LOS
003f207d   1ba9       CMP          AL, #992
003f207e   03e0
003f207f   680a       SB           10, LO
3f2080:              $C$L21:
003f2080   52f8       CMPB         AL, #0xf8
003f2081   6904       SB           4, LOS
003f2082   1ba9       CMP          AL, #496
003f2083   01f0
003f2084   6803       SB           3, LO
3f2085:              $C$L22:
003f2085   9a09       MOVB         AL, #0x9
003f2086   6f10       SB           16, UNC
3f2087:              $C$L23:
003f2087   9a07       MOVB         AL, #0x7
003f2088   6f0e       SB           14, UNC
3f2089:              $C$L24:
003f2089   9a00       MOVB         AL, #0x0
003f208a   6f0c       SB           12, UNC
3f208b:              $C$L25:
003f208b   9a01       MOVB         AL, #0x1
003f208c   6f0a       SB           10, UNC
3f208d:              $C$L26:
003f208d   9a02       MOVB         AL, #0x2
003f208e   6f08       SB           8, UNC
3f208f:              $C$L27:
003f208f   9a03       MOVB         AL, #0x3
003f2090   6f06       SB           6, UNC
3f2091:              $C$L28:
003f2091   9a04       MOVB         AL, #0x4
003f2092   6f04       SB           4, UNC
3f2093:              $C$L29:
003f2093   9a05       MOVB         AL, #0x5
003f2094   6f02       SB           2, UNC
3f2095:              $C$L30:
003f2095   9a06       MOVB         AL, #0x6
3f2096:              $C$L31:
003f2096   9691       MOV          *+XAR1[AR0], AL
003f2097   6f04       SB           4, UNC
3f2098:              $C$L32:
003f2098   d0b4       MOVB         XAR0, #0xb4
003f2099   56bf       MOVB         *+XAR1[AR0], #0x08, UNC
003f209a   0891
3f209b:              $C$L33:
003f209b   8bbe       MOVL         XAR1, *--SP
003f209c   0006       LRETR        
3f209d:              _HAL_getOscTrimValue:
003f209d   5300       CMPB         AH, #0x0
003f209e   88a9       MOVZ         AR6, AL
003f209f   6404       SB           4, LT
003f20a0   5603       MOV          ACC, AH << 9
003f20a1   09a8
003f20a2   6f06       SB           6, UNC
3f20a3:              $C$L34:
003f20a3   5603       MOV          ACC, AH << 9
003f20a4   09a8
003f20a5   ff5c       NEG          AL
003f20a6   1aa9       OR           AL, #0x4000
003f20a7   4000
3f20a8:              $C$L35:
003f20a8   93a6       MOV          AH, AR6
003f20a9   6403       SB           3, LT
003f20aa   caa6       OR           AL, AR6
003f20ab   0006       LRETR        
3f20ac:              $C$L36:
003f20ac   ff5d       NEG          AH
003f20ad   cba9       OR           AH, @AL
003f20ae   5180       ORB          AH, #0x80
003f20af   92a8       MOV          AL, @AH
003f20b0   0006       LRETR        
3f20b1:              _HAL_osc1Comp:
003f20b1   b2bd       MOVL         *SP++, XAR1
003f20b2   aabd       MOVL         *SP++, XAR2
003f20b3   fe02       ADDB         SP, #2
003f20b4   59a9       MOVZ         AR1, AL
003f20b5   86a4       MOVL         XAR2, XAR4
003f20b6   7622       EALLOW       
003f20b7   76fd       MOVL         XAR7, #0x3d7ea2
003f20b8   7ea2
003f20b9   ff69       SPM          #0
003f20ba   3e67       LCR          *XAR7
003f20bb   93a1       MOV          AH, AR1
003f20bc   76fd       MOVL         XAR7, #0x3d7e90
003f20bd   7e90
003f20be   9fa9       SUB          AH, @AL
003f20bf   59a8       MOVZ         AR1, AH
003f20c0   3e67       LCR          *XAR7
003f20c1   2da9       MOV          T, AL
003f20c2   3b01       SETC         SXM
003f20c3   76fd       MOVL         XAR7, #0x3d7e93
003f20c4   7e93
003f20c5   12a1       MPY          ACC, T, AR1
003f20c6   28ac       MOV          T, #0x0011
003f20c7   0011
003f20c8   ff1e       ADD          ACC, #0x41 << 14
003f20c9   0041
003f20ca   1ea6       MOVL         XAR6, ACC
003f20cb   ff4d       SFR          ACC, 14
003f20cc   5622       LSRL         ACC, T
003f20cd   07a6       ADDL         ACC, XAR6
003f20ce   ff4e       SFR          ACC, 15
003f20cf   59a9       MOVZ         AR1, AL
003f20d0   3e67       LCR          *XAR7
003f20d1   93a1       MOV          AH, AR1
003f20d2   94a8       ADD          AL, @AH
003f20d3   9ce0       ADDB         AL, #-32
003f20d4   59a9       MOVZ         AR1, AL
003f20d5   5220       CMPB         AL, #0x20
003f20d6   6307       SB           7, GEQ
003f20d7   1ba1       CMP          AR1, #-31
003f20d8   ffe1
003f20d9   6305       SB           5, GEQ
003f20da   8d7f       MOVL         XAR1, #0x3fffe1
003f20db   ffe1
003f20dc   6f02       SB           2, UNC
3f20dd:              $C$L37:
003f20dd   d11f       MOVB         XAR1, #0x1f
3f20de:              $C$L38:
003f20de   76fd       MOVL         XAR7, #0x3d7e96
003f20df   7e96
003f20e0   3e67       LCR          *XAR7
003f20e1   93a1       MOV          AH, AR1
003f20e2   767f       LCR          0x3f209d
003f20e3   209d
003f20e4   d076       MOVB         XAR0, #0x76
003f20e5   93a9       MOV          AH, @AL
003f20e6   9a01       MOVB         AL, #0x1
003f20e7   8a92       MOVL         XAR4, *+XAR2[AR0]
003f20e8   767f       LCR          0x3f45df
003f20e9   45df
003f20ea   761a       EDIS         
003f20eb   ff69       SPM          #0
003f20ec   fe82       SUBB         SP, #2
003f20ed   86be       MOVL         XAR2, *--SP
003f20ee   8bbe       MOVL         XAR1, *--SP
003f20ef   0006       LRETR        
3f20f0:              _HAL_osc2Comp:
003f20f0   b2bd       MOVL         *SP++, XAR1
003f20f1   aabd       MOVL         *SP++, XAR2
003f20f2   fe02       ADDB         SP, #2
003f20f3   59a9       MOVZ         AR1, AL
003f20f4   86a4       MOVL         XAR2, XAR4
003f20f5   7622       EALLOW       
003f20f6   76fd       MOVL         XAR7, #0x3d7ea2
003f20f7   7ea2
003f20f8   ff69       SPM          #0
003f20f9   3e67       LCR          *XAR7
003f20fa   93a1       MOV          AH, AR1
003f20fb   76fd       MOVL         XAR7, #0x3d7e99
003f20fc   7e99
003f20fd   9fa9       SUB          AH, @AL
003f20fe   59a8       MOVZ         AR1, AH
003f20ff   3e67       LCR          *XAR7
003f2100   2da9       MOV          T, AL
003f2101   3b01       SETC         SXM
003f2102   76fd       MOVL         XAR7, #0x3d7e9c
003f2103   7e9c
003f2104   12a1       MPY          ACC, T, AR1
003f2105   28ac       MOV          T, #0x0011
003f2106   0011
003f2107   ff1e       ADD          ACC, #0x41 << 14
003f2108   0041
003f2109   1ea6       MOVL         XAR6, ACC
003f210a   ff4d       SFR          ACC, 14
003f210b   5622       LSRL         ACC, T
003f210c   07a6       ADDL         ACC, XAR6
003f210d   ff4e       SFR          ACC, 15
003f210e   59a9       MOVZ         AR1, AL
003f210f   3e67       LCR          *XAR7
003f2110   93a1       MOV          AH, AR1
003f2111   94a8       ADD          AL, @AH
003f2112   9ce0       ADDB         AL, #-32
003f2113   59a9       MOVZ         AR1, AL
003f2114   5220       CMPB         AL, #0x20
003f2115   6307       SB           7, GEQ
003f2116   1ba1       CMP          AR1, #-31
003f2117   ffe1
003f2118   6305       SB           5, GEQ
003f2119   8d7f       MOVL         XAR1, #0x3fffe1
003f211a   ffe1
003f211b   6f02       SB           2, UNC
3f211c:              $C$L39:
003f211c   d11f       MOVB         XAR1, #0x1f
3f211d:              $C$L40:
003f211d   76fd       MOVL         XAR7, #0x3d7e9f
003f211e   7e9f
003f211f   3e67       LCR          *XAR7
003f2120   93a1       MOV          AH, AR1
003f2121   767f       LCR          0x3f209d
003f2122   209d
003f2123   d076       MOVB         XAR0, #0x76
003f2124   93a9       MOV          AH, @AL
003f2125   9a02       MOVB         AL, #0x2
003f2126   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2127   767f       LCR          0x3f45df
003f2128   45df
003f2129   761a       EDIS         
003f212a   ff69       SPM          #0
003f212b   fe82       SUBB         SP, #2
003f212c   86be       MOVL         XAR2, *--SP
003f212d   8bbe       MOVL         XAR1, *--SP
003f212e   0006       LRETR        
3f212f:              _HAL_OscTempComp:
003f212f   b2bd       MOVL         *SP++, XAR1
003f2130   aabd       MOVL         *SP++, XAR2
003f2131   86a4       MOVL         XAR2, XAR4
003f2132   8ac2       MOVL         XAR4, *+XAR2[0]
003f2133   767f       LCR          0x3f3b1b
003f2134   3b1b
003f2135   8ac2       MOVL         XAR4, *+XAR2[0]
003f2136   767f       LCR          0x3f3abe
003f2137   3abe
003f2138   9a00       MOVB         AL, #0x0
003f2139   8ac2       MOVL         XAR4, *+XAR2[0]
003f213a   767f       LCR          0x3f3959
003f213b   3959
003f213c   8ac2       MOVL         XAR4, *+XAR2[0]
003f213d   767f       LCR          0x3f3a91
003f213e   3a91
003f213f   9a01       MOVB         AL, #0x1
003f2140   8ac2       MOVL         XAR4, *+XAR2[0]
003f2141   767f       LCR          0x3f3a47
003f2142   3a47
003f2143   8ac2       MOVL         XAR4, *+XAR2[0]
003f2144   767f       LCR          0x3f3a64
003f2145   3a64
003f2146   8ac2       MOVL         XAR4, *+XAR2[0]
003f2147   767f       LCR          0x3f3ac9
003f2148   3ac9
003f2149   8ac2       MOVL         XAR4, *+XAR2[0]
003f214a   767f       LCR          0x3f3a9c
003f214b   3a9c
003f214c   9a01       MOVB         AL, #0x1
003f214d   8ac2       MOVL         XAR4, *+XAR2[0]
003f214e   767f       LCR          0x3f396b
003f214f   396b
003f2150   9a00       MOVB         AL, #0x0
003f2151   28a8       MOV          AH, #0x0140
003f2152   0140
003f2153   8ac2       MOVL         XAR4, *+XAR2[0]
003f2154   767f       LCR          0x3f39b4
003f2155   39b4
003f2156   9a00       MOVB         AL, #0x0
003f2157   9b3f       MOVB         AH, #0x3f
003f2158   8ac2       MOVL         XAR4, *+XAR2[0]
003f2159   767f       LCR          0x3f3990
003f215a   3990
003f215b   8ac2       MOVL         XAR4, *+XAR2[0]
003f215c   9a00       MOVB         AL, #0x0
003f215d   9b00       MOVB         AH, #0x0
003f215e   767f       LCR          0x3f39fb
003f215f   39fb
003f2160   8ac2       MOVL         XAR4, *+XAR2[0]
003f2161   8d00       MOVL         XAR0, #0x006605
003f2162   6605
003f2163   9a00       MOVB         AL, #0x0
003f2164   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f2165   0194
003f2166   8ac2       MOVL         XAR4, *+XAR2[0]
003f2167   767f       LCR          0x3f3aa7
003f2168   3aa7
003f2169   9a00       MOVB         AL, #0x0
003f216a   8ac2       MOVL         XAR4, *+XAR2[0]
003f216b   767f       LCR          0x3f39aa
003f216c   39aa
003f216d   8ac2       MOVL         XAR4, *+XAR2[0]
003f216e   8d00       MOVL         XAR0, #0x006604
003f216f   6604
3f2170:              $C$L41:
003f2170   4094       TBIT         *+XAR4[AR0], #0x0
003f2171   efff       SBF          -1, NTC
003f2172   8d00       MOVL         XAR0, #0x006605
003f2173   6605
003f2174   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f2175   0194
003f2176   59c4       MOVZ         AR1, *+XAR4[0]
003f2177   8aa2       MOVL         XAR4, XAR2
003f2178   92a1       MOV          AL, AR1
003f2179   767f       LCR          0x3f20b1
003f217a   20b1
003f217b   8aa2       MOVL         XAR4, XAR2
003f217c   92a1       MOV          AL, AR1
003f217d   767f       LCR          0x3f20f0
003f217e   20f0
003f217f   86be       MOVL         XAR2, *--SP
003f2180   8bbe       MOVL         XAR1, *--SP
003f2181   0006       LRETR        
3f2182:              _HAL_cal:
003f2182   b2bd       MOVL         *SP++, XAR1
003f2183   8ba4       MOVL         XAR1, XAR4
003f2184   8ad1       MOVL         XAR4, *+XAR1[2]
003f2185   767f       LCR          0x3f3ec8
003f2186   3ec8
003f2187   7622       EALLOW       
003f2188   ff69       SPM          #0
003f2189   76fd       MOVL         XAR7, #0x3d7c80
003f218a   7c80
003f218b   3e67       LCR          *XAR7
003f218c   761a       EDIS         
003f218d   ff69       SPM          #0
003f218e   8aa1       MOVL         XAR4, XAR1
003f218f   767f       LCR          0x3f2006
003f2190   2006
003f2191   8aa1       MOVL         XAR4, XAR1
003f2192   767f       LCR          0x3f2035
003f2193   2035
003f2194   8aa1       MOVL         XAR4, XAR1
003f2195   767f       LCR          0x3f212f
003f2196   212f
003f2197   8ad1       MOVL         XAR4, *+XAR1[2]
003f2198   767f       LCR          0x3f3f3f
003f2199   3f3f
003f219a   8bbe       MOVL         XAR1, *--SP
003f219b   0006       LRETR        
3f219c:              _HAL_setParams:
003f219c   b2bd       MOVL         *SP++, XAR1
003f219d   aabd       MOVL         *SP++, XAR2
003f219e   a2bd       MOVL         *SP++, XAR3
003f219f   fe0e       ADDB         SP, #14
003f21a0   8ba4       MOVL         XAR1, XAR4
003f21a1   a04e       MOVL         *-SP[14], XAR5
003f21a2   8ae1       MOVL         XAR4, *+XAR1[4]
003f21a3   767f       LCR          0x3f4654
003f21a4   4654
003f21a5   8ae1       MOVL         XAR4, *+XAR1[4]
003f21a6   767f       LCR          0x3f464c
003f21a7   464c
003f21a8   8ae1       MOVL         XAR4, *+XAR1[4]
003f21a9   767f       LCR          0x3f465a
003f21aa   465a
003f21ab   8aa1       MOVL         XAR4, XAR1
003f21ac   767f       LCR          0x3f1cdd
003f21ad   1cdd
003f21ae   9a0c       MOVB         AL, #0xc
003f21af   8aa1       MOVL         XAR4, XAR1
003f21b0   767f       LCR          0x3f1b61
003f21b1   1b61
003f21b2   8aa1       MOVL         XAR4, XAR1
003f21b3   767f       LCR          0x3f1b9f
003f21b4   1b9f
003f21b5   8aa1       MOVL         XAR4, XAR1
003f21b6   767f       LCR          0x3f2182
003f21b7   2182
003f21b8   8aa1       MOVL         XAR4, XAR1
003f21b9   767f       LCR          0x3f1bbb
003f21ba   1bbb
003f21bb   8aa1       MOVL         XAR4, XAR1
003f21bc   767f       LCR          0x3f1c0c
003f21bd   1c0c
003f21be   8aa1       MOVL         XAR4, XAR1
003f21bf   7640       LCR          0x0086e1
003f21c0   86e1
003f21c1   8aa1       MOVL         XAR4, XAR1
003f21c2   767f       LCR          0x3f1cf9
003f21c3   1cf9
003f21c4   824e       MOVL         XAR3, *-SP[14]
003f21c5   d09e       MOVB         XAR0, #0x9e
003f21c6   0693       MOVL         ACC, *+XAR3[AR0]
003f21c7   767f       LCR          0x3ff8aa
003f21c8   f8aa
003f21c9   d00e       MOVB         XAR0, #0xe
003f21ca   1e42       MOVL         *-SP[2], ACC
003f21cb   0693       MOVL         ACC, *+XAR3[AR0]
003f21cc   767f       LCR          0x3fdce1
003f21cd   dce1
003f21ce   88ad       MOVZ         AR6, SP
003f21cf   de8a       SUBB         XAR6, #10
003f21d0   767f       LCR          0x3fdfb7
003f21d1   dfb7
003f21d2   5cad       MOVZ         AR4, SP
003f21d3   88ad       MOVZ         AR6, SP
003f21d4   8f7f       MOVL         XAR5, #0x3f63ec
003f21d5   63ec
003f21d6   dc8a       SUBB         XAR4, #10
003f21d7   de86       SUBB         XAR6, #6
003f21d8   767f       LCR          0x3fdc5e
003f21d9   dc5e
003f21da   5cad       MOVZ         AR4, SP
003f21db   dc86       SUBB         XAR4, #6
003f21dc   767f       LCR          0x3fdf7b
003f21dd   df7b
003f21de   c5a3       MOVL         XAR7, XAR3
003f21df   86a9       MOVL         XAR2, ACC
003f21e0   df0b       ADDB         XAR7, #11
003f21e1   92c7       MOV          AL, *+XAR7[0]
003f21e2   c5a3       MOVL         XAR7, XAR3
003f21e3   d0b2       MOVB         XAR0, #0xb2
003f21e4   9691       MOV          *+XAR1[AR0], AL
003f21e5   d0b3       MOVB         XAR0, #0xb3
003f21e6   df0c       ADDB         XAR7, #12
003f21e7   92c7       MOV          AL, *+XAR7[0]
003f21e8   9691       MOV          *+XAR1[AR0], AL
003f21e9   9a00       MOVB         AL, #0x0
003f21ea   964b       MOV          *-SP[11], AL
003f21eb   6f2a       SB           42, UNC
3f21ec:              $C$L42:
003f21ec   0ea9       MOVU         ACC, AL
003f21ed   82a1       MOVL         XAR3, XAR1
003f21ee   ff30       LSL          ACC, 1
003f21ef   5601       ADDL         XAR3, ACC
003f21f0   00a3
003f21f1   aaa9       MOVL         ACC, XAR2
003f21f2   db40       ADDB         XAR3, #64
003f21f3   8ac3       MOVL         XAR4, *+XAR3[0]
003f21f4   767f       LCR          0x3f4532
003f21f5   4532
003f21f6   0200       MOVB         ACC, #0
003f21f7   8ac3       MOVL         XAR4, *+XAR3[0]
003f21f8   767f       LCR          0x3f4523
003f21f9   4523
003f21fa   0200       MOVB         ACC, #0
003f21fb   8ac3       MOVL         XAR4, *+XAR3[0]
003f21fc   767f       LCR          0x3f4521
003f21fd   4521
003f21fe   0a4b       INC          *-SP[11]
003f21ff   924b       MOV          AL, *-SP[11]
003f2200   6f1a       SB           26, UNC
3f2201:              $C$L43:
003f2201   0ea9       MOVU         ACC, AL
003f2202   82a1       MOVL         XAR3, XAR1
003f2203   ff30       LSL          ACC, 1
003f2204   5601       ADDL         XAR3, ACC
003f2205   00a3
003f2206   aaa9       MOVL         ACC, XAR2
003f2207   db0a       ADDB         XAR3, #10
003f2208   8ac3       MOVL         XAR4, *+XAR3[0]
003f2209   767f       LCR          0x3f4532
003f220a   4532
003f220b   0200       MOVB         ACC, #0
003f220c   8ac3       MOVL         XAR4, *+XAR3[0]
003f220d   767f       LCR          0x3f4523
003f220e   4523
003f220f   0200       MOVB         ACC, #0
003f2210   8ac3       MOVL         XAR4, *+XAR3[0]
003f2211   767f       LCR          0x3f4521
003f2212   4521
003f2213   0a4b       INC          *-SP[11]
003f2214   924b       MOV          AL, *-SP[11]
3f2215:              $C$L44:
003f2215   d0b2       MOVB         XAR0, #0xb2
003f2216   5491       CMP          AL, *+XAR1[AR0]
003f2217   68ea       SB           -22, LO
003f2218   9a00       MOVB         AL, #0x0
003f2219   964b       MOV          *-SP[11], AL
3f221a:              $C$L45:
003f221a   d0b3       MOVB         XAR0, #0xb3
003f221b   5491       CMP          AL, *+XAR1[AR0]
003f221c   68d0       SB           -48, LO
003f221d   864e       MOVL         XAR2, *-SP[14]
003f221e   d026       MOVB         XAR0, #0x26
003f221f   9292       MOV          AL, *+XAR2[AR0]
003f2220   767f       LCR          0x3ff8bd
003f2221   f8bd
003f2222   d028       MOVB         XAR0, #0x28
003f2223   c492       MOVL         XAR6, *+XAR2[AR0]
003f2224   d502       MOVB         XAR5, #0x2
003f2225   8aa1       MOVL         XAR4, XAR1
003f2226   c242       MOVL         *-SP[2], XAR6
003f2227   767f       LCR          0x3f1a99
003f2228   1a99
003f2229   8aa1       MOVL         XAR4, XAR1
003f222a   767f       LCR          0x3f1a21
003f222b   1a21
003f222c   d026       MOVB         XAR0, #0x26
003f222d   9292       MOV          AL, *+XAR2[AR0]
003f222e   767f       LCR          0x3ff8bd
003f222f   f8bd
003f2230   8aa1       MOVL         XAR4, XAR1
003f2231   767f       LCR          0x3f19d0
003f2232   19d0
003f2233   8aa1       MOVL         XAR4, XAR1
003f2234   767f       LCR          0x3f1bf0
003f2235   1bf0
003f2236   8aa1       MOVL         XAR4, XAR1
003f2237   767f       LCR          0x3f1a57
003f2238   1a57
003f2239   fe8e       SUBB         SP, #14
003f223a   82be       MOVL         XAR3, *--SP
003f223b   86be       MOVL         XAR2, *--SP
003f223c   8bbe       MOVL         XAR1, *--SP
003f223d   0006       LRETR        
3f223e:              _HAL_setDacParameters:
003f223e   d082       MOVB         XAR0, #0x82
003f223f   8a94       MOVL         XAR4, *+XAR4[AR0]
003f2240   92ec       MOV          AL, *+XAR4[5]
003f2241   8aa5       MOVL         XAR4, XAR5
003f2242   96c5       MOV          *+XAR5[0], AL
003f2243   9b80       MOVB         AH, #0x80
003f2244   9a00       MOVB         AL, #0x0
003f2245   dc12       ADDB         XAR4, #18
003f2246   dd1a       ADDB         XAR5, #26
003f2247   1ec4       MOVL         *+XAR4[0], ACC
003f2248   1ed4       MOVL         *+XAR4[2], ACC
003f2249   0200       MOVB         ACC, #0
003f224a   1ee4       MOVL         *+XAR4[4], ACC
003f224b   1ef4       MOVL         *+XAR4[6], ACC
003f224c   ff2f       MOV          ACC, #0x200 << 15
003f224d   0200
003f224e   1ec5       MOVL         *+XAR5[0], ACC
003f224f   1ed5       MOVL         *+XAR5[2], ACC
003f2250   1ee5       MOVL         *+XAR5[4], ACC
003f2251   1ef5       MOVL         *+XAR5[6], ACC
003f2252   0006       LRETR        
3f2253:              _HAL_disableWdog:
003f2253   d094       MOVB         XAR0, #0x94
003f2254   8a94       MOVL         XAR4, *+XAR4[AR0]
003f2255   767f       LCR          0x3f4511
003f2256   4511
003f2257   0006       LRETR        
3f2258:              _HAL_init:
003f2258   b2bd       MOVL         *SP++, XAR1
003f2259   aabd       MOVL         *SP++, XAR2
003f225a   a2bd       MOVL         *SP++, XAR3
003f225b   fe04       ADDB         SP, #4
003f225c   1ea6       MOVL         XAR6, ACC
003f225d   02b6       MOVB         ACC, #182
003f225e   0fa6       CMPL         ACC, XAR6
003f225f   6904       SB           4, LOS
003f2260   d400       MOVB         XAR4, #0x0
003f2261   ffef       B            163, UNC
003f2262   00a3
3f2263:              $C$L46:
003f2263   a842       MOVL         *-SP[2], XAR4
003f2264   8ba4       MOVL         XAR1, XAR4
003f2265   82a4       MOVL         XAR3, XAR4
003f2266   a844       MOVL         *-SP[4], XAR4
003f2267   0208       MOVB         ACC, #8
003f2268   8f00       MOVL         XAR4, #0x007022
003f2269   7022
003f226a   767f       LCR          0x3f44e7
003f226b   44e7
003f226c   d094       MOVB         XAR0, #0x94
003f226d   a891       MOVL         *+XAR1[AR0], XAR4
003f226e   8aa1       MOVL         XAR4, XAR1
003f226f   767f       LCR          0x3f2253
003f2270   2253
003f2271   8f00       MOVL         XAR4, #0x000b00
003f2272   0b00
003f2273   ff20       MOV          ACC, #26192
003f2274   6650
003f2275   767f       LCR          0x3f3a7a
003f2276   3a7a
003f2277   0211       MOVB         ACC, #17
003f2278   a8c1       MOVL         *+XAR1[0], XAR4
003f2279   8f00       MOVL         XAR4, #0x007010
003f227a   7010
003f227b   767f       LCR          0x3f3e52
003f227c   3e52
003f227d   0201       MOVB         ACC, #1
003f227e   a8d1       MOVL         *+XAR1[2], XAR4
003f227f   8f00       MOVL         XAR4, #0x000332
003f2280   0332
003f2281   767f       LCR          0x3f4636
003f2282   4636
003f2283   0208       MOVB         ACC, #8
003f2284   a8e1       MOVL         *+XAR1[4], XAR4
003f2285   8f00       MOVL         XAR4, #0x000a80
003f2286   0a80
003f2287   767f       LCR          0x3f469f
003f2288   469f
003f2289   026a       MOVB         ACC, #106
003f228a   a8f1       MOVL         *+XAR1[6], XAR4
003f228b   8f00       MOVL         XAR4, #0x006f80
003f228c   6f80
003f228d   767f       LCR          0x3f3dfe
003f228e   3dfe
003f228f   d008       MOVB         XAR0, #0x8
003f2290   a891       MOVL         *+XAR1[AR0], XAR4
003f2291   db10       ADDB         XAR3, #16
003f2292   d202       MOVB         XAR2, #0x2
003f2293   d90a       ADDB         XAR1, #10
3f2294:              $C$L47:
003f2294   8aa3       MOVL         XAR4, XAR3
003f2295   0210       MOVB         ACC, #16
003f2296   767f       LCR          0x3f4548
003f2297   4548
003f2298   a8c1       MOVL         *+XAR1[0], XAR4
003f2299   db10       ADDB         XAR3, #16
003f229a   d902       ADDB         XAR1, #2
003f229b   000a       BANZ         -7,AR2--
003f229c   fff9
003f229d   0644       MOVL         ACC, *-SP[4]
003f229e   82a9       MOVL         XAR3, ACC
003f229f   d202       MOVB         XAR2, #0x2
003f22a0   0940       ADDB         ACC, #64
003f22a1   8ba9       MOVL         XAR1, ACC
003f22a2   db46       ADDB         XAR3, #70
3f22a3:              $C$L48:
003f22a3   8aa3       MOVL         XAR4, XAR3
003f22a4   0210       MOVB         ACC, #16
003f22a5   767f       LCR          0x3f4548
003f22a6   4548
003f22a7   a8c1       MOVL         *+XAR1[0], XAR4
003f22a8   db10       ADDB         XAR3, #16
003f22a9   d902       ADDB         XAR1, #2
003f22aa   000a       BANZ         -7,AR2--
003f22ab   fff9
003f22ac   8f00       MOVL         XAR4, #0x007014
003f22ad   7014
003f22ae   0203       MOVB         ACC, #3
003f22af   767f       LCR          0x3f4606
003f22b0   4606
003f22b1   8644       MOVL         XAR2, *-SP[4]
003f22b2   d076       MOVB         XAR0, #0x76
003f22b3   ff20       MOV          ACC, #25500
003f22b4   639c
003f22b5   a892       MOVL         *+XAR2[AR0], XAR4
003f22b6   8f00       MOVL         XAR4, #0x000ce0
003f22b7   0ce0
003f22b8   767f       LCR          0x3f3f9a
003f22b9   3f9a
003f22ba   d078       MOVB         XAR0, #0x78
003f22bb   0211       MOVB         ACC, #17
003f22bc   a892       MOVL         *+XAR2[AR0], XAR4
003f22bd   8f00       MOVL         XAR4, #0x007011
003f22be   7011
003f22bf   767f       LCR          0x3f4451
003f22c0   4451
003f22c1   d07a       MOVB         XAR0, #0x7a
003f22c2   023a       MOVB         ACC, #58
003f22c3   a892       MOVL         *+XAR2[AR0], XAR4
003f22c4   8f00       MOVL         XAR4, #0x006800
003f22c5   6800
003f22c6   767f       LCR          0x3f3611
003f22c7   3611
003f22c8   8ba2       MOVL         XAR1, XAR2
003f22c9   d97c       ADDB         XAR1, #124
003f22ca   023a       MOVB         ACC, #58
003f22cb   a8c1       MOVL         *+XAR1[0], XAR4
003f22cc   8f00       MOVL         XAR4, #0x006840
003f22cd   6840
003f22ce   767f       LCR          0x3f3611
003f22cf   3611
003f22d0   023a       MOVB         ACC, #58
003f22d1   a8d1       MOVL         *+XAR1[2], XAR4
003f22d2   8f00       MOVL         XAR4, #0x006880
003f22d3   6880
003f22d4   767f       LCR          0x3f3611
003f22d5   3611
003f22d6   ff20       MOV          ACC, #26266
003f22d7   669a
003f22d8   a8e1       MOVL         *+XAR1[4], XAR4
003f22d9   8f00       MOVL         XAR4, #0x000985
003f22da   0985
003f22db   767f       LCR          0x3f44b8
003f22dc   44b8
003f22dd   d088       MOVB         XAR0, #0x88
003f22de   028a       MOVB         ACC, #138
003f22df   a892       MOVL         *+XAR2[AR0], XAR4
003f22e0   07a2       ADDL         ACC, XAR2
003f22e1   8f00       MOVL         XAR4, #0x000c00
003f22e2   0c00
003f22e3   8ba9       MOVL         XAR1, ACC
003f22e4   0208       MOVB         ACC, #8
003f22e5   767f       LCR          0x3f45cd
003f22e6   45cd
003f22e7   0208       MOVB         ACC, #8
003f22e8   a8c1       MOVL         *+XAR1[0], XAR4
003f22e9   8f00       MOVL         XAR4, #0x000c08
003f22ea   0c08
003f22eb   767f       LCR          0x3f45cd
003f22ec   45cd
003f22ed   0208       MOVB         ACC, #8
003f22ee   a8d1       MOVL         *+XAR1[2], XAR4
003f22ef   8f00       MOVL         XAR4, #0x000c10
003f22f0   0c10
003f22f1   767f       LCR          0x3f45cd
003f22f2   45cd
003f22f3   0222       MOVB         ACC, #34
003f22f4   a8e1       MOVL         *+XAR1[4], XAR4
003f22f5   8f00       MOVL         XAR4, #0x007900
003f22f6   7900
003f22f7   767f       LCR          0x3f426f
003f22f8   426f
003f22f9   8b44       MOVL         XAR1, *-SP[4]
003f22fa   d090       MOVB         XAR0, #0x90
003f22fb   0210       MOVB         ACC, #16
003f22fc   a891       MOVL         *+XAR1[AR0], XAR4
003f22fd   8f00       MOVL         XAR4, #0x007050
003f22fe   7050
003f22ff   767f       LCR          0x3f41b7
003f2300   41b7
003f2301   d096       MOVB         XAR0, #0x96
003f2302   a891       MOVL         *+XAR1[AR0], XAR4
003f2303   8a42       MOVL         XAR4, *-SP[2]
3f2304:              $C$L49:
003f2304   fe84       SUBB         SP, #4
003f2305   82be       MOVL         XAR3, *--SP
003f2306   86be       MOVL         XAR2, *--SP
003f2307   8bbe       MOVL         XAR1, *--SP
003f2308   0006       LRETR        
3f2309:              _HAL_enableTimer1Int:
003f2309   b2bd       MOVL         *SP++, XAR1
003f230a   d078       MOVB         XAR0, #0x78
003f230b   9a0d       MOVB         AL, #0xd
003f230c   8ba4       MOVL         XAR1, XAR4
003f230d   8a91       MOVL         XAR4, *+XAR1[AR0]
003f230e   767f       LCR          0x3f3f80
003f230f   3f80
003f2310   d08c       MOVB         XAR0, #0x8c
003f2311   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2312   767f       LCR          0x3f45d6
003f2313   45d6
003f2314   28a9       MOV          AL, #0x1000
003f2315   1000
003f2316   8ae1       MOVL         XAR4, *+XAR1[4]
003f2317   767f       LCR          0x3f463f
003f2318   463f
003f2319   8bbe       MOVL         XAR1, *--SP
003f231a   0006       LRETR        
3f231b:              _HAL_enableSciaInt:
003f231b   b2bd       MOVL         *SP++, XAR1
003f231c   d078       MOVB         XAR0, #0x78
003f231d   9a08       MOVB         AL, #0x8
003f231e   9b01       MOVB         AH, #0x1
003f231f   8ba4       MOVL         XAR1, XAR4
003f2320   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2321   767f       LCR          0x3f3fce
003f2322   3fce
003f2323   d078       MOVB         XAR0, #0x78
003f2324   9a08       MOVB         AL, #0x8
003f2325   9b02       MOVB         AH, #0x2
003f2326   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2327   767f       LCR          0x3f3fce
003f2328   3fce
003f2329   d096       MOVB         XAR0, #0x96
003f232a   8a91       MOVL         XAR4, *+XAR1[AR0]
003f232b   767f       LCR          0x3f41ea
003f232c   41ea
003f232d   d096       MOVB         XAR0, #0x96
003f232e   8a91       MOVL         XAR4, *+XAR1[AR0]
003f232f   767f       LCR          0x3f41d5
003f2330   41d5
003f2331   28a9       MOV          AL, #0x0100
003f2332   0100
003f2333   8ae1       MOVL         XAR4, *+XAR1[4]
003f2334   767f       LCR          0x3f463f
003f2335   463f
003f2336   8bbe       MOVL         XAR1, *--SP
003f2337   0006       LRETR        
3f2338:              _HAL_enablePwmInt:
003f2338   b2bd       MOVL         *SP++, XAR1
003f2339   d078       MOVB         XAR0, #0x78
003f233a   9a00       MOVB         AL, #0x0
003f233b   8ba4       MOVL         XAR1, XAR4
003f233c   8a91       MOVL         XAR4, *+XAR1[AR0]
003f233d   767f       LCR          0x3f3fc9
003f233e   3fc9
003f233f   d07c       MOVB         XAR0, #0x7c
003f2340   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2341   767f       LCR          0x3f364d
003f2342   364d
003f2343   9a04       MOVB         AL, #0x4
003f2344   8ae1       MOVL         XAR4, *+XAR1[4]
003f2345   767f       LCR          0x3f463f
003f2346   463f
003f2347   8bbe       MOVL         XAR1, *--SP
003f2348   0006       LRETR        
3f2349:              _HAL_enableGlobalInts:
003f2349   8ae4       MOVL         XAR4, *+XAR4[4]
003f234a   767f       LCR          0x3f4643
003f234b   4643
003f234c   0006       LRETR        
3f234d:              _HAL_enableDebugInt:
003f234d   8ae4       MOVL         XAR4, *+XAR4[4]
003f234e   767f       LCR          0x3f4646
003f234f   4646
003f2350   0006       LRETR        
3f2351:              _HAL_enableAdcInts:
003f2351   b2bd       MOVL         *SP++, XAR1
003f2352   d078       MOVB         XAR0, #0x78
003f2353   9a09       MOVB         AL, #0x9
003f2354   8ba4       MOVL         XAR1, XAR4
003f2355   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2356   767f       LCR          0x3f3fff
003f2357   3fff
003f2358   9a00       MOVB         AL, #0x0
003f2359   8ac1       MOVL         XAR4, *+XAR1[0]
003f235a   767f       LCR          0x3f3aa7
003f235b   3aa7
003f235c   9a01       MOVB         AL, #0x1
003f235d   8ae1       MOVL         XAR4, *+XAR1[4]
003f235e   767f       LCR          0x3f463f
003f235f   463f
003f2360   8bbe       MOVL         XAR1, *--SP
003f2361   0006       LRETR        
3f2362:              _HAL_disableGlobalInts:
003f2362   8ae4       MOVL         XAR4, *+XAR4[4]
003f2363   767f       LCR          0x3f4654
003f2364   4654
003f2365   0006       LRETR        
3f2366:              _updateGlobalVariables_motor:
003f2366   b2bd       MOVL         *SP++, XAR1
003f2367   aabd       MOVL         *SP++, XAR2
003f2368   a2bd       MOVL         *SP++, XAR3
003f2369   fe0a       ADDB         SP, #10
003f236a   8ba4       MOVL         XAR1, XAR4
003f236b   8ad1       MOVL         XAR4, *+XAR1[2]
003f236c   d018       MOVB         XAR0, #0x18
003f236d   82a5       MOVL         XAR3, XAR5
003f236e   8a94       MOVL         XAR4, *+XAR4[AR0]
003f236f   767f       LCR          0x3fceab
003f2370   ceab
003f2371   d038       MOVB         XAR0, #0x38
003f2372   1e91       MOVL         *+XAR1[AR0], ACC
003f2373   8ad1       MOVL         XAR4, *+XAR1[2]
003f2374   d06c       MOVB         XAR0, #0x6c
003f2375   8394       MOVL         XAR5, *+XAR4[AR0]
003f2376   d018       MOVB         XAR0, #0x18
003f2377   86d5       MOVL         XAR2, *+XAR5[2]
003f2378   8a94       MOVL         XAR4, *+XAR4[AR0]
003f2379   767f       LCR          0x3fce38
003f237a   ce38
003f237b   d034       MOVB         XAR0, #0x34
003f237c   aaac       MOVL         XT, XAR2
003f237d   5605       IMPYL        P, XT, ACC
003f237e   00a9
003f237f   5663       QMPYL        ACC, XT, ACC
003f2380   00a9
003f2381   56a7       LSL64        ACC:P, 8
003f2382   1e91       MOVL         *+XAR1[AR0], ACC
003f2383   d0ac       MOVB         XAR0, #0xac
003f2384   0691       MOVL         ACC, *+XAR1[AR0]
003f2385   d0ae       MOVB         XAR0, #0xae
003f2386   1e42       MOVL         *-SP[2], ACC
003f2387   8ad1       MOVL         XAR4, *+XAR1[2]
003f2388   0691       MOVL         ACC, *+XAR1[AR0]
003f2389   767f       LCR          0x3f1157
003f238a   1157
003f238b   d040       MOVB         XAR0, #0x40
003f238c   1e91       MOVL         *+XAR1[AR0], ACC
003f238d   8ad1       MOVL         XAR4, *+XAR1[2]
003f238e   d018       MOVB         XAR0, #0x18
003f238f   8a94       MOVL         XAR4, *+XAR4[AR0]
003f2390   767f       LCR          0x3fd0a3
003f2391   d0a3
003f2392   d04e       MOVB         XAR0, #0x4e
003f2393   1e91       MOVL         *+XAR1[AR0], ACC
003f2394   d0a8       MOVB         XAR0, #0xa8
003f2395   8ad1       MOVL         XAR4, *+XAR1[2]
003f2396   0691       MOVL         ACC, *+XAR1[AR0]
003f2397   767f       LCR          0x3f1356
003f2398   1356
003f2399   d03e       MOVB         XAR0, #0x3e
003f239a   1e91       MOVL         *+XAR1[AR0], ACC
003f239b   8ad1       MOVL         XAR4, *+XAR1[2]
003f239c   d025       MOVB         XAR0, #0x25
003f239d   92e4       MOV          AL, *+XAR4[4]
003f239e   9691       MOV          *+XAR1[AR0], AL
003f239f   8ad1       MOVL         XAR4, *+XAR1[2]
003f23a0   d018       MOVB         XAR0, #0x18
003f23a1   8a94       MOVL         XAR4, *+XAR4[AR0]
003f23a2   767f       LCR          0x3fc000
003f23a3   c000
003f23a4   d026       MOVB         XAR0, #0x26
003f23a5   9691       MOV          *+XAR1[AR0], AL
003f23a6   8ad1       MOVL         XAR4, *+XAR1[2]
003f23a7   d0c0       MOVB         XAR0, #0xc0
003f23a8   0694       MOVL         ACC, *+XAR4[AR0]
003f23a9   d058       MOVB         XAR0, #0x58
003f23aa   1e91       MOVL         *+XAR1[AR0], ACC
003f23ab   8ad1       MOVL         XAR4, *+XAR1[2]
003f23ac   d0c2       MOVB         XAR0, #0xc2
003f23ad   0694       MOVL         ACC, *+XAR4[AR0]
003f23ae   d05a       MOVB         XAR0, #0x5a
003f23af   1e91       MOVL         *+XAR1[AR0], ACC
003f23b0   d05a       MOVB         XAR0, #0x5a
003f23b1   c491       MOVL         XAR6, *+XAR1[AR0]
003f23b2   d058       MOVB         XAR0, #0x58
003f23b3   8791       MOVL         XT, *+XAR1[AR0]
003f23b4   aba9       MOVL         ACC, XT
003f23b5   5605       IMPYL        P, XT, ACC
003f23b6   00a9
003f23b7   5663       QMPYL        ACC, XT, ACC
003f23b8   00a9
003f23b9   56a7       LSL64        ACC:P, 8
003f23ba   87a6       MOVL         XT, XAR6
003f23bb   1ea7       MOVL         XAR7, ACC
003f23bc   5605       IMPYL        P, XT, XAR6
003f23bd   00a6
003f23be   5663       QMPYL        ACC, XT, XAR6
003f23bf   00a6
003f23c0   56a7       LSL64        ACC:P, 8
003f23c1   07a7       ADDL         ACC, XAR7
003f23c2   767f       LCR          0x3ff2aa
003f23c3   f2aa
003f23c4   d05c       MOVB         XAR0, #0x5c
003f23c5   88ad       MOVZ         AR6, SP
003f23c6   1e91       MOVL         *+XAR1[AR0], ACC
003f23c7   8ad1       MOVL         XAR4, *+XAR1[2]
003f23c8   d0b2       MOVB         XAR0, #0xb2
003f23c9   de8a       SUBB         XAR6, #10
003f23ca   06c3       MOVL         ACC, *+XAR3[0]
003f23cb   8694       MOVL         XAR2, *+XAR4[AR0]
003f23cc   767f       LCR          0x3fdfb7
003f23cd   dfb7
003f23ce   5cad       MOVZ         AR4, SP
003f23cf   88ad       MOVZ         AR6, SP
003f23d0   8f7f       MOVL         XAR5, #0x3f63f0
003f23d1   63f0
003f23d2   dc8a       SUBB         XAR4, #10
003f23d3   de86       SUBB         XAR6, #6
003f23d4   767f       LCR          0x3fdc5e
003f23d5   dc5e
003f23d6   5cad       MOVZ         AR4, SP
003f23d7   dc86       SUBB         XAR4, #6
003f23d8   767f       LCR          0x3fdf7b
003f23d9   df7b
003f23da   d062       MOVB         XAR0, #0x62
003f23db   88ad       MOVZ         AR6, SP
003f23dc   aaac       MOVL         XT, XAR2
003f23dd   5605       IMPYL        P, XT, ACC
003f23de   00a9
003f23df   5663       QMPYL        ACC, XT, ACC
003f23e0   00a9
003f23e1   56a7       LSL64        ACC:P, 8
003f23e2   1e91       MOVL         *+XAR1[AR0], ACC
003f23e3   8ad1       MOVL         XAR4, *+XAR1[2]
003f23e4   d0b4       MOVB         XAR0, #0xb4
003f23e5   de8a       SUBB         XAR6, #10
003f23e6   06c3       MOVL         ACC, *+XAR3[0]
003f23e7   8694       MOVL         XAR2, *+XAR4[AR0]
003f23e8   767f       LCR          0x3fdfb7
003f23e9   dfb7
003f23ea   5cad       MOVZ         AR4, SP
003f23eb   88ad       MOVZ         AR6, SP
003f23ec   8f7f       MOVL         XAR5, #0x3f63f0
003f23ed   63f0
003f23ee   dc8a       SUBB         XAR4, #10
003f23ef   de86       SUBB         XAR6, #6
003f23f0   767f       LCR          0x3fdc5e
003f23f1   dc5e
003f23f2   5cad       MOVZ         AR4, SP
003f23f3   dc86       SUBB         XAR4, #6
003f23f4   767f       LCR          0x3fdf7b
003f23f5   df7b
003f23f6   aaac       MOVL         XT, XAR2
003f23f7   d064       MOVB         XAR0, #0x64
003f23f8   5605       IMPYL        P, XT, ACC
003f23f9   00a9
003f23fa   5663       QMPYL        ACC, XT, ACC
003f23fb   00a9
003f23fc   56a7       LSL64        ACC:P, 8
003f23fd   1e91       MOVL         *+XAR1[AR0], ACC
003f23fe   d064       MOVB         XAR0, #0x64
003f23ff   c491       MOVL         XAR6, *+XAR1[AR0]
003f2400   d062       MOVB         XAR0, #0x62
003f2401   8791       MOVL         XT, *+XAR1[AR0]
003f2402   aba9       MOVL         ACC, XT
003f2403   5605       IMPYL        P, XT, ACC
003f2404   00a9
003f2405   5663       QMPYL        ACC, XT, ACC
003f2406   00a9
003f2407   56a7       LSL64        ACC:P, 8
003f2408   87a6       MOVL         XT, XAR6
003f2409   1ea7       MOVL         XAR7, ACC
003f240a   5605       IMPYL        P, XT, XAR6
003f240b   00a6
003f240c   5663       QMPYL        ACC, XT, XAR6
003f240d   00a6
003f240e   56a7       LSL64        ACC:P, 8
003f240f   07a7       ADDL         ACC, XAR7
003f2410   767f       LCR          0x3ff2aa
003f2411   f2aa
003f2412   d066       MOVB         XAR0, #0x66
003f2413   1e91       MOVL         *+XAR1[AR0], ACC
003f2414   fe8a       SUBB         SP, #10
003f2415   82be       MOVL         XAR3, *--SP
003f2416   86be       MOVL         XAR2, *--SP
003f2417   8bbe       MOVL         XAR1, *--SP
003f2418   0006       LRETR        
3f2419:              _setFeLimitZero:
003f2419   b2bd       MOVL         *SP++, XAR1
003f241a   d018       MOVB         XAR0, #0x18
003f241b   aabd       MOVL         *SP++, XAR2
003f241c   86a4       MOVL         XAR2, XAR4
003f241d   8a92       MOVL         XAR4, *+XAR2[AR0]
003f241e   767f       LCR          0x3fc000
003f241f   c000
003f2420   d018       MOVB         XAR0, #0x18
003f2421   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2422   767f       LCR          0x3fc05e
003f2423   c05e
003f2424   5200       CMPB         AL, #0x0
003f2425   ed08       SBF          8, NEQ
003f2426   d084       MOVB         XAR0, #0x84
003f2427   9292       MOV          AL, *+XAR2[AR0]
003f2428   5201       CMPB         AL, #0x1
003f2429   ec04       SBF          4, EQ
003f242a   0200       MOVB         ACC, #0
003f242b   d100       MOVB         XAR1, #0x0
003f242c   6f0a       SB           10, UNC
3f242d:              $C$L1:
003f242d   28ab       MOV          PL, #0xeb85
003f242e   eb85
003f242f   28aa       MOV          PH, #0x0051
003f2430   0051
003f2431   28a9       MOV          AL, #0x147b
003f2432   147b
003f2433   28a8       MOV          AH, #0xffae
003f2434   ffae
003f2435   a9a1       MOVL         XAR1, P
3f2436:              $C$L2:
003f2436   d018       MOVB         XAR0, #0x18
003f2437   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2438   767f       LCR          0x3fc5cd
003f2439   c5cd
003f243a   d018       MOVB         XAR0, #0x18
003f243b   b2a9       MOVL         ACC, XAR1
003f243c   8a92       MOVL         XAR4, *+XAR2[AR0]
003f243d   767f       LCR          0x3fc5c9
003f243e   c5c9
003f243f   86be       MOVL         XAR2, *--SP
003f2440   8bbe       MOVL         XAR1, *--SP
003f2441   0006       LRETR        
3f2442:              _runRsOnLine:
003f2442   b2bd       MOVL         *SP++, XAR1
003f2443   aabd       MOVL         *SP++, XAR2
003f2444   a2bd       MOVL         *SP++, XAR3
003f2445   fe0a       ADDB         SP, #10
003f2446   d019       MOVB         XAR0, #0x19
003f2447   8ba4       MOVL         XAR1, XAR4
003f2448   86a5       MOVL         XAR2, XAR5
003f2449   9291       MOV          AL, *+XAR1[AR0]
003f244a   5201       CMPB         AL, #0x1
003f244b   56c0       BF           132, NEQ
003f244c   0084
003f244d   8ad1       MOVL         XAR4, *+XAR1[2]
003f244e   d018       MOVB         XAR0, #0x18
003f244f   8a94       MOVL         XAR4, *+XAR4[AR0]
003f2450   767f       LCR          0x3fc000
003f2451   c000
003f2452   520d       CMPB         AL, #0xd
003f2453   ed50       SBF          80, NEQ
003f2454   d046       MOVB         XAR0, #0x46
003f2455   0691       MOVL         ACC, *+XAR1[AR0]
003f2456   d048       MOVB         XAR0, #0x48
003f2457   1e42       MOVL         *-SP[2], ACC
003f2458   0691       MOVL         ACC, *+XAR1[AR0]
003f2459   767f       LCR          0x3fdeb3
003f245a   deb3
003f245b   8ad1       MOVL         XAR4, *+XAR1[2]
003f245c   d018       MOVB         XAR0, #0x18
003f245d   82a9       MOVL         XAR3, ACC
003f245e   9a01       MOVB         AL, #0x1
003f245f   8a94       MOVL         XAR4, *+XAR4[AR0]
003f2460   767f       LCR          0x3fc5bc
003f2461   c5bc
003f2462   06c2       MOVL         ACC, *+XAR2[0]
003f2463   1e42       MOVL         *-SP[2], ACC
003f2464   ff2f       MOV          ACC, #0x7f00 << 15
003f2465   7f00
003f2466   767f       LCR          0x3fdce1
003f2467   dce1
003f2468   88ad       MOVZ         AR6, SP
003f2469   de8a       SUBB         XAR6, #10
003f246a   767f       LCR          0x3fdfb7
003f246b   dfb7
003f246c   5cad       MOVZ         AR4, SP
003f246d   88ad       MOVZ         AR6, SP
003f246e   8f7f       MOVL         XAR5, #0x3f63f0
003f246f   63f0
003f2470   dc8a       SUBB         XAR4, #10
003f2471   de86       SUBB         XAR6, #6
003f2472   767f       LCR          0x3fdc5e
003f2473   dc5e
003f2474   5cad       MOVZ         AR4, SP
003f2475   dc86       SUBB         XAR4, #6
003f2476   767f       LCR          0x3fdf7b
003f2477   df7b
003f2478   d03c       MOVB         XAR0, #0x3c
003f2479   8ad1       MOVL         XAR4, *+XAR1[2]
003f247a   8791       MOVL         XT, *+XAR1[AR0]
003f247b   d018       MOVB         XAR0, #0x18
003f247c   5605       IMPYL        P, XT, ACC
003f247d   00a9
003f247e   8a94       MOVL         XAR4, *+XAR4[AR0]
003f247f   5663       QMPYL        ACC, XT, ACC
003f2480   00a9
003f2481   56a7       LSL64        ACC:P, 8
003f2482   767f       LCR          0x3fc45d
003f2483   c45d
003f2484   a2a9       MOVL         ACC, XAR3
003f2485   767f       LCR          0x3fff0e
003f2486   ff0e
003f2487   3b01       SETC         SXM
003f2488   85a9       MOV          ACC, AL
003f2489   ff56       ABS          ACC
003f248a   767f       LCR          0x3fff33
003f248b   ff33
003f248c   d046       MOVB         XAR0, #0x46
003f248d   86a9       MOVL         XAR2, ACC
003f248e   28a9       MOV          AL, #0xcccd
003f248f   cccd
003f2490   28a8       MOV          AH, #0x3d4c
003f2491   3d4c
003f2492   1e42       MOVL         *-SP[2], ACC
003f2493   0691       MOVL         ACC, *+XAR1[AR0]
003f2494   767f       LCR          0x3fdde7
003f2495   dde7
003f2496   1e42       MOVL         *-SP[2], ACC
003f2497   aaa9       MOVL         ACC, XAR2
003f2498   767f       LCR          0x3fdf2b
003f2499   df2b
003f249a   5200       CMPB         AL, #0x0
003f249b   6334       SB           52, GEQ
003f249c   8ad1       MOVL         XAR4, *+XAR1[2]
003f249d   d018       MOVB         XAR0, #0x18
003f249e   9a01       MOVB         AL, #0x1
003f249f   8a94       MOVL         XAR4, *+XAR4[AR0]
003f24a0   767f       LCR          0x3fc5b0
003f24a1   c5b0
003f24a2   6f2d       SB           45, UNC
3f24a3:              $C$L3:
003f24a3   8ad1       MOVL         XAR4, *+XAR1[2]
003f24a4   d018       MOVB         XAR0, #0x18
003f24a5   0200       MOVB         ACC, #0
003f24a6   8a94       MOVL         XAR4, *+XAR4[AR0]
003f24a7   767f       LCR          0x3fc45d
003f24a8   c45d
003f24a9   8ad1       MOVL         XAR4, *+XAR1[2]
003f24aa   d018       MOVB         XAR0, #0x18
003f24ab   0200       MOVB         ACC, #0
003f24ac   8a94       MOVL         XAR4, *+XAR4[AR0]
003f24ad   767f       LCR          0x3fc457
003f24ae   c457
003f24af   8ad1       MOVL         XAR4, *+XAR1[2]
003f24b0   d018       MOVB         XAR0, #0x18
003f24b1   8a94       MOVL         XAR4, *+XAR4[AR0]
003f24b2   767f       LCR          0x3fcec8
003f24b3   cec8
003f24b4   8ad1       MOVL         XAR4, *+XAR1[2]
003f24b5   d018       MOVB         XAR0, #0x18
003f24b6   8a94       MOVL         XAR4, *+XAR4[AR0]
003f24b7   767f       LCR          0x3fc433
003f24b8   c433
003f24b9   8ad1       MOVL         XAR4, *+XAR1[2]
003f24ba   d018       MOVB         XAR0, #0x18
003f24bb   9a00       MOVB         AL, #0x0
003f24bc   8a94       MOVL         XAR4, *+XAR4[AR0]
003f24bd   767f       LCR          0x3fc5bc
003f24be   c5bc
003f24bf   8ad1       MOVL         XAR4, *+XAR1[2]
003f24c0   d018       MOVB         XAR0, #0x18
003f24c1   9a00       MOVB         AL, #0x0
003f24c2   8a94       MOVL         XAR4, *+XAR4[AR0]
003f24c3   767f       LCR          0x3fc5b0
003f24c4   c5b0
003f24c5   8ad1       MOVL         XAR4, *+XAR1[2]
003f24c6   d018       MOVB         XAR0, #0x18
003f24c7   8a94       MOVL         XAR4, *+XAR4[AR0]
003f24c8   767f       LCR          0x3fcec2
003f24c9   cec2
003f24ca   8ad1       MOVL         XAR4, *+XAR1[2]
003f24cb   d018       MOVB         XAR0, #0x18
003f24cc   8a94       MOVL         XAR4, *+XAR4[AR0]
003f24cd   767f       LCR          0x3fc42d
003f24ce   c42d
3f24cf:              $C$L4:
003f24cf   fe8a       SUBB         SP, #10
003f24d0   82be       MOVL         XAR3, *--SP
003f24d1   86be       MOVL         XAR2, *--SP
003f24d2   8bbe       MOVL         XAR1, *--SP
003f24d3   0006       LRETR        
3f24d4:              _recalcKpKi:
003f24d4   b2bd       MOVL         *SP++, XAR1
003f24d5   aabd       MOVL         *SP++, XAR2
003f24d6   a2bd       MOVL         *SP++, XAR3
003f24d7   fe0c       ADDB         SP, #12
003f24d8   d018       MOVB         XAR0, #0x18
003f24d9   86a4       MOVL         XAR2, XAR4
003f24da   82a5       MOVL         XAR3, XAR5
003f24db   8a92       MOVL         XAR4, *+XAR2[AR0]
003f24dc   767f       LCR          0x3fc000
003f24dd   c000
003f24de   d018       MOVB         XAR0, #0x18
003f24df   59a9       MOVZ         AR1, AL
003f24e0   8a92       MOVL         XAR4, *+XAR2[AR0]
003f24e1   767f       LCR          0x3fc05e
003f24e2   c05e
003f24e3   5200       CMPB         AL, #0x0
003f24e4   ed5c       SBF          92, NEQ
003f24e5   92a1       MOV          AL, AR1
003f24e6   5203       CMPB         AL, #0x3
003f24e7   ed59       SBF          89, NEQ
003f24e8   d0c6       MOVB         XAR0, #0xc6
003f24e9   8b92       MOVL         XAR1, *+XAR2[AR0]
003f24ea   ff2f       MOV          ACC, #0x7d00 << 15
003f24eb   7d00
003f24ec   1e42       MOVL         *-SP[2], ACC
003f24ed   b2a9       MOVL         ACC, XAR1
003f24ee   767f       LCR          0x3fdde7
003f24ef   dde7
003f24f0   c4c3       MOVL         XAR6, *+XAR3[0]
003f24f1   c242       MOVL         *-SP[2], XAR6
003f24f2   767f       LCR          0x3fdde7
003f24f3   dde7
003f24f4   1e4c       MOVL         *-SP[12], ACC
003f24f5   28a9       MOV          AL, #0xb717
003f24f6   b717
003f24f7   28a8       MOV          AH, #0x3951
003f24f8   3951
003f24f9   1e42       MOVL         *-SP[2], ACC
003f24fa   06d3       MOVL         ACC, *+XAR3[2]
003f24fb   767f       LCR          0x3fdde7
003f24fc   dde7
003f24fd   1e42       MOVL         *-SP[2], ACC
003f24fe   064c       MOVL         ACC, *-SP[12]
003f24ff   767f       LCR          0x3fdce1
003f2500   dce1
003f2501   88ad       MOVZ         AR6, SP
003f2502   de8a       SUBB         XAR6, #10
003f2503   767f       LCR          0x3fdfb7
003f2504   dfb7
003f2505   5cad       MOVZ         AR4, SP
003f2506   88ad       MOVZ         AR6, SP
003f2507   8f7f       MOVL         XAR5, #0x3f63f0
003f2508   63f0
003f2509   dc8a       SUBB         XAR4, #10
003f250a   de86       SUBB         XAR6, #6
003f250b   767f       LCR          0x3fdc5e
003f250c   dc5e
003f250d   5cad       MOVZ         AR4, SP
003f250e   dc86       SUBB         XAR4, #6
003f250f   767f       LCR          0x3fdf7b
003f2510   df7b
003f2511   d0c4       MOVB         XAR0, #0xc4
003f2512   82a9       MOVL         XAR3, ACC
003f2513   b242       MOVL         *-SP[2], XAR1
003f2514   0692       MOVL         ACC, *+XAR2[AR0]
003f2515   767f       LCR          0x3fdce1
003f2516   dce1
003f2517   8ba9       MOVL         XAR1, ACC
003f2518   28a9       MOV          AL, #0xb717
003f2519   b717
003f251a   28a8       MOV          AH, #0x3951
003f251b   3951
003f251c   1e42       MOVL         *-SP[2], ACC
003f251d   b2a9       MOVL         ACC, XAR1
003f251e   767f       LCR          0x3fdde7
003f251f   dde7
003f2520   88ad       MOVZ         AR6, SP
003f2521   de8a       SUBB         XAR6, #10
003f2522   767f       LCR          0x3fdfb7
003f2523   dfb7
003f2524   5cad       MOVZ         AR4, SP
003f2525   88ad       MOVZ         AR6, SP
003f2526   8f7f       MOVL         XAR5, #0x3f63f0
003f2527   63f0
003f2528   dc8a       SUBB         XAR4, #10
003f2529   de86       SUBB         XAR6, #6
003f252a   767f       LCR          0x3fdc5e
003f252b   dc5e
003f252c   5cad       MOVZ         AR4, SP
003f252d   dc86       SUBB         XAR4, #6
003f252e   767f       LCR          0x3fdf7b
003f252f   df7b
003f2530   d0c8       MOVB         XAR0, #0xc8
003f2531   b292       MOVL         *+XAR2[AR0], XAR1
003f2532   d0ca       MOVB         XAR0, #0xca
003f2533   a292       MOVL         *+XAR2[AR0], XAR3
003f2534   d0cc       MOVB         XAR0, #0xcc
003f2535   a292       MOVL         *+XAR2[AR0], XAR3
003f2536   d0d0       MOVB         XAR0, #0xd0
003f2537   1e92       MOVL         *+XAR2[AR0], ACC
003f2538   d020       MOVB         XAR0, #0x20
003f2539   8a92       MOVL         XAR4, *+XAR2[AR0]
003f253a   d0d2       MOVB         XAR0, #0xd2
003f253b   1ed4       MOVL         *+XAR4[2], ACC
003f253c   1e92       MOVL         *+XAR2[AR0], ACC
003f253d   d032       MOVB         XAR0, #0x32
003f253e   8a92       MOVL         XAR4, *+XAR2[AR0]
003f253f   1ed4       MOVL         *+XAR4[2], ACC
3f2540:              $C$L5:
003f2540   fe8c       SUBB         SP, #12
003f2541   82be       MOVL         XAR3, *--SP
003f2542   86be       MOVL         XAR2, *--SP
003f2543   8bbe       MOVL         XAR1, *--SP
003f2544   0006       LRETR        
3f2545:              _motor_StopCtrl:
003f2545   d044       MOVB         XAR0, #0x44
003f2546   8394       MOVL         XAR5, *+XAR4[AR0]
003f2547   0200       MOVB         ACC, #0
003f2548   d020       MOVB         XAR0, #0x20
003f2549   1ef5       MOVL         *+XAR5[6], ACC
003f254a   8394       MOVL         XAR5, *+XAR4[AR0]
003f254b   d032       MOVB         XAR0, #0x32
003f254c   1ef5       MOVL         *+XAR5[6], ACC
003f254d   8394       MOVL         XAR5, *+XAR4[AR0]
003f254e   d0ba       MOVB         XAR0, #0xba
003f254f   1ef5       MOVL         *+XAR5[6], ACC
003f2550   02e2       MOVB         ACC, #226
003f2551   07a4       ADDL         ACC, XAR4
003f2552   83a9       MOVL         XAR5, ACC
003f2553   0200       MOVB         ACC, #0
003f2554   1ec5       MOVL         *+XAR5[0], ACC
003f2555   1ed5       MOVL         *+XAR5[2], ACC
003f2556   1e94       MOVL         *+XAR4[AR0], ACC
003f2557   0006       LRETR        
3f2558:              _motor_RunCtrl:
003f2558   b2bd       MOVL         *SP++, XAR1
003f2559   aabd       MOVL         *SP++, XAR2
003f255a   a2bd       MOVL         *SP++, XAR3
003f255b   fe06       ADDB         SP, #6
003f255c   d019       MOVB         XAR0, #0x19
003f255d   86a4       MOVL         XAR2, XAR4
003f255e   56bf       MOVB         *+XAR2[AR0], #0x01, UNC
003f255f   0192
003f2560   d022       MOVB         XAR0, #0x22
003f2561   9292       MOV          AL, *+XAR2[AR0]
003f2562   ed19       SBF          25, NEQ
003f2563   d023       MOVB         XAR0, #0x23
003f2564   9292       MOV          AL, *+XAR2[AR0]
003f2565   5201       CMPB         AL, #0x1
003f2566   56c0       BF           132, NEQ
003f2567   0084
003f2568   d016       MOVB         XAR0, #0x16
003f2569   8a92       MOVL         XAR4, *+XAR2[AR0]
003f256a   d011       MOVB         XAR0, #0x11
003f256b   2b94       MOV          *+XAR4[AR0], #0
003f256c   d023       MOVB         XAR0, #0x23
003f256d   2b92       MOV          *+XAR2[AR0], #0
003f256e   8ad2       MOVL         XAR4, *+XAR2[2]
003f256f   767f       LCR          0x3f2545
003f2570   2545
003f2571   0200       MOVB         ACC, #0
003f2572   1e46       MOVL         *-SP[6], ACC
003f2573   1e44       MOVL         *-SP[4], ACC
003f2574   1e42       MOVL         *-SP[2], ACC
003f2575   8ad2       MOVL         XAR4, *+XAR2[2]
003f2576   9a00       MOVB         AL, #0x0
003f2577   8d00       MOVL         XAR0, #0x000106
003f2578   0106
003f2579   2b94       MOV          *+XAR4[AR0], #0
003f257a   6f70       SB           112, UNC
3f257b:              $C$L6:
003f257b   d023       MOVB         XAR0, #0x23
003f257c   9292       MOV          AL, *+XAR2[AR0]
003f257d   ed67       SBF          103, NEQ
003f257e   c5a2       MOVL         XAR7, XAR2
003f257f   d016       MOVB         XAR0, #0x16
003f2580   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2581   d011       MOVB         XAR0, #0x11
003f2582   df24       ADDB         XAR7, #36
003f2583   92c7       MOV          AL, *+XAR7[0]
003f2584   9694       MOV          *+XAR4[AR0], AL
003f2585   d016       MOVB         XAR0, #0x16
003f2586   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2587   9b00       MOVB         AH, #0x0
003f2588   d011       MOVB         XAR0, #0x11
003f2589   9294       MOV          AL, *+XAR4[AR0]
003f258a   d010       MOVB         XAR0, #0x10
003f258b   5201       CMPB         AL, #0x1
003f258c   56b0       MOVB         AH, #0x01, NEQ
003f258d   01a8
003f258e   9794       MOV          *+XAR4[AR0], AH
003f258f   d00c       MOVB         XAR0, #0xc
003f2590   0200       MOVB         ACC, #0
003f2591   1ef4       MOVL         *+XAR4[6], ACC
003f2592   1e94       MOVL         *+XAR4[AR0], ACC
003f2593   d023       MOVB         XAR0, #0x23
003f2594   56bf       MOVB         *+XAR2[AR0], #0x01, UNC
003f2595   0192
003f2596   8ad2       MOVL         XAR4, *+XAR2[2]
003f2597   767f       LCR          0x3f2545
003f2598   2545
003f2599   8ad2       MOVL         XAR4, *+XAR2[2]
003f259a   8d00       MOVL         XAR0, #0x000106
003f259b   0106
003f259c   0200       MOVB         ACC, #0
003f259d   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f259e   0194
003f259f   1e46       MOVL         *-SP[6], ACC
003f25a0   1e44       MOVL         *-SP[4], ACC
003f25a1   1e42       MOVL         *-SP[2], ACC
003f25a2   82c2       MOVL         XAR3, *+XAR2[0]
003f25a3   5cad       MOVZ         AR4, SP
003f25a4   83a3       MOVL         XAR5, XAR3
003f25a5   dc86       SUBB         XAR4, #6
003f25a6   be02       MOVB         XAR6, #0x02
003f25a7   3b01       SETC         SXM
003f25a8   dd7c       ADDB         XAR5, #124
3f25a9:              $C$L7:
003f25a9   c5c5       MOVL         XAR7, *+XAR5[0]
003f25aa   ff2f       MOV          ACC, #0xfe00 << 15
003f25ab   fe00
003f25ac   8784       MOVL         XT, *XAR4++
003f25ad   5605       IMPYL        P, XT, ACC
003f25ae   00a9
003f25af   58ef       MOVZ         AR0, *+XAR7[5]
003f25b0   5663       QMPYL        ACC, XT, ACC
003f25b1   00a9
003f25b2   dd02       ADDB         XAR5, #2
003f25b3   56a7       LSL64        ACC:P, 8
003f25b4   2bab       MOV          PL, #0
003f25b5   28aa       MOV          PH, #0x0080
003f25b6   0080
003f25b7   a9a1       MOVL         XAR1, P
003f25b8   2bab       MOV          PL, #0
003f25b9   28aa       MOV          PH, #0xff80
003f25ba   ff80
003f25bb   5650       MINL         ACC, XAR1
003f25bc   00a1
003f25bd   5661       MAXL         ACC, P
003f25be   00ab
003f25bf   ff1f       ADD          ACC, #0x100 << 15
003f25c0   0100
003f25c1   1eac       MOVL         XT, ACC
003f25c2   5605       IMPYL        P, XT, XAR0
003f25c3   00a0
003f25c4   5663       QMPYL        ACC, XT, XAR0
003f25c5   00a0
003f25c6   56a7       LSL64        ACC:P, 8
003f25c7   3100       MPYB         P, T, #0
003f25c8   5650       MINL         ACC, XAR0
003f25c9   00a0
003f25ca   d009       MOVB         XAR0, #0x9
003f25cb   5661       MAXL         ACC, P
003f25cc   00ab
003f25cd   9697       MOV          *+XAR7[AR0], AL
003f25ce   000e       BANZ         -37,AR6--
003f25cf   ffdb
003f25d0   8aa3       MOVL         XAR4, XAR3
003f25d1   dc7c       ADDB         XAR4, #124
003f25d2   83c4       MOVL         XAR5, *+XAR4[0]
003f25d3   7622       EALLOW       
003f25d4   d017       MOVB         XAR0, #0x17
003f25d5   56bf       MOVB         *+XAR5[AR0], #0x04, UNC
003f25d6   0495
003f25d7   761a       EDIS         
003f25d8   83d4       MOVL         XAR5, *+XAR4[2]
003f25d9   7622       EALLOW       
003f25da   d017       MOVB         XAR0, #0x17
003f25db   56bf       MOVB         *+XAR5[AR0], #0x04, UNC
003f25dc   0495
003f25dd   761a       EDIS         
003f25de   8ae4       MOVL         XAR4, *+XAR4[4]
003f25df   7622       EALLOW       
003f25e0   d017       MOVB         XAR0, #0x17
003f25e1   56bf       MOVB         *+XAR4[AR0], #0x04, UNC
003f25e2   0494
003f25e3   761a       EDIS         
3f25e4:              $C$L8:
003f25e4   d116       MOVB         XAR1, #0x16
003f25e5   8a9a       MOVL         XAR4, *+XAR2[AR1]
003f25e6   d021       MOVB         XAR0, #0x21
003f25e7   d110       MOVB         XAR1, #0x10
003f25e8   929c       MOV          AL, *+XAR4[AR1]
003f25e9   ce92       AND          AL, *+XAR2[AR0]
3f25ea:              $C$L9:
003f25ea   8ad2       MOVL         XAR4, *+XAR2[2]
003f25eb   d0f4       MOVB         XAR0, #0xf4
003f25ec   fe86       SUBB         SP, #6
003f25ed   ff69       SPM          #0
003f25ee   9694       MOV          *+XAR4[AR0], AL
003f25ef   82be       MOVL         XAR3, *--SP
003f25f0   86be       MOVL         XAR2, *--SP
003f25f1   8bbe       MOVL         XAR1, *--SP
003f25f2   0006       LRETR        
3f25f3:              _acim_Dir_qFmtCalc:
003f25f3   b2bd       MOVL         *SP++, XAR1
003f25f4   d018       MOVB         XAR0, #0x18
003f25f5   8ba4       MOVL         XAR1, XAR4
003f25f6   8a91       MOVL         XAR4, *+XAR1[AR0]
003f25f7   767f       LCR          0x3fc000
003f25f8   c000
003f25f9   5205       CMPB         AL, #0x5
003f25fa   ed0d       SBF          13, NEQ
003f25fb   d018       MOVB         XAR0, #0x18
003f25fc   28a9       MOV          AL, #0x3333
003f25fd   3333
003f25fe   28a8       MOV          AH, #0x3f33
003f25ff   3f33
003f2600   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2601   767f       LCR          0x3fc092
003f2602   c092
003f2603   d018       MOVB         XAR0, #0x18
003f2604   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2605   767f       LCR          0x3fc5da
003f2606   c5da
3f2607:              $C$L10:
003f2607   8bbe       MOVL         XAR1, *--SP
003f2608   0006       LRETR        
3f2609:              _PROCTRL_updateKpKiGains:
003f2609   83d4       MOVL         XAR5, *+XAR4[2]
003f260a   d050       MOVB         XAR0, #0x50
003f260b   0694       MOVL         ACC, *+XAR4[AR0]
003f260c   d0ce       MOVB         XAR0, #0xce
003f260d   1e95       MOVL         *+XAR5[AR0], ACC
003f260e   83d4       MOVL         XAR5, *+XAR4[2]
003f260f   d052       MOVB         XAR0, #0x52
003f2610   0694       MOVL         ACC, *+XAR4[AR0]
003f2611   d0d4       MOVB         XAR0, #0xd4
003f2612   1e95       MOVL         *+XAR5[AR0], ACC
003f2613   83d4       MOVL         XAR5, *+XAR4[2]
003f2614   d054       MOVB         XAR0, #0x54
003f2615   0694       MOVL         ACC, *+XAR4[AR0]
003f2616   d0ca       MOVB         XAR0, #0xca
003f2617   1e95       MOVL         *+XAR5[AR0], ACC
003f2618   83d4       MOVL         XAR5, *+XAR4[2]
003f2619   d056       MOVB         XAR0, #0x56
003f261a   0694       MOVL         ACC, *+XAR4[AR0]
003f261b   d0d0       MOVB         XAR0, #0xd0
003f261c   1e95       MOVL         *+XAR5[AR0], ACC
003f261d   83d4       MOVL         XAR5, *+XAR4[2]
003f261e   d054       MOVB         XAR0, #0x54
003f261f   0694       MOVL         ACC, *+XAR4[AR0]
003f2620   d0cc       MOVB         XAR0, #0xcc
003f2621   1e95       MOVL         *+XAR5[AR0], ACC
003f2622   d056       MOVB         XAR0, #0x56
003f2623   0694       MOVL         ACC, *+XAR4[AR0]
003f2624   8ad4       MOVL         XAR4, *+XAR4[2]
003f2625   d0d2       MOVB         XAR0, #0xd2
003f2626   1e94       MOVL         *+XAR4[AR0], ACC
003f2627   0006       LRETR        
3f2628:              _Motor_init:
003f2628   1ea6       MOVL         XAR6, ACC
003f2629   026e       MOVB         ACC, #110
003f262a   0fa6       CMPL         ACC, XAR6
003f262b   6902       SB           2, LOS
003f262c   d400       MOVB         XAR4, #0x0
3f262d:              $C$L11:
003f262d   0006       LRETR        
3f262e:              _PROCTRL_setParams:
003f262e   b2bd       MOVL         *SP++, XAR1
003f262f   8ba4       MOVL         XAR1, XAR4
003f2630   026e       MOVB         ACC, #110
003f2631   aabd       MOVL         *SP++, XAR2
003f2632   dc18       ADDB         XAR4, #24
003f2633   767f       LCR          0x3f2628
003f2634   2628
003f2635   d086       MOVB         XAR0, #0x86
003f2636   0288       MOVB         ACC, #136
003f2637   a891       MOVL         *+XAR1[AR0], XAR4
003f2638   07a1       ADDL         ACC, XAR1
003f2639   8aa9       MOVL         XAR4, ACC
003f263a   021e       MOVB         ACC, #30
003f263b   767f       LCR          0x3f2fd5
003f263c   2fd5
003f263d   d0a6       MOVB         XAR0, #0xa6
003f263e   a891       MOVL         *+XAR1[AR0], XAR4
003f263f   d0a6       MOVB         XAR0, #0xa6
003f2640   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2641   d086       MOVB         XAR0, #0x86
003f2642   8391       MOVL         XAR5, *+XAR1[AR0]
003f2643   767f       LCR          0x3f2fd3
003f2644   2fd3
003f2645   028c       MOVB         ACC, #140
003f2646   07a1       ADDL         ACC, XAR1
003f2647   8aa9       MOVL         XAR4, ACC
003f2648   0206       MOVB         ACC, #6
003f2649   767f       LCR          0x3f4139
003f264a   4139
003f264b   d08a       MOVB         XAR0, #0x8a
003f264c   a891       MOVL         *+XAR1[AR0], XAR4
003f264d   83c1       MOVL         XAR5, *+XAR1[0]
003f264e   d08a       MOVB         XAR0, #0x8a
003f264f   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2650   d090       MOVB         XAR0, #0x90
003f2651   8395       MOVL         XAR5, *+XAR5[AR0]
003f2652   767f       LCR          0x3f4054
003f2653   4054
003f2654   d08a       MOVB         XAR0, #0x8a
003f2655   9a00       MOVB         AL, #0x0
003f2656   9b00       MOVB         AH, #0x0
003f2657   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2658   767f       LCR          0x3f4153
003f2659   4153
003f265a   d08a       MOVB         XAR0, #0x8a
003f265b   9a01       MOVB         AL, #0x1
003f265c   9bff       MOVB         AH, #0xff
003f265d   8a91       MOVL         XAR4, *+XAR1[AR0]
003f265e   767f       LCR          0x3f4153
003f265f   4153
003f2660   d08a       MOVB         XAR0, #0x8a
003f2661   9a00       MOVB         AL, #0x0
003f2662   9b50       MOVB         AH, #0x50
003f2663   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2664   767f       LCR          0x3f40a8
003f2665   40a8
003f2666   d08a       MOVB         XAR0, #0x8a
003f2667   9a00       MOVB         AL, #0x0
003f2668   9b5c       MOVB         AH, #0x5c
003f2669   8a91       MOVL         XAR4, *+XAR1[AR0]
003f266a   767f       LCR          0x3f40a8
003f266b   40a8
003f266c   8aa1       MOVL         XAR4, XAR1
003f266d   0212       MOVB         ACC, #18
003f266e   dc04       ADDB         XAR4, #4
003f266f   767f       LCR          0x3f4735
003f2670   4735
003f2671   d016       MOVB         XAR0, #0x16
003f2672   a891       MOVL         *+XAR1[AR0], XAR4
003f2673   d016       MOVB         XAR0, #0x16
003f2674   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2675   d011       MOVB         XAR0, #0x11
003f2676   2b94       MOV          *+XAR4[AR0], #0
003f2677   d016       MOVB         XAR0, #0x16
003f2678   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2679   0200       MOVB         ACC, #0
003f267a   d00c       MOVB         XAR0, #0xc
003f267b   1e94       MOVL         *+XAR4[AR0], ACC
003f267c   8ad1       MOVL         XAR4, *+XAR1[2]
003f267d   d016       MOVB         XAR0, #0x16
003f267e   8691       MOVL         XAR2, *+XAR1[AR0]
003f267f   d018       MOVB         XAR0, #0x18
003f2680   8a94       MOVL         XAR4, *+XAR4[AR0]
003f2681   767f       LCR          0x3fce3d
003f2682   ce3d
003f2683   8f02       MOVL         XAR4, #0x028f5c
003f2684   8f5c
003f2685   d008       MOVB         XAR0, #0x8
003f2686   a8ac       MOVL         XT, XAR4
003f2687   5605       IMPYL        P, XT, ACC
003f2688   00a9
003f2689   5663       QMPYL        ACC, XT, ACC
003f268a   00a9
003f268b   56a7       LSL64        ACC:P, 8
003f268c   1e92       MOVL         *+XAR2[AR0], ACC
003f268d   d016       MOVB         XAR0, #0x16
003f268e   8391       MOVL         XAR5, *+XAR1[AR0]
003f268f   8f00       MOVL         XAR4, #0x0003e8
003f2690   03e8
003f2691   d00e       MOVB         XAR0, #0xe
003f2692   a895       MOVL         *+XAR5[AR0], XAR4
003f2693   86be       MOVL         XAR2, *--SP
003f2694   8bbe       MOVL         XAR1, *--SP
003f2695   0006       LRETR        
3f2696:              _PROCTRL_setMotorFlag:
003f2696   88a9       MOVZ         AR6, AL
003f2697   93a6       MOV          AH, AR6
003f2698   2bac       MOV          T, #0
003f2699   ff5f       NOT          AH
003f269a   2fa8       MOV          PH, AH
3f269b:              $C$L12:
003f269b   9b01       MOVB         AH, #0x1
003f269c   ff67       LSL          AH, T
003f269d   80a8       MOVZ         AR7, AH
003f269e   93a6       MOV          AH, AR6
003f269f   cfa7       AND          AH, AR7
003f26a0   27a8       MOV          PL, AH
003f26a1   5340       CMPB         AH, #0x40
003f26a2   6213       SB           19, GT
003f26a3   5340       CMPB         AH, #0x40
003f26a4   ec3c       SBF          60, EQ
003f26a5   5308       CMPB         AH, #0x8
003f26a6   620a       SB           10, GT
003f26a7   5308       CMPB         AH, #0x8
003f26a8   ec3e       SBF          62, EQ
003f26a9   5301       CMPB         AH, #0x1
003f26aa   ec42       SBF          66, EQ
003f26ab   5302       CMPB         AH, #0x2
003f26ac   ec3e       SBF          62, EQ
003f26ad   5304       CMPB         AH, #0x4
003f26ae   ec3a       SBF          58, EQ
003f26af   6f40       SB           64, UNC
3f26b0:              $C$L13:
003f26b0   5310       CMPB         AH, #0x10
003f26b1   ec33       SBF          51, EQ
003f26b2   5320       CMPB         AH, #0x20
003f26b3   ec2f       SBF          47, EQ
003f26b4   6f3b       SB           59, UNC
3f26b5:              $C$L14:
003f26b5   1bab       CMP          PL, #1024
003f26b6   0400
003f26b7   6211       SB           17, GT
003f26b8   1bab       CMP          PL, #1024
003f26b9   0400
003f26ba   ec1e       SBF          30, EQ
003f26bb   5380       CMPB         AH, #0x80
003f26bc   ec22       SBF          34, EQ
003f26bd   ff20       MOV          ACC, #256
003f26be   0100
003f26bf   5dab       MOVZ         AR5, PL
003f26c0   0fa5       CMPL         ACC, XAR5
003f26c1   ec1b       SBF          27, EQ
003f26c2   ff20       MOV          ACC, #512
003f26c3   0200
003f26c4   5dab       MOVZ         AR5, PL
003f26c5   0fa5       CMPL         ACC, XAR5
003f26c6   ec14       SBF          20, EQ
003f26c7   6f28       SB           40, UNC
3f26c8:              $C$L15:
003f26c8   ff20       MOV          ACC, #2048
003f26c9   0800
003f26ca   5dab       MOVZ         AR5, PL
003f26cb   0fa5       CMPL         ACC, XAR5
003f26cc   ec0a       SBF          10, EQ
003f26cd   ff20       MOV          ACC, #4096
003f26ce   1000
003f26cf   5dab       MOVZ         AR5, PL
003f26d0   0fa5       CMPL         ACC, XAR5
003f26d1   56b1       MOVB         AR0, #0x24, EQ
003f26d2   24a0
003f26d3   56b1       MOVB         *+XAR4[AR0], #0x01, EQ
003f26d4   0194
003f26d5   6f1a       SB           26, UNC
3f26d6:              $C$L16:
003f26d6   d023       MOVB         XAR0, #0x23
003f26d7   6f16       SB           22, UNC
3f26d8:              $C$L17:
003f26d8   d022       MOVB         XAR0, #0x22
003f26d9   6f14       SB           20, UNC
3f26da:              $C$L18:
003f26da   d021       MOVB         XAR0, #0x21
003f26db   6f12       SB           18, UNC
3f26dc:              $C$L19:
003f26dc   d020       MOVB         XAR0, #0x20
003f26dd   6f10       SB           16, UNC
3f26de:              $C$L20:
003f26de   d01f       MOVB         XAR0, #0x1f
003f26df   6f0e       SB           14, UNC
3f26e0:              $C$L21:
003f26e0   d01e       MOVB         XAR0, #0x1e
003f26e1   6f0c       SB           12, UNC
3f26e2:              $C$L22:
003f26e2   d01d       MOVB         XAR0, #0x1d
003f26e3   6f0a       SB           10, UNC
3f26e4:              $C$L23:
003f26e4   d01c       MOVB         XAR0, #0x1c
003f26e5   6f08       SB           8, UNC
3f26e6:              $C$L24:
003f26e6   d01b       MOVB         XAR0, #0x1b
003f26e7   6f06       SB           6, UNC
3f26e8:              $C$L25:
003f26e8   d01a       MOVB         XAR0, #0x1a
003f26e9   6f04       SB           4, UNC
3f26ea:              $C$L26:
003f26ea   d019       MOVB         XAR0, #0x19
003f26eb   6f02       SB           2, UNC
3f26ec:              $C$L27:
003f26ec   d018       MOVB         XAR0, #0x18
3f26ed:              $C$L28:
003f26ed   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f26ee   0194
3f26ef:              $C$L29:
003f26ef   93a7       MOV          AH, AR7
003f26f0   cfaa       AND          AH, PH
003f26f1   80a8       MOVZ         AR7, AH
003f26f2   5340       CMPB         AH, #0x40
003f26f3   6213       SB           19, GT
003f26f4   5340       CMPB         AH, #0x40
003f26f5   ec3a       SBF          58, EQ
003f26f6   5308       CMPB         AH, #0x8
003f26f7   620a       SB           10, GT
003f26f8   5308       CMPB         AH, #0x8
003f26f9   ec3c       SBF          60, EQ
003f26fa   5301       CMPB         AH, #0x1
003f26fb   ec40       SBF          64, EQ
003f26fc   5302       CMPB         AH, #0x2
003f26fd   ec3c       SBF          60, EQ
003f26fe   5304       CMPB         AH, #0x4
003f26ff   ec38       SBF          56, EQ
003f2700   6f3d       SB           61, UNC
3f2701:              $C$L30:
003f2701   5310       CMPB         AH, #0x10
003f2702   ec31       SBF          49, EQ
003f2703   5320       CMPB         AH, #0x20
003f2704   ec2d       SBF          45, EQ
003f2705   6f38       SB           56, UNC
3f2706:              $C$L31:
003f2706   1ba7       CMP          AR7, #1024
003f2707   0400
003f2708   6211       SB           17, GT
003f2709   1ba7       CMP          AR7, #1024
003f270a   0400
003f270b   ec1c       SBF          28, EQ
003f270c   5380       CMPB         AH, #0x80
003f270d   ec20       SBF          32, EQ
003f270e   ff20       MOV          ACC, #256
003f270f   0100
003f2710   5da7       MOVZ         AR5, AR7
003f2711   0fa5       CMPL         ACC, XAR5
003f2712   ec19       SBF          25, EQ
003f2713   ff20       MOV          ACC, #512
003f2714   0200
003f2715   80a7       MOVZ         AR7, AR7
003f2716   0fa7       CMPL         ACC, XAR7
003f2717   ec12       SBF          18, EQ
003f2718   6f25       SB           37, UNC
3f2719:              $C$L32:
003f2719   ff20       MOV          ACC, #2048
003f271a   0800
003f271b   5da7       MOVZ         AR5, AR7
003f271c   0fa5       CMPL         ACC, XAR5
003f271d   ec08       SBF          8, EQ
003f271e   ff20       MOV          ACC, #4096
003f271f   1000
003f2720   80a7       MOVZ         AR7, AR7
003f2721   0fa7       CMPL         ACC, XAR7
003f2722   ed1b       SBF          27, NEQ
003f2723   d024       MOVB         XAR0, #0x24
003f2724   6f18       SB           24, UNC
3f2725:              $C$L33:
003f2725   d023       MOVB         XAR0, #0x23
003f2726   6f16       SB           22, UNC
3f2727:              $C$L34:
003f2727   d022       MOVB         XAR0, #0x22
003f2728   6f14       SB           20, UNC
3f2729:              $C$L35:
003f2729   d021       MOVB         XAR0, #0x21
003f272a   6f12       SB           18, UNC
3f272b:              $C$L36:
003f272b   d020       MOVB         XAR0, #0x20
003f272c   6f10       SB           16, UNC
3f272d:              $C$L37:
003f272d   d01f       MOVB         XAR0, #0x1f
003f272e   6f0e       SB           14, UNC
3f272f:              $C$L38:
003f272f   d01e       MOVB         XAR0, #0x1e
003f2730   6f0c       SB           12, UNC
3f2731:              $C$L39:
003f2731   d01d       MOVB         XAR0, #0x1d
003f2732   6f0a       SB           10, UNC
3f2733:              $C$L40:
003f2733   d01c       MOVB         XAR0, #0x1c
003f2734   6f08       SB           8, UNC
3f2735:              $C$L41:
003f2735   d01b       MOVB         XAR0, #0x1b
003f2736   6f06       SB           6, UNC
3f2737:              $C$L42:
003f2737   d01a       MOVB         XAR0, #0x1a
003f2738   6f04       SB           4, UNC
3f2739:              $C$L43:
003f2739   d019       MOVB         XAR0, #0x19
003f273a   6f02       SB           2, UNC
3f273b:              $C$L44:
003f273b   d018       MOVB         XAR0, #0x18
3f273c:              $C$L45:
003f273c   2b94       MOV          *+XAR4[AR0], #0
3f273d:              $C$L46:
003f273d   92ac       MOV          AL, T
003f273e   9c01       ADDB         AL, #1
003f273f   2da9       MOV          T, AL
003f2740   93ac       MOV          AH, T
003f2741   530d       CMPB         AH, #0xd
003f2742   ffe8       B            -167, LO
003f2743   ff59
003f2744   0006       LRETR        
3f2745:              _PROCTRL_setHalHandle:
003f2745   a0c4       MOVL         *+XAR4[0], XAR5
003f2746   0006       LRETR        
3f2747:              _PROCTRL_setCtrlHandle:
003f2747   a0d4       MOVL         *+XAR4[2], XAR5
003f2748   0006       LRETR        
3f2749:              _PROCTRL_setBoardBias:
003f2749   b2bd       MOVL         *SP++, XAR1
003f274a   aabd       MOVL         *SP++, XAR2
003f274b   fe08       ADDB         SP, #8
003f274c   88ad       MOVZ         AR6, SP
003f274d   86a5       MOVL         XAR2, XAR5
003f274e   8ba4       MOVL         XAR1, XAR4
003f274f   de88       SUBB         XAR6, #8
003f2750   06c2       MOVL         ACC, *+XAR2[0]
003f2751   767f       LCR          0x3fdfb7
003f2752   dfb7
003f2753   5cad       MOVZ         AR4, SP
003f2754   88ad       MOVZ         AR6, SP
003f2755   8f7f       MOVL         XAR5, #0x3f63f0
003f2756   63f0
003f2757   dc88       SUBB         XAR4, #8
003f2758   de84       SUBB         XAR6, #4
003f2759   767f       LCR          0x3fdc5e
003f275a   dc5e
003f275b   5cad       MOVZ         AR4, SP
003f275c   dc84       SUBB         XAR4, #4
003f275d   767f       LCR          0x3fdf7b
003f275e   df7b
003f275f   8ac1       MOVL         XAR4, *+XAR1[0]
003f2760   88ad       MOVZ         AR6, SP
003f2761   d098       MOVB         XAR0, #0x98
003f2762   de88       SUBB         XAR6, #8
003f2763   1e94       MOVL         *+XAR4[AR0], ACC
003f2764   06d2       MOVL         ACC, *+XAR2[2]
003f2765   767f       LCR          0x3fdfb7
003f2766   dfb7
003f2767   5cad       MOVZ         AR4, SP
003f2768   88ad       MOVZ         AR6, SP
003f2769   8f7f       MOVL         XAR5, #0x3f63f0
003f276a   63f0
003f276b   dc88       SUBB         XAR4, #8
003f276c   de84       SUBB         XAR6, #4
003f276d   767f       LCR          0x3fdc5e
003f276e   dc5e
003f276f   5cad       MOVZ         AR4, SP
003f2770   dc84       SUBB         XAR4, #4
003f2771   767f       LCR          0x3fdf7b
003f2772   df7b
003f2773   8ac1       MOVL         XAR4, *+XAR1[0]
003f2774   88ad       MOVZ         AR6, SP
003f2775   d09a       MOVB         XAR0, #0x9a
003f2776   de88       SUBB         XAR6, #8
003f2777   1e94       MOVL         *+XAR4[AR0], ACC
003f2778   06e2       MOVL         ACC, *+XAR2[4]
003f2779   767f       LCR          0x3fdfb7
003f277a   dfb7
003f277b   5cad       MOVZ         AR4, SP
003f277c   88ad       MOVZ         AR6, SP
003f277d   8f7f       MOVL         XAR5, #0x3f63f0
003f277e   63f0
003f277f   dc88       SUBB         XAR4, #8
003f2780   de84       SUBB         XAR6, #4
003f2781   767f       LCR          0x3fdc5e
003f2782   dc5e
003f2783   5cad       MOVZ         AR4, SP
003f2784   dc84       SUBB         XAR4, #4
003f2785   767f       LCR          0x3fdf7b
003f2786   df7b
003f2787   8ac1       MOVL         XAR4, *+XAR1[0]
003f2788   88ad       MOVZ         AR6, SP
003f2789   d09c       MOVB         XAR0, #0x9c
003f278a   de88       SUBB         XAR6, #8
003f278b   1e94       MOVL         *+XAR4[AR0], ACC
003f278c   06f2       MOVL         ACC, *+XAR2[6]
003f278d   767f       LCR          0x3fdfb7
003f278e   dfb7
003f278f   5cad       MOVZ         AR4, SP
003f2790   88ad       MOVZ         AR6, SP
003f2791   8f7f       MOVL         XAR5, #0x3f63f0
003f2792   63f0
003f2793   dc88       SUBB         XAR4, #8
003f2794   de84       SUBB         XAR6, #4
003f2795   767f       LCR          0x3fdc5e
003f2796   dc5e
003f2797   5cad       MOVZ         AR4, SP
003f2798   dc84       SUBB         XAR4, #4
003f2799   767f       LCR          0x3fdf7b
003f279a   df7b
003f279b   8ac1       MOVL         XAR4, *+XAR1[0]
003f279c   88ad       MOVZ         AR6, SP
003f279d   d09e       MOVB         XAR0, #0x9e
003f279e   de88       SUBB         XAR6, #8
003f279f   1e94       MOVL         *+XAR4[AR0], ACC
003f27a0   d008       MOVB         XAR0, #0x8
003f27a1   0692       MOVL         ACC, *+XAR2[AR0]
003f27a2   767f       LCR          0x3fdfb7
003f27a3   dfb7
003f27a4   5cad       MOVZ         AR4, SP
003f27a5   88ad       MOVZ         AR6, SP
003f27a6   8f7f       MOVL         XAR5, #0x3f63f0
003f27a7   63f0
003f27a8   dc88       SUBB         XAR4, #8
003f27a9   de84       SUBB         XAR6, #4
003f27aa   767f       LCR          0x3fdc5e
003f27ab   dc5e
003f27ac   5cad       MOVZ         AR4, SP
003f27ad   dc84       SUBB         XAR4, #4
003f27ae   767f       LCR          0x3fdf7b
003f27af   df7b
003f27b0   8ac1       MOVL         XAR4, *+XAR1[0]
003f27b1   88ad       MOVZ         AR6, SP
003f27b2   d0a0       MOVB         XAR0, #0xa0
003f27b3   de88       SUBB         XAR6, #8
003f27b4   1e94       MOVL         *+XAR4[AR0], ACC
003f27b5   d00a       MOVB         XAR0, #0xa
003f27b6   0692       MOVL         ACC, *+XAR2[AR0]
003f27b7   767f       LCR          0x3fdfb7
003f27b8   dfb7
003f27b9   5cad       MOVZ         AR4, SP
003f27ba   88ad       MOVZ         AR6, SP
003f27bb   8f7f       MOVL         XAR5, #0x3f63f0
003f27bc   63f0
003f27bd   dc88       SUBB         XAR4, #8
003f27be   de84       SUBB         XAR6, #4
003f27bf   767f       LCR          0x3fdc5e
003f27c0   dc5e
003f27c1   5cad       MOVZ         AR4, SP
003f27c2   dc84       SUBB         XAR4, #4
003f27c3   767f       LCR          0x3fdf7b
003f27c4   df7b
003f27c5   8ac1       MOVL         XAR4, *+XAR1[0]
003f27c6   d0a2       MOVB         XAR0, #0xa2
003f27c7   fe88       SUBB         SP, #8
003f27c8   1e94       MOVL         *+XAR4[AR0], ACC
003f27c9   86be       MOVL         XAR2, *--SP
003f27ca   8bbe       MOVL         XAR1, *--SP
003f27cb   0006       LRETR        
3f27cc:              _PROCTRL_init:
003f27cc   1ea6       MOVL         XAR6, ACC
003f27cd   02b0       MOVB         ACC, #176
003f27ce   0fa6       CMPL         ACC, XAR6
003f27cf   6902       SB           2, LOS
003f27d0   d400       MOVB         XAR4, #0x0
3f27d1:              $C$L47:
003f27d1   0006       LRETR        
3f27d2:              _PROCTRL_getSensorData:
003f27d2   b2bd       MOVL         *SP++, XAR1
003f27d3   aabd       MOVL         *SP++, XAR2
003f27d4   a2bd       MOVL         *SP++, XAR3
003f27d5   fe08       ADDB         SP, #8
003f27d6   d098       MOVB         XAR0, #0x98
003f27d7   761f       MOVW         DP, #0xc
003f27d8   000c
003f27d9   a046       MOVL         *-SP[6], XAR5
003f27da   a844       MOVL         *-SP[4], XAR4
003f27db   0694       MOVL         ACC, *+XAR4[AR0]
003f27dc   d00e       MOVB         XAR0, #0xe
003f27dd   1e48       MOVL         *-SP[8], ACC
003f27de   0296       MOVB         ACC, #150
003f27df   8695       MOVL         XAR2, *+XAR5[AR0]
003f27e0   071e       ADDL         ACC, @0x1e
003f27e1   82a9       MOVL         XAR3, ACC
003f27e2   767f       LCR          0x3ff890
003f27e3   f890
003f27e4   761f       MOVW         DP, #0xc
003f27e5   000c
003f27e6   8ba9       MOVL         XAR1, ACC
003f27e7   ff20       MOV          ACC, #2150
003f27e8   0866
003f27e9   071e       ADDL         ACC, @0x1e
003f27ea   767f       LCR          0x3ff890
003f27eb   f890
003f27ec   1e42       MOVL         *-SP[2], ACC
003f27ed   b2a9       MOVL         ACC, XAR1
003f27ee   767f       LCR          0x3fdce1
003f27ef   dce1
003f27f0   8ba9       MOVL         XAR1, ACC
003f27f1   0648       MOVL         ACC, *-SP[8]
003f27f2   0fa2       CMPL         ACC, XAR2
003f27f3   6310       SB           16, GEQ
003f27f4   c448       MOVL         XAR6, *-SP[8]
003f27f5   aaa9       MOVL         ACC, XAR2
003f27f6   03a6       SUBL         ACC, XAR6
003f27f7   767f       LCR          0x3ff890
003f27f8   f890
003f27f9   b242       MOVL         *-SP[2], XAR1
003f27fa   767f       LCR          0x3fdde7
003f27fb   dde7
003f27fc   767f       LCR          0x3ffee5
003f27fd   fee5
003f27fe   1ea6       MOVL         XAR6, ACC
003f27ff   0648       MOVL         ACC, *-SP[8]
003f2800   07a6       ADDL         ACC, XAR6
003f2801   86a9       MOVL         XAR2, ACC
003f2802   6f0e       SB           14, UNC
3f2803:              $C$L48:
003f2803   0648       MOVL         ACC, *-SP[8]
003f2804   03a2       SUBL         ACC, XAR2
003f2805   767f       LCR          0x3ff890
003f2806   f890
003f2807   b242       MOVL         *-SP[2], XAR1
003f2808   767f       LCR          0x3fdde7
003f2809   dde7
003f280a   767f       LCR          0x3ffee5
003f280b   fee5
003f280c   a348       MOVL         P, *-SP[8]
003f280d   5641       SUBL         P, ACC
003f280e   00ab
003f280f   a9a2       MOVL         XAR2, P
3f2810:              $C$L49:
003f2810   a2a9       MOVL         ACC, XAR3
003f2811   767f       LCR          0x3ff890
003f2812   f890
003f2813   b242       MOVL         *-SP[2], XAR1
003f2814   767f       LCR          0x3fdde7
003f2815   dde7
003f2816   767f       LCR          0x3ffee5
003f2817   fee5
003f2818   a2ab       MOVL         P, XAR3
003f2819   8a44       MOVL         XAR4, *-SP[4]
003f281a   d098       MOVB         XAR0, #0x98
003f281b   761f       MOVW         DP, #0xc
003f281c   000c
003f281d   5641       SUBL         P, ACC
003f281e   00ab
003f281f   aa94       MOVL         *+XAR4[AR0], XAR2
003f2820   d09a       MOVB         XAR0, #0x9a
003f2821   0694       MOVL         ACC, *+XAR4[AR0]
003f2822   d010       MOVB         XAR0, #0x10
003f2823   1e48       MOVL         *-SP[8], ACC
003f2824   8a46       MOVL         XAR4, *-SP[6]
003f2825   a91e       MOVL         @0x1e, P
003f2826   0296       MOVB         ACC, #150
003f2827   0722       ADDL         ACC, @0x22
003f2828   8694       MOVL         XAR2, *+XAR4[AR0]
003f2829   82a9       MOVL         XAR3, ACC
003f282a   767f       LCR          0x3ff890
003f282b   f890
003f282c   761f       MOVW         DP, #0xc
003f282d   000c
003f282e   8ba9       MOVL         XAR1, ACC
003f282f   ff20       MOV          ACC, #2150
003f2830   0866
003f2831   0722       ADDL         ACC, @0x22
003f2832   767f       LCR          0x3ff890
003f2833   f890
003f2834   1e42       MOVL         *-SP[2], ACC
003f2835   b2a9       MOVL         ACC, XAR1
003f2836   767f       LCR          0x3fdce1
003f2837   dce1
003f2838   8ba9       MOVL         XAR1, ACC
003f2839   0648       MOVL         ACC, *-SP[8]
003f283a   0fa2       CMPL         ACC, XAR2
003f283b   6310       SB           16, GEQ
003f283c   c448       MOVL         XAR6, *-SP[8]
003f283d   aaa9       MOVL         ACC, XAR2
003f283e   03a6       SUBL         ACC, XAR6
003f283f   767f       LCR          0x3ff890
003f2840   f890
003f2841   b242       MOVL         *-SP[2], XAR1
003f2842   767f       LCR          0x3fdde7
003f2843   dde7
003f2844   767f       LCR          0x3ffee5
003f2845   fee5
003f2846   1ea6       MOVL         XAR6, ACC
003f2847   0648       MOVL         ACC, *-SP[8]
003f2848   07a6       ADDL         ACC, XAR6
003f2849   86a9       MOVL         XAR2, ACC
003f284a   6f0e       SB           14, UNC
3f284b:              $C$L50:
003f284b   0648       MOVL         ACC, *-SP[8]
003f284c   03a2       SUBL         ACC, XAR2
003f284d   767f       LCR          0x3ff890
003f284e   f890
003f284f   b242       MOVL         *-SP[2], XAR1
003f2850   767f       LCR          0x3fdde7
003f2851   dde7
003f2852   767f       LCR          0x3ffee5
003f2853   fee5
003f2854   a348       MOVL         P, *-SP[8]
003f2855   5641       SUBL         P, ACC
003f2856   00ab
003f2857   a9a2       MOVL         XAR2, P
3f2858:              $C$L51:
003f2858   a2a9       MOVL         ACC, XAR3
003f2859   767f       LCR          0x3ff890
003f285a   f890
003f285b   b242       MOVL         *-SP[2], XAR1
003f285c   767f       LCR          0x3fdde7
003f285d   dde7
003f285e   767f       LCR          0x3ffee5
003f285f   fee5
003f2860   8a44       MOVL         XAR4, *-SP[4]
003f2861   d09a       MOVB         XAR0, #0x9a
003f2862   a2ab       MOVL         P, XAR3
003f2863   fe88       SUBB         SP, #8
003f2864   5641       SUBL         P, ACC
003f2865   00ab
003f2866   aa94       MOVL         *+XAR4[AR0], XAR2
003f2867   82be       MOVL         XAR3, *--SP
003f2868   86be       MOVL         XAR2, *--SP
003f2869   8bbe       MOVL         XAR1, *--SP
003f286a   761f       MOVW         DP, #0xc
003f286b   000c
003f286c   a922       MOVL         @0x22, P
003f286d   0006       LRETR        
3f286e:              _PROCTRL_getScaleActors:
003f286e   b2bd       MOVL         *SP++, XAR1
003f286f   8ba4       MOVL         XAR1, XAR4
003f2870   aabd       MOVL         *SP++, XAR2
003f2871   8aa5       MOVL         XAR4, XAR5
003f2872   86a5       MOVL         XAR2, XAR5
003f2873   767f       LCR          0x3f1298
003f2874   1298
003f2875   d0a8       MOVB         XAR0, #0xa8
003f2876   8aa2       MOVL         XAR4, XAR2
003f2877   1e91       MOVL         *+XAR1[AR0], ACC
003f2878   767f       LCR          0x3f12f7
003f2879   12f7
003f287a   d0aa       MOVB         XAR0, #0xaa
003f287b   8aa2       MOVL         XAR4, XAR2
003f287c   1e91       MOVL         *+XAR1[AR0], ACC
003f287d   767f       LCR          0x3f11a3
003f287e   11a3
003f287f   d0ac       MOVB         XAR0, #0xac
003f2880   8aa2       MOVL         XAR4, XAR2
003f2881   1e91       MOVL         *+XAR1[AR0], ACC
003f2882   767f       LCR          0x3f121d
003f2883   121d
003f2884   d0ae       MOVB         XAR0, #0xae
003f2885   1e91       MOVL         *+XAR1[AR0], ACC
003f2886   86be       MOVL         XAR2, *--SP
003f2887   8bbe       MOVL         XAR1, *--SP
003f2888   0006       LRETR        
3f2889:              _PROCTRL_getMotorFlag:
003f2889   d018       MOVB         XAR0, #0x18
003f288a   9a00       MOVB         AL, #0x0
003f288b   9394       MOV          AH, *+XAR4[AR0]
003f288c   d019       MOVB         XAR0, #0x19
003f288d   5301       CMPB         AH, #0x1
003f288e   56b1       MOVB         AL, #0x01, EQ
003f288f   01a9
003f2890   9394       MOV          AH, *+XAR4[AR0]
003f2891   5301       CMPB         AH, #0x1
003f2892   ed02       SBF          2, NEQ
003f2893   9c02       ADDB         AL, #2
3f2894:              $C$L52:
003f2894   d01a       MOVB         XAR0, #0x1a
003f2895   9394       MOV          AH, *+XAR4[AR0]
003f2896   5301       CMPB         AH, #0x1
003f2897   ed02       SBF          2, NEQ
003f2898   9c04       ADDB         AL, #4
3f2899:              $C$L53:
003f2899   d01b       MOVB         XAR0, #0x1b
003f289a   9394       MOV          AH, *+XAR4[AR0]
003f289b   5301       CMPB         AH, #0x1
003f289c   ed02       SBF          2, NEQ
003f289d   9c08       ADDB         AL, #8
3f289e:              $C$L54:
003f289e   d01c       MOVB         XAR0, #0x1c
003f289f   9394       MOV          AH, *+XAR4[AR0]
003f28a0   5301       CMPB         AH, #0x1
003f28a1   ed02       SBF          2, NEQ
003f28a2   9c10       ADDB         AL, #16
3f28a3:              $C$L55:
003f28a3   d01d       MOVB         XAR0, #0x1d
003f28a4   9394       MOV          AH, *+XAR4[AR0]
003f28a5   5301       CMPB         AH, #0x1
003f28a6   ed02       SBF          2, NEQ
003f28a7   9c20       ADDB         AL, #32
3f28a8:              $C$L56:
003f28a8   d01e       MOVB         XAR0, #0x1e
003f28a9   9394       MOV          AH, *+XAR4[AR0]
003f28aa   5301       CMPB         AH, #0x1
003f28ab   ed02       SBF          2, NEQ
003f28ac   9c40       ADDB         AL, #64
3f28ad:              $C$L57:
003f28ad   d01f       MOVB         XAR0, #0x1f
003f28ae   9394       MOV          AH, *+XAR4[AR0]
003f28af   5301       CMPB         AH, #0x1
003f28b0   ed03       SBF          3, NEQ
003f28b1   9b80       MOVB         AH, #0x80
003f28b2   94a8       ADD          AL, @AH
3f28b3:              $C$L58:
003f28b3   d020       MOVB         XAR0, #0x20
003f28b4   9394       MOV          AH, *+XAR4[AR0]
003f28b5   5301       CMPB         AH, #0x1
003f28b6   ed03       SBF          3, NEQ
003f28b7   08a9       ADD          AL, #256
003f28b8   0100
3f28b9:              $C$L59:
003f28b9   d021       MOVB         XAR0, #0x21
003f28ba   9394       MOV          AH, *+XAR4[AR0]
003f28bb   5301       CMPB         AH, #0x1
003f28bc   ed03       SBF          3, NEQ
003f28bd   08a9       ADD          AL, #512
003f28be   0200
3f28bf:              $C$L60:
003f28bf   d022       MOVB         XAR0, #0x22
003f28c0   9394       MOV          AH, *+XAR4[AR0]
003f28c1   5301       CMPB         AH, #0x1
003f28c2   ed03       SBF          3, NEQ
003f28c3   08a9       ADD          AL, #1024
003f28c4   0400
3f28c5:              $C$L61:
003f28c5   d023       MOVB         XAR0, #0x23
003f28c6   9394       MOV          AH, *+XAR4[AR0]
003f28c7   5301       CMPB         AH, #0x1
003f28c8   ed03       SBF          3, NEQ
003f28c9   08a9       ADD          AL, #2048
003f28ca   0800
3f28cb:              $C$L62:
003f28cb   d024       MOVB         XAR0, #0x24
003f28cc   9394       MOV          AH, *+XAR4[AR0]
003f28cd   5301       CMPB         AH, #0x1
003f28ce   ed03       SBF          3, NEQ
003f28cf   08a9       ADD          AL, #4096
003f28d0   1000
3f28d1:              $C$L63:
003f28d1   0006       LRETR        
3f28d2:              _PROCTRL_getDCbusVoltage:
003f28d2   d00c       MOVB         XAR0, #0xc
003f28d3   28a9       MOV          AL, #0x3333
003f28d4   3333
003f28d5   9b73       MOVB         AH, #0x73
003f28d6   8795       MOVL         XT, *+XAR5[AR0]
003f28d7   5605       IMPYL        P, XT, ACC
003f28d8   00a9
003f28d9   5663       QMPYL        ACC, XT, ACC
003f28da   00a9
003f28db   56a7       LSL64        ACC:P, 8
003f28dc   d060       MOVB         XAR0, #0x60
003f28dd   1e94       MOVL         *+XAR4[AR0], ACC
003f28de   0006       LRETR        
3f28df:              _PROCTRL_getChipTemperture:
003f28df   d012       MOVB         XAR0, #0x12
003f28e0   0695       MOVL         ACC, *+XAR5[AR0]
003f28e1   d084       MOVB         XAR0, #0x84
003f28e2   1e94       MOVL         *+XAR4[AR0], ACC
003f28e3   0006       LRETR        
3f28e4:              _PROCTRL_getBias:
003f28e4   83c4       MOVL         XAR5, *+XAR4[0]
003f28e5   d098       MOVB         XAR0, #0x98
003f28e6   0695       MOVL         ACC, *+XAR5[AR0]
003f28e7   83a4       MOVL         XAR5, XAR4
003f28e8   dd68       ADDB         XAR5, #104
003f28e9   1ec5       MOVL         *+XAR5[0], ACC
003f28ea   c4c4       MOVL         XAR6, *+XAR4[0]
003f28eb   d09a       MOVB         XAR0, #0x9a
003f28ec   0696       MOVL         ACC, *+XAR6[AR0]
003f28ed   1ed5       MOVL         *+XAR5[2], ACC
003f28ee   c4c4       MOVL         XAR6, *+XAR4[0]
003f28ef   d09c       MOVB         XAR0, #0x9c
003f28f0   0696       MOVL         ACC, *+XAR6[AR0]
003f28f1   1ee5       MOVL         *+XAR5[4], ACC
003f28f2   83c4       MOVL         XAR5, *+XAR4[0]
003f28f3   d09e       MOVB         XAR0, #0x9e
003f28f4   0695       MOVL         ACC, *+XAR5[AR0]
003f28f5   83a4       MOVL         XAR5, XAR4
003f28f6   dd6e       ADDB         XAR5, #110
003f28f7   1ec5       MOVL         *+XAR5[0], ACC
003f28f8   c4c4       MOVL         XAR6, *+XAR4[0]
003f28f9   d0a0       MOVB         XAR0, #0xa0
003f28fa   0696       MOVL         ACC, *+XAR6[AR0]
003f28fb   1ed5       MOVL         *+XAR5[2], ACC
003f28fc   8ac4       MOVL         XAR4, *+XAR4[0]
003f28fd   d0a2       MOVB         XAR0, #0xa2
003f28fe   0694       MOVL         ACC, *+XAR4[AR0]
003f28ff   1ee5       MOVL         *+XAR5[4], ACC
003f2900   0006       LRETR        
3f2901:              _PROCTRL_chkMotorIdentified:
003f2901   b2bd       MOVL         *SP++, XAR1
003f2902   aabd       MOVL         *SP++, XAR2
003f2903   fe0a       ADDB         SP, #10
003f2904   8ba4       MOVL         XAR1, XAR4
003f2905   8ad1       MOVL         XAR4, *+XAR1[2]
003f2906   d018       MOVB         XAR0, #0x18
003f2907   86a5       MOVL         XAR2, XAR5
003f2908   8a94       MOVL         XAR4, *+XAR4[AR0]
003f2909   767f       LCR          0x3fc05e
003f290a   c05e
003f290b   5200       CMPB         AL, #0x0
003f290c   56c1       BF           138, EQ
003f290d   008a
003f290e   8ad1       MOVL         XAR4, *+XAR1[2]
003f290f   d03a       MOVB         XAR0, #0x3a
003f2910   0691       MOVL         ACC, *+XAR1[AR0]
003f2911   d0a8       MOVB         XAR0, #0xa8
003f2912   1e94       MOVL         *+XAR4[AR0], ACC
003f2913   8ad1       MOVL         XAR4, *+XAR1[2]
003f2914   761f       MOVW         DP, #0xc
003f2915   000c
003f2916   d018       MOVB         XAR0, #0x18
003f2917   0620       MOVL         ACC, @0x20
003f2918   8a94       MOVL         XAR4, *+XAR4[AR0]
003f2919   767f       LCR          0x3fc4c0
003f291a   c4c0
003f291b   d01a       MOVB         XAR0, #0x1a
003f291c   56bf       MOVB         *+XAR1[AR0], #0x01, UNC
003f291d   0191
003f291e   d032       MOVB         XAR0, #0x32
003f291f   8ad1       MOVL         XAR4, *+XAR1[2]
003f2920   0691       MOVL         ACC, *+XAR1[AR0]
003f2921   767f       LCR          0x3f2cbe
003f2922   2cbe
003f2923   d035       MOVB         XAR0, #0x35
003f2924   9292       MOV          AL, *+XAR2[AR0]
003f2925   767f       LCR          0x3ff8bd
003f2926   f8bd
003f2927   1ea6       MOVL         XAR6, ACC
003f2928   9a00       MOVB         AL, #0x0
003f2929   28a8       MOV          AH, #0x447a
003f292a   447a
003f292b   1e42       MOVL         *-SP[2], ACC
003f292c   06a6       MOVL         ACC, XAR6
003f292d   767f       LCR          0x3fdde7
003f292e   dde7
003f292f   1ea6       MOVL         XAR6, ACC
003f2930   28a9       MOV          AL, #0x8000
003f2931   8000
003f2932   28a8       MOV          AH, #0x43a6
003f2933   43a6
003f2934   1e42       MOVL         *-SP[2], ACC
003f2935   06a6       MOVL         ACC, XAR6
003f2936   767f       LCR          0x3fdce1
003f2937   dce1
003f2938   1ea6       MOVL         XAR6, ACC
003f2939   9a00       MOVB         AL, #0x0
003f293a   28a8       MOV          AH, #0x4348
003f293b   4348
003f293c   1e42       MOVL         *-SP[2], ACC
003f293d   06a6       MOVL         ACC, XAR6
003f293e   767f       LCR          0x3fdce1
003f293f   dce1
003f2940   1ea6       MOVL         XAR6, ACC
003f2941   9a00       MOVB         AL, #0x0
003f2942   28a8       MOV          AH, #0x4270
003f2943   4270
003f2944   1e42       MOVL         *-SP[2], ACC
003f2945   06a6       MOVL         ACC, XAR6
003f2946   767f       LCR          0x3fdce1
003f2947   dce1
003f2948   88ad       MOVZ         AR6, SP
003f2949   de8a       SUBB         XAR6, #10
003f294a   767f       LCR          0x3fdfb7
003f294b   dfb7
003f294c   5cad       MOVZ         AR4, SP
003f294d   88ad       MOVZ         AR6, SP
003f294e   8f7f       MOVL         XAR5, #0x3f63f0
003f294f   63f0
003f2950   dc8a       SUBB         XAR4, #10
003f2951   de86       SUBB         XAR6, #6
003f2952   767f       LCR          0x3fdc5e
003f2953   dc5e
003f2954   5cad       MOVZ         AR4, SP
003f2955   dc86       SUBB         XAR4, #6
003f2956   767f       LCR          0x3fdf7b
003f2957   df7b
003f2958   d036       MOVB         XAR0, #0x36
003f2959   1eac       MOVL         XT, ACC
003f295a   8ad1       MOVL         XAR4, *+XAR1[2]
003f295b   5605       IMPYL        P, XT, *+XAR1[AR0]
003f295c   0091
003f295d   5663       QMPYL        ACC, XT, *+XAR1[AR0]
003f295e   0091
003f295f   d076       MOVB         XAR0, #0x76
003f2960   56a7       LSL64        ACC:P, 8
003f2961   1e94       MOVL         *+XAR4[AR0], ACC
003f2962   06c2       MOVL         ACC, *+XAR2[0]
003f2963   1e42       MOVL         *-SP[2], ACC
003f2964   ff2f       MOV          ACC, #0x7f00 << 15
003f2965   7f00
003f2966   767f       LCR          0x3fdce1
003f2967   dce1
003f2968   88ad       MOVZ         AR6, SP
003f2969   de8a       SUBB         XAR6, #10
003f296a   767f       LCR          0x3fdfb7
003f296b   dfb7
003f296c   5cad       MOVZ         AR4, SP
003f296d   88ad       MOVZ         AR6, SP
003f296e   8f7f       MOVL         XAR5, #0x3f63f0
003f296f   63f0
003f2970   dc8a       SUBB         XAR4, #10
003f2971   de86       SUBB         XAR6, #6
003f2972   767f       LCR          0x3fdc5e
003f2973   dc5e
003f2974   5cad       MOVZ         AR4, SP
003f2975   dc86       SUBB         XAR4, #6
003f2976   767f       LCR          0x3fdf7b
003f2977   df7b
003f2978   d02c       MOVB         XAR0, #0x2c
003f2979   761f       MOVW         DP, #0xc
003f297a   000c
003f297b   8791       MOVL         XT, *+XAR1[AR0]
003f297c   8ad1       MOVL         XAR4, *+XAR1[2]
003f297d   d0e2       MOVB         XAR0, #0xe2
003f297e   5605       IMPYL        P, XT, ACC
003f297f   00a9
003f2980   5663       QMPYL        ACC, XT, ACC
003f2981   00a9
003f2982   56a7       LSL64        ACC:P, 8
003f2983   1e94       MOVL         *+XAR4[AR0], ACC
003f2984   921c       MOV          AL, @0x1c
003f2985   ec27       SBF          39, EQ
003f2986   2b1c       MOV          @0x1c, #0
003f2987   83a2       MOVL         XAR5, XAR2
003f2988   8ad1       MOVL         XAR4, *+XAR1[2]
003f2989   767f       LCR          0x3f1927
003f298a   1927
003f298b   8ad1       MOVL         XAR4, *+XAR1[2]
003f298c   d0ca       MOVB         XAR0, #0xca
003f298d   0694       MOVL         ACC, *+XAR4[AR0]
003f298e   d054       MOVB         XAR0, #0x54
003f298f   1e91       MOVL         *+XAR1[AR0], ACC
003f2990   8ad1       MOVL         XAR4, *+XAR1[2]
003f2991   d0d0       MOVB         XAR0, #0xd0
003f2992   0694       MOVL         ACC, *+XAR4[AR0]
003f2993   d056       MOVB         XAR0, #0x56
003f2994   1e91       MOVL         *+XAR1[AR0], ACC
003f2995   6f17       SB           23, UNC
3f2996:              $C$L64:
003f2996   761f       MOVW         DP, #0xc
003f2997   000c
003f2998   56bf       MOVB         @0x1c, #0x01, UNC
003f2999   011c
003f299a   8ad1       MOVL         XAR4, *+XAR1[2]
003f299b   d0ce       MOVB         XAR0, #0xce
003f299c   0694       MOVL         ACC, *+XAR4[AR0]
003f299d   d050       MOVB         XAR0, #0x50
003f299e   1e91       MOVL         *+XAR1[AR0], ACC
003f299f   8ad1       MOVL         XAR4, *+XAR1[2]
003f29a0   d0d4       MOVB         XAR0, #0xd4
003f29a1   0694       MOVL         ACC, *+XAR4[AR0]
003f29a2   d052       MOVB         XAR0, #0x52
003f29a3   1e91       MOVL         *+XAR1[AR0], ACC
003f29a4   8ad1       MOVL         XAR4, *+XAR1[2]
003f29a5   d018       MOVB         XAR0, #0x18
003f29a6   8a94       MOVL         XAR4, *+XAR4[AR0]
003f29a7   767f       LCR          0x3fcfa2
003f29a8   cfa2
003f29a9   761f       MOVW         DP, #0xc
003f29aa   000c
003f29ab   1e20       MOVL         @0x20, ACC
3f29ac:              $C$L65:
003f29ac   d025       MOVB         XAR0, #0x25
003f29ad   9291       MOV          AL, *+XAR1[AR0]
003f29ae   5203       CMPB         AL, #0x3
003f29af   ed0c       SBF          12, NEQ
003f29b0   d01a       MOVB         XAR0, #0x1a
003f29b1   9291       MOV          AL, *+XAR1[AR0]
003f29b2   5201       CMPB         AL, #0x1
003f29b3   ed08       SBF          8, NEQ
003f29b4   761f       MOVW         DP, #0xc
003f29b5   000c
003f29b6   921c       MOV          AL, @0x1c
003f29b7   ed04       SBF          4, NEQ
003f29b8   8aa1       MOVL         XAR4, XAR1
003f29b9   767f       LCR          0x3f2609
003f29ba   2609
3f29bb:              $C$L66:
003f29bb   fe8a       SUBB         SP, #10
003f29bc   86be       MOVL         XAR2, *--SP
003f29bd   8bbe       MOVL         XAR1, *--SP
003f29be   0006       LRETR        
3f29bf:              _PROCTRL_chkError:
003f29bf   b2bd       MOVL         *SP++, XAR1
003f29c0   8ba4       MOVL         XAR1, XAR4
003f29c1   aabd       MOVL         *SP++, XAR2
003f29c2   a2bd       MOVL         *SP++, XAR3
003f29c3   8ad1       MOVL         XAR4, *+XAR1[2]
003f29c4   86a5       MOVL         XAR2, XAR5
003f29c5   92e4       MOV          AL, *+XAR4[4]
003f29c6   56c1       BF           167, EQ
003f29c7   00a7
003f29c8   767f       LCR          0x3f2b71
003f29c9   2b71
003f29ca   c5a1       MOVL         XAR7, XAR1
003f29cb   d0f0       MOVB         XAR0, #0xf0
003f29cc   8ad1       MOVL         XAR4, *+XAR1[2]
003f29cd   df19       ADDB         XAR7, #25
003f29ce   93c7       MOV          AH, *+XAR7[0]
003f29cf   5200       CMPB         AL, #0x0
003f29d0   9794       MOV          *+XAR4[AR0], AH
003f29d1   56c1       BF           180, EQ
003f29d2   00b4
003f29d3   5be4       MOVZ         AR3, *+XAR4[4]
003f29d4   92a3       MOV          AL, AR3
003f29d5   5202       CMPB         AL, #0x2
003f29d6   ec73       SBF          115, EQ
003f29d7   5203       CMPB         AL, #0x3
003f29d8   ec1b       SBF          27, EQ
003f29d9   5201       CMPB         AL, #0x1
003f29da   56c0       BF           131, NEQ
003f29db   0083
003f29dc   83c1       MOVL         XAR5, *+XAR1[0]
003f29dd   dd7c       ADDB         XAR5, #124
003f29de   c4c5       MOVL         XAR6, *+XAR5[0]
003f29df   7622       EALLOW       
003f29e0   de18       ADDB         XAR6, #24
003f29e1   1ac6       OR           *+XAR6[0], #0x0004
003f29e2   0004
003f29e3   761a       EDIS         
003f29e4   c4d5       MOVL         XAR6, *+XAR5[2]
003f29e5   7622       EALLOW       
003f29e6   de18       ADDB         XAR6, #24
003f29e7   1ac6       OR           *+XAR6[0], #0x0004
003f29e8   0004
003f29e9   761a       EDIS         
003f29ea   83e5       MOVL         XAR5, *+XAR5[4]
003f29eb   7622       EALLOW       
003f29ec   dd18       ADDB         XAR5, #24
003f29ed   1ac5       OR           *+XAR5[0], #0x0004
003f29ee   0004
003f29ef   761a       EDIS         
003f29f0   d019       MOVB         XAR0, #0x19
003f29f1   2b91       MOV          *+XAR1[AR0], #0
003f29f2   6f6b       SB           107, UNC
3f29f3:              $C$L67:
003f29f3   d01f       MOVB         XAR0, #0x1f
003f29f4   9291       MOV          AL, *+XAR1[AR0]
003f29f5   5201       CMPB         AL, #0x1
003f29f6   ec07       SBF          7, EQ
003f29f7   8f7f       MOVL         XAR5, #0x3f63d4
003f29f8   63d4
003f29f9   8aa1       MOVL         XAR4, XAR1
003f29fa   767f       LCR          0x3f2749
003f29fb   2749
003f29fc   6f34       SB           52, UNC
3f29fd:              $C$L68:
003f29fd   8ac1       MOVL         XAR4, *+XAR1[0]
003f29fe   b600       MOVB         XAR7, #0x00
003f29ff   6f14       SB           20, UNC
3f2a00:              $C$L69:
003f2a00   0ea7       MOVU         ACC, AR7
003f2a01   be98       MOVB         XAR6, #0x98
003f2a02   83a4       MOVL         XAR5, XAR4
003f2a03   ff30       LSL          ACC, 1
003f2a04   8ea9       MOVL         XAR0, ACC
003f2a05   a8a9       MOVL         ACC, XAR4
003f2a06   07a0       ADDL         ACC, XAR0
003f2a07   0da6       ADDU         ACC, AR6
003f2a08   1ea6       MOVL         XAR6, ACC
003f2a09   3aa9       MOVL         ACC, XAR0
003f2a0a   d00a       MOVB         XAR0, #0xa
003f2a0b   5601       ADDL         XAR5, ACC
003f2a0c   00a5
003f2a0d   8395       MOVL         XAR5, *+XAR5[AR0]
003f2a0e   a3c6       MOVL         P, *+XAR6[0]
003f2a0f   df01       ADDB         XAR7, #1
003f2a10   a9a9       MOVL         ACC, P
003f2a11   07c5       ADDL         ACC, *+XAR5[0]
003f2a12   1ec6       MOVL         *+XAR6[0], ACC
3f2a13:              $C$L70:
003f2a13   d0b2       MOVB         XAR0, #0xb2
003f2a14   92a7       MOV          AL, AR7
003f2a15   5494       CMP          AL, *+XAR4[AR0]
003f2a16   68ea       SB           -22, LO
003f2a17   b600       MOVB         XAR7, #0x00
003f2a18   6f14       SB           20, UNC
3f2a19:              $C$L71:
003f2a19   0ea7       MOVU         ACC, AR7
003f2a1a   be9e       MOVB         XAR6, #0x9e
003f2a1b   83a4       MOVL         XAR5, XAR4
003f2a1c   ff30       LSL          ACC, 1
003f2a1d   8ea9       MOVL         XAR0, ACC
003f2a1e   a8a9       MOVL         ACC, XAR4
003f2a1f   07a0       ADDL         ACC, XAR0
003f2a20   0da6       ADDU         ACC, AR6
003f2a21   1ea6       MOVL         XAR6, ACC
003f2a22   3aa9       MOVL         ACC, XAR0
003f2a23   d040       MOVB         XAR0, #0x40
003f2a24   5601       ADDL         XAR5, ACC
003f2a25   00a5
003f2a26   8395       MOVL         XAR5, *+XAR5[AR0]
003f2a27   a3c6       MOVL         P, *+XAR6[0]
003f2a28   df01       ADDB         XAR7, #1
003f2a29   a9a9       MOVL         ACC, P
003f2a2a   07c5       ADDL         ACC, *+XAR5[0]
003f2a2b   1ec6       MOVL         *+XAR6[0], ACC
3f2a2c:              $C$L72:
003f2a2c   d0b3       MOVB         XAR0, #0xb3
003f2a2d   92a7       MOV          AL, AR7
003f2a2e   5494       CMP          AL, *+XAR4[AR0]
003f2a2f   68ea       SB           -22, LO
3f2a30:              $C$L73:
003f2a30   8aa1       MOVL         XAR4, XAR1
003f2a31   767f       LCR          0x3f28e4
003f2a32   28e4
003f2a33   8ac1       MOVL         XAR4, *+XAR1[0]
003f2a34   dc7c       ADDB         XAR4, #124
003f2a35   83c4       MOVL         XAR5, *+XAR4[0]
003f2a36   7622       EALLOW       
003f2a37   d017       MOVB         XAR0, #0x17
003f2a38   56bf       MOVB         *+XAR5[AR0], #0x04, UNC
003f2a39   0495
003f2a3a   761a       EDIS         
003f2a3b   83d4       MOVL         XAR5, *+XAR4[2]
003f2a3c   7622       EALLOW       
003f2a3d   d017       MOVB         XAR0, #0x17
003f2a3e   56bf       MOVB         *+XAR5[AR0], #0x04, UNC
003f2a3f   0495
003f2a40   761a       EDIS         
003f2a41   8ae4       MOVL         XAR4, *+XAR4[4]
003f2a42   7622       EALLOW       
003f2a43   d017       MOVB         XAR0, #0x17
003f2a44   56bf       MOVB         *+XAR4[AR0], #0x04, UNC
003f2a45   0494
003f2a46   761a       EDIS         
003f2a47   8ad1       MOVL         XAR4, *+XAR1[2]
003f2a48   6f15       SB           21, UNC
3f2a49:              $C$L74:
003f2a49   83c1       MOVL         XAR5, *+XAR1[0]
003f2a4a   dd7c       ADDB         XAR5, #124
003f2a4b   c4c5       MOVL         XAR6, *+XAR5[0]
003f2a4c   7622       EALLOW       
003f2a4d   d017       MOVB         XAR0, #0x17
003f2a4e   56bf       MOVB         *+XAR6[AR0], #0x04, UNC
003f2a4f   0496
003f2a50   761a       EDIS         
003f2a51   c4d5       MOVL         XAR6, *+XAR5[2]
003f2a52   7622       EALLOW       
003f2a53   d017       MOVB         XAR0, #0x17
003f2a54   56bf       MOVB         *+XAR6[AR0], #0x04, UNC
003f2a55   0496
003f2a56   761a       EDIS         
003f2a57   83e5       MOVL         XAR5, *+XAR5[4]
003f2a58   7622       EALLOW       
003f2a59   d017       MOVB         XAR0, #0x17
003f2a5a   56bf       MOVB         *+XAR5[AR0], #0x04, UNC
003f2a5b   0495
003f2a5c   761a       EDIS         
3f2a5d:              $C$L75:
003f2a5d   d0f5       MOVB         XAR0, #0xf5
003f2a5e   9294       MOV          AL, *+XAR4[AR0]
003f2a5f   5201       CMPB         AL, #0x1
003f2a60   ed25       SBF          37, NEQ
003f2a61   92a3       MOV          AL, AR3
003f2a62   5202       CMPB         AL, #0x2
003f2a63   6422       SB           34, LT
003f2a64   d02b       MOVB         XAR0, #0x2b
003f2a65   9291       MOV          AL, *+XAR1[AR0]
003f2a66   5206       CMPB         AL, #0x6
003f2a67   ed1e       SBF          30, NEQ
003f2a68   ff69       SPM          #0
003f2a69   83a2       MOVL         XAR5, XAR2
003f2a6a   767f       LCR          0x3f0e94
003f2a6b   0e94
003f2a6c   6f19       SB           25, UNC
3f2a6d:              $C$L76:
003f2a6d   d0f0       MOVB         XAR0, #0xf0
003f2a6e   2b94       MOV          *+XAR4[AR0], #0
003f2a6f   d018       MOVB         XAR0, #0x18
003f2a70   2b91       MOV          *+XAR1[AR0], #0
003f2a71   8ac1       MOVL         XAR4, *+XAR1[0]
003f2a72   dc7c       ADDB         XAR4, #124
003f2a73   83c4       MOVL         XAR5, *+XAR4[0]
003f2a74   7622       EALLOW       
003f2a75   dd18       ADDB         XAR5, #24
003f2a76   1ac5       OR           *+XAR5[0], #0x0004
003f2a77   0004
003f2a78   761a       EDIS         
003f2a79   83d4       MOVL         XAR5, *+XAR4[2]
003f2a7a   7622       EALLOW       
003f2a7b   dd18       ADDB         XAR5, #24
003f2a7c   1ac5       OR           *+XAR5[0], #0x0004
003f2a7d   0004
003f2a7e   761a       EDIS         
003f2a7f   8ae4       MOVL         XAR4, *+XAR4[4]
003f2a80   7622       EALLOW       
003f2a81   dc18       ADDB         XAR4, #24
003f2a82   1ac4       OR           *+XAR4[0], #0x0004
003f2a83   0004
003f2a84   761a       EDIS         
3f2a85:              $C$L77:
003f2a85   82be       MOVL         XAR3, *--SP
003f2a86   ff69       SPM          #0
003f2a87   86be       MOVL         XAR2, *--SP
003f2a88   8bbe       MOVL         XAR1, *--SP
003f2a89   0006       LRETR        
3f2a8a:              _PROCTRL_UpdateMotorVar:
003f2a8a   b2bd       MOVL         *SP++, XAR1
003f2a8b   8ba4       MOVL         XAR1, XAR4
003f2a8c   8ad1       MOVL         XAR4, *+XAR1[2]
003f2a8d   d018       MOVB         XAR0, #0x18
003f2a8e   8a94       MOVL         XAR4, *+XAR4[AR0]
003f2a8f   767f       LCR          0x3fd017
003f2a90   d017
003f2a91   d042       MOVB         XAR0, #0x42
003f2a92   1e91       MOVL         *+XAR1[AR0], ACC
003f2a93   8ad1       MOVL         XAR4, *+XAR1[2]
003f2a94   d018       MOVB         XAR0, #0x18
003f2a95   8a94       MOVL         XAR4, *+XAR4[AR0]
003f2a96   767f       LCR          0x3fcf92
003f2a97   cf92
003f2a98   d044       MOVB         XAR0, #0x44
003f2a99   1e91       MOVL         *+XAR1[AR0], ACC
003f2a9a   8ad1       MOVL         XAR4, *+XAR1[2]
003f2a9b   d018       MOVB         XAR0, #0x18
003f2a9c   8a94       MOVL         XAR4, *+XAR4[AR0]
003f2a9d   767f       LCR          0x3fcf22
003f2a9e   cf22
003f2a9f   d048       MOVB         XAR0, #0x48
003f2aa0   1e91       MOVL         *+XAR1[AR0], ACC
003f2aa1   8ad1       MOVL         XAR4, *+XAR1[2]
003f2aa2   d018       MOVB         XAR0, #0x18
003f2aa3   8a94       MOVL         XAR4, *+XAR4[AR0]
003f2aa4   767f       LCR          0x3fcef8
003f2aa5   cef8
003f2aa6   d046       MOVB         XAR0, #0x46
003f2aa7   1e91       MOVL         *+XAR1[AR0], ACC
003f2aa8   8ad1       MOVL         XAR4, *+XAR1[2]
003f2aa9   d018       MOVB         XAR0, #0x18
003f2aaa   8a94       MOVL         XAR4, *+XAR4[AR0]
003f2aab   767f       LCR          0x3fcfda
003f2aac   cfda
003f2aad   d04a       MOVB         XAR0, #0x4a
003f2aae   1e91       MOVL         *+XAR1[AR0], ACC
003f2aaf   8ad1       MOVL         XAR4, *+XAR1[2]
003f2ab0   d018       MOVB         XAR0, #0x18
003f2ab1   8a94       MOVL         XAR4, *+XAR4[AR0]
003f2ab2   767f       LCR          0x3fcfb3
003f2ab3   cfb3
003f2ab4   d04c       MOVB         XAR0, #0x4c
003f2ab5   1e91       MOVL         *+XAR1[AR0], ACC
003f2ab6   8bbe       MOVL         XAR1, *--SP
003f2ab7   0006       LRETR        
3f2ab8:              _PROCTRL_UpdateMotorTorque:
003f2ab8   b2bd       MOVL         *SP++, XAR1
003f2ab9   fe02       ADDB         SP, #2
003f2aba   d0ac       MOVB         XAR0, #0xac
003f2abb   8ba4       MOVL         XAR1, XAR4
003f2abc   0691       MOVL         ACC, *+XAR1[AR0]
003f2abd   d0ae       MOVB         XAR0, #0xae
003f2abe   1e42       MOVL         *-SP[2], ACC
003f2abf   8ad1       MOVL         XAR4, *+XAR1[2]
003f2ac0   0691       MOVL         ACC, *+XAR1[AR0]
003f2ac1   767f       LCR          0x3f1157
003f2ac2   1157
003f2ac3   d040       MOVB         XAR0, #0x40
003f2ac4   1e91       MOVL         *+XAR1[AR0], ACC
003f2ac5   fe82       SUBB         SP, #2
003f2ac6   8bbe       MOVL         XAR1, *--SP
003f2ac7   0006       LRETR        
3f2ac8:              _PROCTRL_UpdateMotorSpeed:
003f2ac8   b2bd       MOVL         *SP++, XAR1
003f2ac9   8ba4       MOVL         XAR1, XAR4
003f2aca   8ad1       MOVL         XAR4, *+XAR1[2]
003f2acb   d018       MOVB         XAR0, #0x18
003f2acc   8a94       MOVL         XAR4, *+XAR4[AR0]
003f2acd   767f       LCR          0x3fceab
003f2ace   ceab
003f2acf   d038       MOVB         XAR0, #0x38
003f2ad0   1e91       MOVL         *+XAR1[AR0], ACC
003f2ad1   8bbe       MOVL         XAR1, *--SP
003f2ad2   0006       LRETR        
3f2ad3:              _PROCTRL_MotorVars_Init:
003f2ad3   d018       MOVB         XAR0, #0x18
003f2ad4   2b94       MOV          *+XAR4[AR0], #0
003f2ad5   d019       MOVB         XAR0, #0x19
003f2ad6   2b94       MOV          *+XAR4[AR0], #0
003f2ad7   d01a       MOVB         XAR0, #0x1a
003f2ad8   2b94       MOV          *+XAR4[AR0], #0
003f2ad9   d01b       MOVB         XAR0, #0x1b
003f2ada   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f2adb   0194
003f2adc   d01c       MOVB         XAR0, #0x1c
003f2add   0200       MOVB         ACC, #0
003f2ade   8f59       MOVL         XAR5, #0x199999
003f2adf   9999
003f2ae0   2b94       MOV          *+XAR4[AR0], #0
003f2ae1   d01d       MOVB         XAR0, #0x1d
003f2ae2   2b94       MOV          *+XAR4[AR0], #0
003f2ae3   d01e       MOVB         XAR0, #0x1e
003f2ae4   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f2ae5   0194
003f2ae6   d01f       MOVB         XAR0, #0x1f
003f2ae7   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f2ae8   0194
003f2ae9   d020       MOVB         XAR0, #0x20
003f2aea   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f2aeb   0194
003f2aec   d021       MOVB         XAR0, #0x21
003f2aed   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f2aee   0194
003f2aef   d022       MOVB         XAR0, #0x22
003f2af0   2b94       MOV          *+XAR4[AR0], #0
003f2af1   d023       MOVB         XAR0, #0x23
003f2af2   2b94       MOV          *+XAR4[AR0], #0
003f2af3   d024       MOVB         XAR0, #0x24
003f2af4   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f2af5   0194
003f2af6   d025       MOVB         XAR0, #0x25
003f2af7   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f2af8   0194
003f2af9   d026       MOVB         XAR0, #0x26
003f2afa   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f2afb   0194
003f2afc   d027       MOVB         XAR0, #0x27
003f2afd   2b94       MOV          *+XAR4[AR0], #0
003f2afe   d028       MOVB         XAR0, #0x28
003f2aff   2b94       MOV          *+XAR4[AR0], #0
003f2b00   d029       MOVB         XAR0, #0x29
003f2b01   56bf       MOVB         *+XAR4[AR0], #0x04, UNC
003f2b02   0494
003f2b03   d02a       MOVB         XAR0, #0x2a
003f2b04   2b94       MOV          *+XAR4[AR0], #0
003f2b05   d02b       MOVB         XAR0, #0x2b
003f2b06   2b94       MOV          *+XAR4[AR0], #0
003f2b07   d02c       MOVB         XAR0, #0x2c
003f2b08   1e94       MOVL         *+XAR4[AR0], ACC
003f2b09   d02e       MOVB         XAR0, #0x2e
003f2b0a   1e94       MOVL         *+XAR4[AR0], ACC
003f2b0b   d030       MOVB         XAR0, #0x30
003f2b0c   1e94       MOVL         *+XAR4[AR0], ACC
003f2b0d   d032       MOVB         XAR0, #0x32
003f2b0e   a094       MOVL         *+XAR4[AR0], XAR5
003f2b0f   d034       MOVB         XAR0, #0x34
003f2b10   1e94       MOVL         *+XAR4[AR0], ACC
003f2b11   d036       MOVB         XAR0, #0x36
003f2b12   ff2f       MOV          ACC, #0x1400 << 15
003f2b13   1400
003f2b14   1e94       MOVL         *+XAR4[AR0], ACC
003f2b15   d038       MOVB         XAR0, #0x38
003f2b16   0200       MOVB         ACC, #0
003f2b17   1e94       MOVL         *+XAR4[AR0], ACC
003f2b18   d03a       MOVB         XAR0, #0x3a
003f2b19   9a00       MOVB         AL, #0x0
003f2b1a   9b80       MOVB         AH, #0x80
003f2b1b   1e94       MOVL         *+XAR4[AR0], ACC
003f2b1c   d03c       MOVB         XAR0, #0x3c
003f2b1d   0200       MOVB         ACC, #0
003f2b1e   a094       MOVL         *+XAR4[AR0], XAR5
003f2b1f   83a4       MOVL         XAR5, XAR4
003f2b20   d03e       MOVB         XAR0, #0x3e
003f2b21   1e94       MOVL         *+XAR4[AR0], ACC
003f2b22   d040       MOVB         XAR0, #0x40
003f2b23   dd68       ADDB         XAR5, #104
003f2b24   1e94       MOVL         *+XAR4[AR0], ACC
003f2b25   d042       MOVB         XAR0, #0x42
003f2b26   9a00       MOVB         AL, #0x0
003f2b27   9b00       MOVB         AH, #0x0
003f2b28   1e94       MOVL         *+XAR4[AR0], ACC
003f2b29   d044       MOVB         XAR0, #0x44
003f2b2a   1e94       MOVL         *+XAR4[AR0], ACC
003f2b2b   d046       MOVB         XAR0, #0x46
003f2b2c   1e94       MOVL         *+XAR4[AR0], ACC
003f2b2d   d048       MOVB         XAR0, #0x48
003f2b2e   1e94       MOVL         *+XAR4[AR0], ACC
003f2b2f   d04a       MOVB         XAR0, #0x4a
003f2b30   1e94       MOVL         *+XAR4[AR0], ACC
003f2b31   d04c       MOVB         XAR0, #0x4c
003f2b32   1e94       MOVL         *+XAR4[AR0], ACC
003f2b33   d04e       MOVB         XAR0, #0x4e
003f2b34   1e94       MOVL         *+XAR4[AR0], ACC
003f2b35   d050       MOVB         XAR0, #0x50
003f2b36   0200       MOVB         ACC, #0
003f2b37   1e94       MOVL         *+XAR4[AR0], ACC
003f2b38   d052       MOVB         XAR0, #0x52
003f2b39   1e94       MOVL         *+XAR4[AR0], ACC
003f2b3a   d054       MOVB         XAR0, #0x54
003f2b3b   1e94       MOVL         *+XAR4[AR0], ACC
003f2b3c   d056       MOVB         XAR0, #0x56
003f2b3d   1e94       MOVL         *+XAR4[AR0], ACC
003f2b3e   d058       MOVB         XAR0, #0x58
003f2b3f   1e94       MOVL         *+XAR4[AR0], ACC
003f2b40   d05a       MOVB         XAR0, #0x5a
003f2b41   1e94       MOVL         *+XAR4[AR0], ACC
003f2b42   d05c       MOVB         XAR0, #0x5c
003f2b43   1e94       MOVL         *+XAR4[AR0], ACC
003f2b44   d05e       MOVB         XAR0, #0x5e
003f2b45   28a9       MOV          AL, #0x6666
003f2b46   6666
003f2b47   9b66       MOVB         AH, #0x66
003f2b48   1e94       MOVL         *+XAR4[AR0], ACC
003f2b49   d060       MOVB         XAR0, #0x60
003f2b4a   0200       MOVB         ACC, #0
003f2b4b   1e94       MOVL         *+XAR4[AR0], ACC
003f2b4c   d062       MOVB         XAR0, #0x62
003f2b4d   1e94       MOVL         *+XAR4[AR0], ACC
003f2b4e   d064       MOVB         XAR0, #0x64
003f2b4f   1e94       MOVL         *+XAR4[AR0], ACC
003f2b50   d066       MOVB         XAR0, #0x66
003f2b51   1e94       MOVL         *+XAR4[AR0], ACC
003f2b52   1ec5       MOVL         *+XAR5[0], ACC
003f2b53   1ed5       MOVL         *+XAR5[2], ACC
003f2b54   1ee5       MOVL         *+XAR5[4], ACC
003f2b55   83a4       MOVL         XAR5, XAR4
003f2b56   d074       MOVB         XAR0, #0x74
003f2b57   dd6e       ADDB         XAR5, #110
003f2b58   1ec5       MOVL         *+XAR5[0], ACC
003f2b59   1ed5       MOVL         *+XAR5[2], ACC
003f2b5a   1ee5       MOVL         *+XAR5[4], ACC
003f2b5b   1e94       MOVL         *+XAR4[AR0], ACC
003f2b5c   d076       MOVB         XAR0, #0x76
003f2b5d   1e94       MOVL         *+XAR4[AR0], ACC
003f2b5e   d078       MOVB         XAR0, #0x78
003f2b5f   1e94       MOVL         *+XAR4[AR0], ACC
003f2b60   d07a       MOVB         XAR0, #0x7a
003f2b61   1e94       MOVL         *+XAR4[AR0], ACC
003f2b62   d07c       MOVB         XAR0, #0x7c
003f2b63   1e94       MOVL         *+XAR4[AR0], ACC
003f2b64   d07e       MOVB         XAR0, #0x7e
003f2b65   1e94       MOVL         *+XAR4[AR0], ACC
003f2b66   d080       MOVB         XAR0, #0x80
003f2b67   1e94       MOVL         *+XAR4[AR0], ACC
003f2b68   d082       MOVB         XAR0, #0x82
003f2b69   1e94       MOVL         *+XAR4[AR0], ACC
003f2b6a   0006       LRETR        
3f2b6b:              _PROCTRL_CheckMotorError:
003f2b6b   d027       MOVB         XAR0, #0x27
003f2b6c   9294       MOV          AL, *+XAR4[AR0]
003f2b6d   ec03       SBF          3, EQ
003f2b6e   d018       MOVB         XAR0, #0x18
003f2b6f   2b94       MOV          *+XAR4[AR0], #0
3f2b70:              $C$L78:
003f2b70   0006       LRETR        
3f2b71:              _CTRL_updateState:
003f2b71   b2bd       MOVL         *SP++, XAR1
003f2b72   aabd       MOVL         *SP++, XAR2
003f2b73   a2bd       MOVL         *SP++, XAR3
003f2b74   fe04       ADDB         SP, #4
003f2b75   86a4       MOVL         XAR2, XAR4
003f2b76   d0f0       MOVB         XAR0, #0xf0
003f2b77   d100       MOVB         XAR1, #0x0
003f2b78   92e2       MOV          AL, *+XAR2[4]
003f2b79   9641       MOV          *-SP[1], AL
003f2b7a   9292       MOV          AL, *+XAR2[AR0]
003f2b7b   ed22       SBF          34, NEQ
003f2b7c   9241       MOV          AL, *-SP[1]
003f2b7d   d018       MOVB         XAR0, #0x18
003f2b7e   96ea       MOV          *+XAR2[5], AL
003f2b7f   56bf       MOVB         *+XAR2[4], #0x01, UNC
003f2b80   01e2
003f2b81   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2b82   767f       LCR          0x3fcd64
003f2b83   cd64
003f2b84   5200       CMPB         AL, #0x0
003f2b85   56c0       BF           148, NEQ
003f2b86   0094
003f2b87   d018       MOVB         XAR0, #0x18
003f2b88   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2b89   767f       LCR          0x3fc05e
003f2b8a   c05e
003f2b8b   5200       CMPB         AL, #0x0
003f2b8c   ed0c       SBF          12, NEQ
003f2b8d   d018       MOVB         XAR0, #0x18
003f2b8e   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2b8f   767f       LCR          0x3fc54c
003f2b90   c54c
003f2b91   d018       MOVB         XAR0, #0x18
003f2b92   0200       MOVB         ACC, #0
003f2b93   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2b94   767f       LCR          0x3fc3fd
003f2b95   c3fd
003f2b96   ffef       B            131, UNC
003f2b97   0083
3f2b98:              $C$L1:
003f2b98   d018       MOVB         XAR0, #0x18
003f2b99   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2b9a   767f       LCR          0x3fc55f
003f2b9b   c55f
003f2b9c   6f7d       SB           125, UNC
3f2b9d:              $C$L2:
003f2b9d   9241       MOV          AL, *-SP[1]
003f2b9e   3b01       SETC         SXM
003f2b9f   d092       MOVB         XAR0, #0x92
003f2ba0   5603       MOV          ACC, AL << 1
003f2ba1   01a9
003f2ba2   5601       ADDL         XAR4, ACC
003f2ba3   00a4
003f2ba4   0694       MOVL         ACC, *+XAR4[AR0]
003f2ba5   d09a       MOVB         XAR0, #0x9a
003f2ba6   1e44       MOVL         *-SP[4], ACC
003f2ba7   8292       MOVL         XAR3, *+XAR2[AR0]
003f2ba8   d018       MOVB         XAR0, #0x18
003f2ba9   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2baa   767f       LCR          0x3fcd72
003f2bab   cd72
003f2bac   5200       CMPB         AL, #0x0
003f2bad   ec06       SBF          6, EQ
003f2bae   92e2       MOV          AL, *+XAR2[4]
003f2baf   96ea       MOV          *+XAR2[5], AL
003f2bb0   2be2       MOV          *+XAR2[4], #0
003f2bb1   56bf       MOVB         *+XAR2[6], #0x02, UNC
003f2bb2   02f2
3f2bb3:              $C$L3:
003f2bb3   0644       MOVL         ACC, *-SP[4]
003f2bb4   0fa3       CMPL         ACC, XAR3
003f2bb5   6664       SB           100, HI
003f2bb6   d09a       MOVB         XAR0, #0x9a
003f2bb7   0200       MOVB         ACC, #0
003f2bb8   1e92       MOVL         *+XAR2[AR0], ACC
003f2bb9   9241       MOV          AL, *-SP[1]
003f2bba   5203       CMPB         AL, #0x3
003f2bbb   ec2e       SBF          46, EQ
003f2bbc   5202       CMPB         AL, #0x2
003f2bbd   ec27       SBF          39, EQ
003f2bbe   5201       CMPB         AL, #0x1
003f2bbf   ed5a       SBF          90, NEQ
003f2bc0   d0f5       MOVB         XAR0, #0xf5
003f2bc1   9292       MOV          AL, *+XAR2[AR0]
003f2bc2   ec04       SBF          4, EQ
003f2bc3   8aa2       MOVL         XAR4, XAR2
003f2bc4   767f       LCR          0x3f0525
003f2bc5   0525
3f2bc6:              $C$L4:
003f2bc6   d018       MOVB         XAR0, #0x18
003f2bc7   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2bc8   767f       LCR          0x3fcd6b
003f2bc9   cd6b
003f2bca   5200       CMPB         AL, #0x0
003f2bcb   ed08       SBF          8, NEQ
003f2bcc   d018       MOVB         XAR0, #0x18
003f2bcd   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2bce   767f       LCR          0x3fcd64
003f2bcf   cd64
003f2bd0   5200       CMPB         AL, #0x0
003f2bd1   ed13       SBF          19, NEQ
003f2bd2   6f47       SB           71, UNC
3f2bd3:              $C$L5:
003f2bd3   8aa2       MOVL         XAR4, XAR2
003f2bd4   767f       LCR          0x3f019f
003f2bd5   019f
003f2bd6   d018       MOVB         XAR0, #0x18
003f2bd7   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2bd8   767f       LCR          0x3fc05e
003f2bd9   c05e
003f2bda   5200       CMPB         AL, #0x0
003f2bdb   ec04       SBF          4, EQ
003f2bdc   d0f3       MOVB         XAR0, #0xf3
003f2bdd   9292       MOV          AL, *+XAR2[AR0]
003f2bde   ec06       SBF          6, EQ
3f2bdf:              $C$L6:
003f2bdf   92e2       MOV          AL, *+XAR2[4]
003f2be0   96ea       MOV          *+XAR2[5], AL
003f2be1   56bf       MOVB         *+XAR2[4], #0x02, UNC
003f2be2   02e2
003f2be3   6f36       SB           54, UNC
3f2be4:              $C$L7:
003f2be4   92e2       MOV          AL, *+XAR2[4]
003f2be5   96ea       MOV          *+XAR2[5], AL
003f2be6   56bf       MOVB         *+XAR2[4], #0x03, UNC
003f2be7   03e2
003f2be8   6f31       SB           49, UNC
3f2be9:              $C$L8:
003f2be9   d018       MOVB         XAR0, #0x18
003f2bea   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2beb   d060       MOVB         XAR0, #0x60
003f2bec   8392       MOVL         XAR5, *+XAR2[AR0]
003f2bed   06c5       MOVL         ACC, *+XAR5[0]
003f2bee   767f       LCR          0x3fc0f8
003f2bef   c0f8
003f2bf0   5200       CMPB         AL, #0x0
003f2bf1   ec07       SBF          7, EQ
003f2bf2   8aa2       MOVL         XAR4, XAR2
003f2bf3   767f       LCR          0x3f033d
003f2bf4   033d
003f2bf5   8aa2       MOVL         XAR4, XAR2
003f2bf6   767f       LCR          0x3f0000
003f2bf7   0000
3f2bf8:              $C$L9:
003f2bf8   d018       MOVB         XAR0, #0x18
003f2bf9   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2bfa   767f       LCR          0x3fcd5d
003f2bfb   cd5d
003f2bfc   5200       CMPB         AL, #0x0
003f2bfd   ec04       SBF          4, EQ
003f2bfe   8aa2       MOVL         XAR4, XAR2
003f2bff   767f       LCR          0x3f0164
003f2c00   0164
3f2c01:              $C$L10:
003f2c01   d018       MOVB         XAR0, #0x18
003f2c02   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2c03   767f       LCR          0x3fcd64
003f2c04   cd64
003f2c05   5200       CMPB         AL, #0x0
003f2c06   ed0d       SBF          13, NEQ
003f2c07   d018       MOVB         XAR0, #0x18
003f2c08   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2c09   767f       LCR          0x3fcd6b
003f2c0a   cd6b
003f2c0b   5200       CMPB         AL, #0x0
003f2c0c   ec0d       SBF          13, EQ
003f2c0d   d018       MOVB         XAR0, #0x18
003f2c0e   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2c0f   767f       LCR          0x3fc05e
003f2c10   c05e
003f2c11   5200       CMPB         AL, #0x0
003f2c12   ec07       SBF          7, EQ
3f2c13:              $C$L11:
003f2c13   d0f0       MOVB         XAR0, #0xf0
003f2c14   2b92       MOV          *+XAR2[AR0], #0
003f2c15   92e2       MOV          AL, *+XAR2[4]
003f2c16   96ea       MOV          *+XAR2[5], AL
003f2c17   56bf       MOVB         *+XAR2[4], #0x01, UNC
003f2c18   01e2
3f2c19:              $C$L12:
003f2c19   9241       MOV          AL, *-SP[1]
003f2c1a   54e2       CMP          AL, *+XAR2[4]
003f2c1b   56b0       MOVB         AR1, #0x01, NEQ
003f2c1c   01a1
003f2c1d   fe84       SUBB         SP, #4
003f2c1e   92a1       MOV          AL, AR1
003f2c1f   82be       MOVL         XAR3, *--SP
003f2c20   86be       MOVL         XAR2, *--SP
003f2c21   8bbe       MOVL         XAR1, *--SP
003f2c22   0006       LRETR        
3f2c23:              _CTRL_setup_user:
003f2c23   b2bd       MOVL         *SP++, XAR1
003f2c24   aabd       MOVL         *SP++, XAR2
003f2c25   a2bd       MOVL         *SP++, XAR3
003f2c26   fe0a       ADDB         SP, #10
003f2c27   82a9       MOVL         XAR3, ACC
003f2c28   925c       MOV          AL, *-SP[28]
003f2c29   d0ef       MOVB         XAR0, #0xef
003f2c2a   8ba4       MOVL         XAR1, XAR4
003f2c2b   a046       MOVL         *-SP[6], XAR5
003f2c2c   9641       MOV          *-SP[1], AL
003f2c2d   8654       MOVL         XAR2, *-SP[20]
003f2c2e   925b       MOV          AL, *-SP[27]
003f2c2f   9642       MOV          *-SP[2], AL
003f2c30   065a       MOVL         ACC, *-SP[26]
003f2c31   1e44       MOVL         *-SP[4], ACC
003f2c32   0658       MOVL         ACC, *-SP[24]
003f2c33   1e48       MOVL         *-SP[8], ACC
003f2c34   0656       MOVL         ACC, *-SP[22]
003f2c35   1e4a       MOVL         *-SP[10], ACC
003f2c36   029a       MOVB         ACC, #154
003f2c37   07a1       ADDL         ACC, XAR1
003f2c38   2791       MOV          PL, *+XAR1[AR0]
003f2c39   88e1       MOVZ         AR6, *+XAR1[4]
003f2c3a   8aa9       MOVL         XAR4, ACC
003f2c3b   d09f       MOVB         XAR0, #0x9f
003f2c3c   0201       MOVB         ACC, #1
003f2c3d   8091       MOVZ         AR7, *+XAR1[AR0]
003f2c3e   5601       ADDL         *+XAR4[0], ACC
003f2c3f   00c4
003f2c40   02ef       MOVB         ACC, #239
003f2c41   07a1       ADDL         ACC, XAR1
003f2c42   8aa9       MOVL         XAR4, ACC
003f2c43   92a6       MOV          AL, AR6
003f2c44   0ac4       INC          *+XAR4[0]
003f2c45   5203       CMPB         AL, #0x3
003f2c46   ed09       SBF          9, NEQ
003f2c47   02ec       MOVB         ACC, #236
003f2c48   07a1       ADDL         ACC, XAR1
003f2c49   8aa9       MOVL         XAR4, ACC
003f2c4a   0ac4       INC          *+XAR4[0]
003f2c4b   02ee       MOVB         ACC, #238
003f2c4c   07a1       ADDL         ACC, XAR1
003f2c4d   8aa9       MOVL         XAR4, ACC
003f2c4e   0ac4       INC          *+XAR4[0]
3f2c4f:              $C$L13:
003f2c4f   92a7       MOV          AL, AR7
003f2c50   54ab       CMP          AL, PL
003f2c51   6606       SB           6, HI
003f2c52   d0ef       MOVB         XAR0, #0xef
003f2c53   8aa1       MOVL         XAR4, XAR1
003f2c54   2b91       MOV          *+XAR1[AR0], #0
003f2c55   767f       LCR          0x3f0dbe
003f2c56   0dbe
3f2c57:              $C$L14:
003f2c57   d0fe       MOVB         XAR0, #0xfe
003f2c58   a291       MOVL         *+XAR1[AR0], XAR3
003f2c59   8d00       MOVL         XAR0, #0x000100
003f2c5a   0100
003f2c5b   aa91       MOVL         *+XAR1[AR0], XAR2
003f2c5c   8d00       MOVL         XAR0, #0x000102
003f2c5d   0102
003f2c5e   064a       MOVL         ACC, *-SP[10]
003f2c5f   1e91       MOVL         *+XAR1[AR0], ACC
003f2c60   8d00       MOVL         XAR0, #0x000104
003f2c61   0104
003f2c62   0648       MOVL         ACC, *-SP[8]
003f2c63   1e91       MOVL         *+XAR1[AR0], ACC
003f2c64   8a46       MOVL         XAR4, *-SP[6]
003f2c65   02f6       MOVB         ACC, #246
003f2c66   07a1       ADDL         ACC, XAR1
003f2c67   83a9       MOVL         XAR5, ACC
003f2c68   06c4       MOVL         ACC, *+XAR4[0]
003f2c69   1ec5       MOVL         *+XAR5[0], ACC
003f2c6a   06d4       MOVL         ACC, *+XAR4[2]
003f2c6b   1ed5       MOVL         *+XAR5[2], ACC
003f2c6c   02fa       MOVB         ACC, #250
003f2c6d   8a44       MOVL         XAR4, *-SP[4]
003f2c6e   07a1       ADDL         ACC, XAR1
003f2c6f   d0f4       MOVB         XAR0, #0xf4
003f2c70   83a9       MOVL         XAR5, ACC
003f2c71   06c4       MOVL         ACC, *+XAR4[0]
003f2c72   1ec5       MOVL         *+XAR5[0], ACC
003f2c73   06d4       MOVL         ACC, *+XAR4[2]
003f2c74   1ed5       MOVL         *+XAR5[2], ACC
003f2c75   9242       MOV          AL, *-SP[2]
003f2c76   9691       MOV          *+XAR1[AR0], AL
003f2c77   9241       MOV          AL, *-SP[1]
003f2c78   8d00       MOVL         XAR0, #0x000106
003f2c79   0106
003f2c7a   9691       MOV          *+XAR1[AR0], AL
003f2c7b   fe8a       SUBB         SP, #10
003f2c7c   82be       MOVL         XAR3, *--SP
003f2c7d   86be       MOVL         XAR2, *--SP
003f2c7e   8bbe       MOVL         XAR1, *--SP
003f2c7f   0006       LRETR        
3f2c80:              _CTRL_setupClarke_V:
003f2c80   5203       CMPB         AL, #0x3
003f2c81   ec04       SBF          4, EQ
003f2c82   be00       MOVB         XAR6, #0x00
003f2c83   3100       MPYB         P, T, #0
003f2c84   6f0a       SB           10, UNC
3f2c85:              $C$L15:
003f2c85   28ab       MOV          PL, #0x5555
003f2c86   5555
003f2c87   28aa       MOV          PH, #0x0055
003f2c88   0055
003f2c89   a9a6       MOVL         XAR6, P
003f2c8a   28ab       MOV          PL, #0xcd3a
003f2c8b   cd3a
003f2c8c   28aa       MOV          PH, #0x0093
003f2c8d   0093
3f2c8e:              $C$L16:
003f2c8e   d010       MOVB         XAR0, #0x10
003f2c8f   8394       MOVL         XAR5, *+XAR4[AR0]
003f2c90   d010       MOVB         XAR0, #0x10
003f2c91   c2c5       MOVL         *+XAR5[0], XAR6
003f2c92   a9d5       MOVL         *+XAR5[2], P
003f2c93   8a94       MOVL         XAR4, *+XAR4[AR0]
003f2c94   96e4       MOV          *+XAR4[4], AL
003f2c95   0006       LRETR        
3f2c96:              _CTRL_setupClarke_I:
003f2c96   5203       CMPB         AL, #0x3
003f2c97   ec0a       SBF          10, EQ
003f2c98   5202       CMPB         AL, #0x2
003f2c99   ec04       SBF          4, EQ
003f2c9a   be00       MOVB         XAR6, #0x00
003f2c9b   3100       MPYB         P, T, #0
003f2c9c   6f0e       SB           14, UNC
3f2c9d:              $C$L17:
003f2c9d   2bab       MOV          PL, #0
003f2c9e   28aa       MOV          PH, #0x0100
003f2c9f   0100
003f2ca0   6f05       SB           5, UNC
3f2ca1:              $C$L18:
003f2ca1   28ab       MOV          PL, #0x5555
003f2ca2   5555
003f2ca3   28aa       MOV          PH, #0x0055
003f2ca4   0055
3f2ca5:              $C$L19:
003f2ca5   a9a6       MOVL         XAR6, P
003f2ca6   28ab       MOV          PL, #0xcd3a
003f2ca7   cd3a
003f2ca8   28aa       MOV          PH, #0x0093
003f2ca9   0093
3f2caa:              $C$L20:
003f2caa   d008       MOVB         XAR0, #0x8
003f2cab   8394       MOVL         XAR5, *+XAR4[AR0]
003f2cac   d008       MOVB         XAR0, #0x8
003f2cad   c2c5       MOVL         *+XAR5[0], XAR6
003f2cae   a9d5       MOVL         *+XAR5[2], P
003f2caf   8a94       MOVL         XAR4, *+XAR4[AR0]
003f2cb0   96e4       MOV          *+XAR4[4], AL
003f2cb1   0006       LRETR        
3f2cb2:              _CTRL_setWaitTimes:
003f2cb2   0292       MOVB         ACC, #146
003f2cb3   be03       MOVB         XAR6, #0x03
003f2cb4   07a4       ADDL         ACC, XAR4
003f2cb5   8aa9       MOVL         XAR4, ACC
3f2cb6:              $C$L22:
003f2cb6   0685       MOVL         ACC, *XAR5++
003f2cb7   1e84       MOVL         *XAR4++, ACC
003f2cb8   000e       BANZ         -2,AR6--
003f2cb9   fffe
003f2cba   0006       LRETR        
3f2cbb:              _CTRL_setSpd_ref_pu:
003f2cbb   d0e8       MOVB         XAR0, #0xe8
003f2cbc   1e94       MOVL         *+XAR4[AR0], ACC
003f2cbd   0006       LRETR        
3f2cbe:              _CTRL_setSpd_ref_krpm:
003f2cbe   b2bd       MOVL         *SP++, XAR1
003f2cbf   d018       MOVB         XAR0, #0x18
003f2cc0   8ba9       MOVL         XAR1, ACC
003f2cc1   aabd       MOVL         *SP++, XAR2
003f2cc2   86a4       MOVL         XAR2, XAR4
003f2cc3   8a92       MOVL         XAR4, *+XAR2[AR0]
003f2cc4   767f       LCR          0x3fce3d
003f2cc5   ce3d
003f2cc6   d0e8       MOVB         XAR0, #0xe8
003f2cc7   b2ac       MOVL         XT, XAR1
003f2cc8   5605       IMPYL        P, XT, ACC
003f2cc9   00a9
003f2cca   5663       QMPYL        ACC, XT, ACC
003f2ccb   00a9
003f2ccc   56a7       LSL64        ACC:P, 8
003f2ccd   1e92       MOVL         *+XAR2[AR0], ACC
003f2cce   86be       MOVL         XAR2, *--SP
003f2ccf   8bbe       MOVL         XAR1, *--SP
003f2cd0   0006       LRETR        
3f2cd1:              _CTRL_setBrake:
003f2cd1   b2bd       MOVL         *SP++, XAR1
003f2cd2   a8a9       MOVL         ACC, XAR4
003f2cd3   8ba4       MOVL         XAR1, XAR4
003f2cd4   8f00       MOVL         XAR4, #0x00010a
003f2cd5   010a
003f2cd6   5601       ADDL         XAR4, ACC
003f2cd7   00a4
003f2cd8   0208       MOVB         ACC, #8
003f2cd9   767f       LCR          0x3f472f
003f2cda   472f
003f2cdb   8d00       MOVL         XAR0, #0x000108
003f2cdc   0108
003f2cdd   a891       MOVL         *+XAR1[AR0], XAR4
003f2cde   8bbe       MOVL         XAR1, *--SP
003f2cdf   0006       LRETR        
3f2ce0:              _CTRL_setGains:
003f2ce0   1ea6       MOVL         XAR6, ACC
003f2ce1   92a5       MOV          AL, AR5
003f2ce2   c546       MOVL         XAR7, *-SP[6]
003f2ce3   a344       MOVL         P, *-SP[4]
003f2ce4   ec09       SBF          9, EQ
003f2ce5   5201       CMPB         AL, #0x1
003f2ce6   ec05       SBF          5, EQ
003f2ce7   5202       CMPB         AL, #0x2
003f2ce8   ed07       SBF          7, NEQ
003f2ce9   d0cc       MOVB         XAR0, #0xcc
003f2cea   6f04       SB           4, UNC
3f2ceb:              $C$L23:
003f2ceb   d0ca       MOVB         XAR0, #0xca
003f2cec   6f02       SB           2, UNC
3f2ced:              $C$L24:
003f2ced   d0ce       MOVB         XAR0, #0xce
3f2cee:              $C$L25:
003f2cee   c294       MOVL         *+XAR4[AR0], XAR6
3f2cef:              $C$L26:
003f2cef   5200       CMPB         AL, #0x0
003f2cf0   ec09       SBF          9, EQ
003f2cf1   5201       CMPB         AL, #0x1
003f2cf2   ec05       SBF          5, EQ
003f2cf3   5202       CMPB         AL, #0x2
003f2cf4   ed07       SBF          7, NEQ
003f2cf5   d0d2       MOVB         XAR0, #0xd2
003f2cf6   6f04       SB           4, UNC
3f2cf7:              $C$L27:
003f2cf7   d0d0       MOVB         XAR0, #0xd0
003f2cf8   6f02       SB           2, UNC
3f2cf9:              $C$L28:
003f2cf9   d0d4       MOVB         XAR0, #0xd4
3f2cfa:              $C$L29:
003f2cfa   a994       MOVL         *+XAR4[AR0], P
3f2cfb:              $C$L30:
003f2cfb   5200       CMPB         AL, #0x0
003f2cfc   ec09       SBF          9, EQ
003f2cfd   5201       CMPB         AL, #0x1
003f2cfe   ec05       SBF          5, EQ
003f2cff   5202       CMPB         AL, #0x2
003f2d00   ed07       SBF          7, NEQ
003f2d01   d0d8       MOVB         XAR0, #0xd8
003f2d02   6f04       SB           4, UNC
3f2d03:              $C$L31:
003f2d03   d0d6       MOVB         XAR0, #0xd6
003f2d04   6f02       SB           2, UNC
3f2d05:              $C$L32:
003f2d05   d0da       MOVB         XAR0, #0xda
3f2d06:              $C$L33:
003f2d06   c394       MOVL         *+XAR4[AR0], XAR7
3f2d07:              $C$L34:
003f2d07   0006       LRETR        
3f2d08:              _CTRL_setParams:
003f2d08   b2bd       MOVL         *SP++, XAR1
003f2d09   aabd       MOVL         *SP++, XAR2
003f2d0a   a2bd       MOVL         *SP++, XAR3
003f2d0b   fe2a       ADDB         SP, #42
003f2d0c   761f       MOVW         DP, #0xfd8f
003f2d0d   fd8f
003f2d0e   060c       MOVL         ACC, @0xc
003f2d0f   761f       MOVW         DP, #0xfd8f
003f2d10   fd8f
003f2d11   c40e       MOVL         XAR6, @0xe
003f2d12   1e48       MOVL         *-SP[8], ACC
003f2d13   761f       MOVW         DP, #0xfd8f
003f2d14   fd8f
003f2d15   0604       MOVL         ACC, @0x4
003f2d16   c5a5       MOVL         XAR7, XAR5
003f2d17   761f       MOVW         DP, #0xfd8f
003f2d18   fd8f
003f2d19   c246       MOVL         *-SP[6], XAR6
003f2d1a   1e4c       MOVL         *-SP[12], ACC
003f2d1b   c406       MOVL         XAR6, @0x6
003f2d1c   761f       MOVW         DP, #0xfd8f
003f2d1d   fd8f
003f2d1e   0608       MOVL         ACC, @0x8
003f2d1f   761f       MOVW         DP, #0xfd8f
003f2d20   fd8f
003f2d21   c24a       MOVL         *-SP[10], XAR6
003f2d22   1e50       MOVL         *-SP[16], ACC
003f2d23   c40a       MOVL         XAR6, @0xa
003f2d24   761f       MOVW         DP, #0xfd8f
003f2d25   fd8f
003f2d26   0600       MOVL         ACC, @0x0
003f2d27   761f       MOVW         DP, #0xfd8f
003f2d28   fd8f
003f2d29   c24e       MOVL         *-SP[14], XAR6
003f2d2a   1e54       MOVL         *-SP[20], ACC
003f2d2b   c402       MOVL         XAR6, @0x2
003f2d2c   761f       MOVW         DP, #0xfd8e
003f2d2d   fd8e
003f2d2e   0638       MOVL         ACC, @0x38
003f2d2f   761f       MOVW         DP, #0xfd8e
003f2d30   fd8e
003f2d31   c252       MOVL         *-SP[18], XAR6
003f2d32   1e58       MOVL         *-SP[24], ACC
003f2d33   c43a       MOVL         XAR6, @0x3a
003f2d34   761f       MOVW         DP, #0xfd8e
003f2d35   fd8e
003f2d36   063c       MOVL         ACC, @0x3c
003f2d37   761f       MOVW         DP, #0xfd8e
003f2d38   fd8e
003f2d39   c256       MOVL         *-SP[22], XAR6
003f2d3a   1e5c       MOVL         *-SP[28], ACC
003f2d3b   c43e       MOVL         XAR6, @0x3e
003f2d3c   d035       MOVB         XAR0, #0x35
003f2d3d   a06a       MOVL         *-SP[42], XAR5
003f2d3e   df34       ADDB         XAR7, #52
003f2d3f   c25a       MOVL         *-SP[26], XAR6
003f2d40   9395       MOV          AH, *+XAR5[AR0]
003f2d41   92c7       MOV          AL, *+XAR7[0]
003f2d42   d036       MOVB         XAR0, #0x36
003f2d43   c5a5       MOVL         XAR7, XAR5
003f2d44   8ba4       MOVL         XAR1, XAR4
003f2d45   8695       MOVL         XAR2, *+XAR5[AR0]
003f2d46   d03c       MOVB         XAR0, #0x3c
003f2d47   df09       ADDB         XAR7, #9
003f2d48   8795       MOVL         XT, *+XAR5[AR0]
003f2d49   d03e       MOVB         XAR0, #0x3e
003f2d4a   8a95       MOVL         XAR4, *+XAR5[AR0]
003f2d4b   d038       MOVB         XAR0, #0x38
003f2d4c   a395       MOVL         P, *+XAR5[AR0]
003f2d4d   d03a       MOVB         XAR0, #0x3a
003f2d4e   c495       MOVL         XAR6, *+XAR5[AR0]
003f2d4f   d084       MOVB         XAR0, #0x84
003f2d50   9691       MOV          *+XAR1[AR0], AL
003f2d51   d085       MOVB         XAR0, #0x85
003f2d52   9791       MOV          *+XAR1[AR0], AH
003f2d53   d090       MOVB         XAR0, #0x90
003f2d54   aa91       MOVL         *+XAR1[AR0], XAR2
003f2d55   d088       MOVB         XAR0, #0x88
003f2d56   ab91       MOVL         *+XAR1[AR0], XT
003f2d57   d08a       MOVB         XAR0, #0x8a
003f2d58   a891       MOVL         *+XAR1[AR0], XAR4
003f2d59   d08c       MOVB         XAR0, #0x8c
003f2d5a   a991       MOVL         *+XAR1[AR0], P
003f2d5b   d08e       MOVB         XAR0, #0x8e
003f2d5c   c291       MOVL         *+XAR1[AR0], XAR6
003f2d5d   d09c       MOVB         XAR0, #0x9c
003f2d5e   92f5       MOV          AL, *+XAR5[6]
003f2d5f   9691       MOV          *+XAR1[AR0], AL
003f2d60   d09d       MOVB         XAR0, #0x9d
003f2d61   92fd       MOV          AL, *+XAR5[7]
003f2d62   9691       MOV          *+XAR1[AR0], AL
003f2d63   92c7       MOV          AL, *+XAR7[0]
003f2d64   c5a5       MOVL         XAR7, XAR5
003f2d65   d09e       MOVB         XAR0, #0x9e
003f2d66   86a5       MOVL         XAR2, XAR5
003f2d67   df0a       ADDB         XAR7, #10
003f2d68   9691       MOV          *+XAR1[AR0], AL
003f2d69   d09f       MOVB         XAR0, #0x9f
003f2d6a   92c7       MOV          AL, *+XAR7[0]
003f2d6b   9691       MOV          *+XAR1[AR0], AL
003f2d6c   d09e       MOVB         XAR0, #0x9e
003f2d6d   0692       MOVL         ACC, *+XAR2[AR0]
003f2d6e   d0a0       MOVB         XAR0, #0xa0
003f2d6f   1e91       MOVL         *+XAR1[AR0], ACC
003f2d70   d0a4       MOVB         XAR0, #0xa4
003f2d71   0692       MOVL         ACC, *+XAR2[AR0]
003f2d72   d0a2       MOVB         XAR0, #0xa2
003f2d73   1e91       MOVL         *+XAR1[AR0], ACC
003f2d74   d0a4       MOVB         XAR0, #0xa4
003f2d75   0692       MOVL         ACC, *+XAR2[AR0]
003f2d76   767f       LCR          0x3ff8aa
003f2d77   f8aa
003f2d78   1e42       MOVL         *-SP[2], ACC
003f2d79   ff2f       MOV          ACC, #0x7f00 << 15
003f2d7a   7f00
003f2d7b   767f       LCR          0x3fdce1
003f2d7c   dce1
003f2d7d   88ad       MOVZ         AR6, SP
003f2d7e   dea4       SUBB         XAR6, #36
003f2d7f   767f       LCR          0x3fdfb7
003f2d80   dfb7
003f2d81   5cad       MOVZ         AR4, SP
003f2d82   88ad       MOVZ         AR6, SP
003f2d83   8f7f       MOVL         XAR5, #0x3f63d0
003f2d84   63d0
003f2d85   dca4       SUBB         XAR4, #36
003f2d86   dea0       SUBB         XAR6, #32
003f2d87   767f       LCR          0x3fdc5e
003f2d88   dc5e
003f2d89   5cad       MOVZ         AR4, SP
003f2d8a   dca0       SUBB         XAR4, #32
003f2d8b   767f       LCR          0x3fdf7b
003f2d8c   df7b
003f2d8d   d0a4       MOVB         XAR0, #0xa4
003f2d8e   88ad       MOVZ         AR6, SP
003f2d8f   1e91       MOVL         *+XAR1[AR0], ACC
003f2d90   dea4       SUBB         XAR6, #36
003f2d91   d0a6       MOVB         XAR0, #0xa6
003f2d92   0692       MOVL         ACC, *+XAR2[AR0]
003f2d93   d0a6       MOVB         XAR0, #0xa6
003f2d94   1e91       MOVL         *+XAR1[AR0], ACC
003f2d95   d030       MOVB         XAR0, #0x30
003f2d96   0692       MOVL         ACC, *+XAR2[AR0]
003f2d97   767f       LCR          0x3fdfb7
003f2d98   dfb7
003f2d99   5cad       MOVZ         AR4, SP
003f2d9a   88ad       MOVZ         AR6, SP
003f2d9b   8f7f       MOVL         XAR5, #0x3f63d0
003f2d9c   63d0
003f2d9d   dca4       SUBB         XAR4, #36
003f2d9e   dea0       SUBB         XAR6, #32
003f2d9f   767f       LCR          0x3fdc5e
003f2da0   dc5e
003f2da1   5cad       MOVZ         AR4, SP
003f2da2   dca0       SUBB         XAR4, #32
003f2da3   767f       LCR          0x3fdf7b
003f2da4   df7b
003f2da5   d0a8       MOVB         XAR0, #0xa8
003f2da6   1e91       MOVL         *+XAR1[AR0], ACC
003f2da7   02aa       MOVB         ACC, #170
003f2da8   07a1       ADDL         ACC, XAR1
003f2da9   8aa9       MOVL         XAR4, ACC
003f2daa   0648       MOVL         ACC, *-SP[8]
003f2dab   1ec4       MOVL         *+XAR4[0], ACC
003f2dac   0646       MOVL         ACC, *-SP[6]
003f2dad   1ed4       MOVL         *+XAR4[2], ACC
003f2dae   02b2       MOVB         ACC, #178
003f2daf   07a1       ADDL         ACC, XAR1
003f2db0   8aa9       MOVL         XAR4, ACC
003f2db1   064c       MOVL         ACC, *-SP[12]
003f2db2   1ec4       MOVL         *+XAR4[0], ACC
003f2db3   064a       MOVL         ACC, *-SP[10]
003f2db4   1ed4       MOVL         *+XAR4[2], ACC
003f2db5   02e2       MOVB         ACC, #226
003f2db6   07a1       ADDL         ACC, XAR1
003f2db7   8aa9       MOVL         XAR4, ACC
003f2db8   0650       MOVL         ACC, *-SP[16]
003f2db9   1ec4       MOVL         *+XAR4[0], ACC
003f2dba   064e       MOVL         ACC, *-SP[14]
003f2dbb   1ed4       MOVL         *+XAR4[2], ACC
003f2dbc   8aa1       MOVL         XAR4, XAR1
003f2dbd   767f       LCR          0x3f2cd1
003f2dbe   2cd1
003f2dbf   8d00       MOVL         XAR0, #0x000108
003f2dc0   0108
003f2dc1   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2dc2   0200       MOVB         ACC, #0
003f2dc3   1ed4       MOVL         *+XAR4[2], ACC
003f2dc4   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2dc5   9a00       MOVB         AL, #0x0
003f2dc6   9b40       MOVB         AH, #0x40
003f2dc7   1ee4       MOVL         *+XAR4[4], ACC
003f2dc8   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2dc9   d04a       MOVB         XAR0, #0x4a
003f2dca   2bf4       MOV          *+XAR4[6], #0
003f2dcb   06c2       MOVL         ACC, *+XAR2[0]
003f2dcc   1e42       MOVL         *-SP[2], ACC
003f2dcd   0692       MOVL         ACC, *+XAR2[AR0]
003f2dce   767f       LCR          0x3fdce1
003f2dcf   dce1
003f2dd0   88ad       MOVZ         AR6, SP
003f2dd1   dea4       SUBB         XAR6, #36
003f2dd2   767f       LCR          0x3fdfb7
003f2dd3   dfb7
003f2dd4   5cad       MOVZ         AR4, SP
003f2dd5   88ad       MOVZ         AR6, SP
003f2dd6   8f7f       MOVL         XAR5, #0x3f63d0
003f2dd7   63d0
003f2dd8   dca4       SUBB         XAR4, #36
003f2dd9   dea0       SUBB         XAR6, #32
003f2dda   767f       LCR          0x3fdc5e
003f2ddb   dc5e
003f2ddc   5cad       MOVZ         AR4, SP
003f2ddd   dca0       SUBB         XAR4, #32
003f2dde   767f       LCR          0x3fdf7b
003f2ddf   df7b
003f2de0   d0e6       MOVB         XAR0, #0xe6
003f2de1   1e91       MOVL         *+XAR1[AR0], ACC
003f2de2   02b6       MOVB         ACC, #182
003f2de3   07a1       ADDL         ACC, XAR1
003f2de4   8aa9       MOVL         XAR4, ACC
003f2de5   d0ba       MOVB         XAR0, #0xba
003f2de6   0654       MOVL         ACC, *-SP[20]
003f2de7   1ec4       MOVL         *+XAR4[0], ACC
003f2de8   0652       MOVL         ACC, *-SP[18]
003f2de9   1ed4       MOVL         *+XAR4[2], ACC
003f2dea   02bc       MOVB         ACC, #188
003f2deb   07a1       ADDL         ACC, XAR1
003f2dec   8aa9       MOVL         XAR4, ACC
003f2ded   0658       MOVL         ACC, *-SP[24]
003f2dee   1ec4       MOVL         *+XAR4[0], ACC
003f2def   0656       MOVL         ACC, *-SP[22]
003f2df0   1ed4       MOVL         *+XAR4[2], ACC
003f2df1   02c0       MOVB         ACC, #192
003f2df2   07a1       ADDL         ACC, XAR1
003f2df3   8aa9       MOVL         XAR4, ACC
003f2df4   065c       MOVL         ACC, *-SP[28]
003f2df5   1ec4       MOVL         *+XAR4[0], ACC
003f2df6   065a       MOVL         ACC, *-SP[26]
003f2df7   1ed4       MOVL         *+XAR4[2], ACC
003f2df8   0200       MOVB         ACC, #0
003f2df9   1e91       MOVL         *+XAR1[AR0], ACC
003f2dfa   d0c4       MOVB         XAR0, #0xc4
003f2dfb   9a00       MOVB         AL, #0x0
003f2dfc   9b00       MOVB         AH, #0x0
003f2dfd   1e91       MOVL         *+XAR1[AR0], ACC
003f2dfe   d0c6       MOVB         XAR0, #0xc6
003f2dff   1e91       MOVL         *+XAR1[AR0], ACC
003f2e00   d0c8       MOVB         XAR0, #0xc8
003f2e01   1e91       MOVL         *+XAR1[AR0], ACC
003f2e02   d0ec       MOVB         XAR0, #0xec
003f2e03   0200       MOVB         ACC, #0
003f2e04   2b91       MOV          *+XAR1[AR0], #0
003f2e05   d0ed       MOVB         XAR0, #0xed
003f2e06   56bf       MOVB         *+XAR1[AR0], #0x01, UNC
003f2e07   0191
003f2e08   d0ee       MOVB         XAR0, #0xee
003f2e09   2b91       MOV          *+XAR1[AR0], #0
003f2e0a   d09a       MOVB         XAR0, #0x9a
003f2e0b   1e91       MOVL         *+XAR1[AR0], ACC
003f2e0c   d0ef       MOVB         XAR0, #0xef
003f2e0d   2b91       MOV          *+XAR1[AR0], #0
003f2e0e   866a       MOVL         XAR2, *-SP[42]
003f2e0f   83a2       MOVL         XAR5, XAR2
003f2e10   8aa1       MOVL         XAR4, XAR1
003f2e11   dd54       ADDB         XAR5, #84
003f2e12   767f       LCR          0x3f2cb2
003f2e13   2cb2
003f2e14   d0f2       MOVB         XAR0, #0xf2
003f2e15   2b91       MOV          *+XAR1[AR0], #0
003f2e16   d0f0       MOVB         XAR0, #0xf0
003f2e17   2b91       MOV          *+XAR1[AR0], #0
003f2e18   d0f3       MOVB         XAR0, #0xf3
003f2e19   8aa1       MOVL         XAR4, XAR1
003f2e1a   56bf       MOVB         *+XAR1[AR0], #0x01, UNC
003f2e1b   0191
003f2e1c   d0f4       MOVB         XAR0, #0xf4
003f2e1d   56bf       MOVB         *+XAR1[AR0], #0x01, UNC
003f2e1e   0191
003f2e1f   d0f5       MOVB         XAR0, #0xf5
003f2e20   2b91       MOV          *+XAR1[AR0], #0
003f2e21   d0f1       MOVB         XAR0, #0xf1
003f2e22   56bf       MOVB         *+XAR1[AR0], #0x01, UNC
003f2e23   0191
003f2e24   8d00       MOVL         XAR0, #0x000106
003f2e25   0106
003f2e26   56bf       MOVB         *+XAR1[AR0], #0x01, UNC
003f2e27   0191
003f2e28   d00b       MOVB         XAR0, #0xb
003f2e29   2bf1       MOV          *+XAR1[6], #0
003f2e2a   92e1       MOV          AL, *+XAR1[4]
003f2e2b   96e9       MOV          *+XAR1[5], AL
003f2e2c   56bf       MOVB         *+XAR1[4], #0x01, UNC
003f2e2d   01e1
003f2e2e   9292       MOV          AL, *+XAR2[AR0]
003f2e2f   767f       LCR          0x3f2c96
003f2e30   2c96
003f2e31   d00c       MOVB         XAR0, #0xc
003f2e32   8aa1       MOVL         XAR4, XAR1
003f2e33   9292       MOV          AL, *+XAR2[AR0]
003f2e34   767f       LCR          0x3f2c80
003f2e35   2c80
003f2e36   28a8       MOV          AH, #0x3b83
003f2e37   3b83
003f2e38   d0a6       MOVB         XAR0, #0xa6
003f2e39   28a9       MOV          AL, #0x126f
003f2e3a   126f
003f2e3b   1e42       MOVL         *-SP[2], ACC
003f2e3c   0692       MOVL         ACC, *+XAR2[AR0]
003f2e3d   767f       LCR          0x3fdce1
003f2e3e   dce1
003f2e3f   88ad       MOVZ         AR6, SP
003f2e40   dea4       SUBB         XAR6, #36
003f2e41   767f       LCR          0x3fdfb7
003f2e42   dfb7
003f2e43   5cad       MOVZ         AR4, SP
003f2e44   88ad       MOVZ         AR6, SP
003f2e45   8f7f       MOVL         XAR5, #0x3f63d0
003f2e46   63d0
003f2e47   dca4       SUBB         XAR4, #36
003f2e48   dea0       SUBB         XAR6, #32
003f2e49   767f       LCR          0x3fdc5e
003f2e4a   dc5e
003f2e4b   5cad       MOVZ         AR4, SP
003f2e4c   dca0       SUBB         XAR4, #32
003f2e4d   767f       LCR          0x3fdf7b
003f2e4e   df7b
003f2e4f   d020       MOVB         XAR0, #0x20
003f2e50   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2e51   8f59       MOVL         XAR5, #0x199999
003f2e52   9999
003f2e53   1ea7       MOVL         XAR7, ACC
003f2e54   d020       MOVB         XAR0, #0x20
003f2e55   a0c4       MOVL         *+XAR4[0], XAR5
003f2e56   1ed4       MOVL         *+XAR4[2], ACC
003f2e57   0200       MOVB         ACC, #0
003f2e58   1ee4       MOVL         *+XAR4[4], ACC
003f2e59   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2e5a   d020       MOVB         XAR0, #0x20
003f2e5b   1ef4       MOVL         *+XAR4[6], ACC
003f2e5c   28a9       MOV          AL, #0xcccd
003f2e5d   cccd
003f2e5e   28a8       MOV          AH, #0xff0c
003f2e5f   ff0c
003f2e60   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2e61   7699       MOVL         XAR6, #0x199999
003f2e62   9999
003f2e63   d501       MOVB         XAR5, #0x1
003f2e64   d00c       MOVB         XAR0, #0xc
003f2e65   1e94       MOVL         *+XAR4[AR0], ACC
003f2e66   d00e       MOVB         XAR0, #0xe
003f2e67   28a9       MOV          AL, #0x3333
003f2e68   3333
003f2e69   9bf3       MOVB         AH, #0xf3
003f2e6a   1e94       MOVL         *+XAR4[AR0], ACC
003f2e6b   0200       MOVB         ACC, #0
003f2e6c   8aa1       MOVL         XAR4, XAR1
003f2e6d   c342       MOVL         *-SP[2], XAR7
003f2e6e   1e44       MOVL         *-SP[4], ACC
003f2e6f   06a6       MOVL         ACC, XAR6
003f2e70   767f       LCR          0x3f2ce0
003f2e71   2ce0
003f2e72   28a9       MOV          AL, #0x126f
003f2e73   126f
003f2e74   d0a6       MOVB         XAR0, #0xa6
003f2e75   28a8       MOV          AH, #0x3b83
003f2e76   3b83
003f2e77   1e42       MOVL         *-SP[2], ACC
003f2e78   0692       MOVL         ACC, *+XAR2[AR0]
003f2e79   767f       LCR          0x3fdce1
003f2e7a   dce1
003f2e7b   88ad       MOVZ         AR6, SP
003f2e7c   dea4       SUBB         XAR6, #36
003f2e7d   767f       LCR          0x3fdfb7
003f2e7e   dfb7
003f2e7f   5cad       MOVZ         AR4, SP
003f2e80   88ad       MOVZ         AR6, SP
003f2e81   8f7f       MOVL         XAR5, #0x3f63d0
003f2e82   63d0
003f2e83   dca4       SUBB         XAR4, #36
003f2e84   dea0       SUBB         XAR6, #32
003f2e85   767f       LCR          0x3fdc5e
003f2e86   dc5e
003f2e87   5cad       MOVZ         AR4, SP
003f2e88   dca0       SUBB         XAR4, #32
003f2e89   767f       LCR          0x3fdf7b
003f2e8a   df7b
003f2e8b   d032       MOVB         XAR0, #0x32
003f2e8c   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2e8d   8f59       MOVL         XAR5, #0x199999
003f2e8e   9999
003f2e8f   1ea7       MOVL         XAR7, ACC
003f2e90   d032       MOVB         XAR0, #0x32
003f2e91   a0c4       MOVL         *+XAR4[0], XAR5
003f2e92   1ed4       MOVL         *+XAR4[2], ACC
003f2e93   0200       MOVB         ACC, #0
003f2e94   1ee4       MOVL         *+XAR4[4], ACC
003f2e95   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2e96   d032       MOVB         XAR0, #0x32
003f2e97   1ef4       MOVL         *+XAR4[6], ACC
003f2e98   28a9       MOV          AL, #0xcccd
003f2e99   cccd
003f2e9a   28a8       MOV          AH, #0xff0c
003f2e9b   ff0c
003f2e9c   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2e9d   7699       MOVL         XAR6, #0x199999
003f2e9e   9999
003f2e9f   d502       MOVB         XAR5, #0x2
003f2ea0   d00c       MOVB         XAR0, #0xc
003f2ea1   1e94       MOVL         *+XAR4[AR0], ACC
003f2ea2   d00e       MOVB         XAR0, #0xe
003f2ea3   28a9       MOV          AL, #0x3333
003f2ea4   3333
003f2ea5   9bf3       MOVB         AH, #0xf3
003f2ea6   1e94       MOVL         *+XAR4[AR0], ACC
003f2ea7   0200       MOVB         ACC, #0
003f2ea8   8aa1       MOVL         XAR4, XAR1
003f2ea9   c342       MOVL         *-SP[2], XAR7
003f2eaa   1e44       MOVL         *-SP[4], ACC
003f2eab   06a6       MOVL         ACC, XAR6
003f2eac   767f       LCR          0x3f2ce0
003f2ead   2ce0
003f2eae   8a6a       MOVL         XAR4, *-SP[42]
003f2eaf   d040       MOVB         XAR0, #0x40
003f2eb0   06c4       MOVL         ACC, *+XAR4[0]
003f2eb1   1e66       MOVL         *-SP[38], ACC
003f2eb2   28a9       MOV          AL, #0xd70a
003f2eb3   d70a
003f2eb4   8294       MOVL         XAR3, *+XAR4[AR0]
003f2eb5   28a8       MOV          AH, #0x3ca3
003f2eb6   3ca3
003f2eb7   86e4       MOVL         XAR2, *+XAR4[4]
003f2eb8   1e42       MOVL         *-SP[2], ACC
003f2eb9   a2a9       MOVL         ACC, XAR3
003f2eba   767f       LCR          0x3fdde7
003f2ebb   dde7
003f2ebc   aa42       MOVL         *-SP[2], XAR2
003f2ebd   767f       LCR          0x3fdde7
003f2ebe   dde7
003f2ebf   c466       MOVL         XAR6, *-SP[38]
003f2ec0   c242       MOVL         *-SP[2], XAR6
003f2ec1   767f       LCR          0x3fdce1
003f2ec2   dce1
003f2ec3   88ad       MOVZ         AR6, SP
003f2ec4   dea4       SUBB         XAR6, #36
003f2ec5   767f       LCR          0x3fdfb7
003f2ec6   dfb7
003f2ec7   5cad       MOVZ         AR4, SP
003f2ec8   88ad       MOVZ         AR6, SP
003f2ec9   8f7f       MOVL         XAR5, #0x3f63d0
003f2eca   63d0
003f2ecb   dca4       SUBB         XAR4, #36
003f2ecc   dea0       SUBB         XAR6, #32
003f2ecd   767f       LCR          0x3fdc5e
003f2ece   dc5e
003f2ecf   5cad       MOVZ         AR4, SP
003f2ed0   dca0       SUBB         XAR4, #32
003f2ed1   767f       LCR          0x3fdf7b
003f2ed2   df7b
003f2ed3   1e68       MOVL         *-SP[40], ACC
003f2ed4   a242       MOVL         *-SP[2], XAR3
003f2ed5   a2a9       MOVL         ACC, XAR3
003f2ed6   767f       LCR          0x3fdeb8
003f2ed7   deb8
003f2ed8   aa42       MOVL         *-SP[2], XAR2
003f2ed9   767f       LCR          0x3fdde7
003f2eda   dde7
003f2edb   866a       MOVL         XAR2, *-SP[42]
003f2edc   d0a6       MOVB         XAR0, #0xa6
003f2edd   c492       MOVL         XAR6, *+XAR2[AR0]
003f2ede   c242       MOVL         *-SP[2], XAR6
003f2edf   767f       LCR          0x3fdde7
003f2ee0   dde7
003f2ee1   c466       MOVL         XAR6, *-SP[38]
003f2ee2   c242       MOVL         *-SP[2], XAR6
003f2ee3   767f       LCR          0x3fdce1
003f2ee4   dce1
003f2ee5   88ad       MOVZ         AR6, SP
003f2ee6   dea4       SUBB         XAR6, #36
003f2ee7   767f       LCR          0x3fdfb7
003f2ee8   dfb7
003f2ee9   5cad       MOVZ         AR4, SP
003f2eea   88ad       MOVZ         AR6, SP
003f2eeb   8f7f       MOVL         XAR5, #0x3f63d0
003f2eec   63d0
003f2eed   dca4       SUBB         XAR4, #36
003f2eee   dea0       SUBB         XAR6, #32
003f2eef   767f       LCR          0x3fdc5e
003f2ef0   dc5e
003f2ef1   5cad       MOVZ         AR4, SP
003f2ef2   dca0       SUBB         XAR4, #32
003f2ef3   767f       LCR          0x3fdf7b
003f2ef4   df7b
003f2ef5   d044       MOVB         XAR0, #0x44
003f2ef6   c468       MOVL         XAR6, *-SP[40]
003f2ef7   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2ef8   1ea7       MOVL         XAR7, ACC
003f2ef9   d044       MOVB         XAR0, #0x44
003f2efa   c2c4       MOVL         *+XAR4[0], XAR6
003f2efb   1ed4       MOVL         *+XAR4[2], ACC
003f2efc   0200       MOVB         ACC, #0
003f2efd   1ee4       MOVL         *+XAR4[4], ACC
003f2efe   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2eff   3b01       SETC         SXM
003f2f00   d044       MOVB         XAR0, #0x44
003f2f01   1ef4       MOVL         *+XAR4[6], ACC
003f2f02   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2f03   ff2f       MOV          ACC, #0xfe00 << 15
003f2f04   fe00
003f2f05   d500       MOVB         XAR5, #0x0
003f2f06   d00c       MOVB         XAR0, #0xc
003f2f07   1e94       MOVL         *+XAR4[AR0], ACC
003f2f08   d00e       MOVB         XAR0, #0xe
003f2f09   ff2f       MOV          ACC, #0x200 << 15
003f2f0a   0200
003f2f0b   1e94       MOVL         *+XAR4[AR0], ACC
003f2f0c   0200       MOVB         ACC, #0
003f2f0d   8aa1       MOVL         XAR4, XAR1
003f2f0e   c342       MOVL         *-SP[2], XAR7
003f2f0f   1e44       MOVL         *-SP[4], ACC
003f2f10   06a6       MOVL         ACC, XAR6
003f2f11   767f       LCR          0x3f2ce0
003f2f12   2ce0
003f2f13   0200       MOVB         ACC, #0
003f2f14   767f       LCR          0x3f2cbb
003f2f15   2cbb
003f2f16   d060       MOVB         XAR0, #0x60
003f2f17   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2f18   d060       MOVB         XAR0, #0x60
003f2f19   1ed4       MOVL         *+XAR4[2], ACC
003f2f1a   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2f1b   d060       MOVB         XAR0, #0x60
003f2f1c   1ec4       MOVL         *+XAR4[0], ACC
003f2f1d   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2f1e   d060       MOVB         XAR0, #0x60
003f2f1f   1ee4       MOVL         *+XAR4[4], ACC
003f2f20   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2f21   d060       MOVB         XAR0, #0x60
003f2f22   1ef4       MOVL         *+XAR4[6], ACC
003f2f23   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2f24   d008       MOVB         XAR0, #0x8
003f2f25   1e94       MOVL         *+XAR4[AR0], ACC
003f2f26   d06c       MOVB         XAR0, #0x6c
003f2f27   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2f28   d06c       MOVB         XAR0, #0x6c
003f2f29   1ed4       MOVL         *+XAR4[2], ACC
003f2f2a   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2f2b   d06c       MOVB         XAR0, #0x6c
003f2f2c   1ec4       MOVL         *+XAR4[0], ACC
003f2f2d   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2f2e   d06c       MOVB         XAR0, #0x6c
003f2f2f   1ee4       MOVL         *+XAR4[4], ACC
003f2f30   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2f31   d06c       MOVB         XAR0, #0x6c
003f2f32   1ef4       MOVL         *+XAR4[6], ACC
003f2f33   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2f34   d008       MOVB         XAR0, #0x8
003f2f35   1e94       MOVL         *+XAR4[AR0], ACC
003f2f36   d078       MOVB         XAR0, #0x78
003f2f37   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2f38   d078       MOVB         XAR0, #0x78
003f2f39   1ed4       MOVL         *+XAR4[2], ACC
003f2f3a   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2f3b   d078       MOVB         XAR0, #0x78
003f2f3c   1ec4       MOVL         *+XAR4[0], ACC
003f2f3d   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2f3e   d078       MOVB         XAR0, #0x78
003f2f3f   1ee4       MOVL         *+XAR4[4], ACC
003f2f40   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2f41   d078       MOVB         XAR0, #0x78
003f2f42   1ef4       MOVL         *+XAR4[6], ACC
003f2f43   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2f44   83a2       MOVL         XAR5, XAR2
003f2f45   d008       MOVB         XAR0, #0x8
003f2f46   1e94       MOVL         *+XAR4[AR0], ACC
003f2f47   d018       MOVB         XAR0, #0x18
003f2f48   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2f49   767f       LCR          0x3f0658
003f2f4a   0658
003f2f4b   d05c       MOVB         XAR0, #0x5c
003f2f4c   8a91       MOVL         XAR4, *+XAR1[AR0]
003f2f4d   28a9       MOV          AL, #0xaaab
003f2f4e   aaab
003f2f4f   9baa       MOVB         AH, #0xaa
003f2f50   1ec4       MOVL         *+XAR4[0], ACC
003f2f51   feaa       SUBB         SP, #42
003f2f52   82be       MOVL         XAR3, *--SP
003f2f53   86be       MOVL         XAR2, *--SP
003f2f54   8bbe       MOVL         XAR1, *--SP
003f2f55   0006       LRETR        
3f2f56:              _CTRL_getWaitTimes:
003f2f56   0292       MOVB         ACC, #146
003f2f57   be03       MOVB         XAR6, #0x03
003f2f58   07a4       ADDL         ACC, XAR4
003f2f59   8aa9       MOVL         XAR4, ACC
3f2f5a:              $C$L85:
003f2f5a   0684       MOVL         ACC, *XAR4++
003f2f5b   1e85       MOVL         *XAR5++, ACC
003f2f5c   000e       BANZ         -2,AR6--
003f2f5d   fffe
003f2f5e   0006       LRETR        
3f2f5f:              _CTRL_getVdq_out_pu:
003f2f5f   02c0       MOVB         ACC, #192
003f2f60   07a4       ADDL         ACC, XAR4
003f2f61   8aa9       MOVL         XAR4, ACC
003f2f62   06c4       MOVL         ACC, *+XAR4[0]
003f2f63   1ec5       MOVL         *+XAR5[0], ACC
003f2f64   06d4       MOVL         ACC, *+XAR4[2]
003f2f65   1ed5       MOVL         *+XAR5[2], ACC
003f2f66   0006       LRETR        
3f2f67:              _CTRL_getVab_out_pu:
003f2f67   02bc       MOVB         ACC, #188
003f2f68   07a4       ADDL         ACC, XAR4
003f2f69   8aa9       MOVL         XAR4, ACC
003f2f6a   06c4       MOVL         ACC, *+XAR4[0]
003f2f6b   1ec5       MOVL         *+XAR5[0], ACC
003f2f6c   06d4       MOVL         ACC, *+XAR4[2]
003f2f6d   1ed5       MOVL         *+XAR5[2], ACC
003f2f6e   0006       LRETR        
3f2f6f:              _CTRL_getVab_in_pu:
003f2f6f   02b6       MOVB         ACC, #182
003f2f70   07a4       ADDL         ACC, XAR4
003f2f71   8aa9       MOVL         XAR4, ACC
003f2f72   06c4       MOVL         ACC, *+XAR4[0]
003f2f73   1ec5       MOVL         *+XAR5[0], ACC
003f2f74   06d4       MOVL         ACC, *+XAR4[2]
003f2f75   1ed5       MOVL         *+XAR5[2], ACC
003f2f76   0006       LRETR        
3f2f77:              _CTRL_getIdq_ref_pu:
003f2f77   02e2       MOVB         ACC, #226
003f2f78   07a4       ADDL         ACC, XAR4
003f2f79   8aa9       MOVL         XAR4, ACC
003f2f7a   06c4       MOVL         ACC, *+XAR4[0]
003f2f7b   1ec5       MOVL         *+XAR5[0], ACC
003f2f7c   06d4       MOVL         ACC, *+XAR4[2]
003f2f7d   1ed5       MOVL         *+XAR5[2], ACC
003f2f7e   0006       LRETR        
3f2f7f:              _CTRL_getIdq_in_pu:
003f2f7f   02b2       MOVB         ACC, #178
003f2f80   07a4       ADDL         ACC, XAR4
003f2f81   8aa9       MOVL         XAR4, ACC
003f2f82   06c4       MOVL         ACC, *+XAR4[0]
003f2f83   1ec5       MOVL         *+XAR5[0], ACC
003f2f84   06d4       MOVL         ACC, *+XAR4[2]
003f2f85   1ed5       MOVL         *+XAR5[2], ACC
003f2f86   0006       LRETR        
3f2f87:              _CTRL_getIab_in_pu:
003f2f87   02aa       MOVB         ACC, #170
003f2f88   07a4       ADDL         ACC, XAR4
003f2f89   8aa9       MOVL         XAR4, ACC
003f2f8a   06c4       MOVL         ACC, *+XAR4[0]
003f2f8b   1ec5       MOVL         *+XAR5[0], ACC
003f2f8c   06d4       MOVL         ACC, *+XAR4[2]
003f2f8d   1ed5       MOVL         *+XAR5[2], ACC
003f2f8e   0006       LRETR        
3f2f8f:              _CTRL_getIab_filt_pu:
003f2f8f   02ae       MOVB         ACC, #174
003f2f90   07a4       ADDL         ACC, XAR4
003f2f91   8aa9       MOVL         XAR4, ACC
003f2f92   06c4       MOVL         ACC, *+XAR4[0]
003f2f93   1ec5       MOVL         *+XAR5[0], ACC
003f2f94   06d4       MOVL         ACC, *+XAR4[2]
003f2f95   1ed5       MOVL         *+XAR5[2], ACC
003f2f96   0006       LRETR        
3f2f97:              _CTRL_getGains:
003f2f97   5200       CMPB         AL, #0x0
003f2f98   c446       MOVL         XAR6, *-SP[6]
003f2f99   c544       MOVL         XAR7, *-SP[4]
003f2f9a   ec0b       SBF          11, EQ
003f2f9b   5201       CMPB         AL, #0x1
003f2f9c   ed03       SBF          3, NEQ
003f2f9d   d0ca       MOVB         XAR0, #0xca
003f2f9e   6f08       SB           8, UNC
3f2f9f:              $C$L86:
003f2f9f   5202       CMPB         AL, #0x2
003f2fa0   ed03       SBF          3, NEQ
003f2fa1   d0cc       MOVB         XAR0, #0xcc
003f2fa2   6f04       SB           4, UNC
3f2fa3:              $C$L87:
003f2fa3   3100       MPYB         P, T, #0
003f2fa4   6f03       SB           3, UNC
3f2fa5:              $C$L88:
003f2fa5   d0ce       MOVB         XAR0, #0xce
3f2fa6:              $C$L89:
003f2fa6   a394       MOVL         P, *+XAR4[AR0]
3f2fa7:              $C$L90:
003f2fa7   5200       CMPB         AL, #0x0
003f2fa8   a9c5       MOVL         *+XAR5[0], P
003f2fa9   ec0b       SBF          11, EQ
003f2faa   5201       CMPB         AL, #0x1
003f2fab   ed03       SBF          3, NEQ
003f2fac   d0d0       MOVB         XAR0, #0xd0
003f2fad   6f08       SB           8, UNC
3f2fae:              $C$L91:
003f2fae   5202       CMPB         AL, #0x2
003f2faf   ed03       SBF          3, NEQ
003f2fb0   d0d2       MOVB         XAR0, #0xd2
003f2fb1   6f04       SB           4, UNC
3f2fb2:              $C$L92:
003f2fb2   3100       MPYB         P, T, #0
003f2fb3   6f03       SB           3, UNC
3f2fb4:              $C$L93:
003f2fb4   d0d4       MOVB         XAR0, #0xd4
3f2fb5:              $C$L94:
003f2fb5   a394       MOVL         P, *+XAR4[AR0]
3f2fb6:              $C$L95:
003f2fb6   5200       CMPB         AL, #0x0
003f2fb7   a9c7       MOVL         *+XAR7[0], P
003f2fb8   ec0b       SBF          11, EQ
003f2fb9   5201       CMPB         AL, #0x1
003f2fba   ed03       SBF          3, NEQ
003f2fbb   d0d6       MOVB         XAR0, #0xd6
003f2fbc   6f08       SB           8, UNC
3f2fbd:              $C$L96:
003f2fbd   5202       CMPB         AL, #0x2
003f2fbe   ed03       SBF          3, NEQ
003f2fbf   d0d8       MOVB         XAR0, #0xd8
003f2fc0   6f04       SB           4, UNC
3f2fc1:              $C$L97:
003f2fc1   0200       MOVB         ACC, #0
003f2fc2   6f03       SB           3, UNC
3f2fc3:              $C$L98:
003f2fc3   d0da       MOVB         XAR0, #0xda
3f2fc4:              $C$L99:
003f2fc4   0694       MOVL         ACC, *+XAR4[AR0]
3f2fc5:              $C$L100:
003f2fc5   1ec6       MOVL         *+XAR6[0], ACC
003f2fc6   0006       LRETR        
3f2fc7:              _CTRL_setMagCurrent_pu:
3f2fc7:              _CTRL_setIdRated_pu:
003f2fc7   d0e6       MOVB         XAR0, #0xe6
003f2fc8   1e94       MOVL         *+XAR4[AR0], ACC
003f2fc9   0006       LRETR        
3f2fca:              _CTRL_setMaximumSpeed_pu:
3f2fca:              _CTRL_setSpd_max_pu:
003f2fca   d0ea       MOVB         XAR0, #0xea
003f2fcb   1e94       MOVL         *+XAR4[AR0], ACC
003f2fcc   0006       LRETR        
3f2fcd:              _CTRL_getMaximumSpeed_pu:
3f2fcd:              _CTRL_getSpd_max_pu:
003f2fcd   d0ea       MOVB         XAR0, #0xea
003f2fce   0694       MOVL         ACC, *+XAR4[AR0]
003f2fcf   0006       LRETR        
3f2fd0:              _CTRL_getMagCurrent_pu:
3f2fd0:              _CTRL_getIdRated_pu:
003f2fd0   d0e6       MOVB         XAR0, #0xe6
003f2fd1   0694       MOVL         ACC, *+XAR4[AR0]
003f2fd2   0006       LRETR        
3f2fd3:              _FSM_setMotorHandle:
003f2fd3   a0c4       MOVL         *+XAR4[0], XAR5
003f2fd4   0006       LRETR        
3f2fd5:              _FSM_init:
003f2fd5   1ea6       MOVL         XAR6, ACC
003f2fd6   021e       MOVB         ACC, #30
003f2fd7   0fa6       CMPL         ACC, XAR6
003f2fd8   6902       SB           2, LOS
003f2fd9   d400       MOVB         XAR4, #0x0
3f2fda:              $C$L1:
003f2fda   0006       LRETR        
3f2fdb:              _FSM_Check485Cmd:
003f2fdb   d018       MOVB         XAR0, #0x18
003f2fdc   9294       MOV          AL, *+XAR4[AR0]
003f2fdd   ec03       SBF          3, EQ
003f2fde   9a11       MOVB         AL, #0x11
003f2fdf   6f02       SB           2, UNC
3f2fe0:              $C$L2:
003f2fe0   9a12       MOVB         AL, #0x12
3f2fe1:              $C$L3:
003f2fe1   d00c       MOVB         XAR0, #0xc
003f2fe2   9694       MOV          *+XAR4[AR0], AL
003f2fe3   0006       LRETR        
3f2fe4:              _FSM_CheckTimes:
003f2fe4   d014       MOVB         XAR0, #0x14
003f2fe5   9294       MOV          AL, *+XAR4[AR0]
003f2fe6   1ba9       CMP          AL, #1500
003f2fe7   05dc
003f2fe8   670c       SB           12, HIS
003f2fe9   d00e       MOVB         XAR0, #0xe
003f2fea   5494       CMP          AL, *+XAR4[AR0]
003f2feb   56b8       MOVB         AR0, #0x0c, LO
003f2fec   0ca0
003f2fed   56b8       MOVB         *+XAR4[AR0], #0x10, LO
003f2fee   1094
003f2fef   680a       SB           10, LO
003f2ff0   d00c       MOVB         XAR0, #0xc
003f2ff1   56bf       MOVB         *+XAR4[AR0], #0x0f, UNC
003f2ff2   0f94
003f2ff3   6f04       SB           4, UNC
3f2ff4:              $C$L4:
003f2ff4   d00c       MOVB         XAR0, #0xc
003f2ff5   56bf       MOVB         *+XAR4[AR0], #0x0e, UNC
003f2ff6   0e94
3f2ff7:              $C$L5:
003f2ff7   d01a       MOVB         XAR0, #0x1a
003f2ff8   2b94       MOV          *+XAR4[AR0], #0
3f2ff9:              $C$L6:
003f2ff9   0006       LRETR        
3f2ffa:              _FSM_CheckInt:
003f2ffa   b2bd       MOVL         *SP++, XAR1
003f2ffb   d01b       MOVB         XAR0, #0x1b
003f2ffc   8ba4       MOVL         XAR1, XAR4
003f2ffd   9291       MOV          AL, *+XAR1[AR0]
003f2ffe   ec12       SBF          18, EQ
003f2fff   8ad1       MOVL         XAR4, *+XAR1[2]
003f3000   9a01       MOVB         AL, #0x1
003f3001   767f       LCR          0x3f4142
003f3002   4142
003f3003   8ad1       MOVL         XAR4, *+XAR1[2]
003f3004   93d4       MOV          AH, *+XAR4[2]
003f3005   92a8       MOV          AL, @AH
003f3006   ffc5       LSR          AL, 6
003f3007   ff5e       NOT          AL
003f3008   9001       ANDB         AL, #0x1
003f3009   47a8       TBIT         AH, #0x7
003f300a   56bc       MOVB         AL, #0x02, NTC
003f300b   02a9
003f300c   45a8       TBIT         AH, #0x5
003f300d   ef04       SBF          4, NTC
003f300e   9a04       MOVB         AL, #0x4
003f300f   6f02       SB           2, UNC
3f3010:              $C$L7:
003f3010   9a00       MOVB         AL, #0x0
3f3011:              $C$L8:
003f3011   d01b       MOVB         XAR0, #0x1b
003f3012   2b91       MOV          *+XAR1[AR0], #0
003f3013   d00c       MOVB         XAR0, #0xc
003f3014   9691       MOV          *+XAR1[AR0], AL
003f3015   8bbe       MOVL         XAR1, *--SP
003f3016   0006       LRETR        
3f3017:              _FSM_CheckBusVoltage:
003f3017   83c4       MOVL         XAR5, *+XAR4[0]
003f3018   d048       MOVB         XAR0, #0x48
003f3019   761f       MOVW         DP, #0xc
003f301a   000c
003f301b   3b01       SETC         SXM
003f301c   0695       MOVL         ACC, *+XAR5[AR0]
003f301d   0716       ADDL         ACC, @0x16
003f301e   031a       SUBL         ACC, @0x1a
003f301f   1e16       MOVL         @0x16, ACC
003f3020   ff41       SFR          ACC, 2
003f3021   1ea6       MOVL         XAR6, ACC
003f3022   1e1a       MOVL         @0x1a, ACC
003f3023   28a9       MOV          AL, #0x999a
003f3024   999a
003f3025   9b59       MOVB         AH, #0x59
003f3026   0fa6       CMPL         ACC, XAR6
003f3027   6203       SB           3, GT
003f3028   9a14       MOVB         AL, #0x14
003f3029   6f09       SB           9, UNC
3f302a:              $C$L9:
003f302a   8f6e       MOVL         XAR5, #0x2e147b
003f302b   147b
003f302c   a0a9       MOVL         ACC, XAR5
003f302d   0fa6       CMPL         ACC, XAR6
003f302e   6503       SB           3, LEQ
003f302f   9a15       MOVB         AL, #0x15
003f3030   6f02       SB           2, UNC
3f3031:              $C$L10:
003f3031   9a00       MOVB         AL, #0x0
3f3032:              $C$L11:
003f3032   d00c       MOVB         XAR0, #0xc
003f3033   9694       MOV          *+XAR4[AR0], AL
003f3034   0006       LRETR        
3f3035:              _FSM_CheckChipTemperature:
003f3035   83c4       MOVL         XAR5, *+XAR4[0]
003f3036   d06c       MOVB         XAR0, #0x6c
003f3037   761f       MOVW         DP, #0xc
003f3038   000c
003f3039   3b01       SETC         SXM
003f303a   0695       MOVL         ACC, *+XAR5[AR0]
003f303b   0712       ADDL         ACC, @0x12
003f303c   0318       SUBL         ACC, @0x18
003f303d   1e12       MOVL         @0x12, ACC
003f303e   ff41       SFR          ACC, 2
003f303f   1ea6       MOVL         XAR6, ACC
003f3040   1e18       MOVL         @0x18, ACC
003f3041   ff20       MOV          ACC, #1820
003f3042   071c
003f3043   0fa6       CMPL         ACC, XAR6
003f3044   6503       SB           3, LEQ
003f3045   9a16       MOVB         AL, #0x16
003f3046   6f02       SB           2, UNC
3f3047:              $C$L12:
003f3047   9a00       MOVB         AL, #0x0
3f3048:              $C$L13:
003f3048   d00c       MOVB         XAR0, #0xc
003f3049   9694       MOV          *+XAR4[AR0], AL
003f304a   0006       LRETR        
3f304b:              _FSM_CheckOverCurrent:
003f304b   83d4       MOVL         XAR5, *+XAR4[2]
003f304c   d00c       MOVB         XAR0, #0xc
003f304d   92d5       MOV          AL, *+XAR5[2]
003f304e   40a9       TBIT         AL, #0x0
003f304f   ef03       SBF          3, NTC
003f3050   9a17       MOVB         AL, #0x17
003f3051   6f02       SB           2, UNC
3f3052:              $C$L14:
003f3052   9a00       MOVB         AL, #0x0
3f3053:              $C$L15:
003f3053   9694       MOV          *+XAR4[AR0], AL
003f3054   0006       LRETR        
3f3055:              _FSM_CheckErrors:
003f3055   b2bd       MOVL         *SP++, XAR1
003f3056   767f       LCR          0x3f2fdb
003f3057   2fdb
003f3058   8ba4       MOVL         XAR1, XAR4
003f3059   d00c       MOVB         XAR0, #0xc
003f305a   9291       MOV          AL, *+XAR1[AR0]
003f305b   5212       CMPB         AL, #0x12
003f305c   ed06       SBF          6, NEQ
003f305d   dc0f       ADDB         XAR4, #15
003f305e   d00b       MOVB         XAR0, #0xb
003f305f   1ac4       OR           *+XAR4[0], #0x0040
003f3060   0040
003f3061   2b91       MOV          *+XAR1[AR0], #0
3f3062:              $C$L16:
003f3062   8aa1       MOVL         XAR4, XAR1
003f3063   767f       LCR          0x3f2fe4
003f3064   2fe4
003f3065   d00c       MOVB         XAR0, #0xc
003f3066   9291       MOV          AL, *+XAR1[AR0]
003f3067   520e       CMPB         AL, #0xe
003f3068   ed06       SBF          6, NEQ
003f3069   dc0f       ADDB         XAR4, #15
003f306a   d00b       MOVB         XAR0, #0xb
003f306b   1ac4       OR           *+XAR4[0], #0x0001
003f306c   0001
003f306d   2b91       MOV          *+XAR1[AR0], #0
3f306e:              $C$L17:
003f306e   8aa1       MOVL         XAR4, XAR1
003f306f   767f       LCR          0x3f2ffa
003f3070   2ffa
003f3071   d00c       MOVB         XAR0, #0xc
003f3072   9291       MOV          AL, *+XAR1[AR0]
003f3073   5204       CMPB         AL, #0x4
003f3074   ed07       SBF          7, NEQ
003f3075   8aa1       MOVL         XAR4, XAR1
003f3076   d00b       MOVB         XAR0, #0xb
003f3077   dc0f       ADDB         XAR4, #15
003f3078   1ac4       OR           *+XAR4[0], #0x0002
003f3079   0002
003f307a   2b91       MOV          *+XAR1[AR0], #0
3f307b:              $C$L18:
003f307b   8aa1       MOVL         XAR4, XAR1
003f307c   767f       LCR          0x3f3017
003f307d   3017
003f307e   d00c       MOVB         XAR0, #0xc
003f307f   9291       MOV          AL, *+XAR1[AR0]
003f3080   5214       CMPB         AL, #0x14
003f3081   ec07       SBF          7, EQ
003f3082   5215       CMPB         AL, #0x15
003f3083   ed0a       SBF          10, NEQ
003f3084   dc0f       ADDB         XAR4, #15
003f3085   1ac4       OR           *+XAR4[0], #0x0008
003f3086   0008
003f3087   6f04       SB           4, UNC
3f3088:              $C$L19:
003f3088   dc0f       ADDB         XAR4, #15
003f3089   1ac4       OR           *+XAR4[0], #0x0004
003f308a   0004
3f308b:              $C$L20:
003f308b   d00b       MOVB         XAR0, #0xb
003f308c   2b91       MOV          *+XAR1[AR0], #0
3f308d:              $C$L21:
003f308d   8aa1       MOVL         XAR4, XAR1
003f308e   767f       LCR          0x3f3035
003f308f   3035
003f3090   d00c       MOVB         XAR0, #0xc
003f3091   9291       MOV          AL, *+XAR1[AR0]
003f3092   5216       CMPB         AL, #0x16
003f3093   ed06       SBF          6, NEQ
003f3094   dc0f       ADDB         XAR4, #15
003f3095   d00b       MOVB         XAR0, #0xb
003f3096   1ac4       OR           *+XAR4[0], #0x0010
003f3097   0010
003f3098   2b91       MOV          *+XAR1[AR0], #0
3f3099:              $C$L22:
003f3099   8aa1       MOVL         XAR4, XAR1
003f309a   767f       LCR          0x3f304b
003f309b   304b
003f309c   d00c       MOVB         XAR0, #0xc
003f309d   9291       MOV          AL, *+XAR1[AR0]
003f309e   5217       CMPB         AL, #0x17
003f309f   ed06       SBF          6, NEQ
003f30a0   dc0f       ADDB         XAR4, #15
003f30a1   d00b       MOVB         XAR0, #0xb
003f30a2   1ac4       OR           *+XAR4[0], #0x0020
003f30a3   0020
003f30a4   2b91       MOV          *+XAR1[AR0], #0
3f30a5:              $C$L23:
003f30a5   8bbe       MOVL         XAR1, *--SP
003f30a6   0006       LRETR        
3f30a7:              _FSM_RunActions:
003f30a7   b2bd       MOVL         *SP++, XAR1
003f30a8   fe08       ADDB         SP, #8
003f30a9   d019       MOVB         XAR0, #0x19
003f30aa   8ba4       MOVL         XAR1, XAR4
003f30ab   9291       MOV          AL, *+XAR1[AR0]
003f30ac   ec1a       SBF          26, EQ
003f30ad   d00a       MOVB         XAR0, #0xa
003f30ae   2d91       MOV          T, *+XAR1[AR0]
003f30af   88ad       MOVZ         AR6, SP
003f30b0   8f3f       MOVL         XAR4, #0x3f62b0
003f30b1   62b0
003f30b2   3506       MPYB         ACC, T, #6
003f30b3   de88       SUBB         XAR6, #8
003f30b4   5601       ADDL         XAR4, ACC
003f30b5   00a4
003f30b6   06c4       MOVL         ACC, *+XAR4[0]
003f30b7   767f       LCR          0x3fdfb7
003f30b8   dfb7
003f30b9   5cad       MOVZ         AR4, SP
003f30ba   88ad       MOVZ         AR6, SP
003f30bb   8f7f       MOVL         XAR5, #0x3f63e8
003f30bc   63e8
003f30bd   dc88       SUBB         XAR4, #8
003f30be   de84       SUBB         XAR6, #4
003f30bf   767f       LCR          0x3fdc5e
003f30c0   dc5e
003f30c1   5cad       MOVZ         AR4, SP
003f30c2   dc84       SUBB         XAR4, #4
003f30c3   767f       LCR          0x3fdf7b
003f30c4   df7b
003f30c5   6f03       SB           3, UNC
3f30c6:              $C$L24:
003f30c6   d016       MOVB         XAR0, #0x16
003f30c7   0691       MOVL         ACC, *+XAR1[AR0]
3f30c8:              $C$L25:
003f30c8   8ac1       MOVL         XAR4, *+XAR1[0]
003f30c9   d01a       MOVB         XAR0, #0x1a
003f30ca   1e94       MOVL         *+XAR4[AR0], ACC
003f30cb   d014       MOVB         XAR0, #0x14
003f30cc   2b91       MOV          *+XAR1[AR0], #0
003f30cd   d01a       MOVB         XAR0, #0x1a
003f30ce   fe88       SUBB         SP, #8
003f30cf   56bf       MOVB         *+XAR1[AR0], #0x01, UNC
003f30d0   0191
003f30d1   8bbe       MOVL         XAR1, *--SP
003f30d2   0006       LRETR        
3f30d3:              _FSM_State_Backword:
003f30d3   b2bd       MOVL         *SP++, XAR1
003f30d4   8ba4       MOVL         XAR1, XAR4
003f30d5   767f       LCR          0x3f336a
003f30d6   336a
003f30d7   d00b       MOVB         XAR0, #0xb
003f30d8   9291       MOV          AL, *+XAR1[AR0]
003f30d9   ec0d       SBF          13, EQ
003f30da   5202       CMPB         AL, #0x2
003f30db   ec04       SBF          4, EQ
003f30dc   8f3f       MOVL         XAR4, #0x3f30d3
003f30dd   30d3
003f30de   6f0d       SB           13, UNC
3f30df:              $C$L26:
003f30df   d00a       MOVB         XAR0, #0xa
003f30e0   8aa1       MOVL         XAR4, XAR1
003f30e1   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f30e2   1191
003f30e3   767f       LCR          0x3f30a7
003f30e4   30a7
003f30e5   6f04       SB           4, UNC
3f30e6:              $C$L27:
003f30e6   d00a       MOVB         XAR0, #0xa
003f30e7   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f30e8   1191
3f30e9:              $C$L28:
003f30e9   8f3f       MOVL         XAR4, #0x3f31b3
003f30ea   31b3
3f30eb:              $C$L29:
003f30eb   8bbe       MOVL         XAR1, *--SP
003f30ec   0006       LRETR        
3f30ed:              _FSM_State_Forward:
003f30ed   b2bd       MOVL         *SP++, XAR1
003f30ee   8ba4       MOVL         XAR1, XAR4
003f30ef   767f       LCR          0x3f336a
003f30f0   336a
003f30f1   d00b       MOVB         XAR0, #0xb
003f30f2   9291       MOV          AL, *+XAR1[AR0]
003f30f3   ec0d       SBF          13, EQ
003f30f4   5202       CMPB         AL, #0x2
003f30f5   ec04       SBF          4, EQ
003f30f6   8f3f       MOVL         XAR4, #0x3f30ed
003f30f7   30ed
003f30f8   6f0d       SB           13, UNC
3f30f9:              $C$L30:
003f30f9   d00a       MOVB         XAR0, #0xa
003f30fa   8aa1       MOVL         XAR4, XAR1
003f30fb   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f30fc   1191
003f30fd   767f       LCR          0x3f30a7
003f30fe   30a7
003f30ff   6f04       SB           4, UNC
3f3100:              $C$L31:
003f3100   d00a       MOVB         XAR0, #0xa
003f3101   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f3102   1191
3f3103:              $C$L32:
003f3103   8f3f       MOVL         XAR4, #0x3f31b3
003f3104   31b3
3f3105:              $C$L33:
003f3105   8bbe       MOVL         XAR1, *--SP
003f3106   0006       LRETR        
3f3107:              _FSM_State_NormDown:
003f3107   b2bd       MOVL         *SP++, XAR1
003f3108   8ba4       MOVL         XAR1, XAR4
003f3109   767f       LCR          0x3f336a
003f310a   336a
003f310b   d00b       MOVB         XAR0, #0xb
003f310c   9291       MOV          AL, *+XAR1[AR0]
003f310d   ec0d       SBF          13, EQ
003f310e   5202       CMPB         AL, #0x2
003f310f   ec04       SBF          4, EQ
003f3110   8f3f       MOVL         XAR4, #0x3f3107
003f3111   3107
003f3112   6f0d       SB           13, UNC
3f3113:              $C$L34:
003f3113   d00a       MOVB         XAR0, #0xa
003f3114   8aa1       MOVL         XAR4, XAR1
003f3115   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f3116   1191
003f3117   767f       LCR          0x3f30a7
003f3118   30a7
003f3119   6f04       SB           4, UNC
3f311a:              $C$L35:
003f311a   d00a       MOVB         XAR0, #0xa
003f311b   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f311c   1191
3f311d:              $C$L36:
003f311d   8f3f       MOVL         XAR4, #0x3f31b3
003f311e   31b3
3f311f:              $C$L37:
003f311f   8bbe       MOVL         XAR1, *--SP
003f3120   0006       LRETR        
3f3121:              _FSM_State_NormBrake:
003f3121   b2bd       MOVL         *SP++, XAR1
003f3122   8ba4       MOVL         XAR1, XAR4
003f3123   767f       LCR          0x3f336a
003f3124   336a
003f3125   d00b       MOVB         XAR0, #0xb
003f3126   9291       MOV          AL, *+XAR1[AR0]
003f3127   ec0f       SBF          15, EQ
003f3128   5202       CMPB         AL, #0x2
003f3129   ec04       SBF          4, EQ
003f312a   8f3f       MOVL         XAR4, #0x3f3121
003f312b   3121
003f312c   6f0f       SB           15, UNC
3f312d:              $C$L38:
003f312d   d00a       MOVB         XAR0, #0xa
003f312e   8aa1       MOVL         XAR4, XAR1
003f312f   56bf       MOVB         *+XAR1[AR0], #0x0d, UNC
003f3130   0d91
003f3131   767f       LCR          0x3f30a7
003f3132   30a7
003f3133   8f3f       MOVL         XAR4, #0x3f3159
003f3134   3159
003f3135   6f06       SB           6, UNC
3f3136:              $C$L39:
003f3136   d00a       MOVB         XAR0, #0xa
003f3137   8f3f       MOVL         XAR4, #0x3f31b3
003f3138   31b3
003f3139   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f313a   1191
3f313b:              $C$L40:
003f313b   8bbe       MOVL         XAR1, *--SP
003f313c   0006       LRETR        
3f313d:              _FSM_State_NormBrakeWait:
003f313d   b2bd       MOVL         *SP++, XAR1
003f313e   8ba4       MOVL         XAR1, XAR4
003f313f   767f       LCR          0x3f336a
003f3140   336a
003f3141   d00b       MOVB         XAR0, #0xb
003f3142   9291       MOV          AL, *+XAR1[AR0]
003f3143   ec0f       SBF          15, EQ
003f3144   5202       CMPB         AL, #0x2
003f3145   ec04       SBF          4, EQ
003f3146   8f3f       MOVL         XAR4, #0x3f313d
003f3147   313d
003f3148   6f0f       SB           15, UNC
3f3149:              $C$L41:
003f3149   d00a       MOVB         XAR0, #0xa
003f314a   8aa1       MOVL         XAR4, XAR1
003f314b   56bf       MOVB         *+XAR1[AR0], #0x0c, UNC
003f314c   0c91
003f314d   767f       LCR          0x3f30a7
003f314e   30a7
003f314f   8f3f       MOVL         XAR4, #0x3f3121
003f3150   3121
003f3151   6f06       SB           6, UNC
3f3152:              $C$L42:
003f3152   d00a       MOVB         XAR0, #0xa
003f3153   8f3f       MOVL         XAR4, #0x3f31b3
003f3154   31b3
003f3155   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f3156   1191
3f3157:              $C$L43:
003f3157   8bbe       MOVL         XAR1, *--SP
003f3158   0006       LRETR        
3f3159:              _FSM_State_NormReturn:
003f3159   b2bd       MOVL         *SP++, XAR1
003f315a   8ba4       MOVL         XAR1, XAR4
003f315b   767f       LCR          0x3f336a
003f315c   336a
003f315d   d00b       MOVB         XAR0, #0xb
003f315e   9291       MOV          AL, *+XAR1[AR0]
003f315f   ec0f       SBF          15, EQ
003f3160   5202       CMPB         AL, #0x2
003f3161   ec04       SBF          4, EQ
003f3162   8f3f       MOVL         XAR4, #0x3f3159
003f3163   3159
003f3164   6f0f       SB           15, UNC
3f3165:              $C$L44:
003f3165   d00a       MOVB         XAR0, #0xa
003f3166   8aa1       MOVL         XAR4, XAR1
003f3167   56bf       MOVB         *+XAR1[AR0], #0x0e, UNC
003f3168   0e91
003f3169   767f       LCR          0x3f30a7
003f316a   30a7
003f316b   8f3f       MOVL         XAR4, #0x3f3107
003f316c   3107
003f316d   6f06       SB           6, UNC
3f316e:              $C$L45:
003f316e   d00a       MOVB         XAR0, #0xa
003f316f   8f3f       MOVL         XAR4, #0x3f31b3
003f3170   31b3
003f3171   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f3172   1191
3f3173:              $C$L46:
003f3173   8bbe       MOVL         XAR1, *--SP
003f3174   0006       LRETR        
3f3175:              _FSM_State_NormAccele:
003f3175   b2bd       MOVL         *SP++, XAR1
003f3176   8ba4       MOVL         XAR1, XAR4
003f3177   767f       LCR          0x3f336a
003f3178   336a
003f3179   d00b       MOVB         XAR0, #0xb
003f317a   9291       MOV          AL, *+XAR1[AR0]
003f317b   ec0f       SBF          15, EQ
003f317c   5202       CMPB         AL, #0x2
003f317d   ec04       SBF          4, EQ
003f317e   8f3f       MOVL         XAR4, #0x3f3175
003f317f   3175
003f3180   6f0f       SB           15, UNC
3f3181:              $C$L47:
003f3181   d00a       MOVB         XAR0, #0xa
003f3182   8aa1       MOVL         XAR4, XAR1
003f3183   56bf       MOVB         *+XAR1[AR0], #0x0d, UNC
003f3184   0d91
003f3185   767f       LCR          0x3f30a7
003f3186   30a7
003f3187   8f3f       MOVL         XAR4, #0x3f3159
003f3188   3159
003f3189   6f06       SB           6, UNC
3f318a:              $C$L48:
003f318a   d00a       MOVB         XAR0, #0xa
003f318b   8f3f       MOVL         XAR4, #0x3f31b3
003f318c   31b3
003f318d   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f318e   1191
3f318f:              $C$L49:
003f318f   8bbe       MOVL         XAR1, *--SP
003f3190   0006       LRETR        
3f3191:              _FSM_State_NormDecle:
003f3191   b2bd       MOVL         *SP++, XAR1
003f3192   8ba4       MOVL         XAR1, XAR4
003f3193   767f       LCR          0x3f336a
003f3194   336a
003f3195   d00b       MOVB         XAR0, #0xb
003f3196   9291       MOV          AL, *+XAR1[AR0]
003f3197   ec0f       SBF          15, EQ
003f3198   5202       CMPB         AL, #0x2
003f3199   ec04       SBF          4, EQ
003f319a   8f3f       MOVL         XAR4, #0x3f3191
003f319b   3191
003f319c   6f0f       SB           15, UNC
3f319d:              $C$L50:
003f319d   d00a       MOVB         XAR0, #0xa
003f319e   8aa1       MOVL         XAR4, XAR1
003f319f   56bf       MOVB         *+XAR1[AR0], #0x09, UNC
003f31a0   0991
003f31a1   767f       LCR          0x3f30a7
003f31a2   30a7
003f31a3   8f3f       MOVL         XAR4, #0x3f31cc
003f31a4   31cc
003f31a5   6f06       SB           6, UNC
3f31a6:              $C$L51:
003f31a6   d00a       MOVB         XAR0, #0xa
003f31a7   8f3f       MOVL         XAR4, #0x3f31b3
003f31a8   31b3
003f31a9   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f31aa   1191
3f31ab:              $C$L52:
003f31ab   8bbe       MOVL         XAR1, *--SP
003f31ac   0006       LRETR        
3f31ad:              _FSM_ReportResults:
003f31ad   8ad4       MOVL         XAR4, *+XAR4[2]
003f31ae   9a00       MOVB         AL, #0x0
003f31af   9bac       MOVB         AH, #0xac
003f31b0   767f       LCR          0x3f40a8
003f31b1   40a8
003f31b2   0006       LRETR        
3f31b3:              _FSM_State_NormStop:
003f31b3   b2bd       MOVL         *SP++, XAR1
003f31b4   8ba4       MOVL         XAR1, XAR4
003f31b5   767f       LCR          0x3f336a
003f31b6   336a
003f31b7   8aa1       MOVL         XAR4, XAR1
003f31b8   767f       LCR          0x3f31ad
003f31b9   31ad
003f31ba   d00b       MOVB         XAR0, #0xb
003f31bb   9291       MOV          AL, *+XAR1[AR0]
003f31bc   5202       CMPB         AL, #0x2
003f31bd   6904       SB           4, LOS
003f31be   8f3f       MOVL         XAR4, #0x3f3175
003f31bf   3175
003f31c0   6f0a       SB           10, UNC
3f31c1:              $C$L53:
003f31c1   d00a       MOVB         XAR0, #0xa
003f31c2   8aa1       MOVL         XAR4, XAR1
003f31c3   2b91       MOV          *+XAR1[AR0], #0
003f31c4   767f       LCR          0x3f30a7
003f31c5   30a7
003f31c6   d018       MOVB         XAR0, #0x18
003f31c7   8f3f       MOVL         XAR4, #0x3f32f2
003f31c8   32f2
003f31c9   2b91       MOV          *+XAR1[AR0], #0
3f31ca:              $C$L54:
003f31ca   8bbe       MOVL         XAR1, *--SP
003f31cb   0006       LRETR        
3f31cc:              _FSM_State_NormWait:
003f31cc   b2bd       MOVL         *SP++, XAR1
003f31cd   8ba4       MOVL         XAR1, XAR4
003f31ce   767f       LCR          0x3f336a
003f31cf   336a
003f31d0   d00b       MOVB         XAR0, #0xb
003f31d1   9291       MOV          AL, *+XAR1[AR0]
003f31d2   ec0f       SBF          15, EQ
003f31d3   5202       CMPB         AL, #0x2
003f31d4   ec04       SBF          4, EQ
003f31d5   8f3f       MOVL         XAR4, #0x3f31cc
003f31d6   31cc
003f31d7   6f0f       SB           15, UNC
3f31d8:              $C$L55:
003f31d8   d00a       MOVB         XAR0, #0xa
003f31d9   8aa1       MOVL         XAR4, XAR1
003f31da   56bf       MOVB         *+XAR1[AR0], #0x0a, UNC
003f31db   0a91
003f31dc   767f       LCR          0x3f30a7
003f31dd   30a7
003f31de   8f3f       MOVL         XAR4, #0x3f3175
003f31df   3175
003f31e0   6f06       SB           6, UNC
3f31e1:              $C$L56:
003f31e1   d00a       MOVB         XAR0, #0xa
003f31e2   8f3f       MOVL         XAR4, #0x3f31b3
003f31e3   31b3
003f31e4   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f31e5   1191
3f31e6:              $C$L57:
003f31e6   8bbe       MOVL         XAR1, *--SP
003f31e7   0006       LRETR        
3f31e8:              _FSM_State_ClipFace:
003f31e8   b2bd       MOVL         *SP++, XAR1
003f31e9   8ba4       MOVL         XAR1, XAR4
003f31ea   767f       LCR          0x3f336a
003f31eb   336a
003f31ec   d00b       MOVB         XAR0, #0xb
003f31ed   9291       MOV          AL, *+XAR1[AR0]
003f31ee   ec0f       SBF          15, EQ
003f31ef   5202       CMPB         AL, #0x2
003f31f0   ec04       SBF          4, EQ
003f31f1   8f3f       MOVL         XAR4, #0x3f31e8
003f31f2   31e8
003f31f3   6f0f       SB           15, UNC
3f31f4:              $C$L58:
003f31f4   d00a       MOVB         XAR0, #0xa
003f31f5   8aa1       MOVL         XAR4, XAR1
003f31f6   56bf       MOVB         *+XAR1[AR0], #0x08, UNC
003f31f7   0891
003f31f8   767f       LCR          0x3f30a7
003f31f9   30a7
003f31fa   8f3f       MOVL         XAR4, #0x3f3191
003f31fb   3191
003f31fc   6f06       SB           6, UNC
3f31fd:              $C$L59:
003f31fd   d00a       MOVB         XAR0, #0xa
003f31fe   8f3f       MOVL         XAR4, #0x3f31b3
003f31ff   31b3
003f3200   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f3201   1191
3f3202:              $C$L60:
003f3202   8bbe       MOVL         XAR1, *--SP
003f3203   0006       LRETR        
3f3204:              _FSM_State_MillingCutte:
003f3204   b2bd       MOVL         *SP++, XAR1
003f3205   8ba4       MOVL         XAR1, XAR4
003f3206   767f       LCR          0x3f336a
003f3207   336a
003f3208   d00b       MOVB         XAR0, #0xb
003f3209   9291       MOV          AL, *+XAR1[AR0]
003f320a   ec0d       SBF          13, EQ
003f320b   5202       CMPB         AL, #0x2
003f320c   ec04       SBF          4, EQ
003f320d   8f3f       MOVL         XAR4, #0x3f3204
003f320e   3204
003f320f   6f0d       SB           13, UNC
3f3210:              $C$L61:
003f3210   d00a       MOVB         XAR0, #0xa
003f3211   8aa1       MOVL         XAR4, XAR1
003f3212   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f3213   1191
003f3214   767f       LCR          0x3f30a7
003f3215   30a7
003f3216   6f04       SB           4, UNC
3f3217:              $C$L62:
003f3217   d00a       MOVB         XAR0, #0xa
003f3218   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f3219   1191
3f321a:              $C$L63:
003f321a   8f3f       MOVL         XAR4, #0x3f31b3
003f321b   31b3
3f321c:              $C$L64:
003f321c   8bbe       MOVL         XAR1, *--SP
003f321d   0006       LRETR        
3f321e:              _FSM_State_CarClip:
003f321e   b2bd       MOVL         *SP++, XAR1
003f321f   8ba4       MOVL         XAR1, XAR4
003f3220   767f       LCR          0x3f336a
003f3221   336a
003f3222   d00b       MOVB         XAR0, #0xb
003f3223   9291       MOV          AL, *+XAR1[AR0]
003f3224   ec0d       SBF          13, EQ
003f3225   5202       CMPB         AL, #0x2
003f3226   ec04       SBF          4, EQ
003f3227   8f3f       MOVL         XAR4, #0x3f321e
003f3228   321e
003f3229   6f0d       SB           13, UNC
3f322a:              $C$L65:
003f322a   d00a       MOVB         XAR0, #0xa
003f322b   8aa1       MOVL         XAR4, XAR1
003f322c   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f322d   1191
003f322e   767f       LCR          0x3f30a7
003f322f   30a7
003f3230   6f04       SB           4, UNC
3f3231:              $C$L66:
003f3231   d00a       MOVB         XAR0, #0xa
003f3232   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f3233   1191
3f3234:              $C$L67:
003f3234   8f3f       MOVL         XAR4, #0x3f31b3
003f3235   31b3
3f3236:              $C$L68:
003f3236   8bbe       MOVL         XAR1, *--SP
003f3237   0006       LRETR        
3f3238:              _FSM_State_RubberTyre:
003f3238   b2bd       MOVL         *SP++, XAR1
003f3239   8ba4       MOVL         XAR1, XAR4
003f323a   767f       LCR          0x3f336a
003f323b   336a
003f323c   d00b       MOVB         XAR0, #0xb
003f323d   9291       MOV          AL, *+XAR1[AR0]
003f323e   ec0d       SBF          13, EQ
003f323f   5202       CMPB         AL, #0x2
003f3240   ec04       SBF          4, EQ
003f3241   8f3f       MOVL         XAR4, #0x3f3238
003f3242   3238
003f3243   6f0d       SB           13, UNC
3f3244:              $C$L69:
003f3244   d00a       MOVB         XAR0, #0xa
003f3245   8aa1       MOVL         XAR4, XAR1
003f3246   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f3247   1191
003f3248   767f       LCR          0x3f30a7
003f3249   30a7
003f324a   6f04       SB           4, UNC
3f324b:              $C$L70:
003f324b   d00a       MOVB         XAR0, #0xa
003f324c   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f324d   1191
3f324e:              $C$L71:
003f324e   8f3f       MOVL         XAR4, #0x3f31b3
003f324f   31b3
3f3250:              $C$L72:
003f3250   8bbe       MOVL         XAR1, *--SP
003f3251   0006       LRETR        
3f3252:              _FSM_State_BlowerFan:
003f3252   b2bd       MOVL         *SP++, XAR1
003f3253   8ba4       MOVL         XAR1, XAR4
003f3254   767f       LCR          0x3f336a
003f3255   336a
003f3256   d00b       MOVB         XAR0, #0xb
003f3257   9291       MOV          AL, *+XAR1[AR0]
003f3258   ec0d       SBF          13, EQ
003f3259   5202       CMPB         AL, #0x2
003f325a   ec04       SBF          4, EQ
003f325b   8f3f       MOVL         XAR4, #0x3f3252
003f325c   3252
003f325d   6f0d       SB           13, UNC
3f325e:              $C$L73:
003f325e   d00a       MOVB         XAR0, #0xa
003f325f   8aa1       MOVL         XAR4, XAR1
003f3260   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f3261   1191
003f3262   767f       LCR          0x3f30a7
003f3263   30a7
003f3264   6f04       SB           4, UNC
3f3265:              $C$L74:
003f3265   d00a       MOVB         XAR0, #0xa
003f3266   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f3267   1191
3f3268:              $C$L75:
003f3268   8f3f       MOVL         XAR4, #0x3f31b3
003f3269   31b3
3f326a:              $C$L76:
003f326a   8bbe       MOVL         XAR1, *--SP
003f326b   0006       LRETR        
3f326c:              _FSM_Load485Set_WaitTime:
003f326c   c5a4       MOVL         XAR7, XAR4
003f326d   df15       ADDB         XAR7, #21
003f326e   92c7       MOV          AL, *+XAR7[0]
003f326f   d00e       MOVB         XAR0, #0xe
003f3270   9694       MOV          *+XAR4[AR0], AL
003f3271   0006       LRETR        
3f3272:              _FSM_State_SelectMode:
003f3272   b2bd       MOVL         *SP++, XAR1
003f3273   8ba4       MOVL         XAR1, XAR4
003f3274   767f       LCR          0x3f336a
003f3275   336a
003f3276   d00b       MOVB         XAR0, #0xb
003f3277   8f3f       MOVL         XAR4, #0x3f3272
003f3278   3272
003f3279   9291       MOV          AL, *+XAR1[AR0]
003f327a   ec66       SBF          102, EQ
003f327b   5201       CMPB         AL, #0x1
003f327c   ec69       SBF          105, EQ
003f327d   5202       CMPB         AL, #0x2
003f327e   ed67       SBF          103, NEQ
003f327f   d00d       MOVB         XAR0, #0xd
003f3280   9291       MOV          AL, *+XAR1[AR0]
003f3281   5204       CMPB         AL, #0x4
003f3282   620c       SB           12, GT
003f3283   5204       CMPB         AL, #0x4
003f3284   ec2d       SBF          45, EQ
003f3285   5200       CMPB         AL, #0x0
003f3286   ec55       SBF          85, EQ
003f3287   5201       CMPB         AL, #0x1
003f3288   ec47       SBF          71, EQ
003f3289   5202       CMPB         AL, #0x2
003f328a   ec3c       SBF          60, EQ
003f328b   5203       CMPB         AL, #0x3
003f328c   ec31       SBF          49, EQ
003f328d   6f58       SB           88, UNC
3f328e:              $C$L77:
003f328e   5205       CMPB         AL, #0x5
003f328f   ec17       SBF          23, EQ
003f3290   5206       CMPB         AL, #0x6
003f3291   ec0c       SBF          12, EQ
003f3292   5207       CMPB         AL, #0x7
003f3293   ed52       SBF          82, NEQ
003f3294   d00a       MOVB         XAR0, #0xa
003f3295   8aa1       MOVL         XAR4, XAR1
003f3296   56bf       MOVB         *+XAR1[AR0], #0x07, UNC
003f3297   0791
003f3298   767f       LCR          0x3f30a7
003f3299   30a7
003f329a   8f3f       MOVL         XAR4, #0x3f3252
003f329b   3252
003f329c   6f49       SB           73, UNC
3f329d:              $C$L78:
003f329d   d00a       MOVB         XAR0, #0xa
003f329e   8aa1       MOVL         XAR4, XAR1
003f329f   56bf       MOVB         *+XAR1[AR0], #0x06, UNC
003f32a0   0691
003f32a1   767f       LCR          0x3f30a7
003f32a2   30a7
003f32a3   8f3f       MOVL         XAR4, #0x3f3238
003f32a4   3238
003f32a5   6f40       SB           64, UNC
3f32a6:              $C$L79:
003f32a6   d00a       MOVB         XAR0, #0xa
003f32a7   56bf       MOVB         *+XAR1[AR0], #0x05, UNC
003f32a8   0591
003f32a9   8f3f       MOVL         XAR4, #0x3f321e
003f32aa   321e
003f32ab   d014       MOVB         XAR0, #0x14
003f32ac   2b91       MOV          *+XAR1[AR0], #0
003f32ad   d01a       MOVB         XAR0, #0x1a
003f32ae   56bf       MOVB         *+XAR1[AR0], #0x01, UNC
003f32af   0191
003f32b0   6f35       SB           53, UNC
3f32b1:              $C$L80:
003f32b1   d00a       MOVB         XAR0, #0xa
003f32b2   8aa1       MOVL         XAR4, XAR1
003f32b3   56bf       MOVB         *+XAR1[AR0], #0x04, UNC
003f32b4   0491
003f32b5   767f       LCR          0x3f30a7
003f32b6   30a7
003f32b7   8aa1       MOVL         XAR4, XAR1
003f32b8   767f       LCR          0x3f326c
003f32b9   326c
003f32ba   8f3f       MOVL         XAR4, #0x3f338c
003f32bb   338c
003f32bc   6f29       SB           41, UNC
3f32bd:              $C$L81:
003f32bd   d00a       MOVB         XAR0, #0xa
003f32be   8aa1       MOVL         XAR4, XAR1
003f32bf   56bf       MOVB         *+XAR1[AR0], #0x03, UNC
003f32c0   0391
003f32c1   767f       LCR          0x3f30a7
003f32c2   30a7
003f32c3   8f3f       MOVL         XAR4, #0x3f3204
003f32c4   3204
003f32c5   6f20       SB           32, UNC
3f32c6:              $C$L82:
003f32c6   d00a       MOVB         XAR0, #0xa
003f32c7   8aa1       MOVL         XAR4, XAR1
003f32c8   56bf       MOVB         *+XAR1[AR0], #0x02, UNC
003f32c9   0291
003f32ca   767f       LCR          0x3f30a7
003f32cb   30a7
003f32cc   8f3f       MOVL         XAR4, #0x3f31e8
003f32cd   31e8
003f32ce   6f17       SB           23, UNC
3f32cf:              $C$L83:
003f32cf   d00a       MOVB         XAR0, #0xa
003f32d0   8aa1       MOVL         XAR4, XAR1
003f32d1   56bf       MOVB         *+XAR1[AR0], #0x09, UNC
003f32d2   0991
003f32d3   767f       LCR          0x3f30a7
003f32d4   30a7
003f32d5   d00d       MOVB         XAR0, #0xd
003f32d6   8f3f       MOVL         XAR4, #0x3f31cc
003f32d7   31cc
003f32d8   56bf       MOVB         *+XAR1[AR0], #0x02, UNC
003f32d9   0291
003f32da   6f0b       SB           11, UNC
3f32db:              $C$L84:
003f32db   d014       MOVB         XAR0, #0x14
003f32dc   2b91       MOV          *+XAR1[AR0], #0
003f32dd   d01a       MOVB         XAR0, #0x1a
003f32de   2b91       MOV          *+XAR1[AR0], #0
003f32df   6f06       SB           6, UNC
3f32e0:              $C$L85:
003f32e0   d00a       MOVB         XAR0, #0xa
003f32e1   8f3f       MOVL         XAR4, #0x3f31b3
003f32e2   31b3
003f32e3   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f32e4   1191
3f32e5:              $C$L86:
003f32e5   8bbe       MOVL         XAR1, *--SP
003f32e6   0006       LRETR        
3f32e7:              _FSM_LoadVars_WaitTime:
003f32e7   d00a       MOVB         XAR0, #0xa
003f32e8   2d94       MOV          T, *+XAR4[AR0]
003f32e9   76ff       MOVL         XAR7, #0x3f62b2
003f32ea   62b2
003f32eb   3506       MPYB         ACC, T, #6
003f32ec   5601       ADDL         XAR7, ACC
003f32ed   00a7
003f32ee   92c7       MOV          AL, *+XAR7[0]
003f32ef   d00e       MOVB         XAR0, #0xe
003f32f0   9694       MOV          *+XAR4[AR0], AL
003f32f1   0006       LRETR        
3f32f2:              _FSM_State_IDLE:
003f32f2   b2bd       MOVL         *SP++, XAR1
003f32f3   8ba4       MOVL         XAR1, XAR4
003f32f4   8ac1       MOVL         XAR4, *+XAR1[0]
003f32f5   d00a       MOVB         XAR0, #0xa
003f32f6   2b94       MOV          *+XAR4[AR0], #0
003f32f7   8aa1       MOVL         XAR4, XAR1
003f32f8   767f       LCR          0x3f336a
003f32f9   336a
003f32fa   d00b       MOVB         XAR0, #0xb
003f32fb   9291       MOV          AL, *+XAR1[AR0]
003f32fc   ec17       SBF          23, EQ
003f32fd   5202       CMPB         AL, #0x2
003f32fe   ed17       SBF          23, NEQ
003f32ff   d00a       MOVB         XAR0, #0xa
003f3300   56bf       MOVB         *+XAR1[AR0], #0x01, UNC
003f3301   0191
003f3302   8aa1       MOVL         XAR4, XAR1
003f3303   d00f       MOVB         XAR0, #0xf
003f3304   2b91       MOV          *+XAR1[AR0], #0
003f3305   767f       LCR          0x3f32e7
003f3306   32e7
003f3307   d014       MOVB         XAR0, #0x14
003f3308   2b91       MOV          *+XAR1[AR0], #0
003f3309   d01a       MOVB         XAR0, #0x1a
003f330a   56bf       MOVB         *+XAR1[AR0], #0x01, UNC
003f330b   0191
003f330c   8ac1       MOVL         XAR4, *+XAR1[0]
003f330d   d00a       MOVB         XAR0, #0xa
003f330e   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f330f   0194
003f3310   8f3f       MOVL         XAR4, #0x3f3272
003f3311   3272
003f3312   6f05       SB           5, UNC
3f3313:              $C$L87:
003f3313   d014       MOVB         XAR0, #0x14
003f3314   2b91       MOV          *+XAR1[AR0], #0
3f3315:              $C$L88:
003f3315   8f3f       MOVL         XAR4, #0x3f32f2
003f3316   32f2
3f3317:              $C$L89:
003f3317   8bbe       MOVL         XAR1, *--SP
003f3318   0006       LRETR        
3f3319:              _FSM_CheckSpeed:
003f3319   83c4       MOVL         XAR5, *+XAR4[0]
003f331a   d01a       MOVB         XAR0, #0x1a
003f331b   c595       MOVL         XAR7, *+XAR5[AR0]
003f331c   be00       MOVB         XAR6, #0x00
003f331d   06a7       MOVL         ACC, XAR7
003f331e   631c       SB           28, GEQ
003f331f   28a9       MOV          AL, #0x999a
003f3320   999a
003f3321   28a8       MOV          AH, #0x0119
003f3322   0119
003f3323   d020       MOVB         XAR0, #0x20
003f3324   1eac       MOVL         XT, ACC
003f3325   8395       MOVL         XAR5, *+XAR5[AR0]
003f3326   5605       IMPYL        P, XT, XAR7
003f3327   00a7
003f3328   5663       QMPYL        ACC, XT, XAR7
003f3329   00a7
003f332a   56a7       LSL64        ACC:P, 8
003f332b   0fa5       CMPL         ACC, XAR5
003f332c   622a       SB           42, GT
003f332d   28a9       MOV          AL, #0x6666
003f332e   6666
003f332f   9be6       MOVB         AH, #0xe6
003f3330   1eac       MOVL         XT, ACC
003f3331   5605       IMPYL        P, XT, XAR7
003f3332   00a7
003f3333   5663       QMPYL        ACC, XT, XAR7
003f3334   00a7
003f3335   56a7       LSL64        ACC:P, 8
003f3336   0fa5       CMPL         ACC, XAR5
003f3337   56b2       MOVB         AR6, #0x09, GT
003f3338   09a6
003f3339   6f1d       SB           29, UNC
3f333a:              $C$L90:
003f333a   d01a       MOVB         XAR0, #0x1a
003f333b   28a9       MOV          AL, #0x6666
003f333c   6666
003f333d   9be6       MOVB         AH, #0xe6
003f333e   c595       MOVL         XAR7, *+XAR5[AR0]
003f333f   d020       MOVB         XAR0, #0x20
003f3340   1eac       MOVL         XT, ACC
003f3341   8395       MOVL         XAR5, *+XAR5[AR0]
003f3342   5605       IMPYL        P, XT, XAR7
003f3343   00a7
003f3344   5663       QMPYL        ACC, XT, XAR7
003f3345   00a7
003f3346   56a7       LSL64        ACC:P, 8
003f3347   0fa5       CMPL         ACC, XAR5
003f3348   620e       SB           14, GT
003f3349   28a9       MOV          AL, #0x999a
003f334a   999a
003f334b   28a8       MOV          AH, #0x0119
003f334c   0119
003f334d   1eac       MOVL         XT, ACC
003f334e   5605       IMPYL        P, XT, XAR7
003f334f   00a7
003f3350   5663       QMPYL        ACC, XT, XAR7
003f3351   00a7
003f3352   56a7       LSL64        ACC:P, 8
003f3353   0fa5       CMPL         ACC, XAR5
003f3354   56b2       MOVB         AR6, #0x08, GT
003f3355   08a6
3f3356:              $C$L91:
003f3356   d00c       MOVB         XAR0, #0xc
003f3357   7e94       MOV          *+XAR4[AR0], AR6
003f3358   0006       LRETR        
3f3359:              _FSM_CheckSonsor:
003f3359   d010       MOVB         XAR0, #0x10
003f335a   c594       MOVL         XAR7, *+XAR4[AR0]
003f335b   ff20       MOV          ACC, #2400
003f335c   0960
003f335d   d00c       MOVB         XAR0, #0xc
003f335e   0fa7       CMPL         ACC, XAR7
003f335f   56b2       MOVB         AR6, #0x00, GT
003f3360   00a6
003f3361   56b5       MOVB         AR6, #0x0a, LEQ
003f3362   0aa6
003f3363   ff20       MOV          ACC, #1200
003f3364   04b0
003f3365   0fa7       CMPL         ACC, XAR7
003f3366   56b2       MOVB         AR6, #0x0b, GT
003f3367   0ba6
003f3368   7e94       MOV          *+XAR4[AR0], AR6
003f3369   0006       LRETR        
3f336a:              _FSM_RunTrans:
003f336a   b2bd       MOVL         *SP++, XAR1
003f336b   d00a       MOVB         XAR0, #0xa
003f336c   aabd       MOVL         *SP++, XAR2
003f336d   86a4       MOVL         XAR2, XAR4
003f336e   2d92       MOV          T, *+XAR2[AR0]
003f336f   8d7f       MOVL         XAR1, #0x3f62b0
003f3370   62b0
003f3371   8aa1       MOVL         XAR4, XAR1
003f3372   3506       MPYB         ACC, T, #6
003f3373   5601       ADDL         XAR4, ACC
003f3374   00a4
003f3375   c5e4       MOVL         XAR7, *+XAR4[4]
003f3376   8aa2       MOVL         XAR4, XAR2
003f3377   3e67       LCR          *XAR7
003f3378   d00a       MOVB         XAR0, #0xa
003f3379   2d92       MOV          T, *+XAR2[AR0]
003f337a   d00c       MOVB         XAR0, #0xc
003f337b   3506       MPYB         ACC, T, #6
003f337c   5601       ADDL         XAR1, ACC
003f337d   00a1
003f337e   92d9       MOV          AL, *+XAR1[3]
003f337f   5492       CMP          AL, *+XAR2[AR0]
003f3380   ed03       SBF          3, NEQ
003f3381   9a02       MOVB         AL, #0x2
003f3382   6f02       SB           2, UNC
3f3383:              $C$L92:
003f3383   9a01       MOVB         AL, #0x1
3f3384:              $C$L93:
003f3384   d00b       MOVB         XAR0, #0xb
003f3385   8aa2       MOVL         XAR4, XAR2
003f3386   9692       MOV          *+XAR2[AR0], AL
003f3387   767f       LCR          0x3f3055
003f3388   3055
003f3389   86be       MOVL         XAR2, *--SP
003f338a   8bbe       MOVL         XAR1, *--SP
003f338b   0006       LRETR        
3f338c:              _FSM_State_TrimPlatform:
003f338c   b2bd       MOVL         *SP++, XAR1
003f338d   8ba4       MOVL         XAR1, XAR4
003f338e   767f       LCR          0x3f336a
003f338f   336a
003f3390   d00b       MOVB         XAR0, #0xb
003f3391   9291       MOV          AL, *+XAR1[AR0]
003f3392   ec0d       SBF          13, EQ
003f3393   5202       CMPB         AL, #0x2
003f3394   ec04       SBF          4, EQ
003f3395   8f3f       MOVL         XAR4, #0x3f338c
003f3396   338c
003f3397   6f0d       SB           13, UNC
3f3398:              $C$L94:
003f3398   d00a       MOVB         XAR0, #0xa
003f3399   8aa1       MOVL         XAR4, XAR1
003f339a   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f339b   1191
003f339c   767f       LCR          0x3f30a7
003f339d   30a7
003f339e   6f04       SB           4, UNC
3f339f:              $C$L95:
003f339f   d00a       MOVB         XAR0, #0xa
003f33a0   56bf       MOVB         *+XAR1[AR0], #0x11, UNC
003f33a1   1191
3f33a2:              $C$L96:
003f33a2   8f3f       MOVL         XAR4, #0x3f31b3
003f33a3   31b3
3f33a4:              $C$L97:
003f33a4   8bbe       MOVL         XAR1, *--SP
003f33a5   0006       LRETR        
3f33a6:              _FSM_Run:
003f33a6   761f       MOVW         DP, #0xc
003f33a7   000c
003f33a8   c514       MOVL         XAR7, @0x14
003f33a9   3e67       LCR          *XAR7
003f33aa   761f       MOVW         DP, #0xc
003f33ab   000c
003f33ac   a814       MOVL         @0x14, XAR4
003f33ad   0006       LRETR        
3f33ae:              _FSM_ParamInit:
003f33ae   b2bd       MOVL         *SP++, XAR1
003f33af   fe08       ADDB         SP, #8
003f33b0   d00a       MOVB         XAR0, #0xa
003f33b1   8ba4       MOVL         XAR1, XAR4
003f33b2   2b91       MOV          *+XAR1[AR0], #0
003f33b3   8ac1       MOVL         XAR4, *+XAR1[0]
003f33b4   d00a       MOVB         XAR0, #0xa
003f33b5   2b94       MOV          *+XAR4[AR0], #0
003f33b6   d00a       MOVB         XAR0, #0xa
003f33b7   2d91       MOV          T, *+XAR1[AR0]
003f33b8   88ad       MOVZ         AR6, SP
003f33b9   8f3f       MOVL         XAR4, #0x3f62b0
003f33ba   62b0
003f33bb   de88       SUBB         XAR6, #8
003f33bc   3506       MPYB         ACC, T, #6
003f33bd   5601       ADDL         XAR4, ACC
003f33be   00a4
003f33bf   06c4       MOVL         ACC, *+XAR4[0]
003f33c0   767f       LCR          0x3fdfb7
003f33c1   dfb7
003f33c2   5cad       MOVZ         AR4, SP
003f33c3   88ad       MOVZ         AR6, SP
003f33c4   8f7f       MOVL         XAR5, #0x3f63e8
003f33c5   63e8
003f33c6   dc88       SUBB         XAR4, #8
003f33c7   de84       SUBB         XAR6, #4
003f33c8   767f       LCR          0x3fdc5e
003f33c9   dc5e
003f33ca   5cad       MOVZ         AR4, SP
003f33cb   dc84       SUBB         XAR4, #4
003f33cc   767f       LCR          0x3fdf7b
003f33cd   df7b
003f33ce   8ac1       MOVL         XAR4, *+XAR1[0]
003f33cf   d01a       MOVB         XAR0, #0x1a
003f33d0   1e94       MOVL         *+XAR4[AR0], ACC
003f33d1   d014       MOVB         XAR0, #0x14
003f33d2   2b91       MOV          *+XAR1[AR0], #0
003f33d3   d01a       MOVB         XAR0, #0x1a
003f33d4   0200       MOVB         ACC, #0
003f33d5   2b91       MOV          *+XAR1[AR0], #0
003f33d6   d00c       MOVB         XAR0, #0xc
003f33d7   2b91       MOV          *+XAR1[AR0], #0
003f33d8   d00b       MOVB         XAR0, #0xb
003f33d9   56bf       MOVB         *+XAR1[AR0], #0x01, UNC
003f33da   0191
003f33db   d00d       MOVB         XAR0, #0xd
003f33dc   56bf       MOVB         *+XAR1[AR0], #0x04, UNC
003f33dd   0491
003f33de   d018       MOVB         XAR0, #0x18
003f33df   2b91       MOV          *+XAR1[AR0], #0
003f33e0   d015       MOVB         XAR0, #0x15
003f33e1   56bf       MOVB         *+XAR1[AR0], #0x0a, UNC
003f33e2   0a91
003f33e3   d019       MOVB         XAR0, #0x19
003f33e4   56bf       MOVB         *+XAR1[AR0], #0x01, UNC
003f33e5   0191
003f33e6   d016       MOVB         XAR0, #0x16
003f33e7   fe88       SUBB         SP, #8
003f33e8   1e91       MOVL         *+XAR1[AR0], ACC
003f33e9   8bbe       MOVL         XAR1, *--SP
003f33ea   0006       LRETR        
3f33eb:              _PWM_setTripZoneState_TZB:
003f33eb   7622       EALLOW       
003f33ec   83a4       MOVL         XAR5, XAR4
003f33ed   5603       MOV          ACC, AL << 2
003f33ee   02a9
003f33ef   dc14       ADDB         XAR4, #20
003f33f0   dd14       ADDB         XAR5, #20
003f33f1   18c5       AND          *+XAR5[0], #0xfff3
003f33f2   fff3
003f33f3   98c4       OR           *+XAR4[0], AL
003f33f4   761a       EDIS         
003f33f5   ff69       SPM          #0
003f33f6   0006       LRETR        
3f33f7:              _PWM_setTripZoneState_TZA:
003f33f7   7622       EALLOW       
003f33f8   83a4       MOVL         XAR5, XAR4
003f33f9   dc14       ADDB         XAR4, #20
003f33fa   dd14       ADDB         XAR5, #20
003f33fb   18c5       AND          *+XAR5[0], #0xfffc
003f33fc   fffc
003f33fd   98c4       OR           *+XAR4[0], AL
003f33fe   761a       EDIS         
003f33ff   ff69       SPM          #0
003f3400   0006       LRETR        
3f3401:              _PWM_setTripZoneState_DCBEVT2:
003f3401   7622       EALLOW       
003f3402   83a4       MOVL         XAR5, XAR4
003f3403   5603       MOV          ACC, AL << 10
003f3404   0aa9
003f3405   dc14       ADDB         XAR4, #20
003f3406   dd14       ADDB         XAR5, #20
003f3407   18c5       AND          *+XAR5[0], #0xf3ff
003f3408   f3ff
003f3409   98c4       OR           *+XAR4[0], AL
003f340a   761a       EDIS         
003f340b   ff69       SPM          #0
003f340c   0006       LRETR        
3f340d:              _PWM_setTripZoneState_DCBEVT1:
003f340d   7622       EALLOW       
003f340e   83a4       MOVL         XAR5, XAR4
003f340f   5603       MOV          ACC, AL << 8
003f3410   08a9
003f3411   dc14       ADDB         XAR4, #20
003f3412   dd14       ADDB         XAR5, #20
003f3413   18c5       AND          *+XAR5[0], #0xfcff
003f3414   fcff
003f3415   98c4       OR           *+XAR4[0], AL
003f3416   761a       EDIS         
003f3417   ff69       SPM          #0
003f3418   0006       LRETR        
3f3419:              _PWM_setTripZoneState_DCAEVT2:
003f3419   7622       EALLOW       
003f341a   83a4       MOVL         XAR5, XAR4
003f341b   5603       MOV          ACC, AL << 6
003f341c   06a9
003f341d   dc14       ADDB         XAR4, #20
003f341e   dd14       ADDB         XAR5, #20
003f341f   18c5       AND          *+XAR5[0], #0xff3f
003f3420   ff3f
003f3421   98c4       OR           *+XAR4[0], AL
003f3422   761a       EDIS         
003f3423   ff69       SPM          #0
003f3424   0006       LRETR        
3f3425:              _PWM_setTripZoneState_DCAEVT1:
003f3425   7622       EALLOW       
003f3426   83a4       MOVL         XAR5, XAR4
003f3427   5603       MOV          ACC, AL << 4
003f3428   04a9
003f3429   dc14       ADDB         XAR4, #20
003f342a   dd14       ADDB         XAR5, #20
003f342b   18c5       AND          *+XAR5[0], #0xffcf
003f342c   ffcf
003f342d   98c4       OR           *+XAR4[0], AL
003f342e   761a       EDIS         
003f342f   ff69       SPM          #0
003f3430   0006       LRETR        
3f3431:              _PWM_setTripZoneDCEventSelect_DCBEVT2:
003f3431   7622       EALLOW       
003f3432   83a4       MOVL         XAR5, XAR4
003f3433   5603       MOV          ACC, AL << 9
003f3434   09a9
003f3435   dc13       ADDB         XAR4, #19
003f3436   dd13       ADDB         XAR5, #19
003f3437   18c5       AND          *+XAR5[0], #0xf1ff
003f3438   f1ff
003f3439   98c4       OR           *+XAR4[0], AL
003f343a   761a       EDIS         
003f343b   ff69       SPM          #0
003f343c   0006       LRETR        
3f343d:              _PWM_setTripZoneDCEventSelect_DCBEVT1:
003f343d   7622       EALLOW       
003f343e   83a4       MOVL         XAR5, XAR4
003f343f   5603       MOV          ACC, AL << 6
003f3440   06a9
003f3441   dc13       ADDB         XAR4, #19
003f3442   dd13       ADDB         XAR5, #19
003f3443   18c5       AND          *+XAR5[0], #0xfe3f
003f3444   fe3f
003f3445   98c4       OR           *+XAR4[0], AL
003f3446   761a       EDIS         
003f3447   ff69       SPM          #0
003f3448   0006       LRETR        
3f3449:              _PWM_setTripZoneDCEventSelect_DCAEVT2:
003f3449   7622       EALLOW       
003f344a   83a4       MOVL         XAR5, XAR4
003f344b   5603       MOV          ACC, AL << 3
003f344c   03a9
003f344d   dc13       ADDB         XAR4, #19
003f344e   dd13       ADDB         XAR5, #19
003f344f   18c5       AND          *+XAR5[0], #0xffc7
003f3450   ffc7
003f3451   98c4       OR           *+XAR4[0], AL
003f3452   761a       EDIS         
003f3453   ff69       SPM          #0
003f3454   0006       LRETR        
3f3455:              _PWM_setTripZoneDCEventSelect_DCAEVT1:
003f3455   7622       EALLOW       
003f3456   83a4       MOVL         XAR5, XAR4
003f3457   dc13       ADDB         XAR4, #19
003f3458   dd13       ADDB         XAR5, #19
003f3459   18c5       AND          *+XAR5[0], #0xfff8
003f345a   fff8
003f345b   98c4       OR           *+XAR4[0], AL
003f345c   761a       EDIS         
003f345d   ff69       SPM          #0
003f345e   0006       LRETR        
3f345f:              _PWM_setSyncMode:
003f345f   18c4       AND          *+XAR4[0], #0xffcf
003f3460   ffcf
003f3461   98c4       OR           *+XAR4[0], AL
003f3462   0006       LRETR        
3f3463:              _PWM_setSwSync:
003f3463   1ac4       OR           *+XAR4[0], #0x0040
003f3464   0040
003f3465   0006       LRETR        
3f3466:              _PWM_setSocBPulseSrc:
003f3466   83a4       MOVL         XAR5, XAR4
003f3467   5603       MOV          ACC, AL << 12
003f3468   0ca9
003f3469   dd19       ADDB         XAR5, #25
003f346a   18c5       AND          *+XAR5[0], #0x8fff
003f346b   8fff
003f346c   dc19       ADDB         XAR4, #25
003f346d   98c4       OR           *+XAR4[0], AL
003f346e   0006       LRETR        
3f346f:              _PWM_setSocBPeriod:
003f346f   83a4       MOVL         XAR5, XAR4
003f3470   5603       MOV          ACC, AL << 12
003f3471   0ca9
003f3472   dd1a       ADDB         XAR5, #26
003f3473   18c5       AND          *+XAR5[0], #0xcfff
003f3474   cfff
003f3475   dc1a       ADDB         XAR4, #26
003f3476   98c4       OR           *+XAR4[0], AL
003f3477   0006       LRETR        
3f3478:              _PWM_setSocAPulseSrc:
003f3478   d019       MOVB         XAR0, #0x19
003f3479   8894       MOVZ         AR6, *+XAR4[AR0]
003f347a   5603       MOV          ACC, AL << 8
003f347b   08a9
003f347c   18a6       AND          AR6, #0xf8ff
003f347d   f8ff
003f347e   caa6       OR           AL, AR6
003f347f   d019       MOVB         XAR0, #0x19
003f3480   9694       MOV          *+XAR4[AR0], AL
003f3481   0006       LRETR        
3f3482:              _PWM_setSocAPeriod:
003f3482   83a4       MOVL         XAR5, XAR4
003f3483   5603       MOV          ACC, AL << 8
003f3484   08a9
003f3485   dd1a       ADDB         XAR5, #26
003f3486   18c5       AND          *+XAR5[0], #0xfcff
003f3487   fcff
003f3488   dc1a       ADDB         XAR4, #26
003f3489   98c4       OR           *+XAR4[0], AL
003f348a   0006       LRETR        
3f348b:              _PWM_setShadowMode_CmpB:
003f348b   18fc       AND          *+XAR4[7], #0xffbf
003f348c   ffbf
003f348d   5603       MOV          ACC, AL << 6
003f348e   06a9
003f348f   98fc       OR           *+XAR4[7], AL
003f3490   0006       LRETR        
3f3491:              _PWM_setShadowMode_CmpA:
003f3491   18fc       AND          *+XAR4[7], #0xffef
003f3492   ffef
003f3493   5603       MOV          ACC, AL << 4
003f3494   04a9
003f3495   98fc       OR           *+XAR4[7], AL
003f3496   0006       LRETR        
3f3497:              _PWM_setRunMode:
003f3497   18c4       AND          *+XAR4[0], #0x3fff
003f3498   3fff
003f3499   98c4       OR           *+XAR4[0], AL
003f349a   0006       LRETR        
3f349b:              _PWM_setPhaseDir:
003f349b   18c4       AND          *+XAR4[0], #0xdfff
003f349c   dfff
003f349d   98c4       OR           *+XAR4[0], AL
003f349e   0006       LRETR        
3f349f:              _PWM_setPhase:
003f349f   96dc       MOV          *+XAR4[3], AL
003f34a0   0006       LRETR        
3f34a1:              _PWM_setPeriodLoad:
003f34a1   18c4       AND          *+XAR4[0], #0xfff7
003f34a2   fff7
003f34a3   98c4       OR           *+XAR4[0], AL
003f34a4   0006       LRETR        
3f34a5:              _PWM_setPeriodHr:
003f34a5   7622       EALLOW       
003f34a6   96f4       MOV          *+XAR4[6], AL
003f34a7   761a       EDIS         
003f34a8   ff69       SPM          #0
003f34a9   0006       LRETR        
3f34aa:              _PWM_setPeriod:
003f34aa   96ec       MOV          *+XAR4[5], AL
003f34ab   0006       LRETR        
3f34ac:              _PWM_setLoadMode_CmpB:
003f34ac   18fc       AND          *+XAR4[7], #0xfff3
003f34ad   fff3
003f34ae   5603       MOV          ACC, AL << 2
003f34af   02a9
003f34b0   98fc       OR           *+XAR4[7], AL
003f34b1   0006       LRETR        
3f34b2:              _PWM_setLoadMode_CmpA:
003f34b2   18fc       AND          *+XAR4[7], #0xfffc
003f34b3   fffc
003f34b4   98fc       OR           *+XAR4[7], AL
003f34b5   0006       LRETR        
3f34b6:              _PWM_setIntPeriod:
003f34b6   83a4       MOVL         XAR5, XAR4
003f34b7   dd1a       ADDB         XAR5, #26
003f34b8   18c5       AND          *+XAR5[0], #0xfffc
003f34b9   fffc
003f34ba   dc1a       ADDB         XAR4, #26
003f34bb   98c4       OR           *+XAR4[0], AL
003f34bc   0006       LRETR        
3f34bd:              _PWM_setIntMode:
003f34bd   83a4       MOVL         XAR5, XAR4
003f34be   dd19       ADDB         XAR5, #25
003f34bf   18c5       AND          *+XAR5[0], #0xfff8
003f34c0   fff8
003f34c1   dc19       ADDB         XAR4, #25
003f34c2   98c4       OR           *+XAR4[0], AL
003f34c3   0006       LRETR        
3f34c4:              _PWM_setHrShadowMode:
003f34c4   7622       EALLOW       
003f34c5   83a4       MOVL         XAR5, XAR4
003f34c6   dc20       ADDB         XAR4, #32
003f34c7   dd20       ADDB         XAR5, #32
003f34c8   18c5       AND          *+XAR5[0], #0xffe7
003f34c9   ffe7
003f34ca   98c4       OR           *+XAR4[0], AL
003f34cb   761a       EDIS         
003f34cc   ff69       SPM          #0
003f34cd   0006       LRETR        
3f34ce:              _PWM_setHrEdgeMode:
003f34ce   7622       EALLOW       
003f34cf   83a4       MOVL         XAR5, XAR4
003f34d0   dc20       ADDB         XAR4, #32
003f34d1   dd20       ADDB         XAR5, #32
003f34d2   18c5       AND          *+XAR5[0], #0xfffc
003f34d3   fffc
003f34d4   98c4       OR           *+XAR4[0], AL
003f34d5   761a       EDIS         
003f34d6   ff69       SPM          #0
003f34d7   0006       LRETR        
3f34d8:              _PWM_setHrControlMode:
003f34d8   7622       EALLOW       
003f34d9   83a4       MOVL         XAR5, XAR4
003f34da   dc20       ADDB         XAR4, #32
003f34db   dd20       ADDB         XAR5, #32
003f34dc   18c5       AND          *+XAR5[0], #0xfffb
003f34dd   fffb
003f34de   98c4       OR           *+XAR4[0], AL
003f34df   761a       EDIS         
003f34e0   ff69       SPM          #0
003f34e1   0006       LRETR        
3f34e2:              _PWM_setHighSpeedClkDiv:
003f34e2   18c4       AND          *+XAR4[0], #0xfc7f
003f34e3   fc7f
003f34e4   98c4       OR           *+XAR4[0], AL
003f34e5   0006       LRETR        
3f34e6:              _PWM_setDigitalCompareInput:
003f34e6   2da9       MOV          T, AL
003f34e7   7622       EALLOW       
003f34e8   83a4       MOVL         XAR5, XAR4
003f34e9   9a0f       MOVB         AL, #0xf
003f34ea   ff66       LSL          AL, T
003f34eb   dc30       ADDB         XAR4, #48
003f34ec   ff5e       NOT          AL
003f34ed   dd30       ADDB         XAR5, #48
003f34ee   c0c5       AND          *+XAR5[0], AL
003f34ef   92a8       MOV          AL, @AH
003f34f0   ff66       LSL          AL, T
003f34f1   98c4       OR           *+XAR4[0], AL
003f34f2   761a       EDIS         
003f34f3   ff69       SPM          #0
003f34f4   0006       LRETR        
3f34f5:              _PWM_setDigitalCompareFilterWindow:
003f34f5   d037       MOVB         XAR0, #0x37
003f34f6   9694       MOV          *+XAR4[AR0], AL
003f34f7   0006       LRETR        
3f34f8:              _PWM_setDigitalCompareFilterSource:
003f34f8   7622       EALLOW       
003f34f9   83a4       MOVL         XAR5, XAR4
003f34fa   dc33       ADDB         XAR4, #51
003f34fb   dd33       ADDB         XAR5, #51
003f34fc   18c5       AND          *+XAR5[0], #0xfffc
003f34fd   fffc
003f34fe   98c4       OR           *+XAR4[0], AL
003f34ff   761a       EDIS         
003f3500   ff69       SPM          #0
003f3501   0006       LRETR        
3f3502:              _PWM_setDigitalCompareFilterOffset:
003f3502   d035       MOVB         XAR0, #0x35
003f3503   9694       MOV          *+XAR4[AR0], AL
003f3504   0006       LRETR        
3f3505:              _PWM_setDigitalCompareBlankingPulse:
003f3505   7622       EALLOW       
003f3506   83a4       MOVL         XAR5, XAR4
003f3507   5603       MOV          ACC, AL << 4
003f3508   04a9
003f3509   dc33       ADDB         XAR4, #51
003f350a   dd33       ADDB         XAR5, #51
003f350b   18c5       AND          *+XAR5[0], #0xffcf
003f350c   ffcf
003f350d   98c4       OR           *+XAR4[0], AL
003f350e   761a       EDIS         
003f350f   ff69       SPM          #0
003f3510   0006       LRETR        
3f3511:              _PWM_setDigitalCompareBEvent2:
003f3511   88a9       MOVZ         AR6, AL
003f3512   7622       EALLOW       
003f3513   83a4       MOVL         XAR5, XAR4
003f3514   5603       MOV          ACC, AH << 1
003f3515   01a8
003f3516   caa6       OR           AL, AR6
003f3517   dc32       ADDB         XAR4, #50
003f3518   5603       MOV          ACC, AL << 8
003f3519   08a9
003f351a   dd32       ADDB         XAR5, #50
003f351b   18c5       AND          *+XAR5[0], #0xfcff
003f351c   fcff
003f351d   98c4       OR           *+XAR4[0], AL
003f351e   761a       EDIS         
003f351f   ff69       SPM          #0
003f3520   0006       LRETR        
3f3521:              _PWM_setDigitalCompareBEvent1:
003f3521   27a8       MOV          PL, AH
003f3522   80a9       MOVZ         AR7, AL
003f3523   9243       MOV          AL, *-SP[3]
003f3524   7622       EALLOW       
003f3525   c4a4       MOVL         XAR6, XAR4
003f3526   5603       MOV          ACC, AL << 1
003f3527   01a9
003f3528   caa5       OR           AL, AR5
003f3529   dc32       ADDB         XAR4, #50
003f352a   de32       ADDB         XAR6, #50
003f352b   5603       MOV          ACC, AL << 1
003f352c   01a9
003f352d   18c6       AND          *+XAR6[0], #0xfff0
003f352e   fff0
003f352f   caab       OR           AL, PL
003f3530   5603       MOV          ACC, AL << 1
003f3531   01a9
003f3532   cac4       OR           AL, *+XAR4[0]
003f3533   caa7       OR           AL, AR7
003f3534   96c4       MOV          *+XAR4[0], AL
003f3535   761a       EDIS         
003f3536   ff69       SPM          #0
003f3537   0006       LRETR        
3f3538:              _PWM_setDigitalCompareAEvent2:
003f3538   88a9       MOVZ         AR6, AL
003f3539   7622       EALLOW       
003f353a   83a4       MOVL         XAR5, XAR4
003f353b   5603       MOV          ACC, AH << 1
003f353c   01a8
003f353d   caa6       OR           AL, AR6
003f353e   dc31       ADDB         XAR4, #49
003f353f   5603       MOV          ACC, AL << 8
003f3540   08a9
003f3541   dd31       ADDB         XAR5, #49
003f3542   18c5       AND          *+XAR5[0], #0xfcff
003f3543   fcff
003f3544   98c4       OR           *+XAR4[0], AL
003f3545   761a       EDIS         
003f3546   ff69       SPM          #0
003f3547   0006       LRETR        
3f3548:              _PWM_setDigitalCompareAEvent1:
003f3548   27a8       MOV          PL, AH
003f3549   80a9       MOVZ         AR7, AL
003f354a   9243       MOV          AL, *-SP[3]
003f354b   7622       EALLOW       
003f354c   c4a4       MOVL         XAR6, XAR4
003f354d   5603       MOV          ACC, AL << 1
003f354e   01a9
003f354f   caa5       OR           AL, AR5
003f3550   dc31       ADDB         XAR4, #49
003f3551   de31       ADDB         XAR6, #49
003f3552   5603       MOV          ACC, AL << 1
003f3553   01a9
003f3554   18c6       AND          *+XAR6[0], #0xfff0
003f3555   fff0
003f3556   caab       OR           AL, PL
003f3557   5603       MOV          ACC, AL << 1
003f3558   01a9
003f3559   cac4       OR           AL, *+XAR4[0]
003f355a   caa7       OR           AL, AR7
003f355b   96c4       MOV          *+XAR4[0], AL
003f355c   761a       EDIS         
003f355d   ff69       SPM          #0
003f355e   0006       LRETR        
3f355f:              _PWM_setDeadBandRisingEdgeDelay:
003f355f   d010       MOVB         XAR0, #0x10
003f3560   9694       MOV          *+XAR4[AR0], AL
003f3561   0006       LRETR        
3f3562:              _PWM_setDeadBandPolarity:
003f3562   83a4       MOVL         XAR5, XAR4
003f3563   dd0f       ADDB         XAR5, #15
003f3564   18c5       AND          *+XAR5[0], #0xfff3
003f3565   fff3
003f3566   dc0f       ADDB         XAR4, #15
003f3567   98c4       OR           *+XAR4[0], AL
003f3568   0006       LRETR        
3f3569:              _PWM_setDeadBandOutputMode:
003f3569   83a4       MOVL         XAR5, XAR4
003f356a   dd0f       ADDB         XAR5, #15
003f356b   18c5       AND          *+XAR5[0], #0xfffc
003f356c   fffc
003f356d   dc0f       ADDB         XAR4, #15
003f356e   98c4       OR           *+XAR4[0], AL
003f356f   0006       LRETR        
3f3570:              _PWM_setDeadBandInputMode:
003f3570   83a4       MOVL         XAR5, XAR4
003f3571   dd0f       ADDB         XAR5, #15
003f3572   18c5       AND          *+XAR5[0], #0xffcf
003f3573   ffcf
003f3574   dc0f       ADDB         XAR4, #15
003f3575   98c4       OR           *+XAR4[0], AL
003f3576   0006       LRETR        
3f3577:              _PWM_setDeadBandFallingEdgeDelay:
003f3577   d011       MOVB         XAR0, #0x11
003f3578   9694       MOV          *+XAR4[AR0], AL
003f3579   0006       LRETR        
3f357a:              _PWM_setCounterMode:
003f357a   18c4       AND          *+XAR4[0], #0xfffc
003f357b   fffc
003f357c   98c4       OR           *+XAR4[0], AL
003f357d   0006       LRETR        
3f357e:              _PWM_setCount:
003f357e   96e4       MOV          *+XAR4[4], AL
003f357f   0006       LRETR        
3f3580:              _PWM_setClkDiv:
003f3580   18c4       AND          *+XAR4[0], #0xe3ff
003f3581   e3ff
003f3582   98c4       OR           *+XAR4[0], AL
003f3583   0006       LRETR        
3f3584:              _PWM_setChoppingPulseWidth:
003f3584   83a4       MOVL         XAR5, XAR4
003f3585   dd1e       ADDB         XAR5, #30
003f3586   18c5       AND          *+XAR5[0], #0xffe1
003f3587   ffe1
003f3588   dc1e       ADDB         XAR4, #30
003f3589   98c4       OR           *+XAR4[0], AL
003f358a   0006       LRETR        
3f358b:              _PWM_setChoppingDutyCycle:
003f358b   83a4       MOVL         XAR5, XAR4
003f358c   dd1e       ADDB         XAR5, #30
003f358d   18c5       AND          *+XAR5[0], #0xf8ff
003f358e   f8ff
003f358f   dc1e       ADDB         XAR4, #30
003f3590   98c4       OR           *+XAR4[0], AL
003f3591   0006       LRETR        
3f3592:              _PWM_setChoppingClkFreq:
003f3592   83a4       MOVL         XAR5, XAR4
003f3593   dd1e       ADDB         XAR5, #30
003f3594   18c5       AND          *+XAR5[0], #0xff1f
003f3595   ff1f
003f3596   dc1e       ADDB         XAR4, #30
003f3597   98c4       OR           *+XAR4[0], AL
003f3598   0006       LRETR        
3f3599:              _PWM_setActionQual_Zero_PwmB:
003f3599   83a4       MOVL         XAR5, XAR4
003f359a   dd0c       ADDB         XAR5, #12
003f359b   18c5       AND          *+XAR5[0], #0xfffc
003f359c   fffc
003f359d   dc0c       ADDB         XAR4, #12
003f359e   98c4       OR           *+XAR4[0], AL
003f359f   0006       LRETR        
3f35a0:              _PWM_setActionQual_Zero_PwmA:
003f35a0   83a4       MOVL         XAR5, XAR4
003f35a1   dd0b       ADDB         XAR5, #11
003f35a2   18c5       AND          *+XAR5[0], #0xfffc
003f35a3   fffc
003f35a4   dc0b       ADDB         XAR4, #11
003f35a5   98c4       OR           *+XAR4[0], AL
003f35a6   0006       LRETR        
3f35a7:              _PWM_setActionQual_Period_PwmB:
003f35a7   83a4       MOVL         XAR5, XAR4
003f35a8   5603       MOV          ACC, AL << 2
003f35a9   02a9
003f35aa   dd0c       ADDB         XAR5, #12
003f35ab   18c5       AND          *+XAR5[0], #0xfff3
003f35ac   fff3
003f35ad   dc0c       ADDB         XAR4, #12
003f35ae   98c4       OR           *+XAR4[0], AL
003f35af   0006       LRETR        
3f35b0:              _PWM_setActionQual_Period_PwmA:
003f35b0   83a4       MOVL         XAR5, XAR4
003f35b1   5603       MOV          ACC, AL << 2
003f35b2   02a9
003f35b3   dd0b       ADDB         XAR5, #11
003f35b4   18c5       AND          *+XAR5[0], #0xfff3
003f35b5   fff3
003f35b6   dc0b       ADDB         XAR4, #11
003f35b7   98c4       OR           *+XAR4[0], AL
003f35b8   0006       LRETR        
3f35b9:              _PWM_setActionQual_CntUp_CmpB_PwmB:
003f35b9   83a4       MOVL         XAR5, XAR4
003f35ba   5603       MOV          ACC, AL << 8
003f35bb   08a9
003f35bc   dd0c       ADDB         XAR5, #12
003f35bd   18c5       AND          *+XAR5[0], #0xfcff
003f35be   fcff
003f35bf   dc0c       ADDB         XAR4, #12
003f35c0   98c4       OR           *+XAR4[0], AL
003f35c1   0006       LRETR        
3f35c2:              _PWM_setActionQual_CntUp_CmpB_PwmA:
003f35c2   83a4       MOVL         XAR5, XAR4
003f35c3   5603       MOV          ACC, AL << 8
003f35c4   08a9
003f35c5   dd0b       ADDB         XAR5, #11
003f35c6   18c5       AND          *+XAR5[0], #0xfcff
003f35c7   fcff
003f35c8   dc0b       ADDB         XAR4, #11
003f35c9   98c4       OR           *+XAR4[0], AL
003f35ca   0006       LRETR        
3f35cb:              _PWM_setActionQual_CntUp_CmpA_PwmB:
003f35cb   83a4       MOVL         XAR5, XAR4
003f35cc   5603       MOV          ACC, AL << 4
003f35cd   04a9
003f35ce   dd0c       ADDB         XAR5, #12
003f35cf   18c5       AND          *+XAR5[0], #0xffcf
003f35d0   ffcf
003f35d1   dc0c       ADDB         XAR4, #12
003f35d2   98c4       OR           *+XAR4[0], AL
003f35d3   0006       LRETR        
3f35d4:              _PWM_setActionQual_CntUp_CmpA_PwmA:
003f35d4   83a4       MOVL         XAR5, XAR4
003f35d5   5603       MOV          ACC, AL << 4
003f35d6   04a9
003f35d7   dd0b       ADDB         XAR5, #11
003f35d8   18c5       AND          *+XAR5[0], #0xffcf
003f35d9   ffcf
003f35da   dc0b       ADDB         XAR4, #11
003f35db   98c4       OR           *+XAR4[0], AL
003f35dc   0006       LRETR        
3f35dd:              _PWM_setActionQual_CntDown_CmpB_PwmB:
003f35dd   83a4       MOVL         XAR5, XAR4
003f35de   5603       MOV          ACC, AL << 10
003f35df   0aa9
003f35e0   dd0c       ADDB         XAR5, #12
003f35e1   18c5       AND          *+XAR5[0], #0xf3ff
003f35e2   f3ff
003f35e3   dc0c       ADDB         XAR4, #12
003f35e4   98c4       OR           *+XAR4[0], AL
003f35e5   0006       LRETR        
3f35e6:              _PWM_setActionQual_CntDown_CmpB_PwmA:
003f35e6   83a4       MOVL         XAR5, XAR4
003f35e7   5603       MOV          ACC, AL << 10
003f35e8   0aa9
003f35e9   dd0b       ADDB         XAR5, #11
003f35ea   18c5       AND          *+XAR5[0], #0xf3ff
003f35eb   f3ff
003f35ec   dc0b       ADDB         XAR4, #11
003f35ed   98c4       OR           *+XAR4[0], AL
003f35ee   0006       LRETR        
3f35ef:              _PWM_setActionQual_CntDown_CmpA_PwmB:
003f35ef   83a4       MOVL         XAR5, XAR4
003f35f0   5603       MOV          ACC, AL << 6
003f35f1   06a9
003f35f2   dd0c       ADDB         XAR5, #12
003f35f3   18c5       AND          *+XAR5[0], #0xff3f
003f35f4   ff3f
003f35f5   dc0c       ADDB         XAR4, #12
003f35f6   98c4       OR           *+XAR4[0], AL
003f35f7   0006       LRETR        
3f35f8:              _PWM_setActionQual_CntDown_CmpA_PwmA:
003f35f8   83a4       MOVL         XAR5, XAR4
003f35f9   5603       MOV          ACC, AL << 6
003f35fa   06a9
003f35fb   dd0b       ADDB         XAR5, #11
003f35fc   18c5       AND          *+XAR5[0], #0xff3f
003f35fd   ff3f
003f35fe   dc0b       ADDB         XAR4, #11
003f35ff   98c4       OR           *+XAR4[0], AL
003f3600   0006       LRETR        
3f3601:              _PWM_setActionQualContSWForce_PwmB:
003f3601   83a4       MOVL         XAR5, XAR4
003f3602   5603       MOV          ACC, AL << 2
003f3603   02a9
003f3604   dd0e       ADDB         XAR5, #14
003f3605   18c5       AND          *+XAR5[0], #0xfff3
003f3606   fff3
003f3607   dc0e       ADDB         XAR4, #14
003f3608   98c4       OR           *+XAR4[0], AL
003f3609   0006       LRETR        
3f360a:              _PWM_setActionQualContSWForce_PwmA:
003f360a   83a4       MOVL         XAR5, XAR4
003f360b   dd0e       ADDB         XAR5, #14
003f360c   18c5       AND          *+XAR5[0], #0xfffc
003f360d   fffc
003f360e   dc0e       ADDB         XAR4, #14
003f360f   98c4       OR           *+XAR4[0], AL
003f3610   0006       LRETR        
3f3611:              _PWM_init:
003f3611   1ea6       MOVL         XAR6, ACC
003f3612   023a       MOVB         ACC, #58
003f3613   0fa6       CMPL         ACC, XAR6
003f3614   6902       SB           2, LOS
003f3615   d400       MOVB         XAR4, #0x0
3f3616:              $C$L1:
003f3616   0006       LRETR        
3f3617:              _PWM_incrementDeadBandRisingEdgeDelay:
003f3617   dc10       ADDB         XAR4, #16
003f3618   0ac4       INC          *+XAR4[0]
003f3619   0006       LRETR        
3f361a:              _PWM_incrementDeadBandFallingEdgeDelay:
003f361a   dc11       ADDB         XAR4, #17
003f361b   0ac4       INC          *+XAR4[0]
003f361c   0006       LRETR        
3f361d:              _PWM_getSocBCount:
003f361d   d01a       MOVB         XAR0, #0x1a
003f361e   cc94       AND          AL, *+XAR4[AR0], #0xc000
003f361f   c000
003f3620   ffcd       LSR          AL, 14
003f3621   0006       LRETR        
3f3622:              _PWM_getSocACount:
003f3622   d01a       MOVB         XAR0, #0x1a
003f3623   cc94       AND          AL, *+XAR4[AR0], #0xc00
003f3624   0c00
003f3625   ffc9       LSR          AL, 10
003f3626   0006       LRETR        
3f3627:              _PWM_getShadowStatus_CmpB:
003f3627   ccc4       AND          AL, *+XAR4[0], #0xfeff
003f3628   feff
003f3629   ffa8       ASR          AL, 9
003f362a   0006       LRETR        
3f362b:              _PWM_getShadowStatus_CmpA:
003f362b   ccc4       AND          AL, *+XAR4[0], #0xfeff
003f362c   feff
003f362d   ffa7       ASR          AL, 8
003f362e   0006       LRETR        
3f362f:              _PWM_getIntCount:
003f362f   d01a       MOVB         XAR0, #0x1a
003f3630   cc94       AND          AL, *+XAR4[AR0], #0xc
003f3631   000c
003f3632   0006       LRETR        
3f3633:              _PWM_getDeadBandRisingEdgeDelay:
003f3633   d010       MOVB         XAR0, #0x10
003f3634   9294       MOV          AL, *+XAR4[AR0]
003f3635   0006       LRETR        
3f3636:              _PWM_getDeadBandFallingEdgeDelay:
003f3636   d011       MOVB         XAR0, #0x11
003f3637   9294       MOV          AL, *+XAR4[AR0]
003f3638   0006       LRETR        
3f3639:              _PWM_enableTripZoneSrc:
003f3639   7622       EALLOW       
003f363a   dc12       ADDB         XAR4, #18
003f363b   98c4       OR           *+XAR4[0], AL
003f363c   761a       EDIS         
003f363d   ff69       SPM          #0
003f363e   0006       LRETR        
3f363f:              _PWM_enableTripZoneInt:
003f363f   7622       EALLOW       
003f3640   dc15       ADDB         XAR4, #21
003f3641   98c4       OR           *+XAR4[0], AL
003f3642   761a       EDIS         
003f3643   ff69       SPM          #0
003f3644   0006       LRETR        
3f3645:              _PWM_enableSocBPulse:
003f3645   dc19       ADDB         XAR4, #25
003f3646   1ac4       OR           *+XAR4[0], #0x8000
003f3647   8000
003f3648   0006       LRETR        
3f3649:              _PWM_enableSocAPulse:
003f3649   dc19       ADDB         XAR4, #25
003f364a   1ac4       OR           *+XAR4[0], #0x0800
003f364b   0800
003f364c   0006       LRETR        
3f364d:              _PWM_enableInt:
003f364d   dc19       ADDB         XAR4, #25
003f364e   1ac4       OR           *+XAR4[0], #0x0008
003f364f   0008
003f3650   0006       LRETR        
3f3651:              _PWM_enableHrPhaseSync:
003f3651   7622       EALLOW       
003f3652   dc28       ADDB         XAR4, #40
003f3653   1ac4       OR           *+XAR4[0], #0x0004
003f3654   0004
003f3655   761a       EDIS         
003f3656   ff69       SPM          #0
003f3657   0006       LRETR        
3f3658:              _PWM_enableHrPeriod:
003f3658   7622       EALLOW       
003f3659   dc28       ADDB         XAR4, #40
003f365a   1ac4       OR           *+XAR4[0], #0x0001
003f365b   0001
003f365c   761a       EDIS         
003f365d   ff69       SPM          #0
003f365e   0006       LRETR        
3f365f:              _PWM_enableDigitalCompareBlankingWindowInversion:
003f365f   7622       EALLOW       
003f3660   dc33       ADDB         XAR4, #51
003f3661   1ac4       OR           *+XAR4[0], #0x0008
003f3662   0008
003f3663   761a       EDIS         
003f3664   ff69       SPM          #0
003f3665   0006       LRETR        
3f3666:              _PWM_enableDigitalCompareBlankingWindow:
003f3666   7622       EALLOW       
003f3667   dc33       ADDB         XAR4, #51
003f3668   1ac4       OR           *+XAR4[0], #0x0004
003f3669   0004
003f366a   761a       EDIS         
003f366b   ff69       SPM          #0
003f366c   0006       LRETR        
3f366d:              _PWM_enableDeadBandHalfCycle:
003f366d   dc0f       ADDB         XAR4, #15
003f366e   1ac4       OR           *+XAR4[0], #0x8000
003f366f   8000
003f3670   0006       LRETR        
3f3671:              _PWM_enableCounterLoad:
003f3671   1ac4       OR           *+XAR4[0], #0x0004
003f3672   0004
003f3673   0006       LRETR        
3f3674:              _PWM_enableChopping:
003f3674   d01e       MOVB         XAR0, #0x1e
003f3675   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f3676   0194
003f3677   0006       LRETR        
3f3678:              _PWM_enableAutoConvert:
003f3678   7622       EALLOW       
003f3679   dc20       ADDB         XAR4, #32
003f367a   1ac4       OR           *+XAR4[0], #0x0040
003f367b   0040
003f367c   761a       EDIS         
003f367d   ff69       SPM          #0
003f367e   0006       LRETR        
3f367f:              _PWM_disableTripZones:
003f367f   7622       EALLOW       
003f3680   d012       MOVB         XAR0, #0x12
003f3681   2b94       MOV          *+XAR4[AR0], #0
003f3682   761a       EDIS         
003f3683   ff69       SPM          #0
003f3684   0006       LRETR        
3f3685:              _PWM_disableTripZoneSrc:
003f3685   7622       EALLOW       
003f3686   dc12       ADDB         XAR4, #18
003f3687   ff5e       NOT          AL
003f3688   c0c4       AND          *+XAR4[0], AL
003f3689   761a       EDIS         
003f368a   ff69       SPM          #0
003f368b   0006       LRETR        
3f368c:              _PWM_disableTripZoneInt:
003f368c   7622       EALLOW       
003f368d   dc15       ADDB         XAR4, #21
003f368e   ff5e       NOT          AL
003f368f   c0c4       AND          *+XAR4[0], AL
003f3690   761a       EDIS         
003f3691   ff69       SPM          #0
003f3692   0006       LRETR        
3f3693:              _PWM_disableSocBPulse:
003f3693   dc19       ADDB         XAR4, #25
003f3694   18c4       AND          *+XAR4[0], #0x7fff
003f3695   7fff
003f3696   0006       LRETR        
3f3697:              _PWM_disableSocAPulse:
003f3697   dc19       ADDB         XAR4, #25
003f3698   18c4       AND          *+XAR4[0], #0xf7ff
003f3699   f7ff
003f369a   0006       LRETR        
3f369b:              _PWM_disableInt:
003f369b   dc19       ADDB         XAR4, #25
003f369c   18c4       AND          *+XAR4[0], #0xfff7
003f369d   fff7
003f369e   0006       LRETR        
3f369f:              _PWM_disableHrPhaseSync:
003f369f   7622       EALLOW       
003f36a0   dc28       ADDB         XAR4, #40
003f36a1   18c4       AND          *+XAR4[0], #0xfffb
003f36a2   fffb
003f36a3   761a       EDIS         
003f36a4   ff69       SPM          #0
003f36a5   0006       LRETR        
3f36a6:              _PWM_disableHrPeriod:
003f36a6   7622       EALLOW       
003f36a7   dc28       ADDB         XAR4, #40
003f36a8   18c4       AND          *+XAR4[0], #0xfffe
003f36a9   fffe
003f36aa   761a       EDIS         
003f36ab   ff69       SPM          #0
003f36ac   0006       LRETR        
3f36ad:              _PWM_disableDigitalCompareBlankingWindowInversion:
003f36ad   7622       EALLOW       
003f36ae   dc33       ADDB         XAR4, #51
003f36af   18c4       AND          *+XAR4[0], #0xfff7
003f36b0   fff7
003f36b1   761a       EDIS         
003f36b2   ff69       SPM          #0
003f36b3   0006       LRETR        
3f36b4:              _PWM_disableDigitalCompareBlankingWindow:
003f36b4   7622       EALLOW       
003f36b5   dc33       ADDB         XAR4, #51
003f36b6   18c4       AND          *+XAR4[0], #0xfffb
003f36b7   fffb
003f36b8   761a       EDIS         
003f36b9   ff69       SPM          #0
003f36ba   0006       LRETR        
3f36bb:              _PWM_disableDeadBandHalfCycle:
003f36bb   dc0f       ADDB         XAR4, #15
003f36bc   18c4       AND          *+XAR4[0], #0x7fff
003f36bd   7fff
003f36be   0006       LRETR        
3f36bf:              _PWM_disableDeadBand:
003f36bf   d00f       MOVB         XAR0, #0xf
003f36c0   2b94       MOV          *+XAR4[AR0], #0
003f36c1   0006       LRETR        
3f36c2:              _PWM_disableCounterLoad:
003f36c2   18c4       AND          *+XAR4[0], #0xfffb
003f36c3   fffb
003f36c4   0006       LRETR        
3f36c5:              _PWM_disableChopping:
003f36c5   dc1e       ADDB         XAR4, #30
003f36c6   18c4       AND          *+XAR4[0], #0xfffe
003f36c7   fffe
003f36c8   0006       LRETR        
3f36c9:              _PWM_disableAutoConvert:
003f36c9   7622       EALLOW       
003f36ca   dc20       ADDB         XAR4, #32
003f36cb   18c4       AND          *+XAR4[0], #0xffbf
003f36cc   ffbf
003f36cd   761a       EDIS         
003f36ce   ff69       SPM          #0
003f36cf   0006       LRETR        
3f36d0:              _PWM_decrementDeadBandRisingEdgeDelay:
003f36d0   dc10       ADDB         XAR4, #16
003f36d1   0bc4       DEC          *+XAR4[0]
003f36d2   0006       LRETR        
3f36d3:              _PWM_decrementDeadBandFallingEdgeDelay:
003f36d3   dc11       ADDB         XAR4, #17
003f36d4   0bc4       DEC          *+XAR4[0]
003f36d5   0006       LRETR        
3f36d6:              _PWM_clearTripZone:
003f36d6   7622       EALLOW       
003f36d7   dc17       ADDB         XAR4, #23
003f36d8   98c4       OR           *+XAR4[0], AL
003f36d9   761a       EDIS         
003f36da   ff69       SPM          #0
003f36db   0006       LRETR        
3f36dc:              _MB_setTimHandle:
003f36dc   a0d4       MOVL         *+XAR4[2], XAR5
003f36dd   0006       LRETR        
3f36de:              _MB_setSciHandle:
003f36de   a0e4       MOVL         *+XAR4[4], XAR5
003f36df   0006       LRETR        
3f36e0:              _MB_setProCtrlHandle:
003f36e0   a0f4       MOVL         *+XAR4[6], XAR5
003f36e1   0006       LRETR        
3f36e2:              _MB_setGpioHandle:
003f36e2   a0c4       MOVL         *+XAR4[0], XAR5
003f36e3   0006       LRETR        
3f36e4:              _MB_init:
003f36e4   1ea6       MOVL         XAR6, ACC
003f36e5   021e       MOVB         ACC, #30
003f36e6   0fa6       CMPL         ACC, XAR6
003f36e7   6902       SB           2, LOS
003f36e8   d400       MOVB         XAR4, #0x0
3f36e9:              $C$L1:
003f36e9   0006       LRETR        
3f36ea:              _MB_TransMotorParams:
003f36ea   0ea8       MOVU         ACC, AH
003f36eb   0006       LRETR        
3f36ec:              _MB_Trans485toMotor:
003f36ec   34a9       MPY          ACC, AL, #16777
003f36ed   4189
003f36ee   0006       LRETR        
3f36ef:              _MB_PortEventPost:
003f36ef   d01b       MOVB         XAR0, #0x1b
003f36f0   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f36f1   0194
003f36f2   d01c       MOVB         XAR0, #0x1c
003f36f3   9694       MOV          *+XAR4[AR0], AL
003f36f4   0006       LRETR        
3f36f5:              _MB_PortSerialEnable:
003f36f5   b2bd       MOVL         *SP++, XAR1
003f36f6   5200       CMPB         AL, #0x0
003f36f7   59a8       MOVZ         AR1, AH
003f36f8   aabd       MOVL         *SP++, XAR2
003f36f9   86a4       MOVL         XAR2, XAR4
003f36fa   ed05       SBF          5, NEQ
003f36fb   8ae2       MOVL         XAR4, *+XAR2[4]
003f36fc   767f       LCR          0x3f422a
003f36fd   422a
003f36fe   6f04       SB           4, UNC
3f36ff:              $C$L2:
003f36ff   8ae2       MOVL         XAR4, *+XAR2[4]
003f3700   767f       LCR          0x3f41f8
003f3701   41f8
3f3702:              $C$L3:
003f3702   92a1       MOV          AL, AR1
003f3703   ed05       SBF          5, NEQ
003f3704   8ae2       MOVL         XAR4, *+XAR2[4]
003f3705   767f       LCR          0x3f421a
003f3706   421a
003f3707   6f04       SB           4, UNC
3f3708:              $C$L4:
003f3708   8ae2       MOVL         XAR4, *+XAR2[4]
003f3709   767f       LCR          0x3f41e4
003f370a   41e4
3f370b:              $C$L5:
003f370b   86be       MOVL         XAR2, *--SP
003f370c   8bbe       MOVL         XAR1, *--SP
003f370d   0006       LRETR        
3f370e:              _MB_PortSerialPutByte:
003f370e   8ae4       MOVL         XAR4, *+XAR4[4]
003f370f   767f       LCR          0x3f41b2
003f3710   41b2
003f3711   9a01       MOVB         AL, #0x1
003f3712   0006       LRETR        
3f3713:              _MB_RTUTransmitFSM:
003f3713   b2bd       MOVL         *SP++, XAR1
003f3714   d019       MOVB         XAR0, #0x19
003f3715   8ba4       MOVL         XAR1, XAR4
003f3716   9291       MOV          AL, *+XAR1[AR0]
003f3717   ec1d       SBF          29, EQ
003f3718   5201       CMPB         AL, #0x1
003f3719   ed1f       SBF          31, NEQ
003f371a   d016       MOVB         XAR0, #0x16
003f371b   9291       MOV          AL, *+XAR1[AR0]
003f371c   ed0b       SBF          11, NEQ
003f371d   9a03       MOVB         AL, #0x3
003f371e   767f       LCR          0x3f36ef
003f371f   36ef
003f3720   9b00       MOVB         AH, #0x0
003f3721   9a01       MOVB         AL, #0x1
003f3722   767f       LCR          0x3f36f5
003f3723   36f5
003f3724   d019       MOVB         XAR0, #0x19
003f3725   2b91       MOV          *+XAR1[AR0], #0
003f3726   6f12       SB           18, UNC
3f3727:              $C$L6:
003f3727   dc14       ADDB         XAR4, #20
003f3728   0201       MOVB         ACC, #1
003f3729   d014       MOVB         XAR0, #0x14
003f372a   5601       ADDL         *+XAR4[0], ACC
003f372b   00c4
003f372c   8a91       MOVL         XAR4, *+XAR1[AR0]
003f372d   92c4       MOV          AL, *+XAR4[0]
003f372e   8aa1       MOVL         XAR4, XAR1
003f372f   767f       LCR          0x3f370e
003f3730   370e
003f3731   d916       ADDB         XAR1, #22
003f3732   0bc1       DEC          *+XAR1[0]
003f3733   6f05       SB           5, UNC
3f3734:              $C$L7:
003f3734   9a01       MOVB         AL, #0x1
003f3735   9b00       MOVB         AH, #0x0
003f3736   767f       LCR          0x3f36f5
003f3737   36f5
3f3738:              $C$L8:
003f3738   8bbe       MOVL         XAR1, *--SP
003f3739   0006       LRETR        
3f373a:              _MB_PortTimersDisable:
003f373a   8ad4       MOVL         XAR4, *+XAR4[2]
003f373b   1ae4       OR           *+XAR4[4], #0x0010
003f373c   0010
003f373d   0006       LRETR        
3f373e:              _MB_RTUTimerFSM:
003f373e   83a4       MOVL         XAR5, XAR4
003f373f   d01a       MOVB         XAR0, #0x1a
003f3740   9295       MOV          AL, *+XAR5[AR0]
003f3741   ec05       SBF          5, EQ
003f3742   5202       CMPB         AL, #0x2
003f3743   ed06       SBF          6, NEQ
003f3744   9a01       MOVB         AL, #0x1
003f3745   6f02       SB           2, UNC
3f3746:              $C$L9:
003f3746   9a00       MOVB         AL, #0x0
3f3747:              $C$L10:
003f3747   767f       LCR          0x3f36ef
003f3748   36ef
3f3749:              $C$L11:
003f3749   767f       LCR          0x3f373a
003f374a   373a
003f374b   d01a       MOVB         XAR0, #0x1a
003f374c   56bf       MOVB         *+XAR5[AR0], #0x01, UNC
003f374d   0195
003f374e   0006       LRETR        
3f374f:              _MB_CRC16:
003f374f   88a9       MOVZ         AR6, AL
003f3750   2901       CLRC         SXM
003f3751   b6ff       MOVB         XAR7, #0xff
003f3752   28ab       MOV          PL, #0x00ff
003f3753   00ff
003f3754   de81       SUBB         XAR6, #1
003f3755   ff20       MOV          ACC, #65535
003f3756   ffff
003f3757   58a6       MOVZ         AR0, AR6
003f3758   0fa0       CMPL         ACC, XAR0
003f3759   ec14       SBF          20, EQ
3f375a:              $C$L12:
003f375a   92ab       MOV          AL, PL
003f375b   3b01       SETC         SXM
003f375c   8f7f       MOVL         XAR5, #0x3f6000
003f375d   6000
003f375e   7084       XOR          AL, *XAR4++
003f375f   85a9       MOV          ACC, AL
003f3760   5601       ADDL         XAR5, ACC
003f3761   00a5
003f3762   93a7       MOV          AH, AR7
003f3763   71c5       XOR          AH, *+XAR5[0]
003f3764   27a8       MOV          PL, AH
003f3765   8f7f       MOVL         XAR5, #0x3f6100
003f3766   6100
003f3767   85a9       MOV          ACC, AL
003f3768   5601       ADDL         XAR5, ACC
003f3769   00a5
003f376a   80c5       MOVZ         AR7, *+XAR5[0]
003f376b   000e       BANZ         -17,AR6--
003f376c   ffef
3f376d:              $C$L13:
003f376d   5603       MOV          ACC, AR7 << 8
003f376e   08a7
003f376f   caab       OR           AL, PL
003f3770   0006       LRETR        
3f3771:              _MB_RTUSend:
003f3771   b2bd       MOVL         *SP++, XAR1
003f3772   d01a       MOVB         XAR0, #0x1a
003f3773   aabd       MOVL         *SP++, XAR2
003f3774   86a4       MOVL         XAR2, XAR4
003f3775   a2bd       MOVL         *SP++, XAR3
003f3776   9292       MOV          AL, *+XAR2[AR0]
003f3777   5201       CMPB         AL, #0x1
003f3778   ec03       SBF          3, EQ
003f3779   9a05       MOVB         AL, #0x5
003f377a   6f39       SB           57, UNC
3f377b:              $C$L14:
003f377b   82a2       MOVL         XAR3, XAR2
003f377c   d014       MOVB         XAR0, #0x14
003f377d   c5a2       MOVL         XAR7, XAR2
003f377e   db0a       ADDB         XAR3, #10
003f377f   a292       MOVL         *+XAR2[AR0], XAR3
003f3780   d016       MOVB         XAR0, #0x16
003f3781   56bf       MOVB         *+XAR2[AR0], #0x01, UNC
003f3782   0192
003f3783   d014       MOVB         XAR0, #0x14
003f3784   8a92       MOVL         XAR4, *+XAR2[AR0]
003f3785   df17       ADDB         XAR7, #23
003f3786   92c7       MOV          AL, *+XAR7[0]
003f3787   96c4       MOV          *+XAR4[0], AL
003f3788   8aa2       MOVL         XAR4, XAR2
003f3789   d016       MOVB         XAR0, #0x16
003f378a   dc16       ADDB         XAR4, #22
003f378b   08c4       ADD          *+XAR4[0], #5
003f378c   0005
003f378d   2f92       MOV          PH, *+XAR2[AR0]
003f378e   d014       MOVB         XAR0, #0x14
003f378f   92aa       MOV          AL, PH
003f3790   8a92       MOVL         XAR4, *+XAR2[AR0]
003f3791   767f       LCR          0x3f374f
003f3792   374f
003f3793   d116       MOVB         XAR1, #0x16
003f3794   9b01       MOVB         AH, #0x1
003f3795   58aa       MOVZ         AR0, PH
003f3796   95a0       ADD          AH, AR0
003f3797   979a       MOV          *+XAR2[AR1], AH
003f3798   cda9       AND          AH, AL, #0xff
003f3799   00ff
003f379a   9793       MOV          *+XAR3[AR0], AH
003f379b   d016       MOVB         XAR0, #0x16
003f379c   9b01       MOVB         AH, #0x1
003f379d   5892       MOVZ         AR0, *+XAR2[AR0]
003f379e   d116       MOVB         XAR1, #0x16
003f379f   ffc7       LSR          AL, 8
003f37a0   8aa2       MOVL         XAR4, XAR2
003f37a1   95a0       ADD          AH, AR0
003f37a2   979a       MOV          *+XAR2[AR1], AH
003f37a3   9b01       MOVB         AH, #0x1
003f37a4   9693       MOV          *+XAR3[AR0], AL
003f37a5   9a00       MOVB         AL, #0x0
003f37a6   d019       MOVB         XAR0, #0x19
003f37a7   56bf       MOVB         *+XAR2[AR0], #0x01, UNC
003f37a8   0192
003f37a9   767f       LCR          0x3f36f5
003f37aa   36f5
003f37ab   8aa2       MOVL         XAR4, XAR2
003f37ac   dc16       ADDB         XAR4, #22
003f37ad   0bc4       DEC          *+XAR4[0]
003f37ae   8ae2       MOVL         XAR4, *+XAR2[4]
003f37af   92c3       MOV          AL, *+XAR3[0]
003f37b0   767f       LCR          0x3f41b2
003f37b1   41b2
003f37b2   9a00       MOVB         AL, #0x0
3f37b3:              $C$L15:
003f37b3   82be       MOVL         XAR3, *--SP
003f37b4   86be       MOVL         XAR2, *--SP
003f37b5   8bbe       MOVL         XAR1, *--SP
003f37b6   0006       LRETR        
3f37b7:              _MB_PortSerialGetByte:
003f37b7   b2bd       MOVL         *SP++, XAR1
003f37b8   8ae4       MOVL         XAR4, *+XAR4[4]
003f37b9   8ba5       MOVL         XAR1, XAR5
003f37ba   767f       LCR          0x3f41ce
003f37bb   41ce
003f37bc   96c1       MOV          *+XAR1[0], AL
003f37bd   9a01       MOVB         AL, #0x1
003f37be   8bbe       MOVL         XAR1, *--SP
003f37bf   0006       LRETR        
3f37c0:              _MB_PortTimersEnable:
003f37c0   b2bd       MOVL         *SP++, XAR1
003f37c1   8ba4       MOVL         XAR1, XAR4
003f37c2   8ad1       MOVL         XAR4, *+XAR1[2]
003f37c3   767f       LCR          0x3f45dc
003f37c4   45dc
003f37c5   8ad1       MOVL         XAR4, *+XAR1[2]
003f37c6   1ae4       OR           *+XAR4[4], #0x0020
003f37c7   0020
003f37c8   8ad1       MOVL         XAR4, *+XAR1[2]
003f37c9   18e4       AND          *+XAR4[4], #0xffef
003f37ca   ffef
003f37cb   8bbe       MOVL         XAR1, *--SP
003f37cc   0006       LRETR        
3f37cd:              _MB_RTUReceiveFSM:
003f37cd   b2bd       MOVL         *SP++, XAR1
003f37ce   fe02       ADDB         SP, #2
003f37cf   5dad       MOVZ         AR5, SP
003f37d0   8ba4       MOVL         XAR1, XAR4
003f37d1   dd81       SUBB         XAR5, #1
003f37d2   767f       LCR          0x3f37b7
003f37d3   37b7
003f37d4   d01a       MOVB         XAR0, #0x1a
003f37d5   9291       MOV          AL, *+XAR1[AR0]
003f37d6   ec24       SBF          36, EQ
003f37d7   5201       CMPB         AL, #0x1
003f37d8   ec19       SBF          25, EQ
003f37d9   5202       CMPB         AL, #0x2
003f37da   ec04       SBF          4, EQ
003f37db   5203       CMPB         AL, #0x3
003f37dc   ec1e       SBF          30, EQ
003f37dd   6f20       SB           32, UNC
3f37de:              $C$L16:
003f37de   d012       MOVB         XAR0, #0x12
003f37df   8891       MOVZ         AR6, *+XAR1[AR0]
003f37e0   92a6       MOV          AL, AR6
003f37e1   5208       CMPB         AL, #0x8
003f37e2   56b7       MOVB         AR0, #0x1a, HIS
003f37e3   1aa0
003f37e4   56b7       MOVB         *+XAR1[AR0], #0x03, HIS
003f37e5   0391
003f37e6   6714       SB           20, HIS
003f37e7   8aa1       MOVL         XAR4, XAR1
003f37e8   b2a9       MOVL         ACC, XAR1
003f37e9   0da6       ADDU         ACC, AR6
003f37ea   dc12       ADDB         XAR4, #18
003f37eb   0ac4       INC          *+XAR4[0]
003f37ec   8841       MOVZ         AR6, *-SP[1]
003f37ed   d00a       MOVB         XAR0, #0xa
003f37ee   8aa9       MOVL         XAR4, ACC
003f37ef   7e94       MOV          *+XAR4[AR0], AR6
003f37f0   6f0a       SB           10, UNC
3f37f1:              $C$L17:
003f37f1   d012       MOVB         XAR0, #0x12
003f37f2   56bf       MOVB         *+XAR1[AR0], #0x01, UNC
003f37f3   0191
003f37f4   9241       MOV          AL, *-SP[1]
003f37f5   d00a       MOVB         XAR0, #0xa
003f37f6   9691       MOV          *+XAR1[AR0], AL
003f37f7   d01a       MOVB         XAR0, #0x1a
003f37f8   56bf       MOVB         *+XAR1[AR0], #0x02, UNC
003f37f9   0291
3f37fa:              $C$L18:
003f37fa   8aa1       MOVL         XAR4, XAR1
003f37fb   767f       LCR          0x3f37c0
003f37fc   37c0
3f37fd:              $C$L19:
003f37fd   fe82       SUBB         SP, #2
003f37fe   8bbe       MOVL         XAR1, *--SP
003f37ff   0006       LRETR        
3f3800:              _MB_RTUReceive:
003f3800   b2bd       MOVL         *SP++, XAR1
003f3801   d012       MOVB         XAR0, #0x12
003f3802   8ba4       MOVL         XAR1, XAR4
003f3803   9291       MOV          AL, *+XAR1[AR0]
003f3804   5208       CMPB         AL, #0x8
003f3805   ed0b       SBF          11, NEQ
003f3806   dc0a       ADDB         XAR4, #10
003f3807   a8ac       MOVL         XT, XAR4
003f3808   767f       LCR          0x3f374f
003f3809   374f
003f380a   5200       CMPB         AL, #0x0
003f380b   ed05       SBF          5, NEQ
003f380c   d008       MOVB         XAR0, #0x8
003f380d   9a00       MOVB         AL, #0x0
003f380e   ab91       MOVL         *+XAR1[AR0], XT
003f380f   6f02       SB           2, UNC
3f3810:              $C$L20:
003f3810   9a05       MOVB         AL, #0x5
3f3811:              $C$L21:
003f3811   8bbe       MOVL         XAR1, *--SP
003f3812   0006       LRETR        
3f3813:              _MB_PortEventInit:
003f3813   d01b       MOVB         XAR0, #0x1b
003f3814   2b94       MOV          *+XAR4[AR0], #0
003f3815   0006       LRETR        
3f3816:              _MB_PortEventGet:
003f3816   d01b       MOVB         XAR0, #0x1b
003f3817   9294       MOV          AL, *+XAR4[AR0]
003f3818   ed03       SBF          3, NEQ
003f3819   9a00       MOVB         AL, #0x0
003f381a   0006       LRETR        
3f381b:              $C$L22:
003f381b   c5a4       MOVL         XAR7, XAR4
003f381c   df1c       ADDB         XAR7, #28
003f381d   92c7       MOV          AL, *+XAR7[0]
003f381e   96c5       MOV          *+XAR5[0], AL
003f381f   9a01       MOVB         AL, #0x1
003f3820   d01b       MOVB         XAR0, #0x1b
003f3821   2b94       MOV          *+XAR4[AR0], #0
003f3822   0006       LRETR        
3f3823:              _MB_FuncWriteHoldingRegister:
003f3823   d008       MOVB         XAR0, #0x8
003f3824   c494       MOVL         XAR6, *+XAR4[AR0]
003f3825   83a6       MOVL         XAR5, XAR6
003f3826   dd02       ADDB         XAR5, #2
003f3827   80c5       MOVZ         AR7, *+XAR5[0]
003f3828   5603       MOV          ACC, AR7 << 8
003f3829   08a7
003f382a   cacd       OR           AL, *+XAR5[1]
003f382b   83a6       MOVL         XAR5, XAR6
003f382c   80a9       MOVZ         AR7, AL
003f382d   dd04       ADDB         XAR5, #4
003f382e   92c5       MOV          AL, *+XAR5[0]
003f382f   5603       MOV          ACC, AL << 8
003f3830   08a9
003f3831   cacd       OR           AL, *+XAR5[1]
003f3832   93a7       MOV          AH, AR7
003f3833   ec18       SBF          24, EQ
003f3834   5302       CMPB         AH, #0x2
003f3835   ec13       SBF          19, EQ
003f3836   530e       CMPB         AH, #0xe
003f3837   ec0b       SBF          11, EQ
003f3838   530f       CMPB         AH, #0xf
003f3839   ed15       SBF          21, NEQ
003f383a   8af4       MOVL         XAR4, *+XAR4[6]
003f383b   d0a6       MOVB         XAR0, #0xa6
003f383c   8a94       MOVL         XAR4, *+XAR4[AR0]
003f383d   d016       MOVB         XAR0, #0x16
3f383e:              $C$L23:
003f383e   767f       LCR          0x3f36ec
003f383f   36ec
003f3840   1e94       MOVL         *+XAR4[AR0], ACC
003f3841   0006       LRETR        
3f3842:              $C$L24:
003f3842   8af4       MOVL         XAR4, *+XAR4[6]
003f3843   d0a6       MOVB         XAR0, #0xa6
003f3844   8a94       MOVL         XAR4, *+XAR4[AR0]
003f3845   d015       MOVB         XAR0, #0x15
003f3846   9694       MOV          *+XAR4[AR0], AL
003f3847   0006       LRETR        
3f3848:              $C$L25:
003f3848   8af4       MOVL         XAR4, *+XAR4[6]
003f3849   d032       MOVB         XAR0, #0x32
003f384a   6ff4       SB           -12, UNC
3f384b:              $C$L26:
003f384b   8af4       MOVL         XAR4, *+XAR4[6]
003f384c   767f       LCR          0x3f2696
003f384d   2696
3f384e:              $C$L27:
003f384e   0006       LRETR        
3f384f:              _MB_FuncWriteCoilsRegister:
003f384f   d008       MOVB         XAR0, #0x8
003f3850   8394       MOVL         XAR5, *+XAR4[AR0]
003f3851   dd02       ADDB         XAR5, #2
003f3852   92c5       MOV          AL, *+XAR5[0]
003f3853   5603       MOV          ACC, AL << 8
003f3854   08a9
003f3855   cacd       OR           AL, *+XAR5[1]
003f3856   5214       CMPB         AL, #0x14
003f3857   620c       SB           12, GT
003f3858   5214       CMPB         AL, #0x14
003f3859   ec18       SBF          24, EQ
003f385a   5210       CMPB         AL, #0x10
003f385b   ec2b       SBF          43, EQ
003f385c   5211       CMPB         AL, #0x11
003f385d   ec24       SBF          36, EQ
003f385e   5212       CMPB         AL, #0x12
003f385f   ec1d       SBF          29, EQ
003f3860   5213       CMPB         AL, #0x13
003f3861   ec16       SBF          22, EQ
003f3862   0006       LRETR        
3f3863:              $C$L28:
003f3863   521d       CMPB         AL, #0x1d
003f3864   ec0a       SBF          10, EQ
003f3865   5222       CMPB         AL, #0x22
003f3866   ec06       SBF          6, EQ
003f3867   5223       CMPB         AL, #0x23
003f3868   ed24       SBF          36, NEQ
003f3869   8af4       MOVL         XAR4, *+XAR4[6]
003f386a   d020       MOVB         XAR0, #0x20
003f386b   6f0a       SB           10, UNC
3f386c:              $C$L29:
003f386c   8af4       MOVL         XAR4, *+XAR4[6]
003f386d   6f17       SB           23, UNC
3f386e:              $C$L30:
003f386e   8af4       MOVL         XAR4, *+XAR4[6]
003f386f   d020       MOVB         XAR0, #0x20
003f3870   6f1a       SB           26, UNC
3f3871:              $C$L31:
003f3871   8af4       MOVL         XAR4, *+XAR4[6]
003f3872   d0a6       MOVB         XAR0, #0xa6
003f3873   8a94       MOVL         XAR4, *+XAR4[AR0]
003f3874   d019       MOVB         XAR0, #0x19
3f3875:              $C$L32:
003f3875   2b94       MOV          *+XAR4[AR0], #0
003f3876   0006       LRETR        
3f3877:              $C$L33:
003f3877   8af4       MOVL         XAR4, *+XAR4[6]
003f3878   d0a6       MOVB         XAR0, #0xa6
003f3879   8a94       MOVL         XAR4, *+XAR4[AR0]
003f387a   d019       MOVB         XAR0, #0x19
003f387b   6f0f       SB           15, UNC
3f387c:              $C$L34:
003f387c   8af4       MOVL         XAR4, *+XAR4[6]
003f387d   d0a6       MOVB         XAR0, #0xa6
003f387e   8a94       MOVL         XAR4, *+XAR4[AR0]
003f387f   d00f       MOVB         XAR0, #0xf
003f3880   6ff5       SB           -11, UNC
3f3881:              $C$L35:
003f3881   8af4       MOVL         XAR4, *+XAR4[6]
003f3882   d0a6       MOVB         XAR0, #0xa6
003f3883   8a94       MOVL         XAR4, *+XAR4[AR0]
3f3884:              $C$L36:
003f3884   d018       MOVB         XAR0, #0x18
003f3885   6ff0       SB           -16, UNC
3f3886:              $C$L37:
003f3886   8af4       MOVL         XAR4, *+XAR4[6]
003f3887   d0a6       MOVB         XAR0, #0xa6
003f3888   8a94       MOVL         XAR4, *+XAR4[AR0]
003f3889   d018       MOVB         XAR0, #0x18
3f388a:              $C$L38:
003f388a   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f388b   0194
3f388c:              $C$L39:
003f388c   0006       LRETR        
3f388d:              _MB_FuncReadHoldingRegister:
003f388d   b2bd       MOVL         *SP++, XAR1
003f388e   d008       MOVB         XAR0, #0x8
003f388f   8ba4       MOVL         XAR1, XAR4
003f3890   8a91       MOVL         XAR4, *+XAR1[AR0]
003f3891   83a4       MOVL         XAR5, XAR4
003f3892   dd02       ADDB         XAR5, #2
003f3893   92c5       MOV          AL, *+XAR5[0]
003f3894   5603       MOV          ACC, AL << 8
003f3895   08a9
003f3896   cacd       OR           AL, *+XAR5[1]
003f3897   520b       CMPB         AL, #0xb
003f3898   620d       SB           13, GT
003f3899   520b       CMPB         AL, #0xb
003f389a   ec29       SBF          41, EQ
003f389b   5200       CMPB         AL, #0x0
003f389c   ec31       SBF          49, EQ
003f389d   5201       CMPB         AL, #0x1
003f389e   ec2d       SBF          45, EQ
003f389f   5202       CMPB         AL, #0x2
003f38a0   ec25       SBF          37, EQ
003f38a1   9cfc       ADDB         AL, #-4
003f38a2   5206       CMPB         AL, #0x6
003f38a3   692f       SB           47, LOS
003f38a4   6f09       SB           9, UNC
3f38a5:              $C$L40:
003f38a5   520d       CMPB         AL, #0xd
003f38a6   ec18       SBF          24, EQ
003f38a7   520e       CMPB         AL, #0xe
003f38a8   ec11       SBF          17, EQ
003f38a9   520f       CMPB         AL, #0xf
003f38aa   ec0a       SBF          10, EQ
003f38ab   5224       CMPB         AL, #0x24
003f38ac   ec04       SBF          4, EQ
3f38ad:              $C$L41:
003f38ad   28a9       MOV          AL, #0xffff
003f38ae   ffff
003f38af   6f23       SB           35, UNC
3f38b0:              $C$L42:
003f38b0   83f1       MOVL         XAR5, *+XAR1[6]
003f38b1   d027       MOVB         XAR0, #0x27
3f38b2:              $C$L43:
003f38b2   9295       MOV          AL, *+XAR5[AR0]
003f38b3   6f1f       SB           31, UNC
3f38b4:              $C$L44:
003f38b4   83f1       MOVL         XAR5, *+XAR1[6]
003f38b5   d0a6       MOVB         XAR0, #0xa6
003f38b6   8395       MOVL         XAR5, *+XAR5[AR0]
003f38b7   d016       MOVB         XAR0, #0x16
003f38b8   6f0f       SB           15, UNC
3f38b9:              $C$L45:
003f38b9   83f1       MOVL         XAR5, *+XAR1[6]
003f38ba   d0a6       MOVB         XAR0, #0xa6
003f38bb   8395       MOVL         XAR5, *+XAR5[AR0]
003f38bc   d015       MOVB         XAR0, #0x15
003f38bd   6ff5       SB           -11, UNC
3f38be:              $C$L46:
003f38be   83f1       MOVL         XAR5, *+XAR1[6]
003f38bf   d0a6       MOVB         XAR0, #0xa6
003f38c0   8395       MOVL         XAR5, *+XAR5[AR0]
003f38c1   d00f       MOVB         XAR0, #0xf
003f38c2   6ff0       SB           -16, UNC
3f38c3:              $C$L47:
003f38c3   d040       MOVB         XAR0, #0x40
003f38c4   6f02       SB           2, UNC
3f38c5:              $C$L48:
003f38c5   d032       MOVB         XAR0, #0x32
3f38c6:              $C$L49:
003f38c6   83f1       MOVL         XAR5, *+XAR1[6]
3f38c7:              $C$L50:
003f38c7   0695       MOVL         ACC, *+XAR5[AR0]
003f38c8   767f       LCR          0x3f36ea
003f38c9   36ea
003f38ca   6f08       SB           8, UNC
3f38cb:              $C$L51:
003f38cb   d038       MOVB         XAR0, #0x38
003f38cc   6ffa       SB           -6, UNC
3f38cd:              $C$L52:
003f38cd   8af1       MOVL         XAR4, *+XAR1[6]
003f38ce   767f       LCR          0x3f2889
003f38cf   2889
003f38d0   d008       MOVB         XAR0, #0x8
003f38d1   8a91       MOVL         XAR4, *+XAR1[AR0]
3f38d2:              $C$L53:
003f38d2   cda9       AND          AH, AL, #0xff
003f38d3   00ff
003f38d4   d008       MOVB         XAR0, #0x8
003f38d5   97ec       MOV          *+XAR4[5], AH
003f38d6   8a91       MOVL         XAR4, *+XAR1[AR0]
003f38d7   ffc7       LSR          AL, 8
003f38d8   96e4       MOV          *+XAR4[4], AL
003f38d9   8bbe       MOVL         XAR1, *--SP
003f38da   0006       LRETR        
3f38db:              _MB_Poll:
003f38db   83a4       MOVL         XAR5, XAR4
003f38dc   b2bd       MOVL         *SP++, XAR1
003f38dd   dd1c       ADDB         XAR5, #28
003f38de   767f       LCR          0x3f3816
003f38df   3816
003f38e0   8ba4       MOVL         XAR1, XAR4
003f38e1   5201       CMPB         AL, #0x1
003f38e2   ed49       SBF          73, NEQ
003f38e3   d01c       MOVB         XAR0, #0x1c
003f38e4   9291       MOV          AL, *+XAR1[AR0]
003f38e5   5201       CMPB         AL, #0x1
003f38e6   ec2f       SBF          47, EQ
003f38e7   5202       CMPB         AL, #0x2
003f38e8   ed43       SBF          67, NEQ
003f38e9   d008       MOVB         XAR0, #0x8
003f38ea   8a91       MOVL         XAR4, *+XAR1[AR0]
003f38eb   761f       MOVW         DP, #0xc
003f38ec   000c
003f38ed   92cc       MOV          AL, *+XAR4[1]
003f38ee   5203       CMPB         AL, #0x3
003f38ef   9625       MOV          @0x25, AL
003f38f0   ec0d       SBF          13, EQ
003f38f1   5205       CMPB         AL, #0x5
003f38f2   ec07       SBF          7, EQ
003f38f3   5206       CMPB         AL, #0x6
003f38f4   ed0e       SBF          14, NEQ
003f38f5   8aa1       MOVL         XAR4, XAR1
003f38f6   767f       LCR          0x3f3823
003f38f7   3823
003f38f8   6f08       SB           8, UNC
3f38f9:              $C$L54:
003f38f9   8aa1       MOVL         XAR4, XAR1
003f38fa   767f       LCR          0x3f384f
003f38fb   384f
003f38fc   6f04       SB           4, UNC
3f38fd:              $C$L55:
003f38fd   8aa1       MOVL         XAR4, XAR1
003f38fe   767f       LCR          0x3f388d
003f38ff   388d
3f3900:              $C$L56:
003f3900   d008       MOVB         XAR0, #0x8
003f3901   8a91       MOVL         XAR4, *+XAR1[AR0]
3f3902:              $C$L57:
003f3902   92c4       MOV          AL, *+XAR4[0]
003f3903   5210       CMPB         AL, #0x10
003f3904   ec27       SBF          39, EQ
003f3905   761f       MOVW         DP, #0xc
003f3906   000c
003f3907   9224       MOV          AL, @0x24
003f3908   ec07       SBF          7, EQ
003f3909   8a26       MOVL         XAR4, @0x26
003f390a   9225       MOV          AL, @0x25
003f390b   5080       ORB          AL, #0x80
003f390c   96c4       MOV          *+XAR4[0], AL
003f390d   9224       MOV          AL, @0x24
003f390e   96cc       MOV          *+XAR4[1], AL
3f390f:              $C$L58:
003f390f   8aa1       MOVL         XAR4, XAR1
003f3910   767f       LCR          0x3f3771
003f3911   3771
003f3912   d018       MOVB         XAR0, #0x18
003f3913   9691       MOV          *+XAR1[AR0], AL
003f3914   6f17       SB           23, UNC
3f3915:              $C$L59:
003f3915   767f       LCR          0x3f3800
003f3916   3800
003f3917   d018       MOVB         XAR0, #0x18
003f3918   9691       MOV          *+XAR1[AR0], AL
003f3919   d018       MOVB         XAR0, #0x18
003f391a   9291       MOV          AL, *+XAR1[AR0]
003f391b   ed10       SBF          16, NEQ
003f391c   d008       MOVB         XAR0, #0x8
003f391d   8a91       MOVL         XAR4, *+XAR1[AR0]
003f391e   88c4       MOVZ         AR6, *+XAR4[0]
003f391f   d017       MOVB         XAR0, #0x17
003f3920   0e91       MOVU         ACC, *+XAR1[AR0]
003f3921   80a6       MOVZ         AR7, AR6
003f3922   0fa7       CMPL         ACC, XAR7
003f3923   ec04       SBF          4, EQ
003f3924   92a6       MOV          AL, AR6
003f3925   5210       CMPB         AL, #0x10
003f3926   ed05       SBF          5, NEQ
3f3927:              $C$L60:
003f3927   9a02       MOVB         AL, #0x2
003f3928   8aa1       MOVL         XAR4, XAR1
003f3929   767f       LCR          0x3f36ef
003f392a   36ef
3f392b:              $C$L61:
003f392b   9a00       MOVB         AL, #0x0
003f392c   8bbe       MOVL         XAR1, *--SP
003f392d   0006       LRETR        
3f392e:              _ADC_setupSocTrigSrc:
003f392e   80a8       MOVZ         AR7, AH
003f392f   88a9       MOVZ         AR6, AL
003f3930   5603       MOV          ACC, AR6 << 1
003f3931   01a6
003f3932   2da9       MOV          T, AL
003f3933   7622       EALLOW       
003f3934   93a6       MOV          AH, AR6
003f3935   5308       CMPB         AH, #0x8
003f3936   640f       SB           15, LT
003f3937   9cf0       ADDB         AL, #-16
003f3938   8f40       MOVL         XAR5, #0x006615
003f3939   6615
003f393a   2da9       MOV          T, AL
003f393b   a8a9       MOVL         ACC, XAR4
003f393c   5601       ADDL         XAR5, ACC
003f393d   00a5
003f393e   9a03       MOVB         AL, #0x3
003f393f   ff66       LSL          AL, T
003f3940   ff5e       NOT          AL
003f3941   c0c5       AND          *+XAR5[0], AL
003f3942   8f40       MOVL         XAR5, #0x006615
003f3943   6615
003f3944   6f0c       SB           12, UNC
3f3945:              $C$L1:
003f3945   8f40       MOVL         XAR5, #0x006614
003f3946   6614
003f3947   a8a9       MOVL         ACC, XAR4
003f3948   5601       ADDL         XAR5, ACC
003f3949   00a5
003f394a   9a03       MOVB         AL, #0x3
003f394b   ff66       LSL          AL, T
003f394c   ff5e       NOT          AL
003f394d   c0c5       AND          *+XAR5[0], AL
003f394e   8f40       MOVL         XAR5, #0x006614
003f394f   6614
3f3950:              $C$L2:
003f3950   a8a9       MOVL         ACC, XAR4
003f3951   5601       ADDL         XAR5, ACC
003f3952   00a5
003f3953   92a7       MOV          AL, AR7
003f3954   ff66       LSL          AL, T
003f3955   98c5       OR           *+XAR5[0], AL
003f3956   761a       EDIS         
003f3957   ff69       SPM          #0
003f3958   0006       LRETR        
3f3959:              _ADC_setVoltRefSrc:
003f3959   88a9       MOVZ         AR6, AL
003f395a   a8a9       MOVL         ACC, XAR4
003f395b   7622       EALLOW       
003f395c   8f00       MOVL         XAR4, #0x006600
003f395d   6600
003f395e   5601       ADDL         XAR4, ACC
003f395f   00a4
003f3960   18c4       AND          *+XAR4[0], #0xfff7
003f3961   fff7
003f3962   8f00       MOVL         XAR4, #0x006600
003f3963   6600
003f3964   5601       ADDL         XAR4, ACC
003f3965   00a4
003f3966   92a6       MOV          AL, AR6
003f3967   98c4       OR           *+XAR4[0], AL
003f3968   761a       EDIS         
003f3969   ff69       SPM          #0
003f396a   0006       LRETR        
3f396b:              _ADC_setTempSensorSrc:
003f396b   88a9       MOVZ         AR6, AL
003f396c   a8a9       MOVL         ACC, XAR4
003f396d   7622       EALLOW       
003f396e   8f00       MOVL         XAR4, #0x006600
003f396f   6600
003f3970   5601       ADDL         XAR4, ACC
003f3971   00a4
003f3972   18c4       AND          *+XAR4[0], #0xfffe
003f3973   fffe
003f3974   8f00       MOVL         XAR4, #0x006600
003f3975   6600
003f3976   5601       ADDL         XAR4, ACC
003f3977   00a4
003f3978   92a6       MOV          AL, AR6
003f3979   98c4       OR           *+XAR4[0], AL
003f397a   761a       EDIS         
003f397b   ff69       SPM          #0
003f397c   0006       LRETR        
3f397d:              _ADC_setSocTrigSrc:
003f397d   88a8       MOVZ         AR6, AH
003f397e   7622       EALLOW       
003f397f   3b01       SETC         SXM
003f3980   a8ab       MOVL         P, XAR4
003f3981   85a9       MOV          ACC, AL
003f3982   8f00       MOVL         XAR4, #0x006620
003f3983   6620
003f3984   5601       ADDL         P, ACC
003f3985   00ab
003f3986   92a6       MOV          AL, AR6
003f3987   5657       ADDUL        P, XAR4
003f3988   00a4
003f3989   a9a4       MOVL         XAR4, P
003f398a   18c4       AND          *+XAR4[0], #0x07ff
003f398b   07ff
003f398c   98c4       OR           *+XAR4[0], AL
003f398d   761a       EDIS         
003f398e   ff69       SPM          #0
003f398f   0006       LRETR        
3f3990:              _ADC_setSocSampleDelay:
003f3990   88a8       MOVZ         AR6, AH
003f3991   7622       EALLOW       
003f3992   3b01       SETC         SXM
003f3993   a8ab       MOVL         P, XAR4
003f3994   85a9       MOV          ACC, AL
003f3995   8f00       MOVL         XAR4, #0x006620
003f3996   6620
003f3997   5601       ADDL         P, ACC
003f3998   00ab
003f3999   92a6       MOV          AL, AR6
003f399a   5657       ADDUL        P, XAR4
003f399b   00a4
003f399c   a9a4       MOVL         XAR4, P
003f399d   18c4       AND          *+XAR4[0], #0xffc0
003f399e   ffc0
003f399f   98c4       OR           *+XAR4[0], AL
003f39a0   761a       EDIS         
003f39a1   ff69       SPM          #0
003f39a2   0006       LRETR        
3f39a3:              _ADC_setSocFrcWord:
003f39a3   7622       EALLOW       
003f39a4   8d00       MOVL         XAR0, #0x00661a
003f39a5   661a
003f39a6   9694       MOV          *+XAR4[AR0], AL
003f39a7   761a       EDIS         
003f39a8   ff69       SPM          #0
003f39a9   0006       LRETR        
3f39aa:              _ADC_setSocFrc:
003f39aa   2da9       MOV          T, AL
003f39ab   7622       EALLOW       
003f39ac   8d00       MOVL         XAR0, #0x00661a
003f39ad   661a
003f39ae   9a01       MOVB         AL, #0x1
003f39af   ff66       LSL          AL, T
003f39b0   9694       MOV          *+XAR4[AR0], AL
003f39b1   761a       EDIS         
003f39b2   ff69       SPM          #0
003f39b3   0006       LRETR        
3f39b4:              _ADC_setSocChanNumber:
003f39b4   88a8       MOVZ         AR6, AH
003f39b5   7622       EALLOW       
003f39b6   3b01       SETC         SXM
003f39b7   a8ab       MOVL         P, XAR4
003f39b8   85a9       MOV          ACC, AL
003f39b9   8f00       MOVL         XAR4, #0x006620
003f39ba   6620
003f39bb   5601       ADDL         P, ACC
003f39bc   00ab
003f39bd   92a6       MOV          AL, AR6
003f39be   5657       ADDUL        P, XAR4
003f39bf   00a4
003f39c0   a9a4       MOVL         XAR4, P
003f39c1   18c4       AND          *+XAR4[0], #0xfc3f
003f39c2   fc3f
003f39c3   98c4       OR           *+XAR4[0], AL
003f39c4   761a       EDIS         
003f39c5   ff69       SPM          #0
003f39c6   0006       LRETR        
3f39c7:              _ADC_setSampleOverlapMode:
003f39c7   7622       EALLOW       
003f39c8   5200       CMPB         AL, #0x0
003f39c9   ec09       SBF          9, EQ
003f39ca   8f40       MOVL         XAR5, #0x006601
003f39cb   6601
003f39cc   a8a9       MOVL         ACC, XAR4
003f39cd   5601       ADDL         XAR5, ACC
003f39ce   00a5
003f39cf   1ac5       OR           *+XAR5[0], #0x0002
003f39d0   0002
003f39d1   6f08       SB           8, UNC
3f39d2:              $C$L3:
003f39d2   8f40       MOVL         XAR5, #0x006601
003f39d3   6601
003f39d4   a8a9       MOVL         ACC, XAR4
003f39d5   5601       ADDL         XAR5, ACC
003f39d6   00a5
003f39d7   18c5       AND          *+XAR5[0], #0xfffd
003f39d8   fffd
3f39d9:              $C$L4:
003f39d9   761a       EDIS         
003f39da   ff69       SPM          #0
003f39db   0006       LRETR        
3f39dc:              _ADC_setSampleMode:
003f39dc   88a9       MOVZ         AR6, AL
003f39dd   a8a9       MOVL         ACC, XAR4
003f39de   7622       EALLOW       
003f39df   48a6       TBIT         AR6, #0x8
003f39e0   ee08       SBF          8, TC
003f39e1   8f00       MOVL         XAR4, #0x006612
003f39e2   6612
003f39e3   5601       ADDL         XAR4, ACC
003f39e4   00a4
003f39e5   92a6       MOV          AL, AR6
003f39e6   98c4       OR           *+XAR4[0], AL
003f39e7   6f0a       SB           10, UNC
3f39e8:              $C$L5:
003f39e8   8f00       MOVL         XAR4, #0x006612
003f39e9   6612
003f39ea   5601       ADDL         XAR4, ACC
003f39eb   00a4
003f39ec   92a6       MOV          AL, AR6
003f39ed   08a9       ADD          AL, #-256
003f39ee   ff00
003f39ef   ff5e       NOT          AL
003f39f0   c0c4       AND          *+XAR4[0], AL
3f39f1:              $C$L6:
003f39f1   761a       EDIS         
003f39f2   ff69       SPM          #0
003f39f3   0006       LRETR        
3f39f4:              _ADC_setOffTrim:
003f39f4   7622       EALLOW       
003f39f5   8d00       MOVL         XAR0, #0x006641
003f39f6   6641
003f39f7   9694       MOV          *+XAR4[AR0], AL
003f39f8   761a       EDIS         
003f39f9   ff69       SPM          #0
003f39fa   0006       LRETR        
3f39fb:              _ADC_setIntSrc:
003f39fb   80a8       MOVZ         AR7, AH
003f39fc   88a9       MOVZ         AR6, AL
003f39fd   7622       EALLOW       
003f39fe   28ac       MOV          T, #0x0008
003f39ff   0008
003f3a00   5603       MOV          ACC, AR6 << 3
003f3a01   03a6
003f3a02   8f40       MOVL         XAR5, #0x006608
003f3a03   6608
003f3a04   ff5e       NOT          AL
003f3a05   9008       ANDB         AL, #0x8
003f3a06   74ac       SUB          T, AL
003f3a07   92a6       MOV          AL, AR6
003f3a08   ffa0       ASR          AL, 1
003f3a09   88a9       MOVZ         AR6, AL
003f3a0a   a8a9       MOVL         ACC, XAR4
003f3a0b   0da6       ADDU         ACC, AR6
003f3a0c   5601       ADDL         XAR5, ACC
003f3a0d   00a5
003f3a0e   9a1f       MOVB         AL, #0x1f
003f3a0f   ff66       LSL          AL, T
003f3a10   ff5e       NOT          AL
003f3a11   c0c5       AND          *+XAR5[0], AL
003f3a12   92a7       MOV          AL, AR7
003f3a13   ff66       LSL          AL, T
003f3a14   98c5       OR           *+XAR5[0], AL
003f3a15   761a       EDIS         
003f3a16   ff69       SPM          #0
003f3a17   0006       LRETR        
3f3a18:              _ADC_setIntPulseGenMode:
003f3a18   88a9       MOVZ         AR6, AL
003f3a19   a8a9       MOVL         ACC, XAR4
003f3a1a   7622       EALLOW       
003f3a1b   8f00       MOVL         XAR4, #0x006600
003f3a1c   6600
003f3a1d   5601       ADDL         XAR4, ACC
003f3a1e   00a4
003f3a1f   18c4       AND          *+XAR4[0], #0xfffb
003f3a20   fffb
003f3a21   8f00       MOVL         XAR4, #0x006600
003f3a22   6600
003f3a23   5601       ADDL         XAR4, ACC
003f3a24   00a4
003f3a25   92a6       MOV          AL, AR6
003f3a26   98c4       OR           *+XAR4[0], AL
003f3a27   761a       EDIS         
003f3a28   ff69       SPM          #0
003f3a29   0006       LRETR        
3f3a2a:              _ADC_setIntMode:
003f3a2a   80a8       MOVZ         AR7, AH
003f3a2b   88a9       MOVZ         AR6, AL
003f3a2c   7622       EALLOW       
003f3a2d   28ac       MOV          T, #0x0008
003f3a2e   0008
003f3a2f   5603       MOV          ACC, AR6 << 3
003f3a30   03a6
003f3a31   8f40       MOVL         XAR5, #0x006608
003f3a32   6608
003f3a33   ff5e       NOT          AL
003f3a34   9008       ANDB         AL, #0x8
003f3a35   74ac       SUB          T, AL
003f3a36   92a6       MOV          AL, AR6
003f3a37   ffa0       ASR          AL, 1
003f3a38   88a9       MOVZ         AR6, AL
003f3a39   a8a9       MOVL         ACC, XAR4
003f3a3a   0da6       ADDU         ACC, AR6
003f3a3b   5601       ADDL         XAR5, ACC
003f3a3c   00a5
003f3a3d   9a40       MOVB         AL, #0x40
003f3a3e   ff66       LSL          AL, T
003f3a3f   ff5e       NOT          AL
003f3a40   c0c5       AND          *+XAR5[0], AL
003f3a41   92a7       MOV          AL, AR7
003f3a42   ff66       LSL          AL, T
003f3a43   98c5       OR           *+XAR5[0], AL
003f3a44   761a       EDIS         
003f3a45   ff69       SPM          #0
003f3a46   0006       LRETR        
3f3a47:              _ADC_setDivideSelect:
003f3a47   88a9       MOVZ         AR6, AL
003f3a48   a8a9       MOVL         ACC, XAR4
003f3a49   7622       EALLOW       
003f3a4a   8f00       MOVL         XAR4, #0x006601
003f3a4b   6601
003f3a4c   5601       ADDL         XAR4, ACC
003f3a4d   00a4
003f3a4e   18c4       AND          *+XAR4[0], #0xfffe
003f3a4f   fffe
003f3a50   8f00       MOVL         XAR4, #0x006601
003f3a51   6601
003f3a52   5601       ADDL         XAR4, ACC
003f3a53   00a4
003f3a54   92a6       MOV          AL, AR6
003f3a55   98c4       OR           *+XAR4[0], AL
003f3a56   761a       EDIS         
003f3a57   ff69       SPM          #0
003f3a58   0006       LRETR        
3f3a59:              _ADC_reset:
003f3a59   a8a9       MOVL         ACC, XAR4
003f3a5a   7622       EALLOW       
003f3a5b   8f00       MOVL         XAR4, #0x006600
003f3a5c   6600
003f3a5d   5601       ADDL         XAR4, ACC
003f3a5e   00a4
003f3a5f   1ac4       OR           *+XAR4[0], #0x8000
003f3a60   8000
003f3a61   761a       EDIS         
003f3a62   ff69       SPM          #0
003f3a63   0006       LRETR        
3f3a64:              _ADC_powerUp:
003f3a64   a8a9       MOVL         ACC, XAR4
003f3a65   7622       EALLOW       
003f3a66   8f00       MOVL         XAR4, #0x006600
003f3a67   6600
003f3a68   5601       ADDL         XAR4, ACC
003f3a69   00a4
003f3a6a   1ac4       OR           *+XAR4[0], #0x0080
003f3a6b   0080
003f3a6c   761a       EDIS         
003f3a6d   ff69       SPM          #0
003f3a6e   0006       LRETR        
3f3a6f:              _ADC_powerDown:
003f3a6f   a8a9       MOVL         ACC, XAR4
003f3a70   7622       EALLOW       
003f3a71   8f00       MOVL         XAR4, #0x006600
003f3a72   6600
003f3a73   5601       ADDL         XAR4, ACC
003f3a74   00a4
003f3a75   18c4       AND          *+XAR4[0], #0xff7f
003f3a76   ff7f
003f3a77   761a       EDIS         
003f3a78   ff69       SPM          #0
003f3a79   0006       LRETR        
3f3a7a:              _ADC_init:
003f3a7a   1ea6       MOVL         XAR6, ACC
003f3a7b   ff20       MOV          ACC, #26192
003f3a7c   6650
003f3a7d   0fa6       CMPL         ACC, XAR6
003f3a7e   6902       SB           2, LOS
003f3a7f   d400       MOVB         XAR4, #0x0
3f3a80:              $C$L7:
003f3a80   0006       LRETR        
3f3a81:              _ADC_getDivideSelect:
003f3a81   8d00       MOVL         XAR0, #0x006601
003f3a82   6601
003f3a83   cc94       AND          AL, *+XAR4[AR0], #0x1
003f3a84   0001
003f3a85   0006       LRETR        
3f3a86:              _ADC_enableVoltRefLoConv:
003f3a86   a8a9       MOVL         ACC, XAR4
003f3a87   7622       EALLOW       
003f3a88   8f00       MOVL         XAR4, #0x006600
003f3a89   6600
003f3a8a   5601       ADDL         XAR4, ACC
003f3a8b   00a4
003f3a8c   1ac4       OR           *+XAR4[0], #0x0002
003f3a8d   0002
003f3a8e   761a       EDIS         
003f3a8f   ff69       SPM          #0
003f3a90   0006       LRETR        
3f3a91:              _ADC_enableRefBuffers:
003f3a91   a8a9       MOVL         ACC, XAR4
003f3a92   7622       EALLOW       
003f3a93   8f00       MOVL         XAR4, #0x006600
003f3a94   6600
003f3a95   5601       ADDL         XAR4, ACC
003f3a96   00a4
003f3a97   1ac4       OR           *+XAR4[0], #0x0020
003f3a98   0020
003f3a99   761a       EDIS         
003f3a9a   ff69       SPM          #0
003f3a9b   0006       LRETR        
3f3a9c:              _ADC_enableNoOverlapMode:
003f3a9c   a8a9       MOVL         ACC, XAR4
003f3a9d   7622       EALLOW       
003f3a9e   8f00       MOVL         XAR4, #0x006601
003f3a9f   6601
003f3aa0   5601       ADDL         XAR4, ACC
003f3aa1   00a4
003f3aa2   1ac4       OR           *+XAR4[0], #0x0002
003f3aa3   0002
003f3aa4   761a       EDIS         
003f3aa5   ff69       SPM          #0
003f3aa6   0006       LRETR        
3f3aa7:              _ADC_enableInt:
003f3aa7   88a9       MOVZ         AR6, AL
003f3aa8   7622       EALLOW       
003f3aa9   ffa0       ASR          AL, 1
003f3aaa   8f40       MOVL         XAR5, #0x006608
003f3aab   6608
003f3aac   80a9       MOVZ         AR7, AL
003f3aad   28ac       MOV          T, #0x0008
003f3aae   0008
003f3aaf   a8a9       MOVL         ACC, XAR4
003f3ab0   0da7       ADDU         ACC, AR7
003f3ab1   5601       ADDL         XAR5, ACC
003f3ab2   00a5
003f3ab3   5603       MOV          ACC, AR6 << 3
003f3ab4   03a6
003f3ab5   ff5e       NOT          AL
003f3ab6   9008       ANDB         AL, #0x8
003f3ab7   74ac       SUB          T, AL
003f3ab8   9a20       MOVB         AL, #0x20
003f3ab9   ff66       LSL          AL, T
003f3aba   98c5       OR           *+XAR5[0], AL
003f3abb   761a       EDIS         
003f3abc   ff69       SPM          #0
003f3abd   0006       LRETR        
3f3abe:              _ADC_enableBandGap:
003f3abe   a8a9       MOVL         ACC, XAR4
003f3abf   7622       EALLOW       
003f3ac0   8f00       MOVL         XAR4, #0x006600
003f3ac1   6600
003f3ac2   5601       ADDL         XAR4, ACC
003f3ac3   00a4
003f3ac4   1ac4       OR           *+XAR4[0], #0x0040
003f3ac5   0040
003f3ac6   761a       EDIS         
003f3ac7   ff69       SPM          #0
003f3ac8   0006       LRETR        
3f3ac9:              _ADC_enable:
003f3ac9   a8a9       MOVL         ACC, XAR4
003f3aca   7622       EALLOW       
003f3acb   8f00       MOVL         XAR4, #0x006600
003f3acc   6600
003f3acd   5601       ADDL         XAR4, ACC
003f3ace   00a4
003f3acf   1ac4       OR           *+XAR4[0], #0x4000
003f3ad0   4000
003f3ad1   761a       EDIS         
003f3ad2   ff69       SPM          #0
003f3ad3   0006       LRETR        
3f3ad4:              _ADC_disableVoltRefLoConv:
003f3ad4   a8a9       MOVL         ACC, XAR4
003f3ad5   7622       EALLOW       
003f3ad6   8f00       MOVL         XAR4, #0x006600
003f3ad7   6600
003f3ad8   5601       ADDL         XAR4, ACC
003f3ad9   00a4
003f3ada   18c4       AND          *+XAR4[0], #0xfffd
003f3adb   fffd
003f3adc   761a       EDIS         
003f3add   ff69       SPM          #0
003f3ade   0006       LRETR        
3f3adf:              _ADC_disableRefBuffers:
003f3adf   a8a9       MOVL         ACC, XAR4
003f3ae0   7622       EALLOW       
003f3ae1   8f00       MOVL         XAR4, #0x006600
003f3ae2   6600
003f3ae3   5601       ADDL         XAR4, ACC
003f3ae4   00a4
003f3ae5   18c4       AND          *+XAR4[0], #0xffdf
003f3ae6   ffdf
003f3ae7   761a       EDIS         
003f3ae8   ff69       SPM          #0
003f3ae9   0006       LRETR        
3f3aea:              _ADC_disableNoOverlapMode:
003f3aea   a8a9       MOVL         ACC, XAR4
003f3aeb   7622       EALLOW       
003f3aec   8f00       MOVL         XAR4, #0x006601
003f3aed   6601
003f3aee   5601       ADDL         XAR4, ACC
003f3aef   00a4
003f3af0   18c4       AND          *+XAR4[0], #0xfffd
003f3af1   fffd
003f3af2   761a       EDIS         
003f3af3   ff69       SPM          #0
003f3af4   0006       LRETR        
3f3af5:              _ADC_disableInt:
003f3af5   88a9       MOVZ         AR6, AL
003f3af6   5603       MOV          ACC, AR6 << 3
003f3af7   03a6
003f3af8   28ac       MOV          T, #0x0008
003f3af9   0008
003f3afa   ff5e       NOT          AL
003f3afb   9b20       MOVB         AH, #0x20
003f3afc   9008       ANDB         AL, #0x8
003f3afd   74ac       SUB          T, AL
003f3afe   ff67       LSL          AH, T
003f3aff   80a8       MOVZ         AR7, AH
003f3b00   7622       EALLOW       
003f3b01   8f40       MOVL         XAR5, #0x006608
003f3b02   6608
003f3b03   92a6       MOV          AL, AR6
003f3b04   ffa0       ASR          AL, 1
003f3b05   88a9       MOVZ         AR6, AL
003f3b06   a8a9       MOVL         ACC, XAR4
003f3b07   0da6       ADDU         ACC, AR6
003f3b08   5601       ADDL         XAR5, ACC
003f3b09   00a5
003f3b0a   92a7       MOV          AL, AR7
003f3b0b   ff5e       NOT          AL
003f3b0c   c0c5       AND          *+XAR5[0], AL
003f3b0d   761a       EDIS         
003f3b0e   ff69       SPM          #0
003f3b0f   0006       LRETR        
3f3b10:              _ADC_disableBandGap:
003f3b10   a8a9       MOVL         ACC, XAR4
003f3b11   7622       EALLOW       
003f3b12   8f00       MOVL         XAR4, #0x006600
003f3b13   6600
003f3b14   5601       ADDL         XAR4, ACC
003f3b15   00a4
003f3b16   18c4       AND          *+XAR4[0], #0xffbf
003f3b17   ffbf
003f3b18   761a       EDIS         
003f3b19   ff69       SPM          #0
003f3b1a   0006       LRETR        
3f3b1b:              _ADC_disable:
003f3b1b   a8a9       MOVL         ACC, XAR4
003f3b1c   7622       EALLOW       
003f3b1d   8f00       MOVL         XAR4, #0x006600
003f3b1e   6600
003f3b1f   5601       ADDL         XAR4, ACC
003f3b20   00a4
003f3b21   18c4       AND          *+XAR4[0], #0xbfff
003f3b22   bfff
003f3b23   761a       EDIS         
003f3b24   ff69       SPM          #0
003f3b25   0006       LRETR        
3f3b26:              _MainLoop:
003f3b26   b2bd       MOVL         *SP++, XAR1
003f3b27   761f       MOVW         DP, #0x0
003f3b28   0000
003f3b29   8ba4       MOVL         XAR1, XAR4
003f3b2a   aabd       MOVL         *SP++, XAR2
003f3b2b   8a0a       MOVL         XAR4, @0xa
003f3b2c   86a5       MOVL         XAR2, XAR5
003f3b2d   767f       LCR          0x3f38db
003f3b2e   38db
003f3b2f   8aa1       MOVL         XAR4, XAR1
003f3b30   83a2       MOVL         XAR5, XAR2
003f3b31   767f       LCR          0x3f29bf
003f3b32   29bf
003f3b33   8aa1       MOVL         XAR4, XAR1
003f3b34   83a2       MOVL         XAR5, XAR2
003f3b35   767f       LCR          0x3f2901
003f3b36   2901
003f3b37   8aa1       MOVL         XAR4, XAR1
003f3b38   767f       LCR          0x3f2558
003f3b39   2558
003f3b3a   d0a6       MOVB         XAR0, #0xa6
003f3b3b   8a91       MOVL         XAR4, *+XAR1[AR0]
003f3b3c   767f       LCR          0x3f33a6
003f3b3d   33a6
003f3b3e   8aa1       MOVL         XAR4, XAR1
003f3b3f   767f       LCR          0x3f2ac8
003f3b40   2ac8
003f3b41   8ad1       MOVL         XAR4, *+XAR1[2]
003f3b42   d018       MOVB         XAR0, #0x18
003f3b43   8a94       MOVL         XAR4, *+XAR4[AR0]
003f3b44   d01b       MOVB         XAR0, #0x1b
003f3b45   9291       MOV          AL, *+XAR1[AR0]
003f3b46   767f       LCR          0x3fc5c0
003f3b47   c5c0
003f3b48   c5a1       MOVL         XAR7, XAR1
003f3b49   8ad1       MOVL         XAR4, *+XAR1[2]
003f3b4a   d0f2       MOVB         XAR0, #0xf2
003f3b4b   df20       ADDB         XAR7, #32
003f3b4c   92c7       MOV          AL, *+XAR7[0]
003f3b4d   9694       MOV          *+XAR4[AR0], AL
003f3b4e   86be       MOVL         XAR2, *--SP
003f3b4f   8bbe       MOVL         XAR1, *--SP
003f3b50   0006       LRETR        
3f3b51:              _main:
003f3b51   b2bd       MOVL         *SP++, XAR1
003f3b52   aabd       MOVL         *SP++, XAR2
003f3b53   fe06       ADDB         SP, #6
003f3b54   8f00       MOVL         XAR4, #0x008000
003f3b55   8000
003f3b56   8f7f       MOVL         XAR5, #0x3f4e43
003f3b57   4e43
003f3b58   a842       MOVL         *-SP[2], XAR4
003f3b59   8f3f       MOVL         XAR4, #0x3f4740
003f3b5a   4740
003f3b5b   767f       LCR          0x3f470e
003f3b5c   470e
003f3b5d   8f00       MOVL         XAR4, #0x000340
003f3b5e   0340
003f3b5f   02b6       MOVB         ACC, #182
003f3b60   767f       LCR          0x3f2258
003f3b61   2258
003f3b62   761f       MOVW         DP, #0x0
003f3b63   0000
003f3b64   02b0       MOVB         ACC, #176
003f3b65   a808       MOVL         @0x8, XAR4
003f3b66   8f00       MOVL         XAR4, #0x000140
003f3b67   0140
003f3b68   767f       LCR          0x3f27cc
003f3b69   27cc
003f3b6a   761f       MOVW         DP, #0x0
003f3b6b   0000
003f3b6c   8308       MOVL         XAR5, @0x8
003f3b6d   a804       MOVL         @0x4, XAR4
003f3b6e   767f       LCR          0x3f2745
003f3b6f   2745
003f3b70   8f00       MOVL         XAR4, #0x000040
003f3b71   0040
003f3b72   021e       MOVB         ACC, #30
003f3b73   767f       LCR          0x3f36e4
003f3b74   36e4
003f3b75   761f       MOVW         DP, #0x0
003f3b76   0000
003f3b77   8308       MOVL         XAR5, @0x8
003f3b78   d096       MOVB         XAR0, #0x96
003f3b79   a80a       MOVL         @0xa, XAR4
003f3b7a   8395       MOVL         XAR5, *+XAR5[AR0]
003f3b7b   767f       LCR          0x3f36de
003f3b7c   36de
003f3b7d   761f       MOVW         DP, #0x0
003f3b7e   0000
003f3b7f   8a08       MOVL         XAR4, @0x8
003f3b80   d08c       MOVB         XAR0, #0x8c
003f3b81   8394       MOVL         XAR5, *+XAR4[AR0]
003f3b82   8a0a       MOVL         XAR4, @0xa
003f3b83   767f       LCR          0x3f36dc
003f3b84   36dc
003f3b85   761f       MOVW         DP, #0x0
003f3b86   0000
003f3b87   8a08       MOVL         XAR4, @0x8
003f3b88   d008       MOVB         XAR0, #0x8
003f3b89   8394       MOVL         XAR5, *+XAR4[AR0]
003f3b8a   8a0a       MOVL         XAR4, @0xa
003f3b8b   767f       LCR          0x3f36e2
003f3b8c   36e2
003f3b8d   761f       MOVW         DP, #0x0
003f3b8e   0000
003f3b8f   8a0a       MOVL         XAR4, @0xa
003f3b90   8304       MOVL         XAR5, @0x4
003f3b91   767f       LCR          0x3f36e0
003f3b92   36e0
003f3b93   761f       MOVW         DP, #0x0
003f3b94   0000
003f3b95   8a04       MOVL         XAR4, @0x4
003f3b96   767f       LCR          0x3f262e
003f3b97   262e
003f3b98   761f       MOVW         DP, #0x0
003f3b99   0000
003f3b9a   8a04       MOVL         XAR4, @0x4
003f3b9b   767f       LCR          0x3f2ad3
003f3b9c   2ad3
003f3b9d   d500       MOVB         XAR5, #0x0
003f3b9e   8f00       MOVL         XAR4, #0x000200
003f3b9f   0200
003f3ba0   ff20       MOV          ACC, #274
003f3ba1   0112
003f3ba2   767f       LCR          0x3fd88b
003f3ba3   d88b
003f3ba4   761f       MOVW         DP, #0x0
003f3ba5   0000
003f3ba6   5dad       MOVZ         AR5, SP
003f3ba7   dd86       SUBB         XAR5, #6
003f3ba8   a806       MOVL         @0x6, XAR4
003f3ba9   767f       LCR          0x3f0e8a
003f3baa   0e8a
003f3bab   761f       MOVW         DP, #0x0
003f3bac   0000
003f3bad   8a04       MOVL         XAR4, @0x4
003f3bae   83a4       MOVL         XAR5, XAR4
003f3baf   c444       MOVL         XAR6, *-SP[4]
003f3bb0   0646       MOVL         ACC, *-SP[6]
003f3bb1   dd28       ADDB         XAR5, #40
003f3bb2   1ec5       MOVL         *+XAR5[0], ACC
003f3bb3   c2d5       MOVL         *+XAR5[2], XAR6
003f3bb4   8306       MOVL         XAR5, @0x6
003f3bb5   767f       LCR          0x3f2747
003f3bb6   2747
003f3bb7   8d40       MOVL         XAR1, #0x000080
003f3bb8   0080
003f3bb9   8aa1       MOVL         XAR4, XAR1
003f3bba   767f       LCR          0x3f0fa9
003f3bbb   0fa9
003f3bbc   761f       MOVW         DP, #0x0
003f3bbd   0000
003f3bbe   83a1       MOVL         XAR5, XAR1
003f3bbf   8a08       MOVL         XAR4, @0x8
003f3bc0   767f       LCR          0x3f219c
003f3bc1   219c
003f3bc2   8aa1       MOVL         XAR4, XAR1
003f3bc3   767f       LCR          0x3f0fc0
003f3bc4   0fc0
003f3bc5   8aa1       MOVL         XAR4, XAR1
003f3bc6   767f       LCR          0x3f0f24
003f3bc7   0f24
003f3bc8   8aa1       MOVL         XAR4, XAR1
003f3bc9   767f       LCR          0x3f1900
003f3bca   1900
003f3bcb   761f       MOVW         DP, #0x0
003f3bcc   0000
003f3bcd   8a08       MOVL         XAR4, @0x8
003f3bce   d0b4       MOVB         XAR0, #0xb4
003f3bcf   9294       MOV          AL, *+XAR4[AR0]
003f3bd0   8aa1       MOVL         XAR4, XAR1
003f3bd1   767f       LCR          0x3f1091
003f3bd2   1091
003f3bd3   761f       MOVW         DP, #0x0
003f3bd4   0000
003f3bd5   8a08       MOVL         XAR4, @0x8
003f3bd6   d0b4       MOVB         XAR0, #0xb4
003f3bd7   9294       MOV          AL, *+XAR4[AR0]
003f3bd8   8a0a       MOVL         XAR4, @0xa
003f3bd9   d017       MOVB         XAR0, #0x17
003f3bda   9c11       ADDB         AL, #17
003f3bdb   9694       MOV          *+XAR4[AR0], AL
003f3bdc   8aa1       MOVL         XAR4, XAR1
003f3bdd   767f       LCR          0x3f1026
003f3bde   1026
003f3bdf   8aa1       MOVL         XAR4, XAR1
003f3be0   767f       LCR          0x3f1097
003f3be1   1097
003f3be2   761f       MOVW         DP, #0x0
003f3be3   0000
003f3be4   83a1       MOVL         XAR5, XAR1
003f3be5   8a08       MOVL         XAR4, @0x8
003f3be6   767f       LCR          0x3f1def
003f3be7   1def
003f3be8   8aa1       MOVL         XAR4, XAR1
003f3be9   767f       LCR          0x3f1364
003f3bea   1364
003f3beb   761f       MOVW         DP, #0x0
003f3bec   0000
003f3bed   8a04       MOVL         XAR4, @0x4
003f3bee   d0a6       MOVB         XAR0, #0xa6
003f3bef   8a94       MOVL         XAR4, *+XAR4[AR0]
003f3bf0   767f       LCR          0x3f33ae
003f3bf1   33ae
003f3bf2   761f       MOVW         DP, #0x0
003f3bf3   0000
003f3bf4   8aa1       MOVL         XAR4, XAR1
003f3bf5   8604       MOVL         XAR2, @0x4
003f3bf6   767f       LCR          0x3f10fd
003f3bf7   10fd
003f3bf8   761f       MOVW         DP, #0x0
003f3bf9   0000
003f3bfa   d027       MOVB         XAR0, #0x27
003f3bfb   8a08       MOVL         XAR4, @0x8
003f3bfc   9692       MOV          *+XAR2[AR0], AL
003f3bfd   767f       LCR          0x3f1cc1
003f3bfe   1cc1
003f3bff   761f       MOVW         DP, #0x0
003f3c00   0000
003f3c01   8a08       MOVL         XAR4, @0x8
003f3c02   d078       MOVB         XAR0, #0x78
003f3c03   8394       MOVL         XAR5, *+XAR4[AR0]
003f3c04   7622       EALLOW       
003f3c05   d060       MOVB         XAR0, #0x60
003f3c06   7680       MOVL         XAR6, #0x00852e
003f3c07   852e
003f3c08   c295       MOVL         *+XAR5[AR0], XAR6
003f3c09   d0e0       MOVB         XAR0, #0xe0
003f3c0a   76bf       MOVL         XAR6, #0x3f43ef
003f3c0b   43ef
003f3c0c   c295       MOVL         *+XAR5[AR0], XAR6
003f3c0d   d0e2       MOVB         XAR0, #0xe2
003f3c0e   76bf       MOVL         XAR6, #0x3f43ca
003f3c0f   43ca
003f3c10   c295       MOVL         *+XAR5[AR0], XAR6
003f3c11   761a       EDIS         
003f3c12   ff69       SPM          #0
003f3c13   767f       LCR          0x3f231b
003f3c14   231b
003f3c15   761f       MOVW         DP, #0x0
003f3c16   0000
003f3c17   8f7f       MOVL         XAR5, #0x3f441b
003f3c18   441b
003f3c19   8a08       MOVL         XAR4, @0x8
003f3c1a   767f       LCR          0x3f2309
003f3c1b   2309
003f3c1c   761f       MOVW         DP, #0x0
003f3c1d   0000
003f3c1e   8a08       MOVL         XAR4, @0x8
003f3c1f   767f       LCR          0x3f2351
003f3c20   2351
003f3c21   761f       MOVW         DP, #0x0
003f3c22   0000
003f3c23   8a08       MOVL         XAR4, @0x8
003f3c24   767f       LCR          0x3f2349
003f3c25   2349
003f3c26   761f       MOVW         DP, #0x0
003f3c27   0000
003f3c28   8a08       MOVL         XAR4, @0x8
003f3c29   767f       LCR          0x3f234d
003f3c2a   234d
003f3c2b   761f       MOVW         DP, #0x0
003f3c2c   0000
003f3c2d   8a08       MOVL         XAR4, @0x8
003f3c2e   dc7c       ADDB         XAR4, #124
003f3c2f   83c4       MOVL         XAR5, *+XAR4[0]
003f3c30   7622       EALLOW       
003f3c31   dd18       ADDB         XAR5, #24
003f3c32   1ac5       OR           *+XAR5[0], #0x0004
003f3c33   0004
003f3c34   761a       EDIS         
003f3c35   83d4       MOVL         XAR5, *+XAR4[2]
003f3c36   7622       EALLOW       
003f3c37   dd18       ADDB         XAR5, #24
003f3c38   1ac5       OR           *+XAR5[0], #0x0004
003f3c39   0004
003f3c3a   761a       EDIS         
003f3c3b   8ae4       MOVL         XAR4, *+XAR4[4]
003f3c3c   7622       EALLOW       
003f3c3d   dc18       ADDB         XAR4, #24
003f3c3e   1ac4       OR           *+XAR4[0], #0x0004
003f3c3f   0004
003f3c40   761a       EDIS         
003f3c41   8a06       MOVL         XAR4, @0x6
003f3c42   d0f1       MOVB         XAR0, #0xf1
003f3c43   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f3c44   0194
003f3c45   8a04       MOVL         XAR4, @0x4
003f3c46   d08a       MOVB         XAR0, #0x8a
003f3c47   9a00       MOVB         AL, #0x0
003f3c48   ff69       SPM          #0
003f3c49   8a94       MOVL         XAR4, *+XAR4[AR0]
003f3c4a   767f       LCR          0x3f4142
003f3c4b   4142
003f3c4c   761f       MOVW         DP, #0x0
003f3c4d   0000
003f3c4e   8a04       MOVL         XAR4, @0x4
003f3c4f   d08a       MOVB         XAR0, #0x8a
003f3c50   9a01       MOVB         AL, #0x1
003f3c51   8a94       MOVL         XAR4, *+XAR4[AR0]
003f3c52   767f       LCR          0x3f4142
003f3c53   4142
003f3c54   761f       MOVW         DP, #0x0
003f3c55   0000
003f3c56   8a04       MOVL         XAR4, @0x4
003f3c57   767f       LCR          0x3f2b6b
003f3c58   2b6b
003f3c59   761f       MOVW         DP, #0x0
003f3c5a   0000
003f3c5b   8a04       MOVL         XAR4, @0x4
003f3c5c   6f26       SB           38, UNC
3f3c5d:              $C$L12:
003f3c5d   8a08       MOVL         XAR4, @0x8
003f3c5e   dc7c       ADDB         XAR4, #124
003f3c5f   83c4       MOVL         XAR5, *+XAR4[0]
003f3c60   7622       EALLOW       
003f3c61   dd18       ADDB         XAR5, #24
003f3c62   1ac5       OR           *+XAR5[0], #0x0004
003f3c63   0004
003f3c64   761a       EDIS         
003f3c65   83d4       MOVL         XAR5, *+XAR4[2]
003f3c66   7622       EALLOW       
003f3c67   dd18       ADDB         XAR5, #24
003f3c68   1ac5       OR           *+XAR5[0], #0x0004
003f3c69   0004
003f3c6a   761a       EDIS         
003f3c6b   8ae4       MOVL         XAR4, *+XAR4[4]
003f3c6c   7622       EALLOW       
003f3c6d   dc18       ADDB         XAR4, #24
003f3c6e   1ac4       OR           *+XAR4[0], #0x0004
003f3c6f   0004
003f3c70   761a       EDIS         
003f3c71   ff69       SPM          #0
003f3c72   83a1       MOVL         XAR5, XAR1
003f3c73   8a06       MOVL         XAR4, @0x6
003f3c74   767f       LCR          0x3f2d08
003f3c75   2d08
003f3c76   761f       MOVW         DP, #0x0
003f3c77   0000
003f3c78   8a04       MOVL         XAR4, @0x4
003f3c79   d019       MOVB         XAR0, #0x19
003f3c7a   2b94       MOV          *+XAR4[AR0], #0
003f3c7b   6f07       SB           7, UNC
3f3c7c:              $C$L13:
003f3c7c   8a0a       MOVL         XAR4, @0xa
003f3c7d   767f       LCR          0x3f38db
003f3c7e   38db
003f3c7f   761f       MOVW         DP, #0x0
003f3c80   0000
003f3c81   8a04       MOVL         XAR4, @0x4
3f3c82:              $C$L14:
003f3c82   d018       MOVB         XAR0, #0x18
003f3c83   9294       MOV          AL, *+XAR4[AR0]
003f3c84   ecf8       SBF          -8, EQ
003f3c85   83a1       MOVL         XAR5, XAR1
003f3c86   767f       LCR          0x3f286e
003f3c87   286e
003f3c88   761f       MOVW         DP, #0x0
003f3c89   0000
003f3c8a   83a1       MOVL         XAR5, XAR1
003f3c8b   8a06       MOVL         XAR4, @0x6
003f3c8c   767f       LCR          0x3f2d08
003f3c8d   2d08
003f3c8e   761f       MOVW         DP, #0x0
003f3c8f   0000
003f3c90   8304       MOVL         XAR5, @0x4
003f3c91   8a06       MOVL         XAR4, @0x6
003f3c92   c5a5       MOVL         XAR7, XAR5
003f3c93   d0f4       MOVB         XAR0, #0xf4
003f3c94   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
003f3c95   0194
003f3c96   d0f5       MOVB         XAR0, #0xf5
003f3c97   df1e       ADDB         XAR7, #30
003f3c98   92c7       MOV          AL, *+XAR7[0]
003f3c99   9694       MOV          *+XAR4[AR0], AL
003f3c9a   d018       MOVB         XAR0, #0x18
003f3c9b   8a94       MOVL         XAR4, *+XAR4[AR0]
003f3c9c   d01d       MOVB         XAR0, #0x1d
003f3c9d   9295       MOV          AL, *+XAR5[AR0]
003f3c9e   767f       LCR          0x3fc5b8
003f3c9f   c5b8
003f3ca0   761f       MOVW         DP, #0x0
003f3ca1   0000
003f3ca2   8a04       MOVL         XAR4, @0x4
003f3ca3   c5a4       MOVL         XAR7, XAR4
003f3ca4   8306       MOVL         XAR5, @0x6
003f3ca5   d0f3       MOVB         XAR0, #0xf3
003f3ca6   df1f       ADDB         XAR7, #31
003f3ca7   92c7       MOV          AL, *+XAR7[0]
003f3ca8   9695       MOV          *+XAR5[AR0], AL
3f3ca9:              $C$L15:
003f3ca9   d018       MOVB         XAR0, #0x18
003f3caa   9294       MOV          AL, *+XAR4[AR0]
003f3cab   ecb2       SBF          -78, EQ
003f3cac   83a1       MOVL         XAR5, XAR1
003f3cad   767f       LCR          0x3f3b26
003f3cae   3b26
003f3caf   761f       MOVW         DP, #0x0
003f3cb0   0000
003f3cb1   8a04       MOVL         XAR4, @0x4
003f3cb2   6ff7       SB           -9, UNC
3f3cb3:              _GPIO_toggle:
003f3cb3   2da9       MOV          T, AL
003f3cb4   7622       EALLOW       
003f3cb5   5220       CMPB         AL, #0x20
003f3cb6   6409       SB           9, LT
003f3cb7   0201       MOVB         ACC, #1
003f3cb8   1ea6       MOVL         XAR6, ACC
003f3cb9   d04e       MOVB         XAR0, #0x4e
003f3cba   92ac       MOV          AL, T
003f3cbb   9ce0       ADDB         AL, #-32
003f3cbc   2da9       MOV          T, AL
003f3cbd   06a6       MOVL         ACC, XAR6
003f3cbe   6f03       SB           3, UNC
3f3cbf:              $C$L1:
003f3cbf   0201       MOVB         ACC, #1
003f3cc0   d046       MOVB         XAR0, #0x46
3f3cc1:              $C$L2:
003f3cc1   563b       LSLL         ACC, T
003f3cc2   1e94       MOVL         *+XAR4[AR0], ACC
003f3cc3   761a       EDIS         
003f3cc4   ff69       SPM          #0
003f3cc5   0006       LRETR        
3f3cc6:              _GPIO_setQualificationPeriod:
003f3cc6   7622       EALLOW       
003f3cc7   5208       CMPB         AL, #0x8
003f3cc8   6421       SB           33, LT
003f3cc9   5210       CMPB         AL, #0x10
003f3cca   6419       SB           25, LT
003f3ccb   5218       CMPB         AL, #0x18
003f3ccc   6412       SB           18, LT
003f3ccd   5220       CMPB         AL, #0x20
003f3cce   6409       SB           9, LT
003f3ccf   5228       CMPB         AL, #0x28
003f3cd0   631e       SB           30, GEQ
003f3cd1   83a4       MOVL         XAR5, XAR4
003f3cd2   dc10       ADDB         XAR4, #16
003f3cd3   dd10       ADDB         XAR5, #16
003f3cd4   18c5       AND          *+XAR5[0], #0xff00
003f3cd5   ff00
003f3cd6   6f15       SB           21, UNC
3f3cd7:              $C$L3:
003f3cd7   0ea8       MOVU         ACC, AH
003f3cd8   28ac       MOV          T, #0x0018
003f3cd9   0018
003f3cda   18cc       AND          *+XAR4[1], #0x00ff
003f3cdb   00ff
003f3cdc   563b       LSLL         ACC, T
003f3cdd   6f0f       SB           15, UNC
3f3cde:              $C$L4:
003f3cde   2901       CLRC         SXM
003f3cdf   18cc       AND          *+XAR4[1], #0xff00
003f3ce0   ff00
003f3ce1   25a8       MOV          ACC, AH << 16
003f3ce2   6f0a       SB           10, UNC
3f3ce3:              $C$L5:
003f3ce3   2901       CLRC         SXM
003f3ce4   18c4       AND          *+XAR4[0], #0x00ff
003f3ce5   00ff
003f3ce6   5603       MOV          ACC, AH << 8
003f3ce7   08a8
003f3ce8   6f04       SB           4, UNC
3f3ce9:              $C$L6:
003f3ce9   18c4       AND          *+XAR4[0], #0xff00
003f3cea   ff00
3f3ceb:              $C$L7:
003f3ceb   0ea8       MOVU         ACC, AH
3f3cec:              $C$L8:
003f3cec   98c4       OR           *+XAR4[0], AL
003f3ced   99cc       OR           *+XAR4[1], AH
3f3cee:              $C$L9:
003f3cee   761a       EDIS         
003f3cef   ff69       SPM          #0
003f3cf0   0006       LRETR        
3f3cf1:              _GPIO_setQualification:
003f3cf1   88a8       MOVZ         AR6, AH
003f3cf2   7622       EALLOW       
003f3cf3   5210       CMPB         AL, #0x10
003f3cf4   6426       SB           38, LT
003f3cf5   5220       CMPB         AL, #0x20
003f3cf6   6415       SB           21, LT
003f3cf7   5230       CMPB         AL, #0x30
003f3cf8   632f       SB           47, GEQ
003f3cf9   9ce0       ADDB         AL, #-32
003f3cfa   83a4       MOVL         XAR5, XAR4
003f3cfb   5603       MOV          ACC, AL << 1
003f3cfc   01a9
003f3cfd   2da9       MOV          T, AL
003f3cfe   3b01       SETC         SXM
003f3cff   0203       MOVB         ACC, #3
003f3d00   dc12       ADDB         XAR4, #18
003f3d01   dd12       ADDB         XAR5, #18
003f3d02   563b       LSLL         ACC, T
003f3d03   ff55       NOT          ACC
003f3d04   c0c5       AND          *+XAR5[0], AL
003f3d05   c1cd       AND          *+XAR5[1], AH
003f3d06   85a6       MOV          ACC, AR6
003f3d07   563b       LSLL         ACC, T
003f3d08   98c4       OR           *+XAR4[0], AL
003f3d09   99cc       OR           *+XAR4[1], AH
003f3d0a   6f1d       SB           29, UNC
3f3d0b:              $C$L10:
003f3d0b   9cf0       ADDB         AL, #-16
003f3d0c   5603       MOV          ACC, AL << 1
003f3d0d   01a9
003f3d0e   3b01       SETC         SXM
003f3d0f   2da9       MOV          T, AL
003f3d10   0203       MOVB         ACC, #3
003f3d11   563b       LSLL         ACC, T
003f3d12   ff55       NOT          ACC
003f3d13   c0e4       AND          *+XAR4[4], AL
003f3d14   c1ec       AND          *+XAR4[5], AH
003f3d15   85a6       MOV          ACC, AR6
003f3d16   563b       LSLL         ACC, T
003f3d17   98e4       OR           *+XAR4[4], AL
003f3d18   99ec       OR           *+XAR4[5], AH
003f3d19   6f0e       SB           14, UNC
3f3d1a:              $C$L11:
003f3d1a   5603       MOV          ACC, AL << 1
003f3d1b   01a9
003f3d1c   2da9       MOV          T, AL
003f3d1d   3b01       SETC         SXM
003f3d1e   0203       MOVB         ACC, #3
003f3d1f   563b       LSLL         ACC, T
003f3d20   ff55       NOT          ACC
003f3d21   c0d4       AND          *+XAR4[2], AL
003f3d22   c1dc       AND          *+XAR4[3], AH
003f3d23   85a6       MOV          ACC, AR6
003f3d24   563b       LSLL         ACC, T
003f3d25   98d4       OR           *+XAR4[2], AL
003f3d26   99dc       OR           *+XAR4[3], AH
3f3d27:              $C$L12:
003f3d27   761a       EDIS         
003f3d28   ff69       SPM          #0
003f3d29   0006       LRETR        
3f3d2a:              _GPIO_setPullUp:
003f3d2a   88a8       MOVZ         AR6, AH
003f3d2b   2da9       MOV          T, AL
003f3d2c   7622       EALLOW       
003f3d2d   5220       CMPB         AL, #0x20
003f3d2e   6407       SB           7, LT
003f3d2f   83a4       MOVL         XAR5, XAR4
003f3d30   9ce0       ADDB         AL, #-32
003f3d31   2da9       MOV          T, AL
003f3d32   dc1c       ADDB         XAR4, #28
003f3d33   dd1c       ADDB         XAR5, #28
003f3d34   6f04       SB           4, UNC
3f3d35:              $C$L13:
003f3d35   83a4       MOVL         XAR5, XAR4
003f3d36   dc0c       ADDB         XAR4, #12
003f3d37   dd0c       ADDB         XAR5, #12
3f3d38:              $C$L14:
003f3d38   0201       MOVB         ACC, #1
003f3d39   3b01       SETC         SXM
003f3d3a   563b       LSLL         ACC, T
003f3d3b   ff55       NOT          ACC
003f3d3c   c0c5       AND          *+XAR5[0], AL
003f3d3d   c1cd       AND          *+XAR5[1], AH
003f3d3e   85a6       MOV          ACC, AR6
003f3d3f   563b       LSLL         ACC, T
003f3d40   98c4       OR           *+XAR4[0], AL
003f3d41   99cc       OR           *+XAR4[1], AH
003f3d42   761a       EDIS         
003f3d43   ff69       SPM          #0
003f3d44   0006       LRETR        
3f3d45:              _GPIO_setPortData:
003f3d45   1ea6       MOVL         XAR6, ACC
003f3d46   92a5       MOV          AL, AR5
003f3d47   7622       EALLOW       
003f3d48   5200       CMPB         AL, #0x0
003f3d49   ec03       SBF          3, EQ
003f3d4a   d048       MOVB         XAR0, #0x48
003f3d4b   6f02       SB           2, UNC
3f3d4c:              $C$L15:
003f3d4c   d040       MOVB         XAR0, #0x40
3f3d4d:              $C$L16:
003f3d4d   c294       MOVL         *+XAR4[AR0], XAR6
003f3d4e   761a       EDIS         
003f3d4f   ff69       SPM          #0
003f3d50   0006       LRETR        
3f3d51:              _GPIO_setMode:
003f3d51   88a8       MOVZ         AR6, AH
003f3d52   7622       EALLOW       
003f3d53   5210       CMPB         AL, #0x10
003f3d54   641e       SB           30, LT
003f3d55   5220       CMPB         AL, #0x20
003f3d56   640a       SB           10, LT
003f3d57   5230       CMPB         AL, #0x30
003f3d58   6327       SB           39, GEQ
003f3d59   83a4       MOVL         XAR5, XAR4
003f3d5a   5603       MOV          ACC, AL << 1
003f3d5b   01a9
003f3d5c   9cc0       ADDB         AL, #-64
003f3d5d   dc16       ADDB         XAR4, #22
003f3d5e   dd16       ADDB         XAR5, #22
003f3d5f   6f07       SB           7, UNC
3f3d60:              $C$L17:
003f3d60   83a4       MOVL         XAR5, XAR4
003f3d61   5603       MOV          ACC, AL << 1
003f3d62   01a9
003f3d63   9ce0       ADDB         AL, #-32
003f3d64   dc08       ADDB         XAR4, #8
003f3d65   dd08       ADDB         XAR5, #8
3f3d66:              $C$L18:
003f3d66   2da9       MOV          T, AL
003f3d67   0203       MOVB         ACC, #3
003f3d68   3b01       SETC         SXM
003f3d69   563b       LSLL         ACC, T
003f3d6a   ff55       NOT          ACC
003f3d6b   c0c5       AND          *+XAR5[0], AL
003f3d6c   c1cd       AND          *+XAR5[1], AH
003f3d6d   85a6       MOV          ACC, AR6
003f3d6e   563b       LSLL         ACC, T
003f3d6f   98c4       OR           *+XAR4[0], AL
003f3d70   99cc       OR           *+XAR4[1], AH
003f3d71   6f0e       SB           14, UNC
3f3d72:              $C$L19:
003f3d72   5603       MOV          ACC, AL << 1
003f3d73   01a9
003f3d74   2da9       MOV          T, AL
003f3d75   3b01       SETC         SXM
003f3d76   0203       MOVB         ACC, #3
003f3d77   563b       LSLL         ACC, T
003f3d78   ff55       NOT          ACC
003f3d79   c0f4       AND          *+XAR4[6], AL
003f3d7a   c1fc       AND          *+XAR4[7], AH
003f3d7b   85a6       MOV          ACC, AR6
003f3d7c   563b       LSLL         ACC, T
003f3d7d   98f4       OR           *+XAR4[6], AL
003f3d7e   99fc       OR           *+XAR4[7], AH
3f3d7f:              $C$L20:
003f3d7f   761a       EDIS         
003f3d80   ff69       SPM          #0
003f3d81   0006       LRETR        
3f3d82:              _GPIO_setLow:
003f3d82   2da9       MOV          T, AL
003f3d83   7622       EALLOW       
003f3d84   5220       CMPB         AL, #0x20
003f3d85   6409       SB           9, LT
003f3d86   0201       MOVB         ACC, #1
003f3d87   1ea6       MOVL         XAR6, ACC
003f3d88   d04c       MOVB         XAR0, #0x4c
003f3d89   92ac       MOV          AL, T
003f3d8a   9ce0       ADDB         AL, #-32
003f3d8b   2da9       MOV          T, AL
003f3d8c   06a6       MOVL         ACC, XAR6
003f3d8d   6f03       SB           3, UNC
3f3d8e:              $C$L21:
003f3d8e   0201       MOVB         ACC, #1
003f3d8f   d044       MOVB         XAR0, #0x44
3f3d90:              $C$L22:
003f3d90   563b       LSLL         ACC, T
003f3d91   1e94       MOVL         *+XAR4[AR0], ACC
003f3d92   761a       EDIS         
003f3d93   ff69       SPM          #0
003f3d94   0006       LRETR        
3f3d95:              _GPIO_setHigh:
003f3d95   2da9       MOV          T, AL
003f3d96   7622       EALLOW       
003f3d97   5220       CMPB         AL, #0x20
003f3d98   6409       SB           9, LT
003f3d99   0201       MOVB         ACC, #1
003f3d9a   1ea6       MOVL         XAR6, ACC
003f3d9b   d04a       MOVB         XAR0, #0x4a
003f3d9c   92ac       MOV          AL, T
003f3d9d   9ce0       ADDB         AL, #-32
003f3d9e   2da9       MOV          T, AL
003f3d9f   06a6       MOVL         ACC, XAR6
003f3da0   6f03       SB           3, UNC
3f3da1:              $C$L23:
003f3da1   0201       MOVB         ACC, #1
003f3da2   d042       MOVB         XAR0, #0x42
3f3da3:              $C$L24:
003f3da3   563b       LSLL         ACC, T
003f3da4   1e94       MOVL         *+XAR4[AR0], ACC
003f3da5   761a       EDIS         
003f3da6   ff69       SPM          #0
003f3da7   0006       LRETR        
3f3da8:              _GPIO_setExtInt:
003f3da8   88a9       MOVZ         AR6, AL
003f3da9   7622       EALLOW       
003f3daa   3b01       SETC         SXM
003f3dab   d060       MOVB         XAR0, #0x60
003f3dac   85a8       MOV          ACC, AH
003f3dad   5601       ADDL         XAR4, ACC
003f3dae   00a4
003f3daf   7e94       MOV          *+XAR4[AR0], AR6
003f3db0   761a       EDIS         
003f3db1   ff69       SPM          #0
003f3db2   0006       LRETR        
3f3db3:              _GPIO_setDirection:
003f3db3   88a8       MOVZ         AR6, AH
003f3db4   2da9       MOV          T, AL
003f3db5   7622       EALLOW       
003f3db6   5220       CMPB         AL, #0x20
003f3db7   6407       SB           7, LT
003f3db8   83a4       MOVL         XAR5, XAR4
003f3db9   9ce0       ADDB         AL, #-32
003f3dba   2da9       MOV          T, AL
003f3dbb   dc1a       ADDB         XAR4, #26
003f3dbc   dd1a       ADDB         XAR5, #26
003f3dbd   6f04       SB           4, UNC
3f3dbe:              $C$L25:
003f3dbe   83a4       MOVL         XAR5, XAR4
003f3dbf   dc0a       ADDB         XAR4, #10
003f3dc0   dd0a       ADDB         XAR5, #10
3f3dc1:              $C$L26:
003f3dc1   0201       MOVB         ACC, #1
003f3dc2   3b01       SETC         SXM
003f3dc3   563b       LSLL         ACC, T
003f3dc4   ff55       NOT          ACC
003f3dc5   c0c5       AND          *+XAR5[0], AL
003f3dc6   c1cd       AND          *+XAR5[1], AH
003f3dc7   85a6       MOV          ACC, AR6
003f3dc8   563b       LSLL         ACC, T
003f3dc9   98c4       OR           *+XAR4[0], AL
003f3dca   99cc       OR           *+XAR4[1], AH
003f3dcb   761a       EDIS         
003f3dcc   ff69       SPM          #0
003f3dcd   0006       LRETR        
3f3dce:              _GPIO_read:
003f3dce   fe02       ADDB         SP, #2
003f3dcf   5220       CMPB         AL, #0x20
003f3dd0   2da9       MOV          T, AL
003f3dd1   630f       SB           15, GEQ
003f3dd2   0201       MOVB         ACC, #1
003f3dd3   d040       MOVB         XAR0, #0x40
003f3dd4   563b       LSLL         ACC, T
003f3dd5   ff5a       MOVL         P, ACC
003f3dd6   0694       MOVL         ACC, *+XAR4[AR0]
003f3dd7   1e42       MOVL         *-SP[2], ACC
003f3dd8   9242       MOV          AL, *-SP[2]
003f3dd9   ceab       AND          AL, PL
003f3dda   9642       MOV          *-SP[2], AL
003f3ddb   9241       MOV          AL, *-SP[1]
003f3ddc   ceaa       AND          AL, PH
003f3ddd   9641       MOV          *-SP[1], AL
003f3dde   c442       MOVL         XAR6, *-SP[2]
003f3ddf   6f0d       SB           13, UNC
3f3de0:              $C$L27:
003f3de0   0201       MOVB         ACC, #1
003f3de1   ff5a       MOVL         P, ACC
003f3de2   d048       MOVB         XAR0, #0x48
003f3de3   92ac       MOV          AL, T
003f3de4   9ce0       ADDB         AL, #-32
003f3de5   16a9       MOVP         T, AL
003f3de6   563b       LSLL         ACC, T
003f3de7   ff5a       MOVL         P, ACC
003f3de8   0694       MOVL         ACC, *+XAR4[AR0]
003f3de9   ceab       AND          AL, PL
003f3dea   cfaa       AND          AH, PH
003f3deb   1ea6       MOVL         XAR6, ACC
3f3dec:              $C$L28:
003f3dec   0200       MOVB         ACC, #0
003f3ded   b600       MOVB         XAR7, #0x00
003f3dee   0fa6       CMPL         ACC, XAR6
003f3def   56b0       MOVB         AR7, #0x01, NEQ
003f3df0   01a7
003f3df1   92a7       MOV          AL, AR7
003f3df2   fe82       SUBB         SP, #2
003f3df3   0006       LRETR        
3f3df4:              _GPIO_lpmSelect:
003f3df4   2da9       MOV          T, AL
003f3df5   7622       EALLOW       
003f3df6   dc68       ADDB         XAR4, #104
003f3df7   0201       MOVB         ACC, #1
003f3df8   563b       LSLL         ACC, T
003f3df9   98c4       OR           *+XAR4[0], AL
003f3dfa   99cc       OR           *+XAR4[1], AH
003f3dfb   761a       EDIS         
003f3dfc   ff69       SPM          #0
003f3dfd   0006       LRETR        
3f3dfe:              _GPIO_init:
003f3dfe   1ea6       MOVL         XAR6, ACC
003f3dff   026a       MOVB         ACC, #106
003f3e00   0fa6       CMPL         ACC, XAR6
003f3e01   6902       SB           2, LOS
003f3e02   d400       MOVB         XAR4, #0x0
3f3e03:              $C$L29:
003f3e03   0006       LRETR        
3f3e04:              _GPIO_getPortData:
003f3e04   5201       CMPB         AL, #0x1
003f3e05   ec03       SBF          3, EQ
003f3e06   d040       MOVB         XAR0, #0x40
003f3e07   6f02       SB           2, UNC
3f3e08:              $C$L30:
003f3e08   d048       MOVB         XAR0, #0x48
3f3e09:              $C$L31:
003f3e09   0694       MOVL         ACC, *+XAR4[AR0]
003f3e0a   0006       LRETR        
3f3e0b:              _GPIO_getData:
003f3e0b   5220       CMPB         AL, #0x20
003f3e0c   2da9       MOV          T, AL
003f3e0d   6305       SB           5, GEQ
003f3e0e   d040       MOVB         XAR0, #0x40
003f3e0f   0694       MOVL         ACC, *+XAR4[AR0]
003f3e10   5622       LSRL         ACC, T
003f3e11   6f08       SB           8, UNC
3f3e12:              $C$L32:
003f3e12   9ce0       ADDB         AL, #-32
003f3e13   d048       MOVB         XAR0, #0x48
003f3e14   2da9       MOV          T, AL
003f3e15   0694       MOVL         ACC, *+XAR4[AR0]
003f3e16   5622       LSRL         ACC, T
003f3e17   1ea6       MOVL         XAR6, ACC
003f3e18   92a6       MOV          AL, AR6
3f3e19:              $C$L33:
003f3e19   9001       ANDB         AL, #0x1
003f3e1a   0006       LRETR        
3f3e1b:              _CLK_setXClkInSrc:
003f3e1b   7622       EALLOW       
003f3e1c   18c4       AND          *+XAR4[0], #0xffbf
003f3e1d   ffbf
003f3e1e   98c4       OR           *+XAR4[0], AL
003f3e1f   761a       EDIS         
003f3e20   ff69       SPM          #0
003f3e21   0006       LRETR        
3f3e22:              _CLK_setWatchDogSrc:
003f3e22   7622       EALLOW       
003f3e23   18d4       AND          *+XAR4[2], #0xfffb
003f3e24   fffb
003f3e25   98d4       OR           *+XAR4[2], AL
003f3e26   761a       EDIS         
003f3e27   ff69       SPM          #0
003f3e28   0006       LRETR        
3f3e29:              _CLK_setTimer2Src:
003f3e29   7622       EALLOW       
003f3e2a   18d4       AND          *+XAR4[2], #0xffe7
003f3e2b   ffe7
003f3e2c   98d4       OR           *+XAR4[2], AL
003f3e2d   761a       EDIS         
003f3e2e   ff69       SPM          #0
003f3e2f   0006       LRETR        
3f3e30:              _CLK_setTimer2PreScale:
003f3e30   7622       EALLOW       
003f3e31   18d4       AND          *+XAR4[2], #0xff1f
003f3e32   ff1f
003f3e33   98d4       OR           *+XAR4[2], AL
003f3e34   761a       EDIS         
003f3e35   ff69       SPM          #0
003f3e36   0006       LRETR        
3f3e37:              _CLK_setOscSrc:
003f3e37   7622       EALLOW       
003f3e38   18d4       AND          *+XAR4[2], #0xfffe
003f3e39   fffe
003f3e3a   98d4       OR           *+XAR4[2], AL
003f3e3b   761a       EDIS         
003f3e3c   ff69       SPM          #0
003f3e3d   0006       LRETR        
3f3e3e:              _CLK_setOsc2Src:
003f3e3e   7622       EALLOW       
003f3e3f   18d4       AND          *+XAR4[2], #0xfffd
003f3e40   fffd
003f3e41   98d4       OR           *+XAR4[2], AL
003f3e42   761a       EDIS         
003f3e43   ff69       SPM          #0
003f3e44   0006       LRETR        
3f3e45:              _CLK_setLowSpdPreScaler:
003f3e45   7622       EALLOW       
003f3e46   d00b       MOVB         XAR0, #0xb
003f3e47   9694       MOV          *+XAR4[AR0], AL
003f3e48   761a       EDIS         
003f3e49   ff69       SPM          #0
003f3e4a   0006       LRETR        
3f3e4b:              _CLK_setClkOutPreScaler:
003f3e4b   7622       EALLOW       
003f3e4c   18c4       AND          *+XAR4[0], #0xfffc
003f3e4d   fffc
003f3e4e   98c4       OR           *+XAR4[0], AL
003f3e4f   761a       EDIS         
003f3e50   ff69       SPM          #0
003f3e51   0006       LRETR        
3f3e52:              _CLK_init:
003f3e52   1ea6       MOVL         XAR6, ACC
003f3e53   0211       MOVB         ACC, #17
003f3e54   0fa6       CMPL         ACC, XAR6
003f3e55   6902       SB           2, LOS
003f3e56   d400       MOVB         XAR4, #0x0
3f3e57:              $C$L1:
003f3e57   0006       LRETR        
3f3e58:              _CLK_enableWatchDogHaltMode:
003f3e58   7622       EALLOW       
003f3e59   18d4       AND          *+XAR4[2], #0xefff
003f3e5a   efff
003f3e5b   761a       EDIS         
003f3e5c   ff69       SPM          #0
003f3e5d   0006       LRETR        
3f3e5e:              _CLK_enableTbClockSync:
003f3e5e   7622       EALLOW       
003f3e5f   dc0c       ADDB         XAR4, #12
003f3e60   1ac4       OR           *+XAR4[0], #0x0004
003f3e61   0004
003f3e62   761a       EDIS         
003f3e63   ff69       SPM          #0
003f3e64   0006       LRETR        
3f3e65:              _CLK_enableSpiaClock:
003f3e65   7622       EALLOW       
003f3e66   dc0c       ADDB         XAR4, #12
003f3e67   1ac4       OR           *+XAR4[0], #0x0100
003f3e68   0100
003f3e69   761a       EDIS         
003f3e6a   ff69       SPM          #0
003f3e6b   0006       LRETR        
3f3e6c:              _CLK_enableSciaClock:
003f3e6c   7622       EALLOW       
003f3e6d   dc0c       ADDB         XAR4, #12
003f3e6e   1ac4       OR           *+XAR4[0], #0x0400
003f3e6f   0400
003f3e70   761a       EDIS         
003f3e71   ff69       SPM          #0
003f3e72   0006       LRETR        
3f3e73:              _CLK_enablePwmClock:
003f3e73   2da9       MOV          T, AL
003f3e74   7622       EALLOW       
003f3e75   dc0d       ADDB         XAR4, #13
003f3e76   9a01       MOVB         AL, #0x1
003f3e77   ff66       LSL          AL, T
003f3e78   98c4       OR           *+XAR4[0], AL
003f3e79   761a       EDIS         
003f3e7a   ff69       SPM          #0
003f3e7b   0006       LRETR        
3f3e7c:              _CLK_enableOsc2HaltMode:
003f3e7c   7622       EALLOW       
003f3e7d   18d4       AND          *+XAR4[2], #0xf7ff
003f3e7e   f7ff
003f3e7f   761a       EDIS         
003f3e80   ff69       SPM          #0
003f3e81   0006       LRETR        
3f3e82:              _CLK_enableOsc2:
003f3e82   7622       EALLOW       
003f3e83   18d4       AND          *+XAR4[2], #0xfbff
003f3e84   fbff
003f3e85   761a       EDIS         
003f3e86   ff69       SPM          #0
003f3e87   0006       LRETR        
3f3e88:              _CLK_enableOsc1HaltMode:
003f3e88   7622       EALLOW       
003f3e89   18d4       AND          *+XAR4[2], #0xfdff
003f3e8a   fdff
003f3e8b   761a       EDIS         
003f3e8c   ff69       SPM          #0
003f3e8d   0006       LRETR        
3f3e8e:              _CLK_enableOsc1:
003f3e8e   7622       EALLOW       
003f3e8f   18d4       AND          *+XAR4[2], #0xfeff
003f3e90   feff
003f3e91   761a       EDIS         
003f3e92   ff69       SPM          #0
003f3e93   0006       LRETR        
3f3e94:              _CLK_enableI2cClock:
003f3e94   7622       EALLOW       
003f3e95   dc0c       ADDB         XAR4, #12
003f3e96   1ac4       OR           *+XAR4[0], #0x0010
003f3e97   0010
003f3e98   761a       EDIS         
003f3e99   ff69       SPM          #0
003f3e9a   0006       LRETR        
3f3e9b:              _CLK_enableHrPwmClock:
003f3e9b   7622       EALLOW       
003f3e9c   dc0c       ADDB         XAR4, #12
003f3e9d   1ac4       OR           *+XAR4[0], #0x0001
003f3e9e   0001
003f3e9f   761a       EDIS         
003f3ea0   ff69       SPM          #0
003f3ea1   0006       LRETR        
3f3ea2:              _CLK_enableGpioInputClock:
003f3ea2   7622       EALLOW       
003f3ea3   dc10       ADDB         XAR4, #16
003f3ea4   1ac4       OR           *+XAR4[0], #0x2000
003f3ea5   2000
003f3ea6   761a       EDIS         
003f3ea7   ff69       SPM          #0
003f3ea8   0006       LRETR        
3f3ea9:              _CLK_enableEcap1Clock:
003f3ea9   7622       EALLOW       
003f3eaa   dc0d       ADDB         XAR4, #13
003f3eab   1ac4       OR           *+XAR4[0], #0x0100
003f3eac   0100
003f3ead   761a       EDIS         
003f3eae   ff69       SPM          #0
003f3eaf   0006       LRETR        
3f3eb0:              _CLK_enableCrystalOsc:
003f3eb0   7622       EALLOW       
003f3eb1   18d4       AND          *+XAR4[2], #0xbfff
003f3eb2   bfff
003f3eb3   761a       EDIS         
003f3eb4   ff69       SPM          #0
003f3eb5   0006       LRETR        
3f3eb6:              _CLK_enableCpuTimerClock:
003f3eb6   7622       EALLOW       
003f3eb7   dc10       ADDB         XAR4, #16
003f3eb8   98c4       OR           *+XAR4[0], AL
003f3eb9   761a       EDIS         
003f3eba   ff69       SPM          #0
003f3ebb   0006       LRETR        
3f3ebc:              _CLK_enableCompClock:
003f3ebc   7622       EALLOW       
003f3ebd   dc10       ADDB         XAR4, #16
003f3ebe   98c4       OR           *+XAR4[0], AL
003f3ebf   761a       EDIS         
003f3ec0   ff69       SPM          #0
003f3ec1   0006       LRETR        
3f3ec2:              _CLK_enableClkIn:
003f3ec2   7622       EALLOW       
003f3ec3   18d4       AND          *+XAR4[2], #0xdfff
003f3ec4   dfff
003f3ec5   761a       EDIS         
003f3ec6   ff69       SPM          #0
003f3ec7   0006       LRETR        
3f3ec8:              _CLK_enableAdcClock:
003f3ec8   7622       EALLOW       
003f3ec9   dc0c       ADDB         XAR4, #12
003f3eca   1ac4       OR           *+XAR4[0], #0x0008
003f3ecb   0008
003f3ecc   761a       EDIS         
003f3ecd   ff69       SPM          #0
003f3ece   0006       LRETR        
3f3ecf:              _CLK_disableWatchDogHaltMode:
003f3ecf   7622       EALLOW       
003f3ed0   1ad4       OR           *+XAR4[2], #0x1000
003f3ed1   1000
003f3ed2   761a       EDIS         
003f3ed3   ff69       SPM          #0
003f3ed4   0006       LRETR        
3f3ed5:              _CLK_disableTbClockSync:
003f3ed5   7622       EALLOW       
003f3ed6   dc0c       ADDB         XAR4, #12
003f3ed7   18c4       AND          *+XAR4[0], #0xfffb
003f3ed8   fffb
003f3ed9   761a       EDIS         
003f3eda   ff69       SPM          #0
003f3edb   0006       LRETR        
3f3edc:              _CLK_disableSpiaClock:
003f3edc   7622       EALLOW       
003f3edd   dc0c       ADDB         XAR4, #12
003f3ede   18c4       AND          *+XAR4[0], #0xfeff
003f3edf   feff
003f3ee0   761a       EDIS         
003f3ee1   ff69       SPM          #0
003f3ee2   0006       LRETR        
3f3ee3:              _CLK_disableSciaClock:
003f3ee3   7622       EALLOW       
003f3ee4   dc0c       ADDB         XAR4, #12
003f3ee5   18c4       AND          *+XAR4[0], #0xfbff
003f3ee6   fbff
003f3ee7   761a       EDIS         
003f3ee8   ff69       SPM          #0
003f3ee9   0006       LRETR        
3f3eea:              _CLK_disablePwmClock:
003f3eea   2da9       MOV          T, AL
003f3eeb   7622       EALLOW       
003f3eec   9a01       MOVB         AL, #0x1
003f3eed   dc0d       ADDB         XAR4, #13
003f3eee   ff66       LSL          AL, T
003f3eef   ff5e       NOT          AL
003f3ef0   c0c4       AND          *+XAR4[0], AL
003f3ef1   761a       EDIS         
003f3ef2   ff69       SPM          #0
003f3ef3   0006       LRETR        
3f3ef4:              _CLK_disableOsc2HaltMode:
003f3ef4   7622       EALLOW       
003f3ef5   1ad4       OR           *+XAR4[2], #0x0800
003f3ef6   0800
003f3ef7   761a       EDIS         
003f3ef8   ff69       SPM          #0
003f3ef9   0006       LRETR        
3f3efa:              _CLK_disableOsc2:
003f3efa   7622       EALLOW       
003f3efb   1ad4       OR           *+XAR4[2], #0x0400
003f3efc   0400
003f3efd   761a       EDIS         
003f3efe   ff69       SPM          #0
003f3eff   0006       LRETR        
3f3f00:              _CLK_disableOsc1HaltMode:
003f3f00   7622       EALLOW       
003f3f01   1ad4       OR           *+XAR4[2], #0x0200
003f3f02   0200
003f3f03   761a       EDIS         
003f3f04   ff69       SPM          #0
003f3f05   0006       LRETR        
3f3f06:              _CLK_disableOsc1:
003f3f06   7622       EALLOW       
003f3f07   1ad4       OR           *+XAR4[2], #0x0100
003f3f08   0100
003f3f09   761a       EDIS         
003f3f0a   ff69       SPM          #0
003f3f0b   0006       LRETR        
3f3f0c:              _CLK_disableI2cClock:
003f3f0c   7622       EALLOW       
003f3f0d   dc0c       ADDB         XAR4, #12
003f3f0e   18c4       AND          *+XAR4[0], #0xffef
003f3f0f   ffef
003f3f10   761a       EDIS         
003f3f11   ff69       SPM          #0
003f3f12   0006       LRETR        
3f3f13:              _CLK_disableHrPwmClock:
003f3f13   7622       EALLOW       
003f3f14   dc0c       ADDB         XAR4, #12
003f3f15   18c4       AND          *+XAR4[0], #0xfffe
003f3f16   fffe
003f3f17   761a       EDIS         
003f3f18   ff69       SPM          #0
003f3f19   0006       LRETR        
3f3f1a:              _CLK_disableGpioInputClock:
003f3f1a   7622       EALLOW       
003f3f1b   dc10       ADDB         XAR4, #16
003f3f1c   18c4       AND          *+XAR4[0], #0xdfff
003f3f1d   dfff
003f3f1e   761a       EDIS         
003f3f1f   ff69       SPM          #0
003f3f20   0006       LRETR        
3f3f21:              _CLK_disableEcap1Clock:
003f3f21   7622       EALLOW       
003f3f22   dc0d       ADDB         XAR4, #13
003f3f23   18c4       AND          *+XAR4[0], #0xfeff
003f3f24   feff
003f3f25   761a       EDIS         
003f3f26   ff69       SPM          #0
003f3f27   0006       LRETR        
3f3f28:              _CLK_disableCrystalOsc:
003f3f28   7622       EALLOW       
003f3f29   1ad4       OR           *+XAR4[2], #0x4000
003f3f2a   4000
003f3f2b   761a       EDIS         
003f3f2c   ff69       SPM          #0
003f3f2d   0006       LRETR        
3f3f2e:              _CLK_disableCpuTimerClock:
003f3f2e   7622       EALLOW       
003f3f2f   dc10       ADDB         XAR4, #16
003f3f30   ff5e       NOT          AL
003f3f31   c0c4       AND          *+XAR4[0], AL
003f3f32   761a       EDIS         
003f3f33   ff69       SPM          #0
003f3f34   0006       LRETR        
3f3f35:              _CLK_disableCompClock:
003f3f35   ff5e       NOT          AL
003f3f36   dc10       ADDB         XAR4, #16
003f3f37   c0c4       AND          *+XAR4[0], AL
003f3f38   0006       LRETR        
3f3f39:              _CLK_disableClkIn:
003f3f39   7622       EALLOW       
003f3f3a   1ad4       OR           *+XAR4[2], #0x2000
003f3f3b   2000
003f3f3c   761a       EDIS         
003f3f3d   ff69       SPM          #0
003f3f3e   0006       LRETR        
3f3f3f:              _CLK_disableAdcClock:
003f3f3f   7622       EALLOW       
003f3f40   dc0c       ADDB         XAR4, #12
003f3f41   18c4       AND          *+XAR4[0], #0xfff7
003f3f42   fff7
003f3f43   761a       EDIS         
003f3f44   ff69       SPM          #0
003f3f45   0006       LRETR        
3f3f46:              _PIE_unregisterSystemIntHandler:
003f3f46   7622       EALLOW       
003f3f47   3b01       SETC         SXM
003f3f48   8f7f       MOVL         XAR5, #0x3f473b
003f3f49   473b
003f3f4a   85a9       MOV          ACC, AL
003f3f4b   0910       ADDB         ACC, #16
003f3f4c   ff30       LSL          ACC, 1
003f3f4d   5601       ADDL         XAR4, ACC
003f3f4e   00a4
003f3f4f   a0c4       MOVL         *+XAR4[0], XAR5
003f3f50   761a       EDIS         
003f3f51   ff69       SPM          #0
003f3f52   0006       LRETR        
3f3f53:              _PIE_unregisterPieIntHandler:
003f3f53   88a8       MOVZ         AR6, AH
003f3f54   7622       EALLOW       
003f3f55   3b01       SETC         SXM
003f3f56   5603       MOV          ACC, AL << 3
003f3f57   03a9
003f3f58   8f7f       MOVL         XAR5, #0x3f473b
003f3f59   473b
003f3f5a   85a9       MOV          ACC, AL
003f3f5b   81a6       ADD          ACC, AR6
003f3f5c   0930       ADDB         ACC, #48
003f3f5d   ff30       LSL          ACC, 1
003f3f5e   5601       ADDL         XAR4, ACC
003f3f5f   00a4
003f3f60   a0c4       MOVL         *+XAR4[0], XAR5
003f3f61   761a       EDIS         
003f3f62   ff69       SPM          #0
003f3f63   0006       LRETR        
3f3f64:              _PIE_setExtIntPolarity:
003f3f64   88a8       MOVZ         AR6, AH
003f3f65   3b01       SETC         SXM
003f3f66   a8ab       MOVL         P, XAR4
003f3f67   85a9       MOV          ACC, AL
003f3f68   8f00       MOVL         XAR4, #0x006390
003f3f69   6390
003f3f6a   5601       ADDL         P, ACC
003f3f6b   00ab
003f3f6c   92a6       MOV          AL, AR6
003f3f6d   5657       ADDUL        P, XAR4
003f3f6e   00a4
003f3f6f   a9a4       MOVL         XAR4, P
003f3f70   18c4       AND          *+XAR4[0], #0xfff3
003f3f71   fff3
003f3f72   98c4       OR           *+XAR4[0], AL
003f3f73   0006       LRETR        
3f3f74:              _PIE_setDefaultIntVectorTable:
003f3f74   dc22       ADDB         XAR4, #34
003f3f75   7622       EALLOW       
003f3f76   be77       MOVB         XAR6, #0x77
003f3f77   8f7f       MOVL         XAR5, #0x3f473b
003f3f78   473b
3f3f79:              $C$L1:
003f3f79   a0c4       MOVL         *+XAR4[0], XAR5
003f3f7a   dc02       ADDB         XAR4, #2
003f3f7b   000e       BANZ         -2,AR6--
003f3f7c   fffe
003f3f7d   761a       EDIS         
003f3f7e   ff69       SPM          #0
003f3f7f   0006       LRETR        
3f3f80:              _PIE_registerSystemIntHandler:
003f3f80   7622       EALLOW       
003f3f81   3b01       SETC         SXM
003f3f82   85a9       MOV          ACC, AL
003f3f83   0910       ADDB         ACC, #16
003f3f84   ff30       LSL          ACC, 1
003f3f85   5601       ADDL         XAR4, ACC
003f3f86   00a4
003f3f87   a0c4       MOVL         *+XAR4[0], XAR5
003f3f88   761a       EDIS         
003f3f89   ff69       SPM          #0
003f3f8a   0006       LRETR        
3f3f8b:              _PIE_registerPieIntHandler:
003f3f8b   88a8       MOVZ         AR6, AH
003f3f8c   7622       EALLOW       
003f3f8d   3b01       SETC         SXM
003f3f8e   5603       MOV          ACC, AL << 3
003f3f8f   03a9
003f3f90   85a9       MOV          ACC, AL
003f3f91   81a6       ADD          ACC, AR6
003f3f92   0930       ADDB         ACC, #48
003f3f93   ff30       LSL          ACC, 1
003f3f94   5601       ADDL         XAR4, ACC
003f3f95   00a4
003f3f96   a0c4       MOVL         *+XAR4[0], XAR5
003f3f97   761a       EDIS         
003f3f98   ff69       SPM          #0
003f3f99   0006       LRETR        
3f3f9a:              _PIE_init:
003f3f9a   1ea6       MOVL         XAR6, ACC
003f3f9b   ff20       MOV          ACC, #25500
003f3f9c   639c
003f3f9d   0fa6       CMPL         ACC, XAR6
003f3f9e   6902       SB           2, LOS
003f3f9f   d400       MOVB         XAR4, #0x0
3f3fa0:              $C$L2:
003f3fa0   0006       LRETR        
3f3fa1:              _PIE_getIntFlags:
003f3fa1   3b01       SETC         SXM
003f3fa2   5603       MOV          ACC, AL << 1
003f3fa3   01a9
003f3fa4   5601       ADDL         XAR4, ACC
003f3fa5   00a4
003f3fa6   92dc       MOV          AL, *+XAR4[3]
003f3fa7   0006       LRETR        
3f3fa8:              _PIE_getIntEnables:
003f3fa8   3b01       SETC         SXM
003f3fa9   5603       MOV          ACC, AL << 1
003f3faa   01a9
003f3fab   5601       ADDL         XAR4, ACC
003f3fac   00a4
003f3fad   92d4       MOV          AL, *+XAR4[2]
003f3fae   0006       LRETR        
3f3faf:              _PIE_getExtIntCount:
003f3faf   3b01       SETC         SXM
003f3fb0   85a9       MOV          ACC, AL
003f3fb1   5601       ADDL         XAR4, ACC
003f3fb2   00a4
003f3fb3   8d00       MOVL         XAR0, #0x006398
003f3fb4   6398
003f3fb5   9294       MOV          AL, *+XAR4[AR0]
003f3fb6   0006       LRETR        
3f3fb7:              _PIE_forceInt:
003f3fb7   88a8       MOVZ         AR6, AH
003f3fb8   3b01       SETC         SXM
003f3fb9   5603       MOV          ACC, AL << 1
003f3fba   01a9
003f3fbb   5601       ADDL         XAR4, ACC
003f3fbc   00a4
003f3fbd   92a6       MOV          AL, AR6
003f3fbe   dc03       ADDB         XAR4, #3
003f3fbf   98c4       OR           *+XAR4[0], AL
003f3fc0   0006       LRETR        
3f3fc1:              _PIE_enableTimer0Int:
003f3fc1   1ad4       OR           *+XAR4[2], #0x0040
003f3fc2   0040
003f3fc3   0006       LRETR        
3f3fc4:              _PIE_enablePwmTzInt:
003f3fc4   2da9       MOV          T, AL
003f3fc5   9a01       MOVB         AL, #0x1
003f3fc6   ff66       LSL          AL, T
003f3fc7   98e4       OR           *+XAR4[4], AL
003f3fc8   0006       LRETR        
3f3fc9:              _PIE_enablePwmInt:
003f3fc9   2da9       MOV          T, AL
003f3fca   9a01       MOVB         AL, #0x1
003f3fcb   ff66       LSL          AL, T
003f3fcc   98f4       OR           *+XAR4[6], AL
003f3fcd   0006       LRETR        
3f3fce:              _PIE_enableInt:
003f3fce   88a8       MOVZ         AR6, AH
003f3fcf   3b01       SETC         SXM
003f3fd0   5603       MOV          ACC, AL << 1
003f3fd1   01a9
003f3fd2   5601       ADDL         XAR4, ACC
003f3fd3   00a4
003f3fd4   92a6       MOV          AL, AR6
003f3fd5   dc02       ADDB         XAR4, #2
003f3fd6   98c4       OR           *+XAR4[0], AL
003f3fd7   0006       LRETR        
3f3fd8:              _PIE_enableExtInt:
003f3fd8   5202       CMPB         AL, #0x2
003f3fd9   88a9       MOVZ         AR6, AL
003f3fda   6404       SB           4, LT
003f3fdb   9a0a       MOVB         AL, #0xa
003f3fdc   b601       MOVB         XAR7, #0x01
003f3fdd   6f08       SB           8, UNC
3f3fde:              $C$L4:
003f3fde   28ac       MOV          T, #0x0003
003f3fdf   0003
003f3fe0   72ac       ADD          T, AL
003f3fe1   9a01       MOVB         AL, #0x1
003f3fe2   ff66       LSL          AL, T
003f3fe3   80a9       MOVZ         AR7, AL
003f3fe4   9a00       MOVB         AL, #0x0
3f3fe5:              $C$L5:
003f3fe5   0ea9       MOVU         ACC, AL
003f3fe6   83a4       MOVL         XAR5, XAR4
003f3fe7   a8ab       MOVL         P, XAR4
003f3fe8   ff30       LSL          ACC, 1
003f3fe9   5601       ADDL         XAR5, ACC
003f3fea   00a5
003f3feb   3b01       SETC         SXM
003f3fec   8f00       MOVL         XAR4, #0x006390
003f3fed   6390
003f3fee   92a7       MOV          AL, AR7
003f3fef   dd02       ADDB         XAR5, #2
003f3ff0   98c5       OR           *+XAR5[0], AL
003f3ff1   92a6       MOV          AL, AR6
003f3ff2   85a9       MOV          ACC, AL
003f3ff3   5601       ADDL         P, ACC
003f3ff4   00ab
003f3ff5   5657       ADDUL        P, XAR4
003f3ff6   00a4
003f3ff7   a9a4       MOVL         XAR4, P
003f3ff8   1ac4       OR           *+XAR4[0], #0x0001
003f3ff9   0001
003f3ffa   0006       LRETR        
3f3ffb:              _PIE_enableCaptureInt:
003f3ffb   dc02       ADDB         XAR4, #2
003f3ffc   1af4       OR           *+XAR4[6], #0x0001
003f3ffd   0001
003f3ffe   0006       LRETR        
3f3fff:              _PIE_enableAdcInt:
003f3fff   5208       CMPB         AL, #0x8
003f4000   2da9       MOV          T, AL
003f4001   640e       SB           14, LT
003f4002   5208       CMPB         AL, #0x8
003f4003   ec0a       SBF          10, EQ
003f4004   ccac       AND          AL, T, #0x7
003f4005   0007
003f4006   9cff       ADDB         AL, #-1
003f4007   2da9       MOV          T, AL
003f4008   9a01       MOVB         AL, #0x1
003f4009   ff66       LSL          AL, T
003f400a   88a9       MOVZ         AR6, AL
3f400b:              $C$L6:
003f400b   9a00       MOVB         AL, #0x0
003f400c   6f07       SB           7, UNC
3f400d:              $C$L7:
003f400d   be20       MOVB         XAR6, #0x20
003f400e   6ffd       SB           -3, UNC
3f400f:              $C$L8:
003f400f   9a01       MOVB         AL, #0x1
003f4010   ff66       LSL          AL, T
003f4011   88a9       MOVZ         AR6, AL
003f4012   9a09       MOVB         AL, #0x9
3f4013:              $C$L9:
003f4013   0ea9       MOVU         ACC, AL
003f4014   ff30       LSL          ACC, 1
003f4015   5601       ADDL         XAR4, ACC
003f4016   00a4
003f4017   92a6       MOV          AL, AR6
003f4018   dc02       ADDB         XAR4, #2
003f4019   98c4       OR           *+XAR4[0], AL
003f401a   0006       LRETR        
3f401b:              _PIE_enable:
003f401b   1ac4       OR           *+XAR4[0], #0x0001
003f401c   0001
003f401d   0006       LRETR        
3f401e:              _PIE_disableInt:
003f401e   88a8       MOVZ         AR6, AH
003f401f   3b01       SETC         SXM
003f4020   5603       MOV          ACC, AL << 1
003f4021   01a9
003f4022   5601       ADDL         XAR4, ACC
003f4023   00a4
003f4024   92a6       MOV          AL, AR6
003f4025   ff5e       NOT          AL
003f4026   dc02       ADDB         XAR4, #2
003f4027   c0c4       AND          *+XAR4[0], AL
003f4028   0006       LRETR        
3f4029:              _PIE_disableExtInt:
003f4029   3b01       SETC         SXM
003f402a   a8ab       MOVL         P, XAR4
003f402b   85a9       MOV          ACC, AL
003f402c   8f00       MOVL         XAR4, #0x006390
003f402d   6390
003f402e   5601       ADDL         P, ACC
003f402f   00ab
003f4030   5657       ADDUL        P, XAR4
003f4031   00a4
003f4032   a9a4       MOVL         XAR4, P
003f4033   18c4       AND          *+XAR4[0], #0xfffe
003f4034   fffe
003f4035   0006       LRETR        
3f4036:              _PIE_disableCaptureInt:
003f4036   dc02       ADDB         XAR4, #2
003f4037   18f4       AND          *+XAR4[6], #0xfffe
003f4038   fffe
003f4039   0006       LRETR        
3f403a:              _PIE_disableAllInts:
003f403a   0200       MOVB         ACC, #0
003f403b   be0b       MOVB         XAR6, #0x0b
3f403c:              $C$L10:
003f403c   83a4       MOVL         XAR5, XAR4
003f403d   5601       ADDL         XAR5, ACC
003f403e   00a5
003f403f   0902       ADDB         ACC, #2
003f4040   2bd5       MOV          *+XAR5[2], #0
003f4041   000e       BANZ         -5,AR6--
003f4042   fffb
003f4043   0006       LRETR        
3f4044:              _PIE_disable:
003f4044   18c4       AND          *+XAR4[0], #0xfffe
003f4045   fffe
003f4046   0006       LRETR        
3f4047:              _PIE_clearAllInts:
003f4047   1acc       OR           *+XAR4[1], #0xffff
003f4048   ffff
003f4049   0006       LRETR        
3f404a:              _PIE_clearAllFlags:
003f404a   0200       MOVB         ACC, #0
003f404b   be0b       MOVB         XAR6, #0x0b
3f404c:              $C$L11:
003f404c   83a4       MOVL         XAR5, XAR4
003f404d   5601       ADDL         XAR5, ACC
003f404e   00a5
003f404f   0902       ADDB         ACC, #2
003f4050   2bdd       MOV          *+XAR5[3], #0
003f4051   000e       BANZ         -5,AR6--
003f4052   fffb
003f4053   0006       LRETR        
3f4054:              _PCA955x_setI2cHandle:
003f4054   a0c4       MOVL         *+XAR4[0], XAR5
003f4055   0006       LRETR        
3f4056:              _PCA955x_WrData:
003f4056   b2bd       MOVL         *SP++, XAR1
003f4057   59a9       MOVZ         AR1, AL
003f4058   aabd       MOVL         *SP++, XAR2
003f4059   5aa8       MOVZ         AR2, AH
003f405a   a2bd       MOVL         *SP++, XAR3
003f405b   82a4       MOVL         XAR3, XAR4
003f405c   6f08       SB           8, UNC
3f405d:              $C$L1:
003f405d   8ac3       MOVL         XAR4, *+XAR3[0]
003f405e   9b00       MOVB         AH, #0x0
003f405f   d501       MOVB         XAR5, #0x1
003f4060   28a9       MOV          AL, #0x0c00
003f4061   0c00
003f4062   767f       LCR          0x3f4299
003f4063   4299
3f4064:              $C$L2:
003f4064   8ac3       MOVL         XAR4, *+XAR3[0]
003f4065   767f       LCR          0x3f426b
003f4066   426b
003f4067   5200       CMPB         AL, #0x0
003f4068   edf5       SBF          -11, NEQ
003f4069   8ac3       MOVL         XAR4, *+XAR3[0]
003f406a   9a20       MOVB         AL, #0x20
003f406b   767f       LCR          0x3f425a
003f406c   425a
003f406d   9b00       MOVB         AH, #0x0
003f406e   d502       MOVB         XAR5, #0x2
003f406f   28a9       MOV          AL, #0x2e00
003f4070   2e00
003f4071   8ac3       MOVL         XAR4, *+XAR3[0]
003f4072   767f       LCR          0x3f4299
003f4073   4299
003f4074   8ac3       MOVL         XAR4, *+XAR3[0]
003f4075   767f       LCR          0x3f4282
003f4076   4282
003f4077   92a1       MOV          AL, AR1
003f4078   8ac3       MOVL         XAR4, *+XAR3[0]
003f4079   767f       LCR          0x3f4268
003f407a   4268
003f407b   761f       MOVW         DP, #0xc
003f407c   000c
003f407d   2b31       MOV          @0x31, #0
3f407e:              $C$L3:
003f407e   8ac3       MOVL         XAR4, *+XAR3[0]
003f407f   767f       LCR          0x3f4275
003f4080   4275
003f4081   44a9       TBIT         AL, #0x4
003f4082   ee0b       SBF          11, TC
003f4083   761f       MOVW         DP, #0xc
003f4084   000c
003f4085   1b31       CMP          @0x31, #8191
003f4086   1fff
003f4087   6706       SB           6, HIS
003f4088   0a31       INC          @0x31
003f4089   1b31       CMP          @0x31, #8190
003f408a   1ffe
003f408b   69f3       SB           -13, LOS
003f408c   6f16       SB           22, UNC
3f408d:              $C$L4:
003f408d   8ac3       MOVL         XAR4, *+XAR3[0]
003f408e   92a2       MOV          AL, AR2
003f408f   767f       LCR          0x3f4268
003f4090   4268
003f4091   761f       MOVW         DP, #0xc
003f4092   000c
003f4093   2b31       MOV          @0x31, #0
3f4094:              $C$L5:
003f4094   8ac3       MOVL         XAR4, *+XAR3[0]
003f4095   767f       LCR          0x3f4275
003f4096   4275
003f4097   45a9       TBIT         AL, #0x5
003f4098   ee0c       SBF          12, TC
003f4099   761f       MOVW         DP, #0xc
003f409a   000c
003f409b   1b31       CMP          @0x31, #8191
003f409c   1fff
003f409d   6707       SB           7, HIS
003f409e   0a31       INC          @0x31
003f409f   1b31       CMP          @0x31, #8190
003f40a0   1ffe
003f40a1   69f3       SB           -13, LOS
3f40a2:              $C$L6:
003f40a2   56bf       MOVB         *+XAR3[4], #0x01, UNC
003f40a3   01e3
3f40a4:              $C$L7:
003f40a4   82be       MOVL         XAR3, *--SP
003f40a5   86be       MOVL         XAR2, *--SP
003f40a6   8bbe       MOVL         XAR1, *--SP
003f40a7   0006       LRETR        
3f40a8:              _PCA955x_WriteCommand:
003f40a8   5201       CMPB         AL, #0x1
003f40a9   ec03       SBF          3, EQ
003f40aa   9a02       MOVB         AL, #0x2
003f40ab   6f02       SB           2, UNC
3f40ac:              $C$L8:
003f40ac   9a03       MOVB         AL, #0x3
3f40ad:              $C$L9:
003f40ad   767f       LCR          0x3f4056
003f40ae   4056
003f40af   0006       LRETR        
3f40b0:              _PCA955x_RdData:
003f40b0   b2bd       MOVL         *SP++, XAR1
003f40b1   59a9       MOVZ         AR1, AL
003f40b2   aabd       MOVL         *SP++, XAR2
003f40b3   86a4       MOVL         XAR2, XAR4
003f40b4   6f08       SB           8, UNC
3f40b5:              $C$L10:
003f40b5   8ac2       MOVL         XAR4, *+XAR2[0]
003f40b6   9b00       MOVB         AH, #0x0
003f40b7   d501       MOVB         XAR5, #0x1
003f40b8   28a9       MOV          AL, #0x0c00
003f40b9   0c00
003f40ba   767f       LCR          0x3f4299
003f40bb   4299
3f40bc:              $C$L11:
003f40bc   8ac2       MOVL         XAR4, *+XAR2[0]
003f40bd   767f       LCR          0x3f426b
003f40be   426b
003f40bf   5200       CMPB         AL, #0x0
003f40c0   edf5       SBF          -11, NEQ
003f40c1   8ac2       MOVL         XAR4, *+XAR2[0]
003f40c2   9a20       MOVB         AL, #0x20
003f40c3   767f       LCR          0x3f425a
003f40c4   425a
003f40c5   9b00       MOVB         AH, #0x0
003f40c6   d501       MOVB         XAR5, #0x1
003f40c7   28a9       MOV          AL, #0x2e00
003f40c8   2e00
003f40c9   8ac2       MOVL         XAR4, *+XAR2[0]
003f40ca   767f       LCR          0x3f4299
003f40cb   4299
003f40cc   8ac2       MOVL         XAR4, *+XAR2[0]
003f40cd   767f       LCR          0x3f4282
003f40ce   4282
003f40cf   92a1       MOV          AL, AR1
003f40d0   8ac2       MOVL         XAR4, *+XAR2[0]
003f40d1   767f       LCR          0x3f4268
003f40d2   4268
003f40d3   761f       MOVW         DP, #0xc
003f40d4   000c
003f40d5   2b30       MOV          @0x30, #0
3f40d6:              $C$L12:
003f40d6   8ac2       MOVL         XAR4, *+XAR2[0]
003f40d7   767f       LCR          0x3f4275
003f40d8   4275
003f40d9   44a9       TBIT         AL, #0x4
003f40da   ee0b       SBF          11, TC
003f40db   761f       MOVW         DP, #0xc
003f40dc   000c
003f40dd   1b30       CMP          @0x30, #8191
003f40de   1fff
003f40df   6706       SB           6, HIS
003f40e0   0a30       INC          @0x30
003f40e1   1b30       CMP          @0x30, #8190
003f40e2   1ffe
003f40e3   69f3       SB           -13, LOS
003f40e4   6f12       SB           18, UNC
3f40e5:              $C$L13:
003f40e5   761f       MOVW         DP, #0xc
003f40e6   000c
003f40e7   2b30       MOV          @0x30, #0
3f40e8:              $C$L14:
003f40e8   8ac2       MOVL         XAR4, *+XAR2[0]
003f40e9   767f       LCR          0x3f426b
003f40ea   426b
003f40eb   5200       CMPB         AL, #0x0
003f40ec   ec0d       SBF          13, EQ
003f40ed   761f       MOVW         DP, #0xc
003f40ee   000c
003f40ef   1b30       CMP          @0x30, #8191
003f40f0   1fff
003f40f1   6708       SB           8, HIS
003f40f2   0a30       INC          @0x30
003f40f3   1b30       CMP          @0x30, #8190
003f40f4   1ffe
003f40f5   69f3       SB           -13, LOS
3f40f6:              $C$L15:
003f40f6   56bf       MOVB         *+XAR2[4], #0x01, UNC
003f40f7   01e2
003f40f8   6f3a       SB           58, UNC
3f40f9:              $C$L16:
003f40f9   8ac2       MOVL         XAR4, *+XAR2[0]
003f40fa   9a20       MOVB         AL, #0x20
003f40fb   767f       LCR          0x3f425a
003f40fc   425a
003f40fd   9b00       MOVB         AH, #0x0
003f40fe   d501       MOVB         XAR5, #0x1
003f40ff   28a9       MOV          AL, #0x2c00
003f4100   2c00
003f4101   8ac2       MOVL         XAR4, *+XAR2[0]
003f4102   767f       LCR          0x3f4299
003f4103   4299
003f4104   8ac2       MOVL         XAR4, *+XAR2[0]
003f4105   767f       LCR          0x3f4282
003f4106   4282
003f4107   761f       MOVW         DP, #0xc
003f4108   000c
003f4109   2b30       MOV          @0x30, #0
3f410a:              $C$L17:
003f410a   8ac2       MOVL         XAR4, *+XAR2[0]
003f410b   767f       LCR          0x3f426b
003f410c   426b
003f410d   5200       CMPB         AL, #0x0
003f410e   ec0b       SBF          11, EQ
003f410f   761f       MOVW         DP, #0xc
003f4110   000c
003f4111   1b30       CMP          @0x30, #8191
003f4112   1fff
003f4113   6706       SB           6, HIS
003f4114   0a30       INC          @0x30
003f4115   1b30       CMP          @0x30, #8190
003f4116   1ffe
003f4117   69f3       SB           -13, LOS
003f4118   6f18       SB           24, UNC
3f4119:              $C$L18:
003f4119   8ac2       MOVL         XAR4, *+XAR2[0]
003f411a   767f       LCR          0x3f427a
003f411b   427a
003f411c   761f       MOVW         DP, #0xc
003f411d   000c
003f411e   59a9       MOVZ         AR1, AL
003f411f   2b30       MOV          @0x30, #0
3f4120:              $C$L19:
003f4120   8ac2       MOVL         XAR4, *+XAR2[0]
003f4121   767f       LCR          0x3f4275
003f4122   4275
003f4123   45a9       TBIT         AL, #0x5
003f4124   ee06       SBF          6, TC
003f4125   761f       MOVW         DP, #0xc
003f4126   000c
003f4127   1b30       CMP          @0x30, #8191
003f4128   1fff
003f4129   6803       SB           3, LO
3f412a:              $C$L20:
003f412a   92a1       MOV          AL, AR1
003f412b   6f08       SB           8, UNC
3f412c:              $C$L21:
003f412c   0a30       INC          @0x30
003f412d   1b30       CMP          @0x30, #8190
003f412e   1ffe
003f412f   69f1       SB           -15, LOS
3f4130:              $C$L22:
003f4130   56bf       MOVB         *+XAR2[3], #0x01, UNC
003f4131   01da
3f4132:              $C$L23:
003f4132   9a00       MOVB         AL, #0x0
3f4133:              $C$L24:
003f4133   86be       MOVL         XAR2, *--SP
003f4134   8bbe       MOVL         XAR1, *--SP
003f4135   0006       LRETR        
3f4136:              _PCA955x_ReadStatus:
003f4136   767f       LCR          0x3f40b0
003f4137   40b0
003f4138   0006       LRETR        
3f4139:              _PCA955x_Init:
003f4139   1ea6       MOVL         XAR6, ACC
003f413a   0206       MOVB         ACC, #6
003f413b   0fa6       CMPL         ACC, XAR6
003f413c   6903       SB           3, LOS
003f413d   d400       MOVB         XAR4, #0x0
003f413e   0006       LRETR        
3f413f:              $C$L25:
003f413f   2bdc       MOV          *+XAR4[3], #0
003f4140   2be4       MOV          *+XAR4[4], #0
003f4141   0006       LRETR        
3f4142:              _PCA955x_GetStatus:
003f4142   b2bd       MOVL         *SP++, XAR1
003f4143   aabd       MOVL         *SP++, XAR2
003f4144   fe02       ADDB         SP, #2
003f4145   59a9       MOVZ         AR1, AL
003f4146   86a4       MOVL         XAR2, XAR4
003f4147   767f       LCR          0x3f4136
003f4148   4136
003f4149   92a1       MOV          AL, AR1
003f414a   8aa2       MOVL         XAR4, XAR2
003f414b   767f       LCR          0x3f4136
003f414c   4136
003f414d   9641       MOV          *-SP[1], AL
003f414e   fe82       SUBB         SP, #2
003f414f   96d2       MOV          *+XAR2[2], AL
003f4150   86be       MOVL         XAR2, *--SP
003f4151   8bbe       MOVL         XAR1, *--SP
003f4152   0006       LRETR        
3f4153:              _PCA955x_Configure:
003f4153   5201       CMPB         AL, #0x1
003f4154   ec03       SBF          3, EQ
003f4155   9a06       MOVB         AL, #0x6
003f4156   6f02       SB           2, UNC
3f4157:              $C$L26:
003f4157   9a07       MOVB         AL, #0x7
3f4158:              $C$L27:
003f4158   767f       LCR          0x3f4056
003f4159   4056
003f415a   0006       LRETR        
3f415b:              _SCI_setTxFifoIntLevel:
003f415b   83a4       MOVL         XAR5, XAR4
003f415c   dd0a       ADDB         XAR5, #10
003f415d   18c5       AND          *+XAR5[0], #0xffe0
003f415e   ffe0
003f415f   dc0a       ADDB         XAR4, #10
003f4160   98c4       OR           *+XAR4[0], AL
003f4161   0006       LRETR        
3f4162:              _SCI_setTxDelay:
003f4162   83a4       MOVL         XAR5, XAR4
003f4163   dd0c       ADDB         XAR5, #12
003f4164   18c5       AND          *+XAR5[0], #0xff00
003f4165   ff00
003f4166   dc0c       ADDB         XAR4, #12
003f4167   98c4       OR           *+XAR4[0], AL
003f4168   0006       LRETR        
3f4169:              _SCI_setRxFifoIntLevel:
003f4169   83a4       MOVL         XAR5, XAR4
003f416a   dd0b       ADDB         XAR5, #11
003f416b   18c5       AND          *+XAR5[0], #0xffe0
003f416c   ffe0
003f416d   dc0b       ADDB         XAR4, #11
003f416e   98c4       OR           *+XAR4[0], AL
003f416f   0006       LRETR        
3f4170:              _SCI_setPriority:
003f4170   d00f       MOVB         XAR0, #0xf
003f4171   9694       MOV          *+XAR4[AR0], AL
003f4172   0006       LRETR        
3f4173:              _SCI_setParity:
003f4173   18c4       AND          *+XAR4[0], #0xffbf
003f4174   ffbf
003f4175   98c4       OR           *+XAR4[0], AL
003f4176   0006       LRETR        
3f4177:              _SCI_setNumStopBits:
003f4177   18c4       AND          *+XAR4[0], #0xff7f
003f4178   ff7f
003f4179   98c4       OR           *+XAR4[0], AL
003f417a   0006       LRETR        
3f417b:              _SCI_setMode:
003f417b   18c4       AND          *+XAR4[0], #0xfff7
003f417c   fff7
003f417d   98c4       OR           *+XAR4[0], AL
003f417e   0006       LRETR        
3f417f:              _SCI_setCharLength:
003f417f   18c4       AND          *+XAR4[0], #0xfff8
003f4180   fff8
003f4181   98c4       OR           *+XAR4[0], AL
003f4182   0006       LRETR        
3f4183:              _SCI_setBaudRate:
003f4183   93a9       MOV          AH, @AL
003f4184   90ff       ANDB         AL, #0xff
003f4185   ffd7       LSR          AH, 8
003f4186   97d4       MOV          *+XAR4[2], AH
003f4187   96dc       MOV          *+XAR4[3], AL
003f4188   0006       LRETR        
3f4189:              _SCI_resetTxFifo:
003f4189   83a4       MOVL         XAR5, XAR4
003f418a   dd0a       ADDB         XAR5, #10
003f418b   18c5       AND          *+XAR5[0], #0xdfff
003f418c   dfff
003f418d   7700       NOP          
003f418e   ff69       SPM          #0
003f418f   dc0a       ADDB         XAR4, #10
003f4190   1ac4       OR           *+XAR4[0], #0x2000
003f4191   2000
003f4192   0006       LRETR        
3f4193:              _SCI_resetRxFifo:
003f4193   83a4       MOVL         XAR5, XAR4
003f4194   dd0b       ADDB         XAR5, #11
003f4195   18c5       AND          *+XAR5[0], #0xdfff
003f4196   dfff
003f4197   7700       NOP          
003f4198   ff69       SPM          #0
003f4199   dc0b       ADDB         XAR4, #11
003f419a   1ac4       OR           *+XAR4[0], #0x2000
003f419b   2000
003f419c   0006       LRETR        
3f419d:              _SCI_resetChannels:
003f419d   83a4       MOVL         XAR5, XAR4
003f419e   dd0a       ADDB         XAR5, #10
003f419f   18c5       AND          *+XAR5[0], #0x7fff
003f41a0   7fff
003f41a1   7700       NOP          
003f41a2   ff69       SPM          #0
003f41a3   dc0a       ADDB         XAR4, #10
003f41a4   1ac4       OR           *+XAR4[0], #0x8000
003f41a5   8000
003f41a6   0006       LRETR        
3f41a7:              _SCI_reset:
003f41a7   18cc       AND          *+XAR4[1], #0xffdf
003f41a8   ffdf
003f41a9   0006       LRETR        
3f41aa:              _SCI_putDataNonBlocking:
003f41aa   47e4       TBIT         *+XAR4[4], #0x7
003f41ab   ef05       SBF          5, NTC
003f41ac   d009       MOVB         XAR0, #0x9
003f41ad   9694       MOV          *+XAR4[AR0], AL
003f41ae   9a01       MOVB         AL, #0x1
003f41af   0006       LRETR        
3f41b0:              $C$L1:
003f41b0   9a00       MOVB         AL, #0x0
003f41b1   0006       LRETR        
3f41b2:              _SCI_putDataBlocking:
3f41b2:              $C$L2:
003f41b2   47e4       TBIT         *+XAR4[4], #0x7
003f41b3   efff       SBF          -1, NTC
003f41b4   d009       MOVB         XAR0, #0x9
003f41b5   9694       MOV          *+XAR4[AR0], AL
003f41b6   0006       LRETR        
3f41b7:              _SCI_init:
003f41b7   1ea6       MOVL         XAR6, ACC
003f41b8   0210       MOVB         ACC, #16
003f41b9   0fa6       CMPL         ACC, XAR6
003f41ba   6902       SB           2, LOS
003f41bb   d400       MOVB         XAR4, #0x0
3f41bc:              $C$L3:
003f41bc   0006       LRETR        
3f41bd:              _SCI_getTxFifoStatus:
003f41bd   d00a       MOVB         XAR0, #0xa
003f41be   cc94       AND          AL, *+XAR4[AR0], #0x1f00
003f41bf   1f00
003f41c0   0006       LRETR        
3f41c1:              _SCI_getRxFifoStatus:
003f41c1   d00b       MOVB         XAR0, #0xb
003f41c2   cc94       AND          AL, *+XAR4[AR0], #0x1f00
003f41c3   1f00
003f41c4   0006       LRETR        
3f41c5:              _SCI_getDataNonBlocking:
003f41c5   46ec       TBIT         *+XAR4[5], #0x6
003f41c6   ef05       SBF          5, NTC
003f41c7   56bf       MOVB         *+XAR5[0], #0x01, UNC
003f41c8   01c5
003f41c9   92fc       MOV          AL, *+XAR4[7]
003f41ca   0006       LRETR        
3f41cb:              $C$L4:
003f41cb   9a00       MOVB         AL, #0x0
003f41cc   2bc5       MOV          *+XAR5[0], #0
003f41cd   0006       LRETR        
3f41ce:              _SCI_getDataBlocking:
3f41ce:              $C$L5:
003f41ce   46ec       TBIT         *+XAR4[5], #0x6
003f41cf   efff       SBF          -1, NTC
003f41d0   92fc       MOV          AL, *+XAR4[7]
003f41d1   0006       LRETR        
3f41d2:              _SCI_enableTxWake:
003f41d2   1acc       OR           *+XAR4[1], #0x0008
003f41d3   0008
003f41d4   0006       LRETR        
3f41d5:              _SCI_enableTxInt:
003f41d5   1ae4       OR           *+XAR4[4], #0x0001
003f41d6   0001
003f41d7   0006       LRETR        
3f41d8:              _SCI_enableTxFifoInt:
003f41d8   dc0a       ADDB         XAR4, #10
003f41d9   1ac4       OR           *+XAR4[0], #0x0020
003f41da   0020
003f41db   0006       LRETR        
3f41dc:              _SCI_enableTxFifoEnh:
003f41dc   dc0a       ADDB         XAR4, #10
003f41dd   1ac4       OR           *+XAR4[0], #0x4000
003f41de   4000
003f41df   0006       LRETR        
3f41e0:              _SCI_enableTxFifo:
003f41e0   dc0a       ADDB         XAR4, #10
003f41e1   1ac4       OR           *+XAR4[0], #0x2000
003f41e2   2000
003f41e3   0006       LRETR        
3f41e4:              _SCI_enableTx:
003f41e4   1acc       OR           *+XAR4[1], #0x0002
003f41e5   0002
003f41e6   0006       LRETR        
3f41e7:              _SCI_enableSleep:
003f41e7   1acc       OR           *+XAR4[1], #0x0004
003f41e8   0004
003f41e9   0006       LRETR        
3f41ea:              _SCI_enableRxInt:
003f41ea   1ae4       OR           *+XAR4[4], #0x0002
003f41eb   0002
003f41ec   0006       LRETR        
3f41ed:              _SCI_enableRxFifoInt:
003f41ed   dc0b       ADDB         XAR4, #11
003f41ee   1ac4       OR           *+XAR4[0], #0x0020
003f41ef   0020
003f41f0   0006       LRETR        
3f41f1:              _SCI_enableRxFifo:
003f41f1   dc0b       ADDB         XAR4, #11
003f41f2   1ac4       OR           *+XAR4[0], #0x2000
003f41f3   2000
003f41f4   0006       LRETR        
3f41f5:              _SCI_enableRxErrorInt:
003f41f5   1acc       OR           *+XAR4[1], #0x0040
003f41f6   0040
003f41f7   0006       LRETR        
3f41f8:              _SCI_enableRx:
003f41f8   1acc       OR           *+XAR4[1], #0x0001
003f41f9   0001
003f41fa   0006       LRETR        
3f41fb:              _SCI_enableParity:
003f41fb   1ac4       OR           *+XAR4[0], #0x0020
003f41fc   0020
003f41fd   0006       LRETR        
3f41fe:              _SCI_enableLoopBack:
003f41fe   1ac4       OR           *+XAR4[0], #0x0010
003f41ff   0010
003f4200   0006       LRETR        
3f4201:              _SCI_enableChannels:
003f4201   dc0a       ADDB         XAR4, #10
003f4202   1ac4       OR           *+XAR4[0], #0x8000
003f4203   8000
003f4204   0006       LRETR        
3f4205:              _SCI_enableAutoBaudAlign:
003f4205   dc0c       ADDB         XAR4, #12
003f4206   1ac4       OR           *+XAR4[0], #0x2000
003f4207   2000
003f4208   0006       LRETR        
3f4209:              _SCI_enable:
003f4209   1acc       OR           *+XAR4[1], #0x0020
003f420a   0020
003f420b   0006       LRETR        
3f420c:              _SCI_disableTxWake:
003f420c   18cc       AND          *+XAR4[1], #0xfff7
003f420d   fff7
003f420e   0006       LRETR        
3f420f:              _SCI_disableTxInt:
003f420f   18e4       AND          *+XAR4[4], #0xfffe
003f4210   fffe
003f4211   0006       LRETR        
3f4212:              _SCI_disableTxFifoInt:
003f4212   dc0a       ADDB         XAR4, #10
003f4213   18c4       AND          *+XAR4[0], #0xffdf
003f4214   ffdf
003f4215   0006       LRETR        
3f4216:              _SCI_disableTxFifoEnh:
003f4216   dc0a       ADDB         XAR4, #10
003f4217   18c4       AND          *+XAR4[0], #0xbfff
003f4218   bfff
003f4219   0006       LRETR        
3f421a:              _SCI_disableTx:
003f421a   18cc       AND          *+XAR4[1], #0xfffd
003f421b   fffd
003f421c   0006       LRETR        
3f421d:              _SCI_disableSleep:
003f421d   18cc       AND          *+XAR4[1], #0xfffb
003f421e   fffb
003f421f   0006       LRETR        
3f4220:              _SCI_disableRxInt:
003f4220   18e4       AND          *+XAR4[4], #0xfffd
003f4221   fffd
003f4222   0006       LRETR        
3f4223:              _SCI_disableRxFifoInt:
003f4223   dc0b       ADDB         XAR4, #11
003f4224   18c4       AND          *+XAR4[0], #0xffdf
003f4225   ffdf
003f4226   0006       LRETR        
3f4227:              _SCI_disableRxErrorInt:
003f4227   18cc       AND          *+XAR4[1], #0xffbf
003f4228   ffbf
003f4229   0006       LRETR        
3f422a:              _SCI_disableRx:
003f422a   18cc       AND          *+XAR4[1], #0xfffe
003f422b   fffe
003f422c   0006       LRETR        
3f422d:              _SCI_disableParity:
003f422d   18c4       AND          *+XAR4[0], #0xffdf
003f422e   ffdf
003f422f   0006       LRETR        
3f4230:              _SCI_disableLoopBack:
003f4230   18c4       AND          *+XAR4[0], #0xffef
003f4231   ffef
003f4232   0006       LRETR        
3f4233:              _SCI_disableAutoBaudAlign:
003f4233   dc0c       ADDB         XAR4, #12
003f4234   18c4       AND          *+XAR4[0], #0xdfff
003f4235   dfff
003f4236   0006       LRETR        
3f4237:              _SCI_disable:
003f4237   18cc       AND          *+XAR4[1], #0xffdf
003f4238   ffdf
003f4239   0006       LRETR        
3f423a:              _SCI_clearTxFifoInt:
003f423a   dc0a       ADDB         XAR4, #10
003f423b   1ac4       OR           *+XAR4[0], #0x0040
003f423c   0040
003f423d   0006       LRETR        
3f423e:              _SCI_clearRxFifoOvf:
003f423e   dc0b       ADDB         XAR4, #11
003f423f   1ac4       OR           *+XAR4[0], #0x4000
003f4240   4000
003f4241   0006       LRETR        
3f4242:              _SCI_clearRxFifoInt:
003f4242   dc0b       ADDB         XAR4, #11
003f4243   1ac4       OR           *+XAR4[0], #0x0040
003f4244   0040
003f4245   0006       LRETR        
3f4246:              _SCI_clearAutoBaudDetect:
003f4246   dc0c       ADDB         XAR4, #12
003f4247   1ac4       OR           *+XAR4[0], #0x4000
003f4248   4000
003f4249   0006       LRETR        
3f424a:              _I2C_setupClock:
003f424a   9cff       ADDB         AL, #-1
003f424b   d00c       MOVB         XAR0, #0xc
003f424c   90ff       ANDB         AL, #0xff
003f424d   9694       MOV          *+XAR4[AR0], AL
003f424e   97dc       MOV          *+XAR4[3], AH
003f424f   7de4       MOV          *+XAR4[4], AR5
003f4250   0006       LRETR        
3f4251:              _I2C_setSlave:
003f4251   dc09       ADDB         XAR4, #9
003f4252   18c4       AND          *+XAR4[0], #0xfbff
003f4253   fbff
003f4254   0006       LRETR        
3f4255:              _I2C_setSlaveAddress:
003f4255   83a4       MOVL         XAR5, XAR4
003f4256   767f       LCR          0x3f4251
003f4257   4251
003f4258   96c5       MOV          *+XAR5[0], AL
003f4259   0006       LRETR        
3f425a:              _I2C_setMasterSlaveAddr:
003f425a   96fc       MOV          *+XAR4[7], AL
003f425b   0006       LRETR        
3f425c:              _I2C_setMaster:
003f425c   dc09       ADDB         XAR4, #9
003f425d   1ac4       OR           *+XAR4[0], #0x0400
003f425e   0400
003f425f   0006       LRETR        
3f4260:              _I2C_resetTxFifo:
003f4260   dc20       ADDB         XAR4, #32
003f4261   1ac4       OR           *+XAR4[0], #0x2000
003f4262   2000
003f4263   0006       LRETR        
3f4264:              _I2C_resetRxFifo:
003f4264   dc21       ADDB         XAR4, #33
003f4265   1ac4       OR           *+XAR4[0], #0x2000
003f4266   2000
003f4267   0006       LRETR        
3f4268:              _I2C_putData:
003f4268   d008       MOVB         XAR0, #0x8
003f4269   9694       MOV          *+XAR4[AR0], AL
003f426a   0006       LRETR        
3f426b:              _I2C_isMasterBusy:
003f426b   ccd4       AND          AL, *+XAR4[2], #0x1000
003f426c   1000
003f426d   ffcb       LSR          AL, 12
003f426e   0006       LRETR        
3f426f:              _I2C_init:
003f426f   1ea6       MOVL         XAR6, ACC
003f4270   0222       MOVB         ACC, #34
003f4271   0fa6       CMPL         ACC, XAR6
003f4272   6902       SB           2, LOS
003f4273   d400       MOVB         XAR4, #0x0
3f4274:              $C$L1:
003f4274   0006       LRETR        
3f4275:              _I2C_getStatus:
003f4275   92d4       MOV          AL, *+XAR4[2]
003f4276   0006       LRETR        
3f4277:              _I2C_getIntSource:
003f4277   d00a       MOVB         XAR0, #0xa
003f4278   9294       MOV          AL, *+XAR4[AR0]
003f4279   0006       LRETR        
3f427a:              _I2C_getData:
003f427a   92f4       MOV          AL, *+XAR4[6]
003f427b   0006       LRETR        
3f427c:              _I2C_enableInt:
003f427c   98cc       OR           *+XAR4[1], AL
003f427d   0006       LRETR        
3f427e:              _I2C_enableFifo:
003f427e   dc20       ADDB         XAR4, #32
003f427f   1ac4       OR           *+XAR4[0], #0x4000
003f4280   4000
003f4281   0006       LRETR        
3f4282:              _I2C_enable:
003f4282   dc09       ADDB         XAR4, #9
003f4283   1ac4       OR           *+XAR4[0], #0x0020
003f4284   0020
003f4285   0006       LRETR        
3f4286:              _I2C_disableInt:
003f4286   ff5e       NOT          AL
003f4287   c0cc       AND          *+XAR4[1], AL
003f4288   0006       LRETR        
3f4289:              _I2C_disableFifo:
003f4289   dc20       ADDB         XAR4, #32
003f428a   18c4       AND          *+XAR4[0], #0xbfff
003f428b   bfff
003f428c   0006       LRETR        
3f428d:              _I2C_disable:
003f428d   dc09       ADDB         XAR4, #9
003f428e   18c4       AND          *+XAR4[0], #0xffdf
003f428f   ffdf
003f4290   0006       LRETR        
3f4291:              _I2C_clearTxFifoInt:
003f4291   dc20       ADDB         XAR4, #32
003f4292   1ac4       OR           *+XAR4[0], #0x0040
003f4293   0040
003f4294   0006       LRETR        
3f4295:              _I2C_clearRxFifoInt:
003f4295   dc21       ADDB         XAR4, #33
003f4296   1ac4       OR           *+XAR4[0], #0x0040
003f4297   0040
003f4298   0006       LRETR        
3f4299:              _I2C_MasterControl:
003f4299   7dec       MOV          *+XAR4[5], AR5
003f429a   cba9       OR           AH, @AL
003f429b   d009       MOVB         XAR0, #0x9
003f429c   9794       MOV          *+XAR4[AR0], AH
003f429d   0006       LRETR        
3f429e:              _I2C_WrData:
003f429e   80a8       MOVZ         AR7, AH
003f429f   27a9       MOV          PL, AL
003f42a0   c4a5       MOVL         XAR6, XAR5
003f42a1   a8ac       MOVL         XT, XAR4
003f42a2   6f07       SB           7, UNC
3f42a3:              $C$L2:
003f42a3   9b00       MOVB         AH, #0x0
003f42a4   d501       MOVB         XAR5, #0x1
003f42a5   28a9       MOV          AL, #0x0c00
003f42a6   0c00
003f42a7   767f       LCR          0x3f4299
003f42a8   4299
3f42a9:              $C$L3:
003f42a9   767f       LCR          0x3f426b
003f42aa   426b
003f42ab   5200       CMPB         AL, #0x0
003f42ac   edf7       SBF          -9, NEQ
003f42ad   92ab       MOV          AL, PL
003f42ae   767f       LCR          0x3f425a
003f42af   425a
003f42b0   9b00       MOVB         AH, #0x0
003f42b1   5da7       MOVZ         AR5, AR7
003f42b2   28a9       MOV          AL, #0x2e00
003f42b3   2e00
003f42b4   767f       LCR          0x3f4299
003f42b5   4299
003f42b6   767f       LCR          0x3f4282
003f42b7   4282
003f42b8   92a5       MOV          AL, AR5
003f42b9   ec0e       SBF          14, EQ
003f42ba   de81       SUBB         XAR6, #1
3f42bb:              $C$L4:
003f42bb   de01       ADDB         XAR6, #1
003f42bc   aba4       MOVL         XAR4, XT
003f42bd   92c6       MOV          AL, *+XAR6[0]
003f42be   767f       LCR          0x3f4268
003f42bf   4268
3f42c0:              $C$L5:
003f42c0   767f       LCR          0x3f4275
003f42c1   4275
003f42c2   44a9       TBIT         AL, #0x4
003f42c3   effd       SBF          -3, NTC
003f42c4   dd81       SUBB         XAR5, #1
003f42c5   92a5       MOV          AL, AR5
003f42c6   edf5       SBF          -11, NEQ
3f42c7:              $C$L6:
003f42c7   aba4       MOVL         XAR4, XT
003f42c8   767f       LCR          0x3f4275
003f42c9   4275
003f42ca   45a9       TBIT         AL, #0x5
003f42cb   effc       SBF          -4, NTC
003f42cc   0006       LRETR        
3f42cd:              _I2C_SendData:
3f42cd:              $C$L7:
003f42cd   40d4       TBIT         *+XAR4[2], #0x0
003f42ce   eeff       SBF          -1, TC
003f42cf   56bf       MOVB         *+XAR4[7], #0x20, UNC
003f42d0   20fc
003f42d1   d008       MOVB         XAR0, #0x8
003f42d2   56bf       MOVB         *+XAR4[5], #0x02, UNC
003f42d3   02ec
003f42d4   9694       MOV          *+XAR4[AR0], AL
003f42d5   d008       MOVB         XAR0, #0x8
003f42d6   9794       MOV          *+XAR4[AR0], AH
003f42d7   d009       MOVB         XAR0, #0x9
003f42d8   2894       MOV          *+XAR4[AR0], #0x6e20
003f42d9   6e20
003f42da   0006       LRETR        
3f42db:              _I2C_RdData:
003f42db   27a8       MOV          PL, AH
003f42dc   80a9       MOVZ         AR7, AL
003f42dd   c4a5       MOVL         XAR6, XAR5
003f42de   2f43       MOV          PH, *-SP[3]
003f42df   a8ac       MOVL         XT, XAR4
003f42e0   6f07       SB           7, UNC
3f42e1:              $C$L8:
003f42e1   9b00       MOVB         AH, #0x0
003f42e2   d501       MOVB         XAR5, #0x1
003f42e3   28a9       MOV          AL, #0x0c00
003f42e4   0c00
003f42e5   767f       LCR          0x3f4299
003f42e6   4299
3f42e7:              $C$L9:
003f42e7   767f       LCR          0x3f426b
003f42e8   426b
003f42e9   5200       CMPB         AL, #0x0
003f42ea   edf7       SBF          -9, NEQ
003f42eb   92a7       MOV          AL, AR7
003f42ec   767f       LCR          0x3f425a
003f42ed   425a
003f42ee   9b00       MOVB         AH, #0x0
003f42ef   d501       MOVB         XAR5, #0x1
003f42f0   28a9       MOV          AL, #0x2e00
003f42f1   2e00
003f42f2   767f       LCR          0x3f4299
003f42f3   4299
003f42f4   767f       LCR          0x3f4282
003f42f5   4282
003f42f6   92ab       MOV          AL, PL
003f42f7   aba4       MOVL         XAR4, XT
003f42f8   767f       LCR          0x3f4268
003f42f9   4268
3f42fa:              $C$L10:
003f42fa   767f       LCR          0x3f4275
003f42fb   4275
003f42fc   44a9       TBIT         AL, #0x4
003f42fd   effd       SBF          -3, NTC
3f42fe:              $C$L11:
003f42fe   767f       LCR          0x3f426b
003f42ff   426b
003f4300   5200       CMPB         AL, #0x0
003f4301   edfd       SBF          -3, NEQ
003f4302   92a7       MOV          AL, AR7
003f4303   767f       LCR          0x3f425a
003f4304   425a
003f4305   9b00       MOVB         AH, #0x0
003f4306   5daa       MOVZ         AR5, PH
003f4307   28a9       MOV          AL, #0x2c00
003f4308   2c00
003f4309   767f       LCR          0x3f4299
003f430a   4299
003f430b   767f       LCR          0x3f4282
003f430c   4282
003f430d   92a5       MOV          AL, AR5
003f430e   ec0d       SBF          13, EQ
3f430f:              $C$L12:
003f430f   aba4       MOVL         XAR4, XT
003f4310   767f       LCR          0x3f427a
003f4311   427a
003f4312   96c6       MOV          *+XAR6[0], AL
3f4313:              $C$L13:
003f4313   767f       LCR          0x3f4275
003f4314   4275
003f4315   43a9       TBIT         AL, #0x3
003f4316   effd       SBF          -3, NTC
003f4317   dd81       SUBB         XAR5, #1
003f4318   de01       ADDB         XAR6, #1
003f4319   92a5       MOV          AL, AR5
003f431a   edf5       SBF          -11, NEQ
3f431b:              $C$L14:
003f431b   aba4       MOVL         XAR4, XT
003f431c   767f       LCR          0x3f4275
003f431d   4275
003f431e   45a9       TBIT         AL, #0x5
003f431f   effc       SBF          -4, NTC
003f4320   0006       LRETR        
3f4321:              _SPI_setTxFifoIntLevel:
003f4321   83a4       MOVL         XAR5, XAR4
003f4322   dd0a       ADDB         XAR5, #10
003f4323   18c5       AND          *+XAR5[0], #0xffe0
003f4324   ffe0
003f4325   dc0a       ADDB         XAR4, #10
003f4326   98c4       OR           *+XAR4[0], AL
003f4327   0006       LRETR        
3f4328:              _SPI_setTxDelay:
003f4328   d00c       MOVB         XAR0, #0xc
003f4329   9694       MOV          *+XAR4[AR0], AL
003f432a   0006       LRETR        
3f432b:              _SPI_setTriWire:
003f432b   83a4       MOVL         XAR5, XAR4
003f432c   dd0f       ADDB         XAR5, #15
003f432d   18c5       AND          *+XAR5[0], #0xfffe
003f432e   fffe
003f432f   dc0f       ADDB         XAR4, #15
003f4330   98c4       OR           *+XAR4[0], AL
003f4331   0006       LRETR        
3f4332:              _SPI_setSuspend:
003f4332   83a4       MOVL         XAR5, XAR4
003f4333   dd0f       ADDB         XAR5, #15
003f4334   18c5       AND          *+XAR5[0], #0xffcf
003f4335   ffcf
003f4336   dc0f       ADDB         XAR4, #15
003f4337   98c4       OR           *+XAR4[0], AL
003f4338   0006       LRETR        
3f4339:              _SPI_setSteInv:
003f4339   83a4       MOVL         XAR5, XAR4
003f433a   dd0f       ADDB         XAR5, #15
003f433b   18c5       AND          *+XAR5[0], #0xfffd
003f433c   fffd
003f433d   dc0f       ADDB         XAR4, #15
003f433e   98c4       OR           *+XAR4[0], AL
003f433f   0006       LRETR        
3f4340:              _SPI_setRxFifoIntLevel:
003f4340   83a4       MOVL         XAR5, XAR4
003f4341   dd0b       ADDB         XAR5, #11
003f4342   18c5       AND          *+XAR5[0], #0xffe0
003f4343   ffe0
003f4344   dc0b       ADDB         XAR4, #11
003f4345   98c4       OR           *+XAR4[0], AL
003f4346   0006       LRETR        
3f4347:              _SPI_setPriority:
003f4347   83a4       MOVL         XAR5, XAR4
003f4348   dd0f       ADDB         XAR5, #15
003f4349   18c5       AND          *+XAR5[0], #0xffcf
003f434a   ffcf
003f434b   dc0f       ADDB         XAR4, #15
003f434c   98c4       OR           *+XAR4[0], AL
003f434d   0006       LRETR        
3f434e:              _SPI_setMode:
003f434e   98cc       OR           *+XAR4[1], AL
003f434f   0006       LRETR        
3f4350:              _SPI_setClkPolarity:
003f4350   18c4       AND          *+XAR4[0], #0xffbf
003f4351   ffbf
003f4352   98c4       OR           *+XAR4[0], AL
003f4353   0006       LRETR        
3f4354:              _SPI_setClkPhase:
003f4354   98cc       OR           *+XAR4[1], AL
003f4355   0006       LRETR        
3f4356:              _SPI_setCharLength:
003f4356   18c4       AND          *+XAR4[0], #0xfff0
003f4357   fff0
003f4358   98c4       OR           *+XAR4[0], AL
003f4359   0006       LRETR        
3f435a:              _SPI_setBaudRate:
003f435a   96e4       MOV          *+XAR4[4], AL
003f435b   0006       LRETR        
3f435c:              _SPI_resetTxFifo:
003f435c   dc0a       ADDB         XAR4, #10
003f435d   18c4       AND          *+XAR4[0], #0xdfff
003f435e   dfff
003f435f   0006       LRETR        
3f4360:              _SPI_resetRxFifo:
003f4360   dc0b       ADDB         XAR4, #11
003f4361   18c4       AND          *+XAR4[0], #0xdfff
003f4362   dfff
003f4363   0006       LRETR        
3f4364:              _SPI_resetChannels:
003f4364   dc0a       ADDB         XAR4, #10
003f4365   18c4       AND          *+XAR4[0], #0x7fff
003f4366   7fff
003f4367   0006       LRETR        
3f4368:              _SPI_reset:
003f4368   18c4       AND          *+XAR4[0], #0xff7f
003f4369   ff7f
003f436a   0006       LRETR        
3f436b:              _SPI_init:
003f436b   1ea6       MOVL         XAR6, ACC
003f436c   0210       MOVB         ACC, #16
003f436d   0fa6       CMPL         ACC, XAR6
003f436e   6902       SB           2, LOS
003f436f   d400       MOVB         XAR4, #0x0
3f4370:              $C$L1:
003f4370   0006       LRETR        
3f4371:              _SPI_getTxFifoStatus:
003f4371   d00a       MOVB         XAR0, #0xa
003f4372   cc94       AND          AL, *+XAR4[AR0], #0x1f00
003f4373   1f00
003f4374   0006       LRETR        
3f4375:              _SPI_getTxBufferStatus:
003f4375   ccd4       AND          AL, *+XAR4[2], #0x20
003f4376   0020
003f4377   0006       LRETR        
3f4378:              _SPI_getRxFifoStatus:
003f4378   d00b       MOVB         XAR0, #0xb
003f4379   cc94       AND          AL, *+XAR4[AR0], #0x1f00
003f437a   1f00
003f437b   0006       LRETR        
3f437c:              _SPI_getIntFlagStatus:
003f437c   ccd4       AND          AL, *+XAR4[2], #0x40
003f437d   0040
003f437e   0006       LRETR        
3f437f:              _SPI_enableTxFifoInt:
003f437f   dc0a       ADDB         XAR4, #10
003f4380   1ac4       OR           *+XAR4[0], #0x0020
003f4381   0020
003f4382   0006       LRETR        
3f4383:              _SPI_enableTxFifoEnh:
003f4383   dc0a       ADDB         XAR4, #10
003f4384   1ac4       OR           *+XAR4[0], #0x4000
003f4385   4000
003f4386   0006       LRETR        
3f4387:              _SPI_enableTxFifo:
003f4387   dc0a       ADDB         XAR4, #10
003f4388   1ac4       OR           *+XAR4[0], #0x2000
003f4389   2000
003f438a   0006       LRETR        
3f438b:              _SPI_enableTx:
003f438b   1acc       OR           *+XAR4[1], #0x0002
003f438c   0002
003f438d   0006       LRETR        
3f438e:              _SPI_enableRxFifoInt:
003f438e   dc0b       ADDB         XAR4, #11
003f438f   1ac4       OR           *+XAR4[0], #0x0020
003f4390   0020
003f4391   0006       LRETR        
3f4392:              _SPI_enableRxFifo:
003f4392   dc0b       ADDB         XAR4, #11
003f4393   1ac4       OR           *+XAR4[0], #0x2000
003f4394   2000
003f4395   0006       LRETR        
3f4396:              _SPI_enableOverRunInt:
003f4396   1acc       OR           *+XAR4[1], #0x0010
003f4397   0010
003f4398   0006       LRETR        
3f4399:              _SPI_enableLoopBack:
003f4399   1ac4       OR           *+XAR4[0], #0x0010
003f439a   0010
003f439b   0006       LRETR        
3f439c:              _SPI_enableInt:
003f439c   1acc       OR           *+XAR4[1], #0x0001
003f439d   0001
003f439e   0006       LRETR        
3f439f:              _SPI_enableChannels:
003f439f   dc0a       ADDB         XAR4, #10
003f43a0   1ac4       OR           *+XAR4[0], #0x8000
003f43a1   8000
003f43a2   0006       LRETR        
3f43a3:              _SPI_enable:
003f43a3   1ac4       OR           *+XAR4[0], #0x0080
003f43a4   0080
003f43a5   0006       LRETR        
3f43a6:              _SPI_disableTxFifoInt:
003f43a6   dc0a       ADDB         XAR4, #10
003f43a7   18c4       AND          *+XAR4[0], #0xffdf
003f43a8   ffdf
003f43a9   0006       LRETR        
3f43aa:              _SPI_disableTxFifoEnh:
003f43aa   dc0a       ADDB         XAR4, #10
003f43ab   18c4       AND          *+XAR4[0], #0xbfff
003f43ac   bfff
003f43ad   0006       LRETR        
3f43ae:              _SPI_disableTx:
003f43ae   18cc       AND          *+XAR4[1], #0xfffd
003f43af   fffd
003f43b0   0006       LRETR        
3f43b1:              _SPI_disableRxFifoInt:
003f43b1   dc0b       ADDB         XAR4, #11
003f43b2   18c4       AND          *+XAR4[0], #0xffdf
003f43b3   ffdf
003f43b4   0006       LRETR        
3f43b5:              _SPI_disableOverRunInt:
003f43b5   18cc       AND          *+XAR4[1], #0xffef
003f43b6   ffef
003f43b7   0006       LRETR        
3f43b8:              _SPI_disableLoopBack:
003f43b8   18c4       AND          *+XAR4[0], #0xffef
003f43b9   ffef
003f43ba   0006       LRETR        
3f43bb:              _SPI_disableInt:
003f43bb   18cc       AND          *+XAR4[1], #0xfffe
003f43bc   fffe
003f43bd   0006       LRETR        
3f43be:              _SPI_clearTxFifoInt:
003f43be   dc0a       ADDB         XAR4, #10
003f43bf   1ac4       OR           *+XAR4[0], #0x0040
003f43c0   0040
003f43c1   0006       LRETR        
3f43c2:              _SPI_clearRxFifoOvf:
003f43c2   dc0b       ADDB         XAR4, #11
003f43c3   1ac4       OR           *+XAR4[0], #0x4000
003f43c4   4000
003f43c5   0006       LRETR        
3f43c6:              _SPI_clearRxFifoInt:
003f43c6   dc0b       ADDB         XAR4, #11
003f43c7   1ac4       OR           *+XAR4[0], #0x0040
003f43c8   0040
003f43c9   0006       LRETR        
3f43ca:              _UART_TxReadyISR:
3f43ca:              .text:retain:
003f43ca   761b       ASP          
003f43cb   0005       PUSH         AR1H:AR0H
003f43cc   ff69       SPM          #0
003f43cd   abbd       MOVL         *SP++, XT
003f43ce   a8bd       MOVL         *SP++, XAR4
003f43cf   a0bd       MOVL         *SP++, XAR5
003f43d0   c2bd       MOVL         *SP++, XAR6
003f43d1   c3bd       MOVL         *SP++, XAR7
003f43d2   2942       CLRC         OVM|PAGE0
003f43d3   5616       CLRC         AMODE
003f43d4   761f       MOVW         DP, #0x0
003f43d5   0000
003f43d6   8a0a       MOVL         XAR4, @0xa
003f43d7   767f       LCR          0x3f3713
003f43d8   3713
003f43d9   761f       MOVW         DP, #0x0
003f43da   0000
003f43db   8a08       MOVL         XAR4, @0x8
003f43dc   d096       MOVB         XAR0, #0x96
003f43dd   8a94       MOVL         XAR4, *+XAR4[AR0]
003f43de   767f       LCR          0x3f423a
003f43df   423a
003f43e0   761f       MOVW         DP, #0x0
003f43e1   0000
003f43e2   8a08       MOVL         XAR4, @0x8
003f43e3   d078       MOVB         XAR0, #0x78
003f43e4   8a94       MOVL         XAR4, *+XAR4[AR0]
003f43e5   28cc       MOV          *+XAR4[1], #0x0100
003f43e6   0100
003f43e7   c5be       MOVL         XAR7, *--SP
003f43e8   c4be       MOVL         XAR6, *--SP
003f43e9   83be       MOVL         XAR5, *--SP
003f43ea   8abe       MOVL         XAR4, *--SP
003f43eb   87be       MOVL         XT, *--SP
003f43ec   0003       POP          AR1H:AR0H
003f43ed   7617       NASP         
003f43ee   7602       IRET         
3f43ef:              _UART_RxISR:
003f43ef   761b       ASP          
003f43f0   0005       PUSH         AR1H:AR0H
003f43f1   ff69       SPM          #0
003f43f2   abbd       MOVL         *SP++, XT
003f43f3   a8bd       MOVL         *SP++, XAR4
003f43f4   a0bd       MOVL         *SP++, XAR5
003f43f5   c2bd       MOVL         *SP++, XAR6
003f43f6   c3bd       MOVL         *SP++, XAR7
003f43f7   2942       CLRC         OVM|PAGE0
003f43f8   5616       CLRC         AMODE
003f43f9   761f       MOVW         DP, #0x0
003f43fa   0000
003f43fb   8a0a       MOVL         XAR4, @0xa
003f43fc   767f       LCR          0x3f37cd
003f43fd   37cd
003f43fe   761f       MOVW         DP, #0x0
003f43ff   0000
003f4400   8a08       MOVL         XAR4, @0x8
003f4401   d096       MOVB         XAR0, #0x96
003f4402   8a94       MOVL         XAR4, *+XAR4[AR0]
003f4403   767f       LCR          0x3f423e
003f4404   423e
003f4405   761f       MOVW         DP, #0x0
003f4406   0000
003f4407   8a08       MOVL         XAR4, @0x8
003f4408   d096       MOVB         XAR0, #0x96
003f4409   8a94       MOVL         XAR4, *+XAR4[AR0]
003f440a   767f       LCR          0x3f4242
003f440b   4242
003f440c   761f       MOVW         DP, #0x0
003f440d   0000
003f440e   8a08       MOVL         XAR4, @0x8
003f440f   d078       MOVB         XAR0, #0x78
003f4410   8a94       MOVL         XAR4, *+XAR4[AR0]
003f4411   28cc       MOV          *+XAR4[1], #0x0100
003f4412   0100
003f4413   c5be       MOVL         XAR7, *--SP
003f4414   c4be       MOVL         XAR6, *--SP
003f4415   83be       MOVL         XAR5, *--SP
003f4416   8abe       MOVL         XAR4, *--SP
003f4417   87be       MOVL         XT, *--SP
003f4418   0003       POP          AR1H:AR0H
003f4419   7617       NASP         
003f441a   7602       IRET         
3f441b:              _Timer1ISR:
003f441b   761b       ASP          
003f441c   0005       PUSH         AR1H:AR0H
003f441d   ff69       SPM          #0
003f441e   abbd       MOVL         *SP++, XT
003f441f   a8bd       MOVL         *SP++, XAR4
003f4420   a0bd       MOVL         *SP++, XAR5
003f4421   c2bd       MOVL         *SP++, XAR6
003f4422   c3bd       MOVL         *SP++, XAR7
003f4423   2942       CLRC         OVM|PAGE0
003f4424   5616       CLRC         AMODE
003f4425   761f       MOVW         DP, #0x0
003f4426   0000
003f4427   8a0a       MOVL         XAR4, @0xa
003f4428   767f       LCR          0x3f373e
003f4429   373e
003f442a   761f       MOVW         DP, #0x0
003f442b   0000
003f442c   8a08       MOVL         XAR4, @0x8
003f442d   d08c       MOVB         XAR0, #0x8c
003f442e   8a94       MOVL         XAR4, *+XAR4[AR0]
003f442f   767f       LCR          0x3f45dc
003f4430   45dc
003f4431   c5be       MOVL         XAR7, *--SP
003f4432   c4be       MOVL         XAR6, *--SP
003f4433   83be       MOVL         XAR5, *--SP
003f4434   8abe       MOVL         XAR4, *--SP
003f4435   87be       MOVL         XT, *--SP
003f4436   0003       POP          AR1H:AR0H
003f4437   7617       NASP         
003f4438   7602       IRET         
3f4439:              _PLL_setLockPeriod:
003f4439   7622       EALLOW       
003f443a   96d4       MOV          *+XAR4[2], AL
003f443b   761a       EDIS         
003f443c   ff69       SPM          #0
003f443d   0006       LRETR        
3f443e:              _PLL_setDivideSelect:
003f443e   7622       EALLOW       
003f443f   18c4       AND          *+XAR4[0], #0xfe7f
003f4440   fe7f
003f4441   98c4       OR           *+XAR4[0], AL
003f4442   761a       EDIS         
003f4443   ff69       SPM          #0
003f4444   0006       LRETR        
3f4445:              _PLL_setClkFreq:
003f4445   7622       EALLOW       
003f4446   d010       MOVB         XAR0, #0x10
003f4447   9694       MOV          *+XAR4[AR0], AL
003f4448   761a       EDIS         
003f4449   ff69       SPM          #0
003f444a   0006       LRETR        
3f444b:              _PLL_resetClkDetect:
003f444b   7622       EALLOW       
003f444c   1ac4       OR           *+XAR4[0], #0x0010
003f444d   0010
003f444e   761a       EDIS         
003f444f   ff69       SPM          #0
003f4450   0006       LRETR        
3f4451:              _PLL_init:
003f4451   1ea6       MOVL         XAR6, ACC
003f4452   0211       MOVB         ACC, #17
003f4453   0fa6       CMPL         ACC, XAR6
003f4454   6902       SB           2, LOS
003f4455   d400       MOVB         XAR4, #0x0
3f4456:              $C$L1:
003f4456   0006       LRETR        
3f4457:              _PLL_getLockStatus:
003f4457   ccc4       AND          AL, *+XAR4[0], #0x1
003f4458   0001
003f4459   0006       LRETR        
3f445a:              _PLL_getDivideSelect:
003f445a   ccc4       AND          AL, *+XAR4[0], #0x180
003f445b   0180
003f445c   0006       LRETR        
3f445d:              _PLL_getClkStatus:
003f445d   ccc4       AND          AL, *+XAR4[0], #0x8
003f445e   0008
003f445f   0006       LRETR        
3f4460:              _PLL_getClkFreq:
003f4460   d010       MOVB         XAR0, #0x10
003f4461   cc94       AND          AL, *+XAR4[AR0], #0xf
003f4462   000f
003f4463   0006       LRETR        
3f4464:              _PLL_enableOsc:
003f4464   7622       EALLOW       
003f4465   18c4       AND          *+XAR4[0], #0xffdf
003f4466   ffdf
003f4467   761a       EDIS         
003f4468   ff69       SPM          #0
003f4469   0006       LRETR        
3f446a:              _PLL_enableNormRdy:
003f446a   7622       EALLOW       
003f446b   1ac4       OR           *+XAR4[0], #0x8000
003f446c   8000
003f446d   761a       EDIS         
003f446e   ff69       SPM          #0
003f446f   0006       LRETR        
3f4470:              _PLL_enableClkDetect:
003f4470   7622       EALLOW       
003f4471   18c4       AND          *+XAR4[0], #0xffbf
003f4472   ffbf
003f4473   761a       EDIS         
003f4474   ff69       SPM          #0
003f4475   0006       LRETR        
3f4476:              _PLL_enable:
003f4476   7622       EALLOW       
003f4477   18c4       AND          *+XAR4[0], #0xfffb
003f4478   fffb
003f4479   761a       EDIS         
003f447a   ff69       SPM          #0
003f447b   0006       LRETR        
3f447c:              _PLL_disableOsc:
003f447c   7622       EALLOW       
003f447d   1ac4       OR           *+XAR4[0], #0x0020
003f447e   0020
003f447f   761a       EDIS         
003f4480   ff69       SPM          #0
003f4481   0006       LRETR        
3f4482:              _PLL_disableNormRdy:
003f4482   7622       EALLOW       
003f4483   18c4       AND          *+XAR4[0], #0x7fff
003f4484   7fff
003f4485   761a       EDIS         
003f4486   ff69       SPM          #0
003f4487   0006       LRETR        
3f4488:              _PLL_disableClkDetect:
003f4488   7622       EALLOW       
003f4489   1ac4       OR           *+XAR4[0], #0x0040
003f448a   0040
003f448b   761a       EDIS         
003f448c   ff69       SPM          #0
003f448d   0006       LRETR        
3f448e:              _PLL_disable:
003f448e   7622       EALLOW       
003f448f   1ac4       OR           *+XAR4[0], #0x0004
003f4490   0004
003f4491   761a       EDIS         
003f4492   ff69       SPM          #0
003f4493   0006       LRETR        
3f4494:              _PWR_setNumStandByClocks:
003f4494   88a9       MOVZ         AR6, AL
003f4495   a8a9       MOVL         ACC, XAR4
003f4496   7622       EALLOW       
003f4497   8f00       MOVL         XAR4, #0x006699
003f4498   6699
003f4499   5601       ADDL         XAR4, ACC
003f449a   00a4
003f449b   18c4       AND          *+XAR4[0], #0xff03
003f449c   ff03
003f449d   8f00       MOVL         XAR4, #0x006699
003f449e   6699
003f449f   5601       ADDL         XAR4, ACC
003f44a0   00a4
003f44a1   92a6       MOV          AL, AR6
003f44a2   98c4       OR           *+XAR4[0], AL
003f44a3   761a       EDIS         
003f44a4   ff69       SPM          #0
003f44a5   0006       LRETR        
3f44a6:              _PWR_setLowPowerMode:
003f44a6   88a9       MOVZ         AR6, AL
003f44a7   a8a9       MOVL         ACC, XAR4
003f44a8   7622       EALLOW       
003f44a9   8f00       MOVL         XAR4, #0x006699
003f44aa   6699
003f44ab   5601       ADDL         XAR4, ACC
003f44ac   00a4
003f44ad   18c4       AND          *+XAR4[0], #0xfffc
003f44ae   fffc
003f44af   8f00       MOVL         XAR4, #0x006699
003f44b0   6699
003f44b1   5601       ADDL         XAR4, ACC
003f44b2   00a4
003f44b3   92a6       MOV          AL, AR6
003f44b4   98c4       OR           *+XAR4[0], AL
003f44b5   761a       EDIS         
003f44b6   ff69       SPM          #0
003f44b7   0006       LRETR        
3f44b8:              _PWR_init:
003f44b8   1ea6       MOVL         XAR6, ACC
003f44b9   ff20       MOV          ACC, #26266
003f44ba   669a
003f44bb   0fa6       CMPL         ACC, XAR6
003f44bc   6902       SB           2, LOS
003f44bd   d400       MOVB         XAR4, #0x0
3f44be:              $C$L1:
003f44be   0006       LRETR        
3f44bf:              _PWR_enableWatchDogInt:
003f44bf   a8a9       MOVL         ACC, XAR4
003f44c0   7622       EALLOW       
003f44c1   8f00       MOVL         XAR4, #0x006699
003f44c2   6699
003f44c3   5601       ADDL         XAR4, ACC
003f44c4   00a4
003f44c5   1ac4       OR           *+XAR4[0], #0x8000
003f44c6   8000
003f44c7   761a       EDIS         
003f44c8   ff69       SPM          #0
003f44c9   0006       LRETR        
3f44ca:              _PWR_enableBrownOutReset:
003f44ca   18c4       AND          *+XAR4[0], #0xfffe
003f44cb   fffe
003f44cc   0006       LRETR        
3f44cd:              _PWR_disableWatchDogInt:
003f44cd   a8a9       MOVL         ACC, XAR4
003f44ce   7622       EALLOW       
003f44cf   8f00       MOVL         XAR4, #0x006699
003f44d0   6699
003f44d1   5601       ADDL         XAR4, ACC
003f44d2   00a4
003f44d3   18c4       AND          *+XAR4[0], #0x7fff
003f44d4   7fff
003f44d5   761a       EDIS         
003f44d6   ff69       SPM          #0
003f44d7   0006       LRETR        
3f44d8:              _PWR_disableBrownOutReset:
003f44d8   1ac4       OR           *+XAR4[0], #0x0001
003f44d9   0001
003f44da   0006       LRETR        
3f44db:              _WDOG_setPreScaler:
003f44db   93fc       MOV          AH, *+XAR4[7]
003f44dc   18a8       AND          AH, #0xfff8
003f44dd   fff8
003f44de   cba9       OR           AH, @AL
003f44df   7622       EALLOW       
003f44e0   5128       ORB          AH, #0x28
003f44e1   97fc       MOV          *+XAR4[7], AH
003f44e2   761a       EDIS         
003f44e3   ff69       SPM          #0
003f44e4   0006       LRETR        
3f44e5:              _WDOG_setCount:
003f44e5   96cc       MOV          *+XAR4[1], AL
003f44e6   0006       LRETR        
3f44e7:              _WDOG_init:
003f44e7   1ea6       MOVL         XAR6, ACC
003f44e8   0208       MOVB         ACC, #8
003f44e9   0fa6       CMPL         ACC, XAR6
003f44ea   6902       SB           2, LOS
003f44eb   d400       MOVB         XAR4, #0x0
3f44ec:              $C$L1:
003f44ec   0006       LRETR        
3f44ed:              _WDOG_getIntStatus:
003f44ed   ccc4       AND          AL, *+XAR4[0], #0x4
003f44ee   0004
003f44ef   0006       LRETR        
3f44f0:              _WDOG_enableOverRide:
003f44f0   7622       EALLOW       
003f44f1   1ac4       OR           *+XAR4[0], #0x0001
003f44f2   0001
003f44f3   761a       EDIS         
003f44f4   ff69       SPM          #0
003f44f5   0006       LRETR        
3f44f6:              _WDOG_enableInt:
003f44f6   7622       EALLOW       
003f44f7   1ac4       OR           *+XAR4[0], #0x0002
003f44f8   0002
003f44f9   761a       EDIS         
003f44fa   ff69       SPM          #0
003f44fb   0006       LRETR        
3f44fc:              _WDOG_enable:
003f44fc   92fc       MOV          AL, *+XAR4[7]
003f44fd   7622       EALLOW       
003f44fe   18a9       AND          AL, #0xffbf
003f44ff   ffbf
003f4500   5028       ORB          AL, #0x28
003f4501   96fc       MOV          *+XAR4[7], AL
003f4502   761a       EDIS         
003f4503   ff69       SPM          #0
003f4504   0006       LRETR        
3f4505:              _WDOG_disableOverRide:
003f4505   7622       EALLOW       
003f4506   18c4       AND          *+XAR4[0], #0xfffe
003f4507   fffe
003f4508   761a       EDIS         
003f4509   ff69       SPM          #0
003f450a   0006       LRETR        
3f450b:              _WDOG_disableInt:
003f450b   7622       EALLOW       
003f450c   18c4       AND          *+XAR4[0], #0xfffd
003f450d   fffd
003f450e   761a       EDIS         
003f450f   ff69       SPM          #0
003f4510   0006       LRETR        
3f4511:              _WDOG_disable:
003f4511   92fc       MOV          AL, *+XAR4[7]
003f4512   7622       EALLOW       
003f4513   5040       ORB          AL, #0x40
003f4514   5028       ORB          AL, #0x28
003f4515   96fc       MOV          *+XAR4[7], AL
003f4516   761a       EDIS         
003f4517   ff69       SPM          #0
003f4518   0006       LRETR        
3f4519:              _WDOG_clearCounter:
003f4519   7622       EALLOW       
003f451a   56bf       MOVB         *+XAR4[3], #0x55, UNC
003f451b   55dc
003f451c   56bf       MOVB         *+XAR4[3], #0xaa, UNC
003f451d   aadc
003f451e   761a       EDIS         
003f451f   ff69       SPM          #0
003f4520   0006       LRETR        
3f4521:              _OFFSET_setOffset:
003f4521   1ec4       MOVL         *+XAR4[0], ACC
003f4522   0006       LRETR        
3f4523:              _OFFSET_setInitCond:
003f4523   b2bd       MOVL         *SP++, XAR1
003f4524   aabd       MOVL         *SP++, XAR2
003f4525   fe02       ADDB         SP, #2
003f4526   d00e       MOVB         XAR0, #0xe
003f4527   86a4       MOVL         XAR2, XAR4
003f4528   8ba9       MOVL         XAR1, ACC
003f4529   1e42       MOVL         *-SP[2], ACC
003f452a   8a92       MOVL         XAR4, *+XAR2[AR0]
003f452b   767f       LCR          0x3f4661
003f452c   4661
003f452d   fe82       SUBB         SP, #2
003f452e   b2c2       MOVL         *+XAR2[0], XAR1
003f452f   86be       MOVL         XAR2, *--SP
003f4530   8bbe       MOVL         XAR1, *--SP
003f4531   0006       LRETR        
3f4532:              _OFFSET_setBeta:
003f4532   b2bd       MOVL         *SP++, XAR1
003f4533   aabd       MOVL         *SP++, XAR2
003f4534   fe02       ADDB         SP, #2
003f4535   d00e       MOVB         XAR0, #0xe
003f4536   86a9       MOVL         XAR2, ACC
003f4537   8ba4       MOVL         XAR1, XAR4
003f4538   ff0f       SUB          ACC, #0x200 << 15
003f4539   0200
003f453a   8a91       MOVL         XAR4, *+XAR1[AR0]
003f453b   767f       LCR          0x3f4666
003f453c   4666
003f453d   0200       MOVB         ACC, #0
003f453e   d00e       MOVB         XAR0, #0xe
003f453f   1e42       MOVL         *-SP[2], ACC
003f4540   aaa9       MOVL         ACC, XAR2
003f4541   8a91       MOVL         XAR4, *+XAR1[AR0]
003f4542   767f       LCR          0x3f465d
003f4543   465d
003f4544   fe82       SUBB         SP, #2
003f4545   86be       MOVL         XAR2, *--SP
003f4546   8bbe       MOVL         XAR1, *--SP
003f4547   0006       LRETR        
3f4548:              _OFFSET_init:
003f4548   1ea6       MOVL         XAR6, ACC
003f4549   b2bd       MOVL         *SP++, XAR1
003f454a   0210       MOVB         ACC, #16
003f454b   8ba4       MOVL         XAR1, XAR4
003f454c   0fa6       CMPL         ACC, XAR6
003f454d   6903       SB           3, LOS
003f454e   d400       MOVB         XAR4, #0x0
003f454f   6f08       SB           8, UNC
3f4550:              $C$L1:
003f4550   dc04       ADDB         XAR4, #4
003f4551   020a       MOVB         ACC, #10
003f4552   767f       LCR          0x3f4668
003f4553   4668
003f4554   d00e       MOVB         XAR0, #0xe
003f4555   a891       MOVL         *+XAR1[AR0], XAR4
003f4556   8aa1       MOVL         XAR4, XAR1
3f4557:              $C$L2:
003f4557   8bbe       MOVL         XAR1, *--SP
003f4558   0006       LRETR        
3f4559:              _OFFSET_getBeta:
003f4559   fe06       ADDB         SP, #6
003f455a   5dad       MOVZ         AR5, SP
003f455b   d00e       MOVB         XAR0, #0xe
003f455c   dd86       SUBB         XAR5, #6
003f455d   a042       MOVL         *-SP[2], XAR5
003f455e   8a94       MOVL         XAR4, *+XAR4[AR0]
003f455f   5dad       MOVZ         AR5, SP
003f4560   dd84       SUBB         XAR5, #4
003f4561   767f       LCR          0x3f466e
003f4562   466e
003f4563   0644       MOVL         ACC, *-SP[4]
003f4564   fe86       SUBB         SP, #6
003f4565   0006       LRETR        
3f4566:              _c_int00:
003f4566   28ad       MOV          SP, #0x8980
003f4567   8980
003f4568   ff69       SPM          #0
003f4569   561f       SETC         OBJMODE
003f456a   5616       CLRC         AMODE
003f456b   561a       SETC         M0M1MAP
003f456c   2940       CLRC         PAGE0
003f456d   761f       MOVW         DP, #0x0
003f456e   0000
003f456f   2902       CLRC         OVM
003f4570   761b       ASP          
003f4571   7622       EALLOW       
003f4572   28a9       MOV          AL, #0x4e43
003f4573   4e43
003f4574   28a8       MOV          AH, #0x003f
003f4575   003f
003f4576   0901       ADDB         ACC, #1
003f4577   611b       SB           27, EQ
003f4578   76ff       MOVL         XAR7, #0x3f4e43
003f4579   4e43
003f457a   2904       CLRC         TC
003f457b   6f0f       SB           15, UNC
3f457c:              LOOP:
003f457c   9b00       MOVB         AH, #0x0
003f457d   24a9       PREAD        AL, *XAR7
003f457e   df01       ADDB         XAR7, #1
003f457f   6c04       SB           4, NTC
003f4580   2904       CLRC         TC
003f4581   24a8       PREAD        AH, *XAR7
003f4582   df01       ADDB         XAR7, #1
3f4583:              GET_DATA:
003f4583   1ea6       MOVL         XAR6, ACC
003f4584   f7a1       RPT          AR1
003f4585   2486    || PREAD        *XAR6++, *XAR7
003f4586   06a7       MOVL         ACC, XAR7
003f4587   81a1       ADD          ACC, AR1
003f4588   0901       ADDB         ACC, #1
003f4589   1ea7       MOVL         XAR7, ACC
3f458a:              START:
003f458a   24a9       PREAD        AL, *XAR7
003f458b   6303       SB           3, GEQ
003f458c   ff5c       NEG          AL
003f458d   3b04       SETC         TC
3f458e:              GET_ADDR:
003f458e   59a9       MOVZ         AR1, AL
003f458f   df01       ADDB         XAR7, #1
003f4590   0009       BANZ         -20,AR1--
003f4591   ffec
3f4592:              DO_PINIT:
003f4592   761a       EDIS         
003f4593   28a9       MOV          AL, #0xffff
003f4594   ffff
003f4595   28a8       MOV          AH, #0xffff
003f4596   ffff
003f4597   0901       ADDB         ACC, #1
003f4598   610e       SB           14, EQ
003f4599   76ff       MOVL         XAR7, #0x3fffff
003f459a   ffff
003f459b   6f06       SB           6, UNC
3f459c:              LOOP_PINIT:
003f459c   df01       ADDB         XAR7, #1
003f459d   c3bd       MOVL         *SP++, XAR7
003f459e   1ea7       MOVL         XAR7, ACC
003f459f   3e67       LCR          *XAR7
003f45a0   c5be       MOVL         XAR7, *--SP
3f45a1:              START_PINIT:
003f45a1   24a9       PREAD        AL, *XAR7
003f45a2   df01       ADDB         XAR7, #1
003f45a3   24a8       PREAD        AH, *XAR7
003f45a4   ff58       TEST         ACC
003f45a5   60f7       SB           -9, NEQ
3f45a6:              DONE_INIT:
003f45a6   767f       LCR          0x3f46dc
003f45a7   46dc
003f45a8   767f       LCR          0x3f46f7
003f45a9   46f7
3f45aa:              _TIMER_setReloadBit:
003f45aa   1ae4       OR           *+XAR4[4], #0x0020
003f45ab   0020
003f45ac   0006       LRETR        
3f45ad:              _TIMER_setPreScaler:
003f45ad   88a9       MOVZ         AR6, AL
003f45ae   2901       CLRC         SXM
003f45af   cda6       AND          AH, AR6, #0xff00
003f45b0   ff00
003f45b1   5603       MOV          ACC, AH << 8
003f45b2   08a8
003f45b3   1ea7       MOVL         XAR7, ACC
003f45b4   cca6       AND          AL, AR6, #0xff
003f45b5   00ff
003f45b6   88a9       MOVZ         AR6, AL
003f45b7   06a7       MOVL         ACC, XAR7
003f45b8   afa6       OR           ACC, AR6
003f45b9   1ef4       MOVL         *+XAR4[6], ACC
003f45ba   0006       LRETR        
3f45bb:              _TIMER_setEmulationMode:
003f45bb   18e4       AND          *+XAR4[4], #0xf3ff
003f45bc   f3ff
003f45bd   98e4       OR           *+XAR4[4], AL
003f45be   0006       LRETR        
3f45bf:              _TIMER_setDecimationFactor:
003f45bf   88a9       MOVZ         AR6, AL
003f45c0   2901       CLRC         SXM
003f45c1   cda6       AND          AH, AR6, #0xff00
003f45c2   ff00
003f45c3   5603       MOV          ACC, AH << 8
003f45c4   08a8
003f45c5   1ea7       MOVL         XAR7, ACC
003f45c6   cca6       AND          AL, AR6, #0xff
003f45c7   00ff
003f45c8   88a9       MOVZ         AR6, AL
003f45c9   06a7       MOVL         ACC, XAR7
003f45ca   afa6       OR           ACC, AR6
003f45cb   1ef4       MOVL         *+XAR4[6], ACC
003f45cc   0006       LRETR        
3f45cd:              _TIMER_init:
003f45cd   1ea6       MOVL         XAR6, ACC
003f45ce   0208       MOVB         ACC, #8
003f45cf   0fa6       CMPL         ACC, XAR6
003f45d0   6902       SB           2, LOS
003f45d1   d400       MOVB         XAR4, #0x0
3f45d2:              $C$L1:
003f45d2   0006       LRETR        
3f45d3:              _TIMER_getStatus:
003f45d3   cce4       AND          AL, *+XAR4[4], #0x8000
003f45d4   8000
003f45d5   0006       LRETR        
3f45d6:              _TIMER_enableInt:
003f45d6   1ae4       OR           *+XAR4[4], #0x4000
003f45d7   4000
003f45d8   0006       LRETR        
3f45d9:              _TIMER_disableInt:
003f45d9   18e4       AND          *+XAR4[4], #0xbfff
003f45da   bfff
003f45db   0006       LRETR        
3f45dc:              _TIMER_clearFlag:
003f45dc   1ae4       OR           *+XAR4[4], #0x8000
003f45dd   8000
003f45de   0006       LRETR        
3f45df:              _OSC_setTrim:
003f45df   7622       EALLOW       
003f45e0   5201       CMPB         AL, #0x1
003f45e1   562b       MOV          *+XAR4[2], AH, NEQ
003f45e2   00d4
003f45e3   562b       MOV          *+XAR4[0], AH, EQ
003f45e4   01c4
003f45e5   761a       EDIS         
003f45e6   ff69       SPM          #0
003f45e7   0006       LRETR        
3f45e8:              _OSC_setFineTrim:
003f45e8   7622       EALLOW       
003f45e9   5201       CMPB         AL, #0x1
003f45ea   ec07       SBF          7, EQ
003f45eb   18d4       AND          *+XAR4[2], #0x81ff
003f45ec   81ff
003f45ed   5603       MOV          ACC, AH << 9
003f45ee   09a8
003f45ef   98d4       OR           *+XAR4[2], AL
003f45f0   6f06       SB           6, UNC
3f45f1:              $C$L1:
003f45f1   18c4       AND          *+XAR4[0], #0x81ff
003f45f2   81ff
003f45f3   5603       MOV          ACC, AH << 9
003f45f4   09a8
003f45f5   98c4       OR           *+XAR4[0], AL
3f45f6:              $C$L2:
003f45f6   761a       EDIS         
003f45f7   ff69       SPM          #0
003f45f8   0006       LRETR        
3f45f9:              _OSC_setCoarseTrim:
003f45f9   7622       EALLOW       
003f45fa   5201       CMPB         AL, #0x1
003f45fb   ec05       SBF          5, EQ
003f45fc   18d4       AND          *+XAR4[2], #0xff00
003f45fd   ff00
003f45fe   99d4       OR           *+XAR4[2], AH
003f45ff   6f04       SB           4, UNC
3f4600:              $C$L3:
003f4600   18c4       AND          *+XAR4[0], #0xff00
003f4601   ff00
003f4602   99c4       OR           *+XAR4[0], AH
3f4603:              $C$L4:
003f4603   761a       EDIS         
003f4604   ff69       SPM          #0
003f4605   0006       LRETR        
3f4606:              _OSC_init:
003f4606   1ea6       MOVL         XAR6, ACC
003f4607   0203       MOVB         ACC, #3
003f4608   0fa6       CMPL         ACC, XAR6
003f4609   6902       SB           2, LOS
003f460a   d400       MOVB         XAR4, #0x0
3f460b:              $C$L5:
003f460b   0006       LRETR        
3f460c:              L$$DIV:
003f460c   2902       CLRC         OVM
003f460d   2904       CLRC         TC
003f460e   565f       ABSTC        ACC
003f460f   ff5a       MOVL         P, ACC
003f4610   0642       MOVL         ACC, *-SP[2]
003f4611   565f       ABSTC        ACC
003f4612   1e42       MOVL         *-SP[2], ACC
003f4613   0200       MOVB         ACC, #0
003f4614   f61f       RPT          #31
003f4615   5617    || SUBCUL       ACC, *-SP[2]
003f4616   0042
003f4617   06ab       MOVL         ACC, P
003f4618   5632       NEGTC        ACC
003f4619   2902       CLRC         OVM
003f461a   7620       LB           *XAR7
3f461b:              L$$MOD:
003f461b   2902       CLRC         OVM
003f461c   2904       CLRC         TC
003f461d   565f       ABSTC        ACC
003f461e   ff5a       MOVL         P, ACC
003f461f   0642       MOVL         ACC, *-SP[2]
003f4620   ff56       ABS          ACC
003f4621   1e42       MOVL         *-SP[2], ACC
003f4622   0200       MOVB         ACC, #0
003f4623   f61f       RPT          #31
003f4624   5617    || SUBCUL       ACC, *-SP[2]
003f4625   0042
003f4626   5632       NEGTC        ACC
003f4627   2902       CLRC         OVM
003f4628   7620       LB           *XAR7
3f4629:              UL$$DIV:
003f4629   ff5a       MOVL         P, ACC
003f462a   0200       MOVB         ACC, #0
003f462b   f61f       RPT          #31
003f462c   5617    || SUBCUL       ACC, *-SP[2]
003f462d   0042
003f462e   a9a9       MOVL         ACC, P
003f462f   7620       LB           *XAR7
3f4630:              UL$$MOD:
003f4630   ff5a       MOVL         P, ACC
003f4631   0200       MOVB         ACC, #0
003f4632   f61f       RPT          #31
003f4633   5617    || SUBCUL       ACC, *-SP[2]
003f4634   0042
003f4635   7620       LB           *XAR7
3f4636:              _CPU_init:
003f4636   1ea6       MOVL         XAR6, ACC
003f4637   0200       MOVB         ACC, #0
003f4638   0fa6       CMPL         ACC, XAR6
003f4639   ed02       SBF          2, NEQ
003f463a   d400       MOVB         XAR4, #0x0
3f463b:              $C$L1:
003f463b   0006       LRETR        
3f463c:              _CPU_enableProtectedRegisterWrite:
003f463c   7622       EALLOW       
003f463d   ff69       SPM          #0
003f463e   0006       LRETR        
3f463f:              _CPU_enableInt:
003f463f   20a8       MOV          AH, IER
003f4640   cba9       OR           AH, @AL
003f4641   23a8       MOV          IER, AH
003f4642   0006       LRETR        
3f4643:              _CPU_enableGlobalInts:
003f4643   2910       CLRC         INTM
003f4644   ff69       SPM          #0
003f4645   0006       LRETR        
3f4646:              _CPU_enableDebugInt:
003f4646   2920       CLRC         DBGM
003f4647   ff69       SPM          #0
003f4648   0006       LRETR        
3f4649:              _CPU_disableProtectedRegisterWrite:
003f4649   761a       EDIS         
003f464a   ff69       SPM          #0
003f464b   0006       LRETR        
3f464c:              _CPU_disableInts:
003f464c   7626       AND          IER, #0x0000
003f464d   0000
003f464e   0006       LRETR        
3f464f:              _CPU_disableInt:
003f464f   20a8       MOV          AH, IER
003f4650   ff5e       NOT          AL
003f4651   cea8       AND          AL, @AH
003f4652   23a9       MOV          IER, AL
003f4653   0006       LRETR        
3f4654:              _CPU_disableGlobalInts:
003f4654   3b10       SETC         INTM
003f4655   ff69       SPM          #0
003f4656   0006       LRETR        
3f4657:              _CPU_disableDebugInt:
003f4657   3b20       SETC         DBGM
003f4658   ff69       SPM          #0
003f4659   0006       LRETR        
3f465a:              _CPU_clearIntFlags:
003f465a   762f       AND          IFR, #0x0000
003f465b   0000
003f465c   0006       LRETR        
3f465d:              _FILTER_FO_setNumCoeffs:
003f465d   c444       MOVL         XAR6, *-SP[4]
003f465e   1ed4       MOVL         *+XAR4[2], ACC
003f465f   c2e4       MOVL         *+XAR4[4], XAR6
003f4660   0006       LRETR        
3f4661:              _FILTER_FO_setInitialConditions:
003f4661   c444       MOVL         XAR6, *-SP[4]
003f4662   d008       MOVB         XAR0, #0x8
003f4663   1ef4       MOVL         *+XAR4[6], ACC
003f4664   c294       MOVL         *+XAR4[AR0], XAR6
003f4665   0006       LRETR        
3f4666:              _FILTER_FO_setDenCoeffs:
003f4666   1ec4       MOVL         *+XAR4[0], ACC
003f4667   0006       LRETR        
3f4668:              _FILTER_FO_init:
003f4668   1ea6       MOVL         XAR6, ACC
003f4669   020a       MOVB         ACC, #10
003f466a   0fa6       CMPL         ACC, XAR6
003f466b   6902       SB           2, LOS
003f466c   d400       MOVB         XAR4, #0x0
3f466d:              $C$L1:
003f466d   0006       LRETR        
3f466e:              _FILTER_FO_getNumCoeffs:
003f466e   c444       MOVL         XAR6, *-SP[4]
003f466f   06d4       MOVL         ACC, *+XAR4[2]
003f4670   1ec5       MOVL         *+XAR5[0], ACC
003f4671   06e4       MOVL         ACC, *+XAR4[4]
003f4672   1ec6       MOVL         *+XAR6[0], ACC
003f4673   0006       LRETR        
3f4674:              _FILTER_FO_getInitialConditions:
003f4674   c444       MOVL         XAR6, *-SP[4]
003f4675   06f4       MOVL         ACC, *+XAR4[6]
003f4676   d008       MOVB         XAR0, #0x8
003f4677   1ec5       MOVL         *+XAR5[0], ACC
003f4678   0694       MOVL         ACC, *+XAR4[AR0]
003f4679   1ec6       MOVL         *+XAR6[0], ACC
003f467a   0006       LRETR        
3f467b:              _FILTER_FO_getDenCoeffs:
003f467b   06c4       MOVL         ACC, *+XAR4[0]
003f467c   1ec5       MOVL         *+XAR5[0], ACC
003f467d   0006       LRETR        
3f467e:              FS$$TOUL:
003f467e   ff58       TEST         ACC
003f467f   641d       SB           29, LT
003f4680   5ca8       MOVZ         AR4, AH
003f4681   ff37       LSL          ACC, 8
003f4682   1aa8       OR           AH, #0x8000
003f4683   8000
003f4684   2fa8       MOV          PH, AH
003f4685   93a4       MOV          AH, AR4
003f4686   ffd6       LSR          AH, 7
003f4687   5ca8       MOVZ         AR4, AH
003f4688   91ff       ANDB         AH, #0xff
003f4689   08a8       ADD          AH, #-127
003f468a   ff81
003f468b   6411       SB           17, LT
003f468c   08a8       ADD          AH, #-31
003f468d   ffe1
003f468e   6209       SB           9, GT
003f468f   6106       SB           6, EQ
003f4690   ff5d       NEG          AH
003f4691   2da8       MOV          T, AH
003f4692   93aa       MOV          AH, PH
003f4693   5622       LSRL         ACC, T
003f4694   6f02       SB           2, UNC
3f4695:              RETURN1:
003f4695   93aa       MOV          AH, PH
3f4696:              RETURN:
003f4696   0006       LRETR        
3f4697:              OVERFLOW:
003f4697   28a8       MOV          AH, #0xffff
003f4698   ffff
003f4699   28a9       MOV          AL, #0xffff
003f469a   ffff
003f469b   0006       LRETR        
3f469c:              NEGATIVE:
3f469c:              UNDERFLOW:
003f469c   ff20       MOV          ACC, #0
003f469d   0000
003f469e   0006       LRETR        
3f469f:              _FLASH_init:
003f469f   1ea6       MOVL         XAR6, ACC
003f46a0   0208       MOVB         ACC, #8
003f46a1   0fa6       CMPL         ACC, XAR6
003f46a2   6902       SB           2, LOS
003f46a3   d400       MOVB         XAR4, #0x0
3f46a4:              $C$L1:
003f46a4   0006       LRETR        
3f46a5:              _FLASH_getStandbyWaitStatus:
003f46a5   ccdc       AND          AL, *+XAR4[3], #0x4
003f46a6   0004
003f46a7   ffc1       LSR          AL, 2
003f46a8   0006       LRETR        
3f46a9:              _FLASH_getStandbyWaitCount:
003f46a9   cce4       AND          AL, *+XAR4[4], #0xff
003f46aa   00ff
003f46ab   0006       LRETR        
3f46ac:              _FLASH_getPowerMode:
003f46ac   ccdc       AND          AL, *+XAR4[3], #0x3
003f46ad   0003
003f46ae   0006       LRETR        
3f46af:              _FLASH_getActiveWaitStatus:
003f46af   ccdc       AND          AL, *+XAR4[3], #0x8
003f46b0   0008
003f46b1   ffc2       LSR          AL, 3
003f46b2   0006       LRETR        
3f46b3:              _FLASH_getActiveWaitCount:
003f46b3   ccec       AND          AL, *+XAR4[5], #0xff
003f46b4   00ff
003f46b5   0006       LRETR        
3f46b6:              _FLASH_get3VStatus:
003f46b6   ccdc       AND          AL, *+XAR4[3], #0x100
003f46b7   0100
003f46b8   0006       LRETR        
3f46b9:              _FLASH_clear3VStatus:
003f46b9   7622       EALLOW       
003f46ba   1adc       OR           *+XAR4[3], #0x0100
003f46bb   0100
003f46bc   761a       EDIS         
003f46bd   ff69       SPM          #0
003f46be   0006       LRETR        
3f46bf:              FS$$TOU:
003f46bf   ff58       TEST         ACC
003f46c0   6417       SB           23, LT
003f46c1   2fa8       MOV          PH, AH
003f46c2   ffd6       LSR          AH, 7
003f46c3   5ca8       MOVZ         AR4, AH
003f46c4   93aa       MOV          AH, PH
003f46c5   ff38       LSL          ACC, 9
003f46c6   2901       CLRC         SXM
003f46c7   ff40       SFR          ACC, 1
003f46c8   08a8       ADD          AH, #-32768
003f46c9   8000
003f46ca   5da8       MOVZ         AR5, AH
003f46cb   93a4       MOV          AH, AR4
003f46cc   08a8       ADD          AH, #-127
003f46cd   ff81
003f46ce   6409       SB           9, LT
003f46cf   08a8       ADD          AH, #-15
003f46d0   fff1
003f46d1   6208       SB           8, GT
003f46d2   ff5d       NEG          AH
003f46d3   2da8       MOV          T, AH
003f46d4   85a5       MOV          ACC, AR5
003f46d5   ff51       SFR          ACC, T
3f46d6:              RETURN:
3f46d6:              ZERO:
003f46d6   0006       LRETR        
3f46d7:              UNDERFLOW:
3f46d7:              NEGATIVE:
003f46d7   9a00       MOVB         AL, #0x0
003f46d8   0006       LRETR        
3f46d9:              OVERFLOW:
003f46d9   28a9       MOV          AL, #0xffff
003f46da   ffff
003f46db   0006       LRETR        
3f46dc:              __args_main:
003f46dc   28ab       MOV          PL, #0xffff
003f46dd   ffff
003f46de   28aa       MOV          PH, #0xffff
003f46df   ffff
003f46e0   28a9       MOV          AL, #0xffff
003f46e1   ffff
003f46e2   28a8       MOV          AH, #0xffff
003f46e3   ffff
003f46e4   0fab       CMPL         ACC, P
003f46e5   ed04       SBF          4, NEQ
003f46e6   be00       MOVB         XAR6, #0x00
003f46e7   d400       MOVB         XAR4, #0x0
003f46e8   6f09       SB           9, UNC
3f46e9:              $C$L1:
003f46e9   8aa9       MOVL         XAR4, ACC
003f46ea   28a9       MOV          AL, #0xffff
003f46eb   ffff
003f46ec   88c4       MOVZ         AR6, *+XAR4[0]
003f46ed   28a8       MOV          AH, #0xffff
003f46ee   ffff
003f46ef   0902       ADDB         ACC, #2
003f46f0   8aa9       MOVL         XAR4, ACC
3f46f1:              $C$L2:
003f46f1   92a6       MOV          AL, AR6
003f46f2   767f       LCR          0x3f3b51
003f46f3   3b51
003f46f4   0006       LRETR        
3f46f5:              _abort:
3f46f5:              C$$EXIT:
003f46f5   7700       NOP          
3f46f6:              $C$L1:
003f46f6   6f00       SB           0, UNC
3f46f7:              _exit:
003f46f7   b2bd       MOVL         *SP++, XAR1
003f46f8   761f       MOVW         DP, #0xc
003f46f9   000c
003f46fa   59a9       MOVZ         AR1, AL
003f46fb   c52a       MOVL         XAR7, @0x2a
003f46fc   3e67       LCR          *XAR7
003f46fd   761f       MOVW         DP, #0xc
003f46fe   000c
003f46ff   c52e       MOVL         XAR7, @0x2e
003f4700   06a7       MOVL         ACC, XAR7
003f4701   ec03       SBF          3, EQ
003f4702   92a1       MOV          AL, AR1
003f4703   3e67       LCR          *XAR7
3f4704:              $C$L2:
003f4704   761f       MOVW         DP, #0xc
003f4705   000c
003f4706   062c       MOVL         ACC, @0x2c
003f4707   ec03       SBF          3, EQ
003f4708   1ea7       MOVL         XAR7, ACC
003f4709   3e67       LCR          *XAR7
3f470a:              $C$L3:
003f470a   767f       LCR          0x3f46f5
003f470b   46f5
003f470c   8bbe       MOVL         XAR1, *--SP
003f470d   0006       LRETR        
3f470e:              _memCopy:
003f470e   a0a9       MOVL         ACC, XAR5
003f470f   c5a4       MOVL         XAR7, XAR4
003f4710   8344       MOVL         XAR5, *-SP[4]
003f4711   0fa7       CMPL         ACC, XAR7
003f4712   680b       SB           11, LO
003f4713   03a7       SUBL         ACC, XAR7
003f4714   8aa9       MOVL         XAR4, ACC
3f4715:              $C$L1:
003f4715   92c7       MOV          AL, *+XAR7[0]
003f4716   dc81       SUBB         XAR4, #1
003f4717   9685       MOV          *XAR5++, AL
003f4718   0200       MOVB         ACC, #0
003f4719   1901       SUBB         ACC, #1
003f471a   0fa4       CMPL         ACC, XAR4
003f471b   df01       ADDB         XAR7, #1
003f471c   edf9       SBF          -7, NEQ
3f471d:              $C$L2:
003f471d   0006       LRETR        
3f471e:              __register_unlock:
003f471e   761f       MOVW         DP, #0xc
003f471f   000c
003f4720   a828       MOVL         @0x28, XAR4
003f4721   0006       LRETR        
3f4722:              __register_lock:
003f4722   761f       MOVW         DP, #0xc
003f4723   000c
003f4724   a82a       MOVL         @0x2a, XAR4
003f4725   0006       LRETR        
3f4726:              __nop:
003f4726   0006       LRETR        
3f4727:              wd_disable:
003f4727   561f       SETC         OBJMODE
003f4728   7622       EALLOW       
003f4729   b9c0       MOVZ         DP, #0x1c0
003f472a   2829       MOV          @0x29, #0x0068
003f472b   0068
003f472c   761a       EDIS         
003f472d   007f       LB           0x3f4566
003f472e   4566
3f472f:              _Brake_init:
003f472f   1ea6       MOVL         XAR6, ACC
003f4730   0208       MOVB         ACC, #8
003f4731   0fa6       CMPL         ACC, XAR6
003f4732   6902       SB           2, LOS
003f4733   d400       MOVB         XAR4, #0x0
3f4734:              $C$L1:
003f4734   0006       LRETR        
3f4735:              _FS_init:
003f4735   1ea6       MOVL         XAR6, ACC
003f4736   0212       MOVB         ACC, #18
003f4737   0fa6       CMPL         ACC, XAR6
003f4738   6902       SB           2, LOS
003f4739   d400       MOVB         XAR4, #0x0
3f473a:              $C$L1:
003f473a   0006       LRETR        
3f473b:              _PIE_illegalIsr:
3f473b:              .text:retain:
003f473b   761b       ASP          
003f473c   2942       CLRC         OVM|PAGE0
003f473d   5616       CLRC         AMODE
003f473e   7625       ESTOP0       
3f473f:              $C$L3:
003f473f   6f00       SB           0, UNC

	.sect "codestart"
3f7ff6:              code_start:
3f7ff6:              codestart:
003f7ff6   007f       LB           0x3f4727
003f7ff7   4727

	.sect "ramfuncs"		[Loaded from 0x3F4740]
008000:              _CTRL_setup:
008000:              _RamfuncsRunStart:
008000:              ramfuncs:
00008000   d09f       MOVB         XAR0, #0x9f
00008001   9294       MOV          AL, *+XAR4[AR0]
00008002   d0ef       MOVB         XAR0, #0xef
00008003   5494       CMP          AL, *+XAR4[AR0]
00008004   6605       SB           5, HI
00008005   d0ef       MOVB         XAR0, #0xef
00008006   2b94       MOV          *+XAR4[AR0], #0
00008007   767f       LCR          0x3f0dbe
00008008   0dbe
008009:              $C$L21:
00008009   0006       LRETR        
00800a:              _CTRL_run:
0000800a   b2bd       MOVL         *SP++, XAR1
0000800b   aabd       MOVL         *SP++, XAR2
0000800c   a2bd       MOVL         *SP++, XAR3
0000800d   fe1c       ADDB         SP, #28
0000800e   d09c       MOVB         XAR0, #0x9c
0000800f   82a4       MOVL         XAR3, XAR4
00008010   0668       MOVL         ACC, *-SP[40]
00008011   8666       MOVL         XAR2, *-SP[38]
00008012   1e58       MOVL         *-SP[24], ACC
00008013   9293       MOV          AL, *+XAR3[AR0]
00008014   d0ed       MOVB         XAR0, #0xed
00008015   5493       CMP          AL, *+XAR3[AR0]
00008016   ffe6       B            1295, HI
00008017   050f
00008018   88e3       MOVZ         AR6, *+XAR3[4]
00008019   d0ed       MOVB         XAR0, #0xed
0000801a   029a       MOVB         ACC, #154
0000801b   56bf       MOVB         *+XAR3[AR0], #0x01, UNC
0000801c   0193
0000801d   07a3       ADDL         ACC, XAR3
0000801e   8aa9       MOVL         XAR4, ACC
0000801f   0201       MOVB         ACC, #1
00008020   5601       ADDL         *+XAR4[0], ACC
00008021   00c4
00008022   02ef       MOVB         ACC, #239
00008023   07a3       ADDL         ACC, XAR3
00008024   8aa9       MOVL         XAR4, ACC
00008025   92a6       MOV          AL, AR6
00008026   0ac4       INC          *+XAR4[0]
00008027   5203       CMPB         AL, #0x3
00008028   ec6e       SBF          110, EQ
00008029   5202       CMPB         AL, #0x2
0000802a   ec05       SBF          5, EQ
0000802b   5201       CMPB         AL, #0x1
0000802c   56c0       BF           1277, NEQ
0000802d   04fd
0000802e   6f0b       SB           11, UNC
00802f:              $C$L35:
0000802f   d300       MOVB         XAR3, #0x0
008030:              $C$L36:
00008030   d0b2       MOVB         XAR0, #0xb2
00008031   92a3       MOV          AL, AR3
00008032   5495       CMP          AL, *+XAR5[AR0]
00008033   6838       SB           56, LO
00008034   d300       MOVB         XAR3, #0x0
008035:              $C$L37:
00008035   d0b3       MOVB         XAR0, #0xb3
00008036   92a3       MOV          AL, AR3
00008037   5495       CMP          AL, *+XAR5[AR0]
00008038   6808       SB           8, LO
008039:              $C$L38:
00008039   8a58       MOVL         XAR4, *-SP[24]
0000803a   0200       MOVB         ACC, #0
0000803b   1ec4       MOVL         *+XAR4[0], ACC
0000803c   1ed4       MOVL         *+XAR4[2], ACC
0000803d   1ee4       MOVL         *+XAR4[4], ACC
0000803e   ffef       B            1259, UNC
0000803f   04eb
008040:              $C$L39:
00008040   0ea3       MOVU         ACC, AR3
00008041   8aa5       MOVL         XAR4, XAR5
00008042   d040       MOVB         XAR0, #0x40
00008043   ff30       LSL          ACC, 1
00008044   5601       ADDL         XAR4, ACC
00008045   00a4
00008046   c494       MOVL         XAR6, *+XAR4[AR0]
00008047   d00e       MOVB         XAR0, #0xe
00008048   8aa2       MOVL         XAR4, XAR2
00008049   5601       ADDL         XAR4, ACC
0000804a   00a4
0000804b   c5f4       MOVL         XAR7, *+XAR4[6]
0000804c   8a96       MOVL         XAR4, *+XAR6[AR0]
0000804d   db01       ADDB         XAR3, #1
0000804e   87d4       MOVL         XT, *+XAR4[2]
0000804f   5605       IMPYL        P, XT, XAR7
00008050   00a7
00008051   5663       QMPYL        ACC, XT, XAR7
00008052   00a7
00008053   56a7       LSL64        ACC:P, 8
00008054   87e4       MOVL         XT, *+XAR4[4]
00008055   8ea9       MOVL         XAR0, ACC
00008056   5605       IMPYL        P, XT, *+XAR4[6]
00008057   00f4
00008058   5663       QMPYL        ACC, XT, *+XAR4[6]
00008059   00f4
0000805a   56a7       LSL64        ACC:P, 8
0000805b   87c4       MOVL         XT, *+XAR4[0]
0000805c   07a0       ADDL         ACC, XAR0
0000805d   d008       MOVB         XAR0, #0x8
0000805e   8ba9       MOVL         XAR1, ACC
0000805f   5605       IMPYL        P, XT, *+XAR4[AR0]
00008060   0094
00008061   5663       QMPYL        ACC, XT, *+XAR4[AR0]
00008062   0094
00008063   d008       MOVB         XAR0, #0x8
00008064   56a7       LSL64        ACC:P, 8
00008065   5641       SUBL         XAR1, ACC
00008066   00a1
00008067   c3f4       MOVL         *+XAR4[6], XAR7
00008068   b294       MOVL         *+XAR4[AR0], XAR1
00008069   b2c6       MOVL         *+XAR6[0], XAR1
0000806a   6fcb       SB           -53, UNC
00806b:              $C$L40:
0000806b   0ea3       MOVU         ACC, AR3
0000806c   8aa5       MOVL         XAR4, XAR5
0000806d   d00a       MOVB         XAR0, #0xa
0000806e   ff30       LSL          ACC, 1
0000806f   5601       ADDL         XAR4, ACC
00008070   00a4
00008071   c494       MOVL         XAR6, *+XAR4[AR0]
00008072   d00e       MOVB         XAR0, #0xe
00008073   8aa2       MOVL         XAR4, XAR2
00008074   5601       ADDL         XAR4, ACC
00008075   00a4
00008076   c5c4       MOVL         XAR7, *+XAR4[0]
00008077   8a96       MOVL         XAR4, *+XAR6[AR0]
00008078   db01       ADDB         XAR3, #1
00008079   87d4       MOVL         XT, *+XAR4[2]
0000807a   5605       IMPYL        P, XT, XAR7
0000807b   00a7
0000807c   5663       QMPYL        ACC, XT, XAR7
0000807d   00a7
0000807e   56a7       LSL64        ACC:P, 8
0000807f   87e4       MOVL         XT, *+XAR4[4]
00008080   8ea9       MOVL         XAR0, ACC
00008081   5605       IMPYL        P, XT, *+XAR4[6]
00008082   00f4
00008083   5663       QMPYL        ACC, XT, *+XAR4[6]
00008084   00f4
00008085   56a7       LSL64        ACC:P, 8
00008086   87c4       MOVL         XT, *+XAR4[0]
00008087   07a0       ADDL         ACC, XAR0
00008088   d008       MOVB         XAR0, #0x8
00008089   8ba9       MOVL         XAR1, ACC
0000808a   5605       IMPYL        P, XT, *+XAR4[AR0]
0000808b   0094
0000808c   5663       QMPYL        ACC, XT, *+XAR4[AR0]
0000808d   0094
0000808e   d008       MOVB         XAR0, #0x8
0000808f   56a7       LSL64        ACC:P, 8
00008090   5641       SUBL         XAR1, ACC
00008091   00a1
00008092   c3f4       MOVL         *+XAR4[6], XAR7
00008093   b294       MOVL         *+XAR4[AR0], XAR1
00008094   b2c6       MOVL         *+XAR6[0], XAR1
00008095   6f9b       SB           -101, UNC
008096:              $C$L41:
00008096   02ec       MOVB         ACC, #236
00008097   d018       MOVB         XAR0, #0x18
00008098   07a3       ADDL         ACC, XAR3
00008099   8aa9       MOVL         XAR4, ACC
0000809a   0ac4       INC          *+XAR4[0]
0000809b   02ee       MOVB         ACC, #238
0000809c   07a3       ADDL         ACC, XAR3
0000809d   8aa9       MOVL         XAR4, ACC
0000809e   0ac4       INC          *+XAR4[0]
0000809f   8a93       MOVL         XAR4, *+XAR3[AR0]
000080a0   767f       LCR          0x3fc000
000080a1   c000
000080a2   520c       CMPB         AL, #0xc
000080a3   ffe3       B            551, GEQ
000080a4   0227
000080a5   d008       MOVB         XAR0, #0x8
000080a6   02aa       MOVB         ACC, #170
000080a7   c493       MOVL         XAR6, *+XAR3[AR0]
000080a8   8aa2       MOVL         XAR4, XAR2
000080a9   07a3       ADDL         ACC, XAR3
000080aa   8ba9       MOVL         XAR1, ACC
000080ab   83a9       MOVL         XAR5, ACC
000080ac   c5c6       MOVL         XAR7, *+XAR6[0]
000080ad   8ed6       MOVL         XAR0, *+XAR6[2]
000080ae   92e6       MOV          AL, *+XAR6[4]
000080af   5203       CMPB         AL, #0x3
000080b0   ec0e       SBF          14, EQ
000080b1   5202       CMPB         AL, #0x2
000080b2   ed20       SBF          32, NEQ
000080b3   87c4       MOVL         XT, *+XAR4[0]
000080b4   5605       IMPYL        P, XT, XAR7
000080b5   00a7
000080b6   5663       QMPYL        ACC, XT, XAR7
000080b7   00a7
000080b8   56a7       LSL64        ACC:P, 8
000080b9   1ec5       MOVL         *+XAR5[0], ACC
000080ba   06d4       MOVL         ACC, *+XAR4[2]
000080bb   ff30       LSL          ACC, 1
000080bc   07c4       ADDL         ACC, *+XAR4[0]
000080bd   6f0e       SB           14, UNC
0080be:              $C$L42:
000080be   06c4       MOVL         ACC, *+XAR4[0]
000080bf   ff30       LSL          ACC, 1
000080c0   03d4       SUBL         ACC, *+XAR4[2]
000080c1   03e4       SUBL         ACC, *+XAR4[4]
000080c2   1eac       MOVL         XT, ACC
000080c3   5605       IMPYL        P, XT, XAR7
000080c4   00a7
000080c5   5663       QMPYL        ACC, XT, XAR7
000080c6   00a7
000080c7   56a7       LSL64        ACC:P, 8
000080c8   1ec5       MOVL         *+XAR5[0], ACC
000080c9   06d4       MOVL         ACC, *+XAR4[2]
000080ca   03e4       SUBL         ACC, *+XAR4[4]
0080cb:              $C$L43:
000080cb   1eac       MOVL         XT, ACC
000080cc   5605       IMPYL        P, XT, XAR0
000080cd   00a0
000080ce   5663       QMPYL        ACC, XT, XAR0
000080cf   00a0
000080d0   56a7       LSL64        ACC:P, 8
000080d1   1ed5       MOVL         *+XAR5[2], ACC
0080d2:              $C$L44:
000080d2   02b6       MOVB         ACC, #182
000080d3   d010       MOVB         XAR0, #0x10
000080d4   07a3       ADDL         ACC, XAR3
000080d5   1e52       MOVL         *-SP[18], ACC
000080d6   c493       MOVL         XAR6, *+XAR3[AR0]
000080d7   83a9       MOVL         XAR5, ACC
000080d8   dc06       ADDB         XAR4, #6
000080d9   c5c6       MOVL         XAR7, *+XAR6[0]
000080da   8ed6       MOVL         XAR0, *+XAR6[2]
000080db   92e6       MOV          AL, *+XAR6[4]
000080dc   5203       CMPB         AL, #0x3
000080dd   ec0e       SBF          14, EQ
000080de   5202       CMPB         AL, #0x2
000080df   ed20       SBF          32, NEQ
000080e0   87c4       MOVL         XT, *+XAR4[0]
000080e1   5605       IMPYL        P, XT, XAR7
000080e2   00a7
000080e3   5663       QMPYL        ACC, XT, XAR7
000080e4   00a7
000080e5   56a7       LSL64        ACC:P, 8
000080e6   1ec5       MOVL         *+XAR5[0], ACC
000080e7   06d4       MOVL         ACC, *+XAR4[2]
000080e8   ff30       LSL          ACC, 1
000080e9   07c4       ADDL         ACC, *+XAR4[0]
000080ea   6f0e       SB           14, UNC
0080eb:              $C$L45:
000080eb   06c4       MOVL         ACC, *+XAR4[0]
000080ec   ff30       LSL          ACC, 1
000080ed   03d4       SUBL         ACC, *+XAR4[2]
000080ee   03e4       SUBL         ACC, *+XAR4[4]
000080ef   1eac       MOVL         XT, ACC
000080f0   5605       IMPYL        P, XT, XAR7
000080f1   00a7
000080f2   5663       QMPYL        ACC, XT, XAR7
000080f3   00a7
000080f4   56a7       LSL64        ACC:P, 8
000080f5   1ec5       MOVL         *+XAR5[0], ACC
000080f6   06d4       MOVL         ACC, *+XAR4[2]
000080f7   03e4       SUBL         ACC, *+XAR4[4]
0080f8:              $C$L46:
000080f8   1eac       MOVL         XT, ACC
000080f9   5605       IMPYL        P, XT, XAR0
000080fa   00a0
000080fb   5663       QMPYL        ACC, XT, XAR0
000080fc   00a0
000080fd   56a7       LSL64        ACC:P, 8
000080fe   1ed5       MOVL         *+XAR5[2], ACC
0080ff:              $C$L47:
000080ff   0652       MOVL         ACC, *-SP[18]
00008100   d06c       MOVB         XAR0, #0x6c
00008101   1e42       MOVL         *-SP[2], ACC
00008102   8a93       MOVL         XAR4, *+XAR3[AR0]
00008103   83a1       MOVL         XAR5, XAR1
00008104   d018       MOVB         XAR0, #0x18
00008105   06d4       MOVL         ACC, *+XAR4[2]
00008106   1e44       MOVL         *-SP[4], ACC
00008107   8a93       MOVL         XAR4, *+XAR3[AR0]
00008108   d00c       MOVB         XAR0, #0xc
00008109   0692       MOVL         ACC, *+XAR2[AR0]
0000810a   767f       LCR          0x3fcc60
0000810b   cc60
0000810c   d018       MOVB         XAR0, #0x18
0000810d   8a93       MOVL         XAR4, *+XAR3[AR0]
0000810e   767f       LCR          0x3fc5f2
0000810f   c5f2
00008110   86a9       MOVL         XAR2, ACC
00008111   767f       LCR          0x3ff854
00008112   f854
00008113   1e4c       MOVL         *-SP[12], ACC
00008114   aaa9       MOVL         ACC, XAR2
00008115   767f       LCR          0x3ff82b
00008116   f82b
00008117   d01a       MOVB         XAR0, #0x1a
00008118   1e4a       MOVL         *-SP[10], ACC
00008119   8a93       MOVL         XAR4, *+XAR3[AR0]
0000811a   064c       MOVL         ACC, *-SP[12]
0000811b   d01a       MOVB         XAR0, #0x1a
0000811c   1ed4       MOVL         *+XAR4[2], ACC
0000811d   064a       MOVL         ACC, *-SP[10]
0000811e   1ec4       MOVL         *+XAR4[0], ACC
0000811f   02b2       MOVB         ACC, #178
00008120   8393       MOVL         XAR5, *+XAR3[AR0]
00008121   07a3       ADDL         ACC, XAR3
00008122   8ec1       MOVL         XAR0, *+XAR1[0]
00008123   8aa9       MOVL         XAR4, ACC
00008124   c5d5       MOVL         XAR7, *+XAR5[2]
00008125   c4c5       MOVL         XAR6, *+XAR5[0]
00008126   3aac       MOVL         XT, XAR0
00008127   83d1       MOVL         XAR5, *+XAR1[2]
00008128   5605       IMPYL        P, XT, XAR7
00008129   00a7
0000812a   5663       QMPYL        ACC, XT, XAR7
0000812b   00a7
0000812c   56a7       LSL64        ACC:P, 8
0000812d   a0ac       MOVL         XT, XAR5
0000812e   86a9       MOVL         XAR2, ACC
0000812f   5605       IMPYL        P, XT, XAR6
00008130   00a6
00008131   5663       QMPYL        ACC, XT, XAR6
00008132   00a6
00008133   56a7       LSL64        ACC:P, 8
00008134   3aac       MOVL         XT, XAR0
00008135   07a2       ADDL         ACC, XAR2
00008136   d018       MOVB         XAR0, #0x18
00008137   5605       IMPYL        P, XT, XAR6
00008138   00a6
00008139   1ec4       MOVL         *+XAR4[0], ACC
0000813a   5663       QMPYL        ACC, XT, XAR6
0000813b   00a6
0000813c   56a7       LSL64        ACC:P, 8
0000813d   a0ac       MOVL         XT, XAR5
0000813e   1ea6       MOVL         XAR6, ACC
0000813f   5605       IMPYL        P, XT, XAR7
00008140   00a7
00008141   5663       QMPYL        ACC, XT, XAR7
00008142   00a7
00008143   56a7       LSL64        ACC:P, 8
00008144   03a6       SUBL         ACC, XAR6
00008145   1ed4       MOVL         *+XAR4[2], ACC
00008146   8a93       MOVL         XAR4, *+XAR3[AR0]
00008147   767f       LCR          0x3fd13d
00008148   d13d
00008149   5200       CMPB         AL, #0x0
0000814a   ec47       SBF          71, EQ
0000814b   d09e       MOVB         XAR0, #0x9e
0000814c   9293       MOV          AL, *+XAR3[AR0]
0000814d   d0ee       MOVB         XAR0, #0xee
0000814e   5493       CMP          AL, *+XAR3[AR0]
0000814f   6648       SB           72, HI
00008150   d06c       MOVB         XAR0, #0x6c
00008151   8a93       MOVL         XAR4, *+XAR3[AR0]
00008152   d018       MOVB         XAR0, #0x18
00008153   8bd4       MOVL         XAR1, *+XAR4[2]
00008154   8a93       MOVL         XAR4, *+XAR3[AR0]
00008155   767f       LCR          0x3fd073
00008156   d073
00008157   d078       MOVB         XAR0, #0x78
00008158   8a93       MOVL         XAR4, *+XAR3[AR0]
00008159   1ea6       MOVL         XAR6, ACC
0000815a   d0ee       MOVB         XAR0, #0xee
0000815b   c5d4       MOVL         XAR7, *+XAR4[2]
0000815c   b2ab       MOVL         P, XAR1
0000815d   2b93       MOV          *+XAR3[AR0], #0
0000815e   d044       MOVB         XAR0, #0x44
0000815f   06a7       MOVL         ACC, XAR7
00008160   8a93       MOVL         XAR4, *+XAR3[AR0]
00008161   565d       SUBUL        P, XAR6
00008162   00a6
00008163   ff54       NEG          ACC
00008164   d00c       MOVB         XAR0, #0xc
00008165   1e94       MOVL         *+XAR4[AR0], ACC
00008166   d00e       MOVB         XAR0, #0xe
00008167   02ba       MOVB         ACC, #186
00008168   07a3       ADDL         ACC, XAR3
00008169   c394       MOVL         *+XAR4[AR0], XAR7
0000816a   d044       MOVB         XAR0, #0x44
0000816b   8393       MOVL         XAR5, *+XAR3[AR0]
0000816c   8aa9       MOVL         XAR4, ACC
0000816d   c5a1       MOVL         XAR7, XAR1
0000816e   a9a0       MOVL         XAR0, P
0000816f   87c5       MOVL         XT, *+XAR5[0]
00008170   d10e       MOVB         XAR1, #0xe
00008171   5663       QMPYL        ACC, XT, XAR0
00008172   00a0
00008173   5605       IMPYL        P, XT, XAR0
00008174   00a0
00008175   56a7       LSL64        ACC:P, 8
00008176   86a9       MOVL         XAR2, ACC
00008177   87d5       MOVL         XT, *+XAR5[2]
00008178   5605       IMPYL        P, XT, XAR0
00008179   00a0
0000817a   5663       QMPYL        ACC, XT, XAR0
0000817b   00a0
0000817c   d00c       MOVB         XAR0, #0xc
0000817d   56a7       LSL64        ACC:P, 8
0000817e   07f5       ADDL         ACC, *+XAR5[6]
0000817f   5650       MINL         ACC, *+XAR5[AR1]
00008180   009d
00008181   d10e       MOVB         XAR1, #0xe
00008182   5661       MAXL         ACC, *+XAR5[AR0]
00008183   0095
00008184   d008       MOVB         XAR0, #0x8
00008185   1ef5       MOVL         *+XAR5[6], ACC
00008186   07a2       ADDL         ACC, XAR2
00008187   c395       MOVL         *+XAR5[AR0], XAR7
00008188   d00a       MOVB         XAR0, #0xa
00008189   c295       MOVL         *+XAR5[AR0], XAR6
0000818a   d00c       MOVB         XAR0, #0xc
0000818b   5650       MINL         ACC, *+XAR5[AR1]
0000818c   009d
0000818d   5661       MAXL         ACC, *+XAR5[AR0]
0000818e   0095
0000818f   1ec4       MOVL         *+XAR4[0], ACC
00008190   6f07       SB           7, UNC
008191:              $C$L48:
00008191   d0ba       MOVB         XAR0, #0xba
00008192   0200       MOVB         ACC, #0
00008193   1e93       MOVL         *+XAR3[AR0], ACC
00008194   d044       MOVB         XAR0, #0x44
00008195   8a93       MOVL         XAR4, *+XAR3[AR0]
00008196   1ef4       MOVL         *+XAR4[6], ACC
008197:              $C$L49:
00008197   8d00       MOVL         XAR0, #0x000106
00008198   0106
00008199   9293       MOV          AL, *+XAR3[AR0]
0000819a   56c1       BF           217, EQ
0000819b   00d9
0000819c   d09d       MOVB         XAR0, #0x9d
0000819d   9293       MOV          AL, *+XAR3[AR0]
0000819e   d0ec       MOVB         XAR0, #0xec
0000819f   5493       CMP          AL, *+XAR3[AR0]
000081a0   ffe6       B            211, HI
000081a1   00d3
000081a2   d018       MOVB         XAR0, #0x18
000081a3   8a93       MOVL         XAR4, *+XAR3[AR0]
000081a4   767f       LCR          0x3fd145
000081a5   d145
000081a6   5200       CMPB         AL, #0x0
000081a7   56c1       BF           204, EQ
000081a8   00cc
000081a9   d0ca       MOVB         XAR0, #0xca
000081aa   8b93       MOVL         XAR1, *+XAR3[AR0]
000081ab   d0cc       MOVB         XAR0, #0xcc
000081ac   0693       MOVL         ACC, *+XAR3[AR0]
000081ad   d0a8       MOVB         XAR0, #0xa8
000081ae   1e56       MOVL         *-SP[22], ACC
000081af   8693       MOVL         XAR2, *+XAR3[AR0]
000081b0   d0ec       MOVB         XAR0, #0xec
000081b1   2b93       MOV          *+XAR3[AR0], #0
000081b2   d0f1       MOVB         XAR0, #0xf1
000081b3   9293       MOV          AL, *+XAR3[AR0]
000081b4   ec0c       SBF          12, EQ
000081b5   d018       MOVB         XAR0, #0x18
000081b6   8a93       MOVL         XAR4, *+XAR3[AR0]
000081b7   767f       LCR          0x3fcf98
000081b8   cf98
000081b9   b2ac       MOVL         XT, XAR1
000081ba   5605       IMPYL        P, XT, ACC
000081bb   00a9
000081bc   5663       QMPYL        ACC, XT, ACC
000081bd   00a9
000081be   56a7       LSL64        ACC:P, 8
000081bf   8ba9       MOVL         XAR1, ACC
0081c0:              $C$L50:
000081c0   d020       MOVB         XAR0, #0x20
000081c1   8a93       MOVL         XAR4, *+XAR3[AR0]
000081c2   02e2       MOVB         ACC, #226
000081c3   d060       MOVB         XAR0, #0x60
000081c4   07a3       ADDL         ACC, XAR3
000081c5   b2c4       MOVL         *+XAR4[0], XAR1
000081c6   1e52       MOVL         *-SP[18], ACC
000081c7   8393       MOVL         XAR5, *+XAR3[AR0]
000081c8   8aa9       MOVL         XAR4, ACC
000081c9   d018       MOVB         XAR0, #0x18
000081ca   06c4       MOVL         ACC, *+XAR4[0]
000081cb   07d5       ADDL         ACC, *+XAR5[2]
000081cc   5dad       MOVZ         AR5, SP
000081cd   1e48       MOVL         *-SP[8], ACC
000081ce   dd88       SUBB         XAR5, #8
000081cf   8a93       MOVL         XAR4, *+XAR3[AR0]
000081d0   767f       LCR          0x3fc3da
000081d1   c3da
000081d2   02b2       MOVB         ACC, #178
000081d3   d020       MOVB         XAR0, #0x20
000081d4   07a3       ADDL         ACC, XAR3
000081d5   1e5a       MOVL         *-SP[26], ACC
000081d6   8aa9       MOVL         XAR4, ACC
000081d7   aaa9       MOVL         ACC, XAR2
000081d8   c5c4       MOVL         XAR7, *+XAR4[0]
000081d9   8a93       MOVL         XAR4, *+XAR3[AR0]
000081da   ff54       NEG          ACC
000081db   d10e       MOVB         XAR1, #0xe
000081dc   d00c       MOVB         XAR0, #0xc
000081dd   1e94       MOVL         *+XAR4[AR0], ACC
000081de   d00e       MOVB         XAR0, #0xe
000081df   02c0       MOVB         ACC, #192
000081e0   07a3       ADDL         ACC, XAR3
000081e1   aa94       MOVL         *+XAR4[AR0], XAR2
000081e2   d020       MOVB         XAR0, #0x20
000081e3   c448       MOVL         XAR6, *-SP[8]
000081e4   1e5c       MOVL         *-SP[28], ACC
000081e5   8aa9       MOVL         XAR4, ACC
000081e6   8393       MOVL         XAR5, *+XAR3[AR0]
000081e7   06a6       MOVL         ACC, XAR6
000081e8   d00c       MOVB         XAR0, #0xc
000081e9   03a7       SUBL         ACC, XAR7
000081ea   87c5       MOVL         XT, *+XAR5[0]
000081eb   5605       IMPYL        P, XT, ACC
000081ec   00a9
000081ed   5663       QMPYL        ACC, XT, ACC
000081ee   00a9
000081ef   1e54       MOVL         *-SP[20], ACC
000081f0   56a7       LSL64        ACC:P, 8
000081f1   1e54       MOVL         *-SP[20], ACC
000081f2   0654       MOVL         ACC, *-SP[20]
000081f3   87d5       MOVL         XT, *+XAR5[2]
000081f4   5605       IMPYL        P, XT, ACC
000081f5   00a9
000081f6   0654       MOVL         ACC, *-SP[20]
000081f7   5663       QMPYL        ACC, XT, ACC
000081f8   00a9
000081f9   56a7       LSL64        ACC:P, 8
000081fa   07f5       ADDL         ACC, *+XAR5[6]
000081fb   5650       MINL         ACC, *+XAR5[AR1]
000081fc   009d
000081fd   5661       MAXL         ACC, *+XAR5[AR0]
000081fe   0095
000081ff   d008       MOVB         XAR0, #0x8
00008200   1ef5       MOVL         *+XAR5[6], ACC
00008201   c295       MOVL         *+XAR5[AR0], XAR6
00008202   d00a       MOVB         XAR0, #0xa
00008203   c395       MOVL         *+XAR5[AR0], XAR7
00008204   c554       MOVL         XAR7, *-SP[20]
00008205   d10e       MOVB         XAR1, #0xe
00008206   d00c       MOVB         XAR0, #0xc
00008207   07a7       ADDL         ACC, XAR7
00008208   5650       MINL         ACC, *+XAR5[AR1]
00008209   009d
0000820a   5661       MAXL         ACC, *+XAR5[AR0]
0000820b   0095
0000820c   d018       MOVB         XAR0, #0x18
0000820d   1ec4       MOVL         *+XAR4[0], ACC
0000820e   06a6       MOVL         ACC, XAR6
0000820f   8a93       MOVL         XAR4, *+XAR3[AR0]
00008210   767f       LCR          0x3fc565
00008211   c565
00008212   d0f1       MOVB         XAR0, #0xf1
00008213   9293       MOV          AL, *+XAR3[AR0]
00008214   ec0e       SBF          14, EQ
00008215   d018       MOVB         XAR0, #0x18
00008216   8a93       MOVL         XAR4, *+XAR3[AR0]
00008217   767f       LCR          0x3fcf98
00008218   cf98
00008219   8756       MOVL         XT, *-SP[22]
0000821a   5605       IMPYL        P, XT, ACC
0000821b   00a9
0000821c   8756       MOVL         XT, *-SP[22]
0000821d   5663       QMPYL        ACC, XT, ACC
0000821e   00a9
0000821f   1e56       MOVL         *-SP[22], ACC
00008220   56a7       LSL64        ACC:P, 8
00008221   1e56       MOVL         *-SP[22], ACC
008222:              $C$L51:
00008222   d032       MOVB         XAR0, #0x32
00008223   8a93       MOVL         XAR4, *+XAR3[AR0]
00008224   0656       MOVL         ACC, *-SP[22]
00008225   d0f4       MOVB         XAR0, #0xf4
00008226   1ec4       MOVL         *+XAR4[0], ACC
00008227   9293       MOV          AL, *+XAR3[AR0]
00008228   ec0c       SBF          12, EQ
00008229   d018       MOVB         XAR0, #0x18
0000822a   8a93       MOVL         XAR4, *+XAR3[AR0]
0000822b   767f       LCR          0x3fc002
0000822c   c002
0000822d   5200       CMPB         AL, #0x0
0000822e   ed04       SBF          4, NEQ
0000822f   d0ba       MOVB         XAR0, #0xba
00008230   0693       MOVL         ACC, *+XAR3[AR0]
00008231   6f05       SB           5, UNC
008232:              $C$L52:
00008232   0200       MOVB         ACC, #0
00008233   6f03       SB           3, UNC
008234:              $C$L53:
00008234   8a52       MOVL         XAR4, *-SP[18]
00008235   06d4       MOVL         ACC, *+XAR4[2]
008236:              $C$L54:
00008236   8a5a       MOVL         XAR4, *-SP[26]
00008237   1e48       MOVL         *-SP[8], ACC
00008238   c4d4       MOVL         XAR6, *+XAR4[2]
00008239   8a5c       MOVL         XAR4, *-SP[28]
0000823a   d032       MOVB         XAR0, #0x32
0000823b   8393       MOVL         XAR5, *+XAR3[AR0]
0000823c   d00c       MOVB         XAR0, #0xc
0000823d   06c4       MOVL         ACC, *+XAR4[0]
0000823e   ff56       ABS          ACC
0000823f   ff5a       MOVL         P, ACC
00008240   565d       SUBUL        P, XAR2
00008241   00a2
00008242   a995       MOVL         *+XAR5[AR0], P
00008243   d00e       MOVB         XAR0, #0xe
00008244   aaab       MOVL         P, XAR2
00008245   5641       SUBL         P, ACC
00008246   00ab
00008247   a995       MOVL         *+XAR5[AR0], P
00008248   d032       MOVB         XAR0, #0x32
00008249   0648       MOVL         ACC, *-SP[8]
0000824a   8393       MOVL         XAR5, *+XAR3[AR0]
0000824b   d10e       MOVB         XAR1, #0xe
0000824c   03a6       SUBL         ACC, XAR6
0000824d   d00c       MOVB         XAR0, #0xc
0000824e   87c5       MOVL         XT, *+XAR5[0]
0000824f   5605       IMPYL        P, XT, ACC
00008250   00a9
00008251   5663       QMPYL        ACC, XT, ACC
00008252   00a9
00008253   56a7       LSL64        ACC:P, 8
00008254   1ea7       MOVL         XAR7, ACC
00008255   87d5       MOVL         XT, *+XAR5[2]
00008256   5605       IMPYL        P, XT, XAR7
00008257   00a7
00008258   5663       QMPYL        ACC, XT, XAR7
00008259   00a7
0000825a   56a7       LSL64        ACC:P, 8
0000825b   07f5       ADDL         ACC, *+XAR5[6]
0000825c   5650       MINL         ACC, *+XAR5[AR1]
0000825d   009d
0000825e   d10e       MOVB         XAR1, #0xe
0000825f   5661       MAXL         ACC, *+XAR5[AR0]
00008260   0095
00008261   d008       MOVB         XAR0, #0x8
00008262   1ef5       MOVL         *+XAR5[6], ACC
00008263   a348       MOVL         P, *-SP[8]
00008264   07a7       ADDL         ACC, XAR7
00008265   a995       MOVL         *+XAR5[AR0], P
00008266   d00a       MOVB         XAR0, #0xa
00008267   c295       MOVL         *+XAR5[AR0], XAR6
00008268   d00c       MOVB         XAR0, #0xc
00008269   5650       MINL         ACC, *+XAR5[AR1]
0000826a   009d
0000826b   5661       MAXL         ACC, *+XAR5[AR0]
0000826c   0095
0000826d   1ed4       MOVL         *+XAR4[2], ACC
0000826e   0648       MOVL         ACC, *-SP[8]
0000826f   d018       MOVB         XAR0, #0x18
00008270   8a93       MOVL         XAR4, *+XAR3[AR0]
00008271   767f       LCR          0x3fc548
00008272   c548
008273:              $C$L55:
00008273   d056       MOVB         XAR0, #0x56
00008274   8a93       MOVL         XAR4, *+XAR3[AR0]
00008275   064c       MOVL         ACC, *-SP[12]
00008276   d056       MOVB         XAR0, #0x56
00008277   1ed4       MOVL         *+XAR4[2], ACC
00008278   064a       MOVL         ACC, *-SP[10]
00008279   1ec4       MOVL         *+XAR4[0], ACC
0000827a   c493       MOVL         XAR6, *+XAR3[AR0]
0000827b   02c0       MOVB         ACC, #192
0000827c   07a3       ADDL         ACC, XAR3
0000827d   83a9       MOVL         XAR5, ACC
0000827e   c5c6       MOVL         XAR7, *+XAR6[0]
0000827f   02bc       MOVB         ACC, #188
00008280   8ec5       MOVL         XAR0, *+XAR5[0]
00008281   83d5       MOVL         XAR5, *+XAR5[2]
00008282   07a3       ADDL         ACC, XAR3
00008283   3b01       SETC         SXM
00008284   c4d6       MOVL         XAR6, *+XAR6[2]
00008285   a0ac       MOVL         XT, XAR5
00008286   8aa9       MOVL         XAR4, ACC
00008287   5605       IMPYL        P, XT, XAR7
00008288   00a7
00008289   5663       QMPYL        ACC, XT, XAR7
0000828a   00a7
0000828b   56a7       LSL64        ACC:P, 8
0000828c   3aac       MOVL         XT, XAR0
0000828d   86a9       MOVL         XAR2, ACC
0000828e   5605       IMPYL        P, XT, XAR6
0000828f   00a6
00008290   5663       QMPYL        ACC, XT, XAR6
00008291   00a6
00008292   56a7       LSL64        ACC:P, 8
00008293   a0ac       MOVL         XT, XAR5
00008294   03a2       SUBL         ACC, XAR2
00008295   5605       IMPYL        P, XT, XAR6
00008296   00a6
00008297   1ec4       MOVL         *+XAR4[0], ACC
00008298   5663       QMPYL        ACC, XT, XAR6
00008299   00a6
0000829a   56a7       LSL64        ACC:P, 8
0000829b   3aac       MOVL         XT, XAR0
0000829c   5605       IMPYL        P, XT, XAR7
0000829d   00a7
0000829e   1ea6       MOVL         XAR6, ACC
0000829f   5663       QMPYL        ACC, XT, XAR7
000082a0   00a7
000082a1   56a7       LSL64        ACC:P, 8
000082a2   07a6       ADDL         ACC, XAR6
000082a3   1ed4       MOVL         *+XAR4[2], ACC
000082a4   06c4       MOVL         ACC, *+XAR4[0]
000082a5   c458       MOVL         XAR6, *-SP[24]
000082a6   ff40       SFR          ACC, 1
000082a7   8ec4       MOVL         XAR0, *+XAR4[0]
000082a8   ff54       NEG          ACC
000082a9   1ea7       MOVL         XAR7, ACC
000082aa   28a9       MOV          AL, #0xb3d7
000082ab   b3d7
000082ac   9bdd       MOVB         AH, #0xdd
000082ad   1eac       MOVL         XT, ACC
000082ae   5605       IMPYL        P, XT, *+XAR4[2]
000082af   00d4
000082b0   5663       QMPYL        ACC, XT, *+XAR4[2]
000082b1   00d4
000082b2   56a7       LSL64        ACC:P, 8
000082b3   ff5a       MOVL         P, ACC
000082b4   5657       ADDUL        P, XAR7
000082b5   00a7
000082b6   5641       SUBL         XAR7, ACC
000082b7   00a7
000082b8   a9a5       MOVL         XAR5, P
000082b9   a0a9       MOVL         ACC, XAR5
000082ba   0fa0       CMPL         ACC, XAR0
000082bb   6403       SB           3, LT
000082bc   3aac       MOVL         XT, XAR0
000082bd   6f03       SB           3, UNC
0082be:              $C$L56:
000082be   3aab       MOVL         P, XAR0
000082bf   a0ac       MOVL         XT, XAR5
0082c0:              $C$L57:
000082c0   a9a9       MOVL         ACC, P
000082c1   0fa7       CMPL         ACC, XAR7
000082c2   ffe4       B            589, LT
000082c3   024d
000082c4   aba9       MOVL         ACC, XT
000082c5   0fa7       CMPL         ACC, XAR7
000082c6   ffe5       B            586, LEQ
000082c7   024a
000082c8   ffef       B            581, UNC
000082c9   0245
0082ca:              $C$L58:
000082ca   d008       MOVB         XAR0, #0x8
000082cb   02aa       MOVB         ACC, #170
000082cc   c493       MOVL         XAR6, *+XAR3[AR0]
000082cd   8aa2       MOVL         XAR4, XAR2
000082ce   07a3       ADDL         ACC, XAR3
000082cf   8ba9       MOVL         XAR1, ACC
000082d0   83a9       MOVL         XAR5, ACC
000082d1   c5c6       MOVL         XAR7, *+XAR6[0]
000082d2   8ed6       MOVL         XAR0, *+XAR6[2]
000082d3   92e6       MOV          AL, *+XAR6[4]
000082d4   5203       CMPB         AL, #0x3
000082d5   ec0e       SBF          14, EQ
000082d6   5202       CMPB         AL, #0x2
000082d7   ed20       SBF          32, NEQ
000082d8   87c4       MOVL         XT, *+XAR4[0]
000082d9   5605       IMPYL        P, XT, XAR7
000082da   00a7
000082db   5663       QMPYL        ACC, XT, XAR7
000082dc   00a7
000082dd   56a7       LSL64        ACC:P, 8
000082de   1ec5       MOVL         *+XAR5[0], ACC
000082df   06d4       MOVL         ACC, *+XAR4[2]
000082e0   ff30       LSL          ACC, 1
000082e1   07c4       ADDL         ACC, *+XAR4[0]
000082e2   6f0e       SB           14, UNC
0082e3:              $C$L59:
000082e3   06c4       MOVL         ACC, *+XAR4[0]
000082e4   ff30       LSL          ACC, 1
000082e5   03d4       SUBL         ACC, *+XAR4[2]
000082e6   03e4       SUBL         ACC, *+XAR4[4]
000082e7   1eac       MOVL         XT, ACC
000082e8   5605       IMPYL        P, XT, XAR7
000082e9   00a7
000082ea   5663       QMPYL        ACC, XT, XAR7
000082eb   00a7
000082ec   56a7       LSL64        ACC:P, 8
000082ed   1ec5       MOVL         *+XAR5[0], ACC
000082ee   06d4       MOVL         ACC, *+XAR4[2]
000082ef   03e4       SUBL         ACC, *+XAR4[4]
0082f0:              $C$L60:
000082f0   1eac       MOVL         XT, ACC
000082f1   5605       IMPYL        P, XT, XAR0
000082f2   00a0
000082f3   5663       QMPYL        ACC, XT, XAR0
000082f4   00a0
000082f5   56a7       LSL64        ACC:P, 8
000082f6   1ed5       MOVL         *+XAR5[2], ACC
0082f7:              $C$L61:
000082f7   02b6       MOVB         ACC, #182
000082f8   d010       MOVB         XAR0, #0x10
000082f9   07a3       ADDL         ACC, XAR3
000082fa   1e52       MOVL         *-SP[18], ACC
000082fb   c493       MOVL         XAR6, *+XAR3[AR0]
000082fc   83a9       MOVL         XAR5, ACC
000082fd   dc06       ADDB         XAR4, #6
000082fe   c5c6       MOVL         XAR7, *+XAR6[0]
000082ff   8ed6       MOVL         XAR0, *+XAR6[2]
00008300   92e6       MOV          AL, *+XAR6[4]
00008301   5203       CMPB         AL, #0x3
00008302   ec0e       SBF          14, EQ
00008303   5202       CMPB         AL, #0x2
00008304   ed20       SBF          32, NEQ
00008305   87c4       MOVL         XT, *+XAR4[0]
00008306   5605       IMPYL        P, XT, XAR7
00008307   00a7
00008308   5663       QMPYL        ACC, XT, XAR7
00008309   00a7
0000830a   56a7       LSL64        ACC:P, 8
0000830b   1ec5       MOVL         *+XAR5[0], ACC
0000830c   06d4       MOVL         ACC, *+XAR4[2]
0000830d   ff30       LSL          ACC, 1
0000830e   07c4       ADDL         ACC, *+XAR4[0]
0000830f   6f0e       SB           14, UNC
008310:              $C$L62:
00008310   06c4       MOVL         ACC, *+XAR4[0]
00008311   ff30       LSL          ACC, 1
00008312   03d4       SUBL         ACC, *+XAR4[2]
00008313   03e4       SUBL         ACC, *+XAR4[4]
00008314   1eac       MOVL         XT, ACC
00008315   5605       IMPYL        P, XT, XAR7
00008316   00a7
00008317   5663       QMPYL        ACC, XT, XAR7
00008318   00a7
00008319   56a7       LSL64        ACC:P, 8
0000831a   1ec5       MOVL         *+XAR5[0], ACC
0000831b   06d4       MOVL         ACC, *+XAR4[2]
0000831c   03e4       SUBL         ACC, *+XAR4[4]
00831d:              $C$L63:
0000831d   1eac       MOVL         XT, ACC
0000831e   5605       IMPYL        P, XT, XAR0
0000831f   00a0
00008320   5663       QMPYL        ACC, XT, XAR0
00008321   00a0
00008322   56a7       LSL64        ACC:P, 8
00008323   1ed5       MOVL         *+XAR5[2], ACC
008324:              $C$L64:
00008324   0652       MOVL         ACC, *-SP[18]
00008325   d06c       MOVB         XAR0, #0x6c
00008326   1e42       MOVL         *-SP[2], ACC
00008327   8a93       MOVL         XAR4, *+XAR3[AR0]
00008328   83a1       MOVL         XAR5, XAR1
00008329   d018       MOVB         XAR0, #0x18
0000832a   06d4       MOVL         ACC, *+XAR4[2]
0000832b   1e44       MOVL         *-SP[4], ACC
0000832c   8a93       MOVL         XAR4, *+XAR3[AR0]
0000832d   d00c       MOVB         XAR0, #0xc
0000832e   0692       MOVL         ACC, *+XAR2[AR0]
0000832f   767f       LCR          0x3fcc60
00008330   cc60
00008331   8d00       MOVL         XAR0, #0x000108
00008332   0108
00008333   8a93       MOVL         XAR4, *+XAR3[AR0]
00008334   92f4       MOV          AL, *+XAR4[6]
00008335   ed0b       SBF          11, NEQ
00008336   d018       MOVB         XAR0, #0x18
00008337   8a93       MOVL         XAR4, *+XAR3[AR0]
00008338   767f       LCR          0x3fc5f2
00008339   c5f2
0000833a   8d00       MOVL         XAR0, #0x000108
0000833b   0108
0000833c   1e52       MOVL         *-SP[18], ACC
0000833d   8a93       MOVL         XAR4, *+XAR3[AR0]
0000833e   1ec4       MOVL         *+XAR4[0], ACC
0000833f   6f03       SB           3, UNC
008340:              $C$L65:
00008340   06c4       MOVL         ACC, *+XAR4[0]
00008341   1e52       MOVL         *-SP[18], ACC
008342:              $C$L66:
00008342   8652       MOVL         XAR2, *-SP[18]
00008343   767f       LCR          0x3ff854
00008344   f854
00008345   1e50       MOVL         *-SP[16], ACC
00008346   aaa9       MOVL         ACC, XAR2
00008347   767f       LCR          0x3ff82b
00008348   f82b
00008349   d01a       MOVB         XAR0, #0x1a
0000834a   1e4e       MOVL         *-SP[14], ACC
0000834b   8a93       MOVL         XAR4, *+XAR3[AR0]
0000834c   0650       MOVL         ACC, *-SP[16]
0000834d   d01a       MOVB         XAR0, #0x1a
0000834e   1ed4       MOVL         *+XAR4[2], ACC
0000834f   064e       MOVL         ACC, *-SP[14]
00008350   1ec4       MOVL         *+XAR4[0], ACC
00008351   02b2       MOVB         ACC, #178
00008352   8393       MOVL         XAR5, *+XAR3[AR0]
00008353   07a3       ADDL         ACC, XAR3
00008354   8ec1       MOVL         XAR0, *+XAR1[0]
00008355   8aa9       MOVL         XAR4, ACC
00008356   c5d5       MOVL         XAR7, *+XAR5[2]
00008357   c4c5       MOVL         XAR6, *+XAR5[0]
00008358   3aac       MOVL         XT, XAR0
00008359   83d1       MOVL         XAR5, *+XAR1[2]
0000835a   5605       IMPYL        P, XT, XAR7
0000835b   00a7
0000835c   5663       QMPYL        ACC, XT, XAR7
0000835d   00a7
0000835e   56a7       LSL64        ACC:P, 8
0000835f   a0ac       MOVL         XT, XAR5
00008360   86a9       MOVL         XAR2, ACC
00008361   5605       IMPYL        P, XT, XAR6
00008362   00a6
00008363   5663       QMPYL        ACC, XT, XAR6
00008364   00a6
00008365   56a7       LSL64        ACC:P, 8
00008366   3aac       MOVL         XT, XAR0
00008367   07a2       ADDL         ACC, XAR2
00008368   d09e       MOVB         XAR0, #0x9e
00008369   5605       IMPYL        P, XT, XAR6
0000836a   00a6
0000836b   1ec4       MOVL         *+XAR4[0], ACC
0000836c   5663       QMPYL        ACC, XT, XAR6
0000836d   00a6
0000836e   56a7       LSL64        ACC:P, 8
0000836f   a0ac       MOVL         XT, XAR5
00008370   1ea6       MOVL         XAR6, ACC
00008371   5605       IMPYL        P, XT, XAR7
00008372   00a7
00008373   5663       QMPYL        ACC, XT, XAR7
00008374   00a7
00008375   56a7       LSL64        ACC:P, 8
00008376   03a6       SUBL         ACC, XAR6
00008377   1ed4       MOVL         *+XAR4[2], ACC
00008378   9293       MOV          AL, *+XAR3[AR0]
00008379   d0ee       MOVB         XAR0, #0xee
0000837a   5493       CMP          AL, *+XAR3[AR0]
0000837b   6641       SB           65, HI
0000837c   d06c       MOVB         XAR0, #0x6c
0000837d   8a93       MOVL         XAR4, *+XAR3[AR0]
0000837e   d018       MOVB         XAR0, #0x18
0000837f   8bd4       MOVL         XAR1, *+XAR4[2]
00008380   8a93       MOVL         XAR4, *+XAR3[AR0]
00008381   767f       LCR          0x3fd073
00008382   d073
00008383   d078       MOVB         XAR0, #0x78
00008384   8a93       MOVL         XAR4, *+XAR3[AR0]
00008385   1ea6       MOVL         XAR6, ACC
00008386   d0ee       MOVB         XAR0, #0xee
00008387   c5d4       MOVL         XAR7, *+XAR4[2]
00008388   b2ab       MOVL         P, XAR1
00008389   2b93       MOV          *+XAR3[AR0], #0
0000838a   d044       MOVB         XAR0, #0x44
0000838b   06a7       MOVL         ACC, XAR7
0000838c   8a93       MOVL         XAR4, *+XAR3[AR0]
0000838d   565d       SUBUL        P, XAR6
0000838e   00a6
0000838f   ff54       NEG          ACC
00008390   d00c       MOVB         XAR0, #0xc
00008391   1e94       MOVL         *+XAR4[AR0], ACC
00008392   d00e       MOVB         XAR0, #0xe
00008393   02ba       MOVB         ACC, #186
00008394   07a3       ADDL         ACC, XAR3
00008395   c394       MOVL         *+XAR4[AR0], XAR7
00008396   d044       MOVB         XAR0, #0x44
00008397   8393       MOVL         XAR5, *+XAR3[AR0]
00008398   8aa9       MOVL         XAR4, ACC
00008399   c5a1       MOVL         XAR7, XAR1
0000839a   a9a0       MOVL         XAR0, P
0000839b   87c5       MOVL         XT, *+XAR5[0]
0000839c   d10e       MOVB         XAR1, #0xe
0000839d   5663       QMPYL        ACC, XT, XAR0
0000839e   00a0
0000839f   5605       IMPYL        P, XT, XAR0
000083a0   00a0
000083a1   56a7       LSL64        ACC:P, 8
000083a2   86a9       MOVL         XAR2, ACC
000083a3   87d5       MOVL         XT, *+XAR5[2]
000083a4   5605       IMPYL        P, XT, XAR0
000083a5   00a0
000083a6   5663       QMPYL        ACC, XT, XAR0
000083a7   00a0
000083a8   d00c       MOVB         XAR0, #0xc
000083a9   56a7       LSL64        ACC:P, 8
000083aa   07f5       ADDL         ACC, *+XAR5[6]
000083ab   5650       MINL         ACC, *+XAR5[AR1]
000083ac   009d
000083ad   d10e       MOVB         XAR1, #0xe
000083ae   5661       MAXL         ACC, *+XAR5[AR0]
000083af   0095
000083b0   d008       MOVB         XAR0, #0x8
000083b1   1ef5       MOVL         *+XAR5[6], ACC
000083b2   07a2       ADDL         ACC, XAR2
000083b3   c395       MOVL         *+XAR5[AR0], XAR7
000083b4   d00a       MOVB         XAR0, #0xa
000083b5   c295       MOVL         *+XAR5[AR0], XAR6
000083b6   d00c       MOVB         XAR0, #0xc
000083b7   5650       MINL         ACC, *+XAR5[AR1]
000083b8   009d
000083b9   5661       MAXL         ACC, *+XAR5[AR0]
000083ba   0095
000083bb   1ec4       MOVL         *+XAR4[0], ACC
0083bc:              $C$L67:
000083bc   8d00       MOVL         XAR0, #0x000106
000083bd   0106
000083be   9293       MOV          AL, *+XAR3[AR0]
000083bf   56c1       BF           212, EQ
000083c0   00d4
000083c1   d09d       MOVB         XAR0, #0x9d
000083c2   9293       MOV          AL, *+XAR3[AR0]
000083c3   d0ec       MOVB         XAR0, #0xec
000083c4   5493       CMP          AL, *+XAR3[AR0]
000083c5   ffe6       B            206, HI
000083c6   00ce
000083c7   d0ca       MOVB         XAR0, #0xca
000083c8   8b93       MOVL         XAR1, *+XAR3[AR0]
000083c9   d0cc       MOVB         XAR0, #0xcc
000083ca   0693       MOVL         ACC, *+XAR3[AR0]
000083cb   d0a8       MOVB         XAR0, #0xa8
000083cc   1e54       MOVL         *-SP[20], ACC
000083cd   0693       MOVL         ACC, *+XAR3[AR0]
000083ce   d0ec       MOVB         XAR0, #0xec
000083cf   1e56       MOVL         *-SP[22], ACC
000083d0   2b93       MOV          *+XAR3[AR0], #0
000083d1   d0f1       MOVB         XAR0, #0xf1
000083d2   9293       MOV          AL, *+XAR3[AR0]
000083d3   ec0c       SBF          12, EQ
000083d4   d018       MOVB         XAR0, #0x18
000083d5   8a93       MOVL         XAR4, *+XAR3[AR0]
000083d6   767f       LCR          0x3fcf98
000083d7   cf98
000083d8   b2ac       MOVL         XT, XAR1
000083d9   5605       IMPYL        P, XT, ACC
000083da   00a9
000083db   5663       QMPYL        ACC, XT, ACC
000083dc   00a9
000083dd   56a7       LSL64        ACC:P, 8
000083de   8ba9       MOVL         XAR1, ACC
0083df:              $C$L68:
000083df   d020       MOVB         XAR0, #0x20
000083e0   8a93       MOVL         XAR4, *+XAR3[AR0]
000083e1   8d00       MOVL         XAR0, #0x000108
000083e2   0108
000083e3   b2c4       MOVL         *+XAR4[0], XAR1
000083e4   8a93       MOVL         XAR4, *+XAR3[AR0]
000083e5   92f4       MOV          AL, *+XAR4[6]
000083e6   ed04       SBF          4, NEQ
000083e7   d0e2       MOVB         XAR0, #0xe2
000083e8   0693       MOVL         ACC, *+XAR3[AR0]
000083e9   6f02       SB           2, UNC
0083ea:              $C$L69:
000083ea   06d4       MOVL         ACC, *+XAR4[2]
0083eb:              $C$L70:
000083eb   d060       MOVB         XAR0, #0x60
000083ec   8a93       MOVL         XAR4, *+XAR3[AR0]
000083ed   5dad       MOVZ         AR5, SP
000083ee   d018       MOVB         XAR0, #0x18
000083ef   dd86       SUBB         XAR5, #6
000083f0   07d4       ADDL         ACC, *+XAR4[2]
000083f1   1e46       MOVL         *-SP[6], ACC
000083f2   8a93       MOVL         XAR4, *+XAR3[AR0]
000083f3   767f       LCR          0x3fc3da
000083f4   c3da
000083f5   d020       MOVB         XAR0, #0x20
000083f6   02b2       MOVB         ACC, #178
000083f7   c556       MOVL         XAR7, *-SP[22]
000083f8   8a93       MOVL         XAR4, *+XAR3[AR0]
000083f9   07a3       ADDL         ACC, XAR3
000083fa   86a9       MOVL         XAR2, ACC
000083fb   d00c       MOVB         XAR0, #0xc
000083fc   c4c2       MOVL         XAR6, *+XAR2[0]
000083fd   06a7       MOVL         ACC, XAR7
000083fe   ff54       NEG          ACC
000083ff   1e94       MOVL         *+XAR4[AR0], ACC
00008400   d00e       MOVB         XAR0, #0xe
00008401   02c0       MOVB         ACC, #192
00008402   07a3       ADDL         ACC, XAR3
00008403   c394       MOVL         *+XAR4[AR0], XAR7
00008404   d020       MOVB         XAR0, #0x20
00008405   1e5a       MOVL         *-SP[26], ACC
00008406   8aa9       MOVL         XAR4, ACC
00008407   8393       MOVL         XAR5, *+XAR3[AR0]
00008408   d10e       MOVB         XAR1, #0xe
00008409   0646       MOVL         ACC, *-SP[6]
0000840a   d00c       MOVB         XAR0, #0xc
0000840b   87c5       MOVL         XT, *+XAR5[0]
0000840c   03a6       SUBL         ACC, XAR6
0000840d   5605       IMPYL        P, XT, ACC
0000840e   00a9
0000840f   5663       QMPYL        ACC, XT, ACC
00008410   00a9
00008411   56a7       LSL64        ACC:P, 8
00008412   87d5       MOVL         XT, *+XAR5[2]
00008413   1ea7       MOVL         XAR7, ACC
00008414   5605       IMPYL        P, XT, XAR7
00008415   00a7
00008416   5663       QMPYL        ACC, XT, XAR7
00008417   00a7
00008418   56a7       LSL64        ACC:P, 8
00008419   07f5       ADDL         ACC, *+XAR5[6]
0000841a   5650       MINL         ACC, *+XAR5[AR1]
0000841b   009d
0000841c   d10e       MOVB         XAR1, #0xe
0000841d   5661       MAXL         ACC, *+XAR5[AR0]
0000841e   0095
0000841f   d008       MOVB         XAR0, #0x8
00008420   1ef5       MOVL         *+XAR5[6], ACC
00008421   a346       MOVL         P, *-SP[6]
00008422   07a7       ADDL         ACC, XAR7
00008423   a995       MOVL         *+XAR5[AR0], P
00008424   d00a       MOVB         XAR0, #0xa
00008425   c295       MOVL         *+XAR5[AR0], XAR6
00008426   d00c       MOVB         XAR0, #0xc
00008427   5650       MINL         ACC, *+XAR5[AR1]
00008428   009d
00008429   5661       MAXL         ACC, *+XAR5[AR0]
0000842a   0095
0000842b   d0f1       MOVB         XAR0, #0xf1
0000842c   1ec4       MOVL         *+XAR4[0], ACC
0000842d   9293       MOV          AL, *+XAR3[AR0]
0000842e   ec0e       SBF          14, EQ
0000842f   d018       MOVB         XAR0, #0x18
00008430   8a93       MOVL         XAR4, *+XAR3[AR0]
00008431   767f       LCR          0x3fcf98
00008432   cf98
00008433   8754       MOVL         XT, *-SP[20]
00008434   5605       IMPYL        P, XT, ACC
00008435   00a9
00008436   8754       MOVL         XT, *-SP[20]
00008437   5663       QMPYL        ACC, XT, ACC
00008438   00a9
00008439   1e54       MOVL         *-SP[20], ACC
0000843a   56a7       LSL64        ACC:P, 8
0000843b   1e54       MOVL         *-SP[20], ACC
00843c:              $C$L71:
0000843c   d032       MOVB         XAR0, #0x32
0000843d   8a93       MOVL         XAR4, *+XAR3[AR0]
0000843e   0654       MOVL         ACC, *-SP[20]
0000843f   8d00       MOVL         XAR0, #0x000108
00008440   0108
00008441   1ec4       MOVL         *+XAR4[0], ACC
00008442   8a93       MOVL         XAR4, *+XAR3[AR0]
00008443   92f4       MOV          AL, *+XAR4[6]
00008444   ec03       SBF          3, EQ
00008445   06e4       MOVL         ACC, *+XAR4[4]
00008446   6f08       SB           8, UNC
008447:              $C$L72:
00008447   d0f4       MOVB         XAR0, #0xf4
00008448   9293       MOV          AL, *+XAR3[AR0]
00008449   ec03       SBF          3, EQ
0000844a   d0ba       MOVB         XAR0, #0xba
0000844b   6f02       SB           2, UNC
00844c:              $C$L73:
0000844c   d0e4       MOVB         XAR0, #0xe4
00844d:              $C$L74:
0000844d   0693       MOVL         ACC, *+XAR3[AR0]
00844e:              $C$L75:
0000844e   8a5a       MOVL         XAR4, *-SP[26]
0000844f   1e46       MOVL         *-SP[6], ACC
00008450   87c4       MOVL         XT, *+XAR4[0]
00008451   86d2       MOVL         XAR2, *+XAR2[2]
00008452   5605       IMPYL        P, XT, *+XAR4[0]
00008453   00c4
00008454   5663       QMPYL        ACC, XT, *+XAR4[0]
00008455   00c4
00008456   8756       MOVL         XT, *-SP[22]
00008457   56a7       LSL64        ACC:P, 8
00008458   1ea6       MOVL         XAR6, ACC
00008459   0656       MOVL         ACC, *-SP[22]
0000845a   5605       IMPYL        P, XT, ACC
0000845b   00a9
0000845c   8756       MOVL         XT, *-SP[22]
0000845d   0656       MOVL         ACC, *-SP[22]
0000845e   5663       QMPYL        ACC, XT, ACC
0000845f   00a9
00008460   56a7       LSL64        ACC:P, 8
00008461   03a6       SUBL         ACC, XAR6
00008462   767f       LCR          0x3ff2aa
00008463   f2aa
00008464   d032       MOVB         XAR0, #0x32
00008465   8a93       MOVL         XAR4, *+XAR3[AR0]
00008466   1ea6       MOVL         XAR6, ACC
00008467   d00c       MOVB         XAR0, #0xc
00008468   ff54       NEG          ACC
00008469   1e94       MOVL         *+XAR4[AR0], ACC
0000846a   d00e       MOVB         XAR0, #0xe
0000846b   c294       MOVL         *+XAR4[AR0], XAR6
0000846c   d032       MOVB         XAR0, #0x32
0000846d   0646       MOVL         ACC, *-SP[6]
0000846e   8a93       MOVL         XAR4, *+XAR3[AR0]
0000846f   d10e       MOVB         XAR1, #0xe
00008470   03a2       SUBL         ACC, XAR2
00008471   d00c       MOVB         XAR0, #0xc
00008472   87c4       MOVL         XT, *+XAR4[0]
00008473   5605       IMPYL        P, XT, ACC
00008474   00a9
00008475   5663       QMPYL        ACC, XT, ACC
00008476   00a9
00008477   56a7       LSL64        ACC:P, 8
00008478   87d4       MOVL         XT, *+XAR4[2]
00008479   1ea6       MOVL         XAR6, ACC
0000847a   5605       IMPYL        P, XT, XAR6
0000847b   00a6
0000847c   5663       QMPYL        ACC, XT, XAR6
0000847d   00a6
0000847e   56a7       LSL64        ACC:P, 8
0000847f   07f4       ADDL         ACC, *+XAR4[6]
00008480   5650       MINL         ACC, *+XAR4[AR1]
00008481   009c
00008482   5661       MAXL         ACC, *+XAR4[AR0]
00008483   0094
00008484   1ef4       MOVL         *+XAR4[6], ACC
00008485   c546       MOVL         XAR7, *-SP[6]
00008486   d008       MOVB         XAR0, #0x8
00008487   d10e       MOVB         XAR1, #0xe
00008488   07a6       ADDL         ACC, XAR6
00008489   c394       MOVL         *+XAR4[AR0], XAR7
0000848a   d00a       MOVB         XAR0, #0xa
0000848b   aa94       MOVL         *+XAR4[AR0], XAR2
0000848c   d00c       MOVB         XAR0, #0xc
0000848d   5650       MINL         ACC, *+XAR4[AR1]
0000848e   009c
0000848f   5661       MAXL         ACC, *+XAR4[AR0]
00008490   0094
00008491   8a5a       MOVL         XAR4, *-SP[26]
00008492   1ed4       MOVL         *+XAR4[2], ACC
008493:              $C$L76:
00008493   d018       MOVB         XAR0, #0x18
00008494   8a93       MOVL         XAR4, *+XAR3[AR0]
00008495   767f       LCR          0x3fd073
00008496   d073
00008497   8f02       MOVL         XAR4, #0x028f5c
00008498   8f5c
00008499   1eac       MOVL         XT, ACC
0000849a   c452       MOVL         XAR6, *-SP[18]
0000849b   5605       IMPYL        P, XT, XAR4
0000849c   00a4
0000849d   5663       QMPYL        ACC, XT, XAR4
0000849e   00a4
0000849f   56a7       LSL64        ACC:P, 8
000084a0   1eac       MOVL         XT, ACC
000084a1   ff2f       MOV          ACC, #0x600 << 15
000084a2   0600
000084a3   5605       IMPYL        P, XT, ACC
000084a4   00a9
000084a5   5663       QMPYL        ACC, XT, ACC
000084a6   00a9
000084a7   56a7       LSL64        ACC:P, 8
000084a8   07a6       ADDL         ACC, XAR6
000084a9   1ea6       MOVL         XAR6, ACC
000084aa   ff56       ABS          ACC
000084ab   91ff       ANDB         AH, #0xff
000084ac   8ba9       MOVL         XAR1, ACC
000084ad   06a6       MOVL         ACC, XAR6
000084ae   6304       SB           4, GEQ
000084af   b2a9       MOVL         ACC, XAR1
000084b0   ff54       NEG          ACC
000084b1   8ba9       MOVL         XAR1, ACC
0084b2:              $C$L77:
000084b2   b2a9       MOVL         ACC, XAR1
000084b3   767f       LCR          0x3ff854
000084b4   f854
000084b5   1e50       MOVL         *-SP[16], ACC
000084b6   b2a9       MOVL         ACC, XAR1
000084b7   767f       LCR          0x3ff82b
000084b8   f82b
000084b9   d056       MOVB         XAR0, #0x56
000084ba   1e4e       MOVL         *-SP[14], ACC
000084bb   8a93       MOVL         XAR4, *+XAR3[AR0]
000084bc   0650       MOVL         ACC, *-SP[16]
000084bd   d056       MOVB         XAR0, #0x56
000084be   1ed4       MOVL         *+XAR4[2], ACC
000084bf   064e       MOVL         ACC, *-SP[14]
000084c0   1ec4       MOVL         *+XAR4[0], ACC
000084c1   02c0       MOVB         ACC, #192
000084c2   07a3       ADDL         ACC, XAR3
000084c3   c493       MOVL         XAR6, *+XAR3[AR0]
000084c4   83a9       MOVL         XAR5, ACC
000084c5   02bc       MOVB         ACC, #188
000084c6   07a3       ADDL         ACC, XAR3
000084c7   8ec5       MOVL         XAR0, *+XAR5[0]
000084c8   c5c6       MOVL         XAR7, *+XAR6[0]
000084c9   83d5       MOVL         XAR5, *+XAR5[2]
000084ca   3b01       SETC         SXM
000084cb   8aa9       MOVL         XAR4, ACC
000084cc   c4d6       MOVL         XAR6, *+XAR6[2]
000084cd   a0ac       MOVL         XT, XAR5
000084ce   5605       IMPYL        P, XT, XAR7
000084cf   00a7
000084d0   5663       QMPYL        ACC, XT, XAR7
000084d1   00a7
000084d2   56a7       LSL64        ACC:P, 8
000084d3   3aac       MOVL         XT, XAR0
000084d4   86a9       MOVL         XAR2, ACC
000084d5   5605       IMPYL        P, XT, XAR6
000084d6   00a6
000084d7   5663       QMPYL        ACC, XT, XAR6
000084d8   00a6
000084d9   56a7       LSL64        ACC:P, 8
000084da   a0ac       MOVL         XT, XAR5
000084db   03a2       SUBL         ACC, XAR2
000084dc   5605       IMPYL        P, XT, XAR6
000084dd   00a6
000084de   1ec4       MOVL         *+XAR4[0], ACC
000084df   5663       QMPYL        ACC, XT, XAR6
000084e0   00a6
000084e1   56a7       LSL64        ACC:P, 8
000084e2   3aac       MOVL         XT, XAR0
000084e3   1ea6       MOVL         XAR6, ACC
000084e4   5605       IMPYL        P, XT, XAR7
000084e5   00a7
000084e6   5663       QMPYL        ACC, XT, XAR7
000084e7   00a7
000084e8   56a7       LSL64        ACC:P, 8
000084e9   07a6       ADDL         ACC, XAR6
000084ea   1ed4       MOVL         *+XAR4[2], ACC
000084eb   06c4       MOVL         ACC, *+XAR4[0]
000084ec   c458       MOVL         XAR6, *-SP[24]
000084ed   ff40       SFR          ACC, 1
000084ee   8ec4       MOVL         XAR0, *+XAR4[0]
000084ef   ff54       NEG          ACC
000084f0   1ea7       MOVL         XAR7, ACC
000084f1   28a9       MOV          AL, #0xb3d7
000084f2   b3d7
000084f3   9bdd       MOVB         AH, #0xdd
000084f4   1eac       MOVL         XT, ACC
000084f5   5605       IMPYL        P, XT, *+XAR4[2]
000084f6   00d4
000084f7   5663       QMPYL        ACC, XT, *+XAR4[2]
000084f8   00d4
000084f9   56a7       LSL64        ACC:P, 8
000084fa   ff5a       MOVL         P, ACC
000084fb   5657       ADDUL        P, XAR7
000084fc   00a7
000084fd   5641       SUBL         XAR7, ACC
000084fe   00a7
000084ff   a9a5       MOVL         XAR5, P
00008500   a0a9       MOVL         ACC, XAR5
00008501   0fa0       CMPL         ACC, XAR0
00008502   6403       SB           3, LT
00008503   3aac       MOVL         XT, XAR0
00008504   6f03       SB           3, UNC
008505:              $C$L78:
00008505   3aab       MOVL         P, XAR0
00008506   a0ac       MOVL         XT, XAR5
008507:              $C$L79:
00008507   a9a9       MOVL         ACC, P
00008508   0fa7       CMPL         ACC, XAR7
00008509   6406       SB           6, LT
0000850a   aba9       MOVL         ACC, XT
0000850b   0fa7       CMPL         ACC, XAR7
0000850c   6504       SB           4, LEQ
00850d:              $C$L80:
0000850d   87a7       MOVL         XT, XAR7
0000850e   6f02       SB           2, UNC
00850f:              $C$L81:
0000850f   a3a7       MOVL         P, XAR7
008510:              $C$L82:
00008510   a9a9       MOVL         ACC, P
00008511   5601       ADDL         XT, ACC
00008512   00ac
00008513   8aa6       MOVL         XAR4, XAR6
00008514   9a00       MOVB         AL, #0x0
00008515   9b80       MOVB         AH, #0x80
00008516   5605       IMPYL        P, XT, ACC
00008517   00a9
00008518   5663       QMPYL        ACC, XT, ACC
00008519   00a9
0000851a   56a7       LSL64        ACC:P, 8
0000851b   5641       SUBL         XAR0, ACC
0000851c   00a0
0000851d   5641       SUBL         XAR5, ACC
0000851e   00a5
0000851f   5641       SUBL         XAR7, ACC
00008520   00a7
00008521   3ac4       MOVL         *+XAR4[0], XAR0
00008522   a0d4       MOVL         *+XAR4[2], XAR5
00008523   c3e4       MOVL         *+XAR4[4], XAR7
00008524   6f05       SB           5, UNC
008525:              $C$L83:
00008525   02ed       MOVB         ACC, #237
00008526   07a3       ADDL         ACC, XAR3
00008527   8aa9       MOVL         XAR4, ACC
00008528   0ac4       INC          *+XAR4[0]
008529:              $C$L84:
00008529   fe9c       SUBB         SP, #28
0000852a   82be       MOVL         XAR3, *--SP
0000852b   86be       MOVL         XAR2, *--SP
0000852c   8bbe       MOVL         XAR1, *--SP
0000852d   0006       LRETR        
00852e:              _mainISR:
00852e:              ramfuncs:retain:
0000852e   761b       ASP          
0000852f   0005       PUSH         AR1H:AR0H
00008530   abbd       MOVL         *SP++, XT
00008531   aabd       MOVL         *SP++, XAR2
00008532   a2bd       MOVL         *SP++, XAR3
00008533   a8bd       MOVL         *SP++, XAR4
00008534   a0bd       MOVL         *SP++, XAR5
00008535   c2bd       MOVL         *SP++, XAR6
00008536   c3bd       MOVL         *SP++, XAR7
00008537   fe06       ADDB         SP, #6
00008538   ff69       SPM          #0
00008539   2942       CLRC         OVM|PAGE0
0000853a   5616       CLRC         AMODE
0000853b   761f       MOVW         DP, #0x0
0000853c   0000
0000853d   8308       MOVL         XAR5, @0x8
0000853e   8ac5       MOVL         XAR4, *+XAR5[0]
0000853f   8d00       MOVL         XAR0, #0x006605
00008540   6605
00008541   56bf       MOVB         *+XAR4[AR0], #0x01, UNC
00008542   0194
00008543   d078       MOVB         XAR0, #0x78
00008544   8a95       MOVL         XAR4, *+XAR5[AR0]
00008545   56bf       MOVB         *+XAR4[1], #0x01, UNC
00008546   01cc
00008547   c5c5       MOVL         XAR7, *+XAR5[0]
00008548   d0ae       MOVB         XAR0, #0xae
00008549   8d80       MOVL         XAR2, #0x000012
0000854a   0012
0000854b   c495       MOVL         XAR6, *+XAR5[AR0]
0000854c   0ecf       MOVU         ACC, *+XAR7[1]
0000854d   1eac       MOVL         XT, ACC
0000854e   0298       MOVB         ACC, #152
0000854f   5605       IMPYL        P, XT, XAR6
00008550   00a6
00008551   07a5       ADDL         ACC, XAR5
00008552   8aa9       MOVL         XAR4, ACC
00008553   5663       QMPYL        ACC, XT, XAR6
00008554   00a6
00008555   568b       ASR64        ACC:P, 12
00008556   a9a9       MOVL         ACC, P
00008557   03c4       SUBL         ACC, *+XAR4[0]
00008558   1ec2       MOVL         *+XAR2[0], ACC
00008559   0ed7       MOVU         ACC, *+XAR7[2]
0000855a   1eac       MOVL         XT, ACC
0000855b   5663       QMPYL        ACC, XT, XAR6
0000855c   00a6
0000855d   5605       IMPYL        P, XT, XAR6
0000855e   00a6
0000855f   568b       ASR64        ACC:P, 12
00008560   a9a9       MOVL         ACC, P
00008561   03d4       SUBL         ACC, *+XAR4[2]
00008562   1ed2       MOVL         *+XAR2[2], ACC
00008563   0edf       MOVU         ACC, *+XAR7[3]
00008564   1eac       MOVL         XT, ACC
00008565   5663       QMPYL        ACC, XT, XAR6
00008566   00a6
00008567   5605       IMPYL        P, XT, XAR6
00008568   00a6
00008569   c4a2       MOVL         XAR6, XAR2
0000856a   568b       ASR64        ACC:P, 12
0000856b   d0b0       MOVB         XAR0, #0xb0
0000856c   a9a9       MOVL         ACC, P
0000856d   de06       ADDB         XAR6, #6
0000856e   03e4       SUBL         ACC, *+XAR4[4]
0000856f   1ee2       MOVL         *+XAR2[4], ACC
00008570   8e95       MOVL         XAR0, *+XAR5[AR0]
00008571   0ee7       MOVU         ACC, *+XAR7[4]
00008572   1eac       MOVL         XT, ACC
00008573   029e       MOVB         ACC, #158
00008574   5605       IMPYL        P, XT, XAR0
00008575   00a0
00008576   07a5       ADDL         ACC, XAR5
00008577   8aa9       MOVL         XAR4, ACC
00008578   5663       QMPYL        ACC, XT, XAR0
00008579   00a0
0000857a   568b       ASR64        ACC:P, 12
0000857b   a9a9       MOVL         ACC, P
0000857c   03c4       SUBL         ACC, *+XAR4[0]
0000857d   1ec6       MOVL         *+XAR6[0], ACC
0000857e   0eef       MOVU         ACC, *+XAR7[5]
0000857f   1eac       MOVL         XT, ACC
00008580   5663       QMPYL        ACC, XT, XAR0
00008581   00a0
00008582   5605       IMPYL        P, XT, XAR0
00008583   00a0
00008584   568b       ASR64        ACC:P, 12
00008585   a9a9       MOVL         ACC, P
00008586   03d4       SUBL         ACC, *+XAR4[2]
00008587   1ed6       MOVL         *+XAR6[2], ACC
00008588   0ef7       MOVU         ACC, *+XAR7[6]
00008589   1eac       MOVL         XT, ACC
0000858a   5663       QMPYL        ACC, XT, XAR0
0000858b   00a0
0000858c   5605       IMPYL        P, XT, XAR0
0000858d   00a0
0000858e   568b       ASR64        ACC:P, 12
0000858f   a9a9       MOVL         ACC, P
00008590   03e4       SUBL         ACC, *+XAR4[4]
00008591   1ee6       MOVL         *+XAR6[4], ACC
00008592   8a06       MOVL         XAR4, @0x6
00008593   c404       MOVL         XAR6, @0x4
00008594   0eff       MOVU         ACC, *+XAR7[7]
00008595   1eac       MOVL         XT, ACC
00008596   5663       QMPYL        ACC, XT, XAR0
00008597   00a0
00008598   5605       IMPYL        P, XT, XAR0
00008599   00a0
0000859a   d00c       MOVB         XAR0, #0xc
0000859b   568b       ASR64        ACC:P, 12
0000859c   a992       MOVL         *+XAR2[AR0], P
0000859d   d008       MOVB         XAR0, #0x8
0000859e   0e97       MOVU         ACC, *+XAR7[AR0]
0000859f   d00e       MOVB         XAR0, #0xe
000085a0   1e92       MOVL         *+XAR2[AR0], ACC
000085a1   d009       MOVB         XAR0, #0x9
000085a2   0e97       MOVU         ACC, *+XAR7[AR0]
000085a3   d010       MOVB         XAR0, #0x10
000085a4   1e92       MOVL         *+XAR2[AR0], ACC
000085a5   d00a       MOVB         XAR0, #0xa
000085a6   0e97       MOVU         ACC, *+XAR7[AR0]
000085a7   d014       MOVB         XAR0, #0x14
000085a8   1e92       MOVL         *+XAR2[AR0], ACC
000085a9   d00b       MOVB         XAR0, #0xb
000085aa   0e97       MOVU         ACC, *+XAR7[AR0]
000085ab   d012       MOVB         XAR0, #0x12
000085ac   1e92       MOVL         *+XAR2[AR0], ACC
000085ad   d016       MOVB         XAR0, #0x16
000085ae   a846       MOVL         *-SP[6], XAR4
000085af   8b96       MOVL         XAR1, *+XAR6[AR0]
000085b0   82a4       MOVL         XAR3, XAR4
000085b1   d011       MOVB         XAR0, #0x11
000085b2   9291       MOV          AL, *+XAR1[AR0]
000085b3   5201       CMPB         AL, #0x1
000085b4   ed4a       SBF          74, NEQ
000085b5   02e2       MOVB         ACC, #226
000085b6   d0e8       MOVB         XAR0, #0xe8
000085b7   07a3       ADDL         ACC, XAR3
000085b8   8aa9       MOVL         XAR4, ACC
000085b9   0200       MOVB         ACC, #0
000085ba   1ec4       MOVL         *+XAR4[0], ACC
000085bb   1ed4       MOVL         *+XAR4[2], ACC
000085bc   0693       MOVL         ACC, *+XAR3[AR0]
000085bd   d018       MOVB         XAR0, #0x18
000085be   1ec1       MOVL         *+XAR1[0], ACC
000085bf   8a93       MOVL         XAR4, *+XAR3[AR0]
000085c0   767f       LCR          0x3fd073
000085c1   d073
000085c2   1ee1       MOVL         *+XAR1[4], ACC
000085c3   28a9       MOV          AL, #0xcccd
000085c4   cccd
000085c5   9bcc       MOVB         AH, #0xcc
000085c6   8f33       MOVL         XAR4, #0x333333
000085c7   3333
000085c8   d00e       MOVB         XAR0, #0xe
000085c9   87f1       MOVL         XT, *+XAR1[6]
000085ca   5605       IMPYL        P, XT, ACC
000085cb   00a9
000085cc   5663       QMPYL        ACC, XT, ACC
000085cd   00a9
000085ce   87e1       MOVL         XT, *+XAR1[4]
000085cf   56a7       LSL64        ACC:P, 8
000085d0   1ea6       MOVL         XAR6, ACC
000085d1   5605       IMPYL        P, XT, XAR4
000085d2   00a4
000085d3   5663       QMPYL        ACC, XT, XAR4
000085d4   00a4
000085d5   56a7       LSL64        ACC:P, 8
000085d6   07a6       ADDL         ACC, XAR6
000085d7   1ef1       MOVL         *+XAR1[6], ACC
000085d8   0691       MOVL         ACC, *+XAR1[AR0]
000085d9   d00c       MOVB         XAR0, #0xc
000085da   0f91       CMPL         ACC, *+XAR1[AR0]
000085db   6906       SB           6, LOS
000085dc   d90c       ADDB         XAR1, #12
000085dd   0201       MOVB         ACC, #1
000085de   5601       ADDL         *+XAR1[0], ACC
000085df   00c1
000085e0   6f19       SB           25, UNC
0085e1:              $C$L1:
000085e1   c4f1       MOVL         XAR6, *+XAR1[6]
000085e2   d008       MOVB         XAR0, #0x8
000085e3   06a6       MOVL         ACC, XAR6
000085e4   ff56       ABS          ACC
000085e5   0f91       CMPL         ACC, *+XAR1[AR0]
000085e6   6302       SB           2, GEQ
000085e7   be00       MOVB         XAR6, #0x00
0085e8:              $C$L2:
000085e8   c2d1       MOVL         *+XAR1[2], XAR6
000085e9   d011       MOVB         XAR0, #0x11
000085ea   2b91       MOV          *+XAR1[AR0], #0
000085eb   d010       MOVB         XAR0, #0x10
000085ec   56bf       MOVB         *+XAR1[AR0], #0x01, UNC
000085ed   0191
000085ee   d06c       MOVB         XAR0, #0x6c
000085ef   8a93       MOVL         XAR4, *+XAR3[AR0]
000085f0   06d1       MOVL         ACC, *+XAR1[2]
000085f1   d044       MOVB         XAR0, #0x44
000085f2   1ed4       MOVL         *+XAR4[2], ACC
000085f3   8a93       MOVL         XAR4, *+XAR3[AR0]
000085f4   0200       MOVB         ACC, #0
000085f5   1ef4       MOVL         *+XAR4[6], ACC
000085f6   8a46       MOVL         XAR4, *-SP[6]
000085f7   d0ba       MOVB         XAR0, #0xba
000085f8   1e94       MOVL         *+XAR4[AR0], ACC
0085f9:              $C$L3:
000085f9   761f       MOVW         DP, #0x0
000085fa   0000
000085fb   8308       MOVL         XAR5, @0x8
000085fc   8a06       MOVL         XAR4, @0x6
000085fd   6f04       SB           4, UNC
0085fe:              $C$L4:
000085fe   d010       MOVB         XAR0, #0x10
000085ff   56bf       MOVB         *+XAR1[AR0], #0x01, UNC
00008600   0191
008601:              $C$L5:
00008601   aa42       MOVL         *-SP[2], XAR2
00008602   7680       MOVL         XAR6, #0x00000c
00008603   000c
00008604   c244       MOVL         *-SP[4], XAR6
00008605   7640       LCR          0x00800a
00008606   800a
00008607   761f       MOVW         DP, #0x0
00008608   0000
00008609   8a04       MOVL         XAR4, @0x4
0000860a   d023       MOVB         XAR0, #0x23
0000860b   9294       MOV          AL, *+XAR4[AR0]
0000860c   ed21       SBF          33, NEQ
0000860d   8a06       MOVL         XAR4, @0x6
0000860e   8d00       MOVL         XAR0, #0x000108
0000860f   0108
00008610   8a94       MOVL         XAR4, *+XAR4[AR0]
00008611   92f4       MOV          AL, *+XAR4[6]
00008612   ed1b       SBF          27, NEQ
00008613   8f00       MOVL         XAR4, #0x00000c
00008614   000c
00008615   0200       MOVB         ACC, #0
00008616   1ec4       MOVL         *+XAR4[0], ACC
00008617   1ed4       MOVL         *+XAR4[2], ACC
00008618   1ee4       MOVL         *+XAR4[4], ACC
00008619   8a08       MOVL         XAR4, @0x8
0000861a   dc7c       ADDB         XAR4, #124
0000861b   83c4       MOVL         XAR5, *+XAR4[0]
0000861c   7622       EALLOW       
0000861d   dd18       ADDB         XAR5, #24
0000861e   1ac5       OR           *+XAR5[0], #0x0004
0000861f   0004
00008620   761a       EDIS         
00008621   83d4       MOVL         XAR5, *+XAR4[2]
00008622   7622       EALLOW       
00008623   dd18       ADDB         XAR5, #24
00008624   1ac5       OR           *+XAR5[0], #0x0004
00008625   0004
00008626   761a       EDIS         
00008627   8ae4       MOVL         XAR4, *+XAR4[4]
00008628   7622       EALLOW       
00008629   dc18       ADDB         XAR4, #24
0000862a   1ac4       OR           *+XAR4[0], #0x0004
0000862b   0004
0000862c   761a       EDIS         
00862d:              $C$L6:
0000862d   8308       MOVL         XAR5, @0x8
0000862e   8a06       MOVL         XAR4, @0x6
0000862f   8d40       MOVL         XAR1, #0x00000c
00008630   000c
00008631   be02       MOVB         XAR6, #0x02
00008632   3b01       SETC         SXM
00008633   ff69       SPM          #0
00008634   dd7c       ADDB         XAR5, #124
008635:              $C$L7:
00008635   c5c5       MOVL         XAR7, *+XAR5[0]
00008636   ff2f       MOV          ACC, #0xfe00 << 15
00008637   fe00
00008638   8781       MOVL         XT, *XAR1++
00008639   5605       IMPYL        P, XT, ACC
0000863a   00a9
0000863b   58ef       MOVZ         AR0, *+XAR7[5]
0000863c   5663       QMPYL        ACC, XT, ACC
0000863d   00a9
0000863e   dd02       ADDB         XAR5, #2
0000863f   56a7       LSL64        ACC:P, 8
00008640   2bab       MOV          PL, #0
00008641   28aa       MOV          PH, #0x0080
00008642   0080
00008643   a9a3       MOVL         XAR3, P
00008644   2bab       MOV          PL, #0
00008645   28aa       MOV          PH, #0xff80
00008646   ff80
00008647   5650       MINL         ACC, XAR3
00008648   00a3
00008649   5661       MAXL         ACC, P
0000864a   00ab
0000864b   ff1f       ADD          ACC, #0x100 << 15
0000864c   0100
0000864d   1eac       MOVL         XT, ACC
0000864e   5605       IMPYL        P, XT, XAR0
0000864f   00a0
00008650   5663       QMPYL        ACC, XT, XAR0
00008651   00a0
00008652   56a7       LSL64        ACC:P, 8
00008653   3100       MPYB         P, T, #0
00008654   5650       MINL         ACC, XAR0
00008655   00a0
00008656   d009       MOVB         XAR0, #0x9
00008657   5661       MAXL         ACC, P
00008658   00ab
00008659   9697       MOV          *+XAR7[AR0], AL
0000865a   000e       BANZ         -37,AR6--
0000865b   ffdb
0000865c   7640       LCR          0x008000
0000865d   8000
0000865e   761f       MOVW         DP, #0x0
0000865f   0000
00008660   0a01       INC          @0x1
00008661   9201       MOV          AL, @0x1
00008662   5264       CMPB         AL, #0x64
00008663   682f       SB           47, LO
00008664   8a04       MOVL         XAR4, @0x4
00008665   d0a6       MOVB         XAR0, #0xa6
00008666   8394       MOVL         XAR5, *+XAR4[AR0]
00008667   2b01       MOV          @0x1, #0
00008668   d01a       MOVB         XAR0, #0x1a
00008669   9295       MOV          AL, *+XAR5[AR0]
0000866a   5201       CMPB         AL, #0x1
0000866b   ed03       SBF          3, NEQ
0000866c   dd14       ADDB         XAR5, #20
0000866d   0ac5       INC          *+XAR5[0]
00866e:              $C$L8:
0000866e   0a02       INC          @0x2
0000866f   9202       MOV          AL, @0x2
00008670   520a       CMPB         AL, #0xa
00008671   6817       SB           23, LO
00008672   8a08       MOVL         XAR4, @0x8
00008673   d008       MOVB         XAR0, #0x8
00008674   9a06       MOVB         AL, #0x6
00008675   2b02       MOV          @0x2, #0
00008676   8a94       MOVL         XAR4, *+XAR4[AR0]
00008677   767f       LCR          0x3f3cb3
00008678   3cb3
00008679   761f       MOVW         DP, #0x0
0000867a   0000
0000867b   83a2       MOVL         XAR5, XAR2
0000867c   8a04       MOVL         XAR4, @0x4
0000867d   767f       LCR          0x3f28df
0000867e   28df
0000867f   761f       MOVW         DP, #0x0
00008680   0000
00008681   83a2       MOVL         XAR5, XAR2
00008682   8a04       MOVL         XAR4, @0x4
00008683   767f       LCR          0x3f28d2
00008684   28d2
00008685   761f       MOVW         DP, #0x0
00008686   0000
00008687   8a04       MOVL         XAR4, @0x4
008688:              $C$L9:
00008688   8306       MOVL         XAR5, @0x6
00008689   8d00       MOVL         XAR0, #0x000108
0000868a   0108
0000868b   8395       MOVL         XAR5, *+XAR5[AR0]
0000868c   9a00       MOVB         AL, #0x0
0000868d   93f5       MOV          AH, *+XAR5[6]
0000868e   56b0       MOVB         AL, #0x01, NEQ
0000868f   01a9
00008690   7200       ADD          @0x0, AL
00008691   6f02       SB           2, UNC
008692:              $C$L10:
00008692   8a04       MOVL         XAR4, @0x4
008693:              $C$L11:
00008693   83a2       MOVL         XAR5, XAR2
00008694   767f       LCR          0x3f27d2
00008695   27d2
00008696   761f       MOVW         DP, #0x0
00008697   0000
00008698   8b04       MOVL         XAR1, @0x4
00008699   8ac1       MOVL         XAR4, *+XAR1[0]
0000869a   d008       MOVB         XAR0, #0x8
0000869b   9a07       MOVB         AL, #0x7
0000869c   8a94       MOVL         XAR4, *+XAR4[AR0]
0000869d   767f       LCR          0x3f3dce
0000869e   3dce
0000869f   5200       CMPB         AL, #0x0
000086a0   56b1       MOVB         AR0, #0xa3, EQ
000086a1   a3a0
000086a2   fe86       SUBB         SP, #6
000086a3   56b1       MOVB         *+XAR1[AR0], #0x01, EQ
000086a4   0191
000086a5   c5be       MOVL         XAR7, *--SP
000086a6   c4be       MOVL         XAR6, *--SP
000086a7   83be       MOVL         XAR5, *--SP
000086a8   8abe       MOVL         XAR4, *--SP
000086a9   82be       MOVL         XAR3, *--SP
000086aa   86be       MOVL         XAR2, *--SP
000086ab   87be       MOVL         XT, *--SP
000086ac   0003       POP          AR1H:AR0H
000086ad   7617       NASP         
000086ae   7602       IRET         
0086af:              _FLASH_setStandbyWaitCount:
0086af:              ramfuncs:
000086af   7622       EALLOW       
000086b0   96e4       MOV          *+XAR4[4], AL
000086b1   761a       EDIS         
000086b2   ff69       SPM          #0
000086b3   0006       LRETR        
0086b4:              _FLASH_setPowerMode:
000086b4   7622       EALLOW       
000086b5   18d4       AND          *+XAR4[2], #0xfffc
000086b6   fffc
000086b7   98d4       OR           *+XAR4[2], AL
000086b8   761a       EDIS         
000086b9   ff69       SPM          #0
000086ba   0006       LRETR        
0086bb:              _FLASH_setOtpWaitStates:
000086bb   7622       EALLOW       
000086bc   18fc       AND          *+XAR4[7], #0xffe0
000086bd   ffe0
000086be   98fc       OR           *+XAR4[7], AL
000086bf   761a       EDIS         
000086c0   ff69       SPM          #0
000086c1   0006       LRETR        
0086c2:              _FLASH_setNumRandomReadWaitStates:
000086c2   7622       EALLOW       
000086c3   18f4       AND          *+XAR4[6], #0xfff0
000086c4   fff0
000086c5   98f4       OR           *+XAR4[6], AL
000086c6   761a       EDIS         
000086c7   ff69       SPM          #0
000086c8   0006       LRETR        
0086c9:              _FLASH_setNumPagedReadWaitStates:
000086c9   7622       EALLOW       
000086ca   18f4       AND          *+XAR4[6], #0xf0ff
000086cb   f0ff
000086cc   98f4       OR           *+XAR4[6], AL
000086cd   761a       EDIS         
000086ce   ff69       SPM          #0
000086cf   0006       LRETR        
0086d0:              _FLASH_setActiveWaitCount:
000086d0   7622       EALLOW       
000086d1   96ec       MOV          *+XAR4[5], AL
000086d2   761a       EDIS         
000086d3   ff69       SPM          #0
000086d4   0006       LRETR        
0086d5:              _FLASH_enablePipelineMode:
000086d5   7622       EALLOW       
000086d6   1ac4       OR           *+XAR4[0], #0x0001
000086d7   0001
000086d8   761a       EDIS         
000086d9   ff69       SPM          #0
000086da   0006       LRETR        
0086db:              _FLASH_disablePipelineMode:
000086db   7622       EALLOW       
000086dc   18c4       AND          *+XAR4[0], #0xfffe
000086dd   fffe
000086de   761a       EDIS         
000086df   ff69       SPM          #0
000086e0   0006       LRETR        
0086e1:              _HAL_setupFlash:
0086e1:              ramfuncs:
000086e1   b2bd       MOVL         *SP++, XAR1
000086e2   8ba4       MOVL         XAR1, XAR4
000086e3   8af1       MOVL         XAR4, *+XAR1[6]
000086e4   7640       LCR          0x0086d5
000086e5   86d5
000086e6   28a9       MOV          AL, #0x0200
000086e7   0200
000086e8   8af1       MOVL         XAR4, *+XAR1[6]
000086e9   7640       LCR          0x0086c9
000086ea   86c9
000086eb   9a02       MOVB         AL, #0x2
000086ec   8af1       MOVL         XAR4, *+XAR1[6]
000086ed   7640       LCR          0x0086c2
000086ee   86c2
000086ef   9a03       MOVB         AL, #0x3
000086f0   8af1       MOVL         XAR4, *+XAR1[6]
000086f1   7640       LCR          0x0086bb
000086f2   86bb
000086f3   28a9       MOV          AL, #0x01ff
000086f4   01ff
000086f5   8af1       MOVL         XAR4, *+XAR1[6]
000086f6   7640       LCR          0x0086af
000086f7   86af
000086f8   28a9       MOV          AL, #0x01ff
000086f9   01ff
000086fa   8af1       MOVL         XAR4, *+XAR1[6]
000086fb   7640       LCR          0x0086d0
000086fc   86d0
000086fd   8bbe       MOVL         XAR1, *--SP
000086fe   0006       LRETR        
0086ff:              _usDelay:
0086ff:              ramfuncs:
000086ff   1901       SUBB         ACC, #1
00008700   56c3       BF           -1, GEQ
00008701   ffff
00008702   0006       LRETR        

	.sect ".econst"
003f6000   0000	.word 0
003f6001   00c1	.word 0xc1
003f6002   0081	.word 0x81
003f6003   0040	.word 0x40
003f6004   0001	.word 0x1
003f6005   00c0	.word 0xc0
003f6006   0080	.word 0x80
003f6007   0041	.word 0x41
003f6008   0001	.word 0x1
003f6009   00c0	.word 0xc0
003f600a   0080	.word 0x80
003f600b   0041	.word 0x41
003f600c   0000	.word 0
003f600d   00c1	.word 0xc1
003f600e   0081	.word 0x81
003f600f   0040	.word 0x40
003f6010   0001	.word 0x1
003f6011   00c0	.word 0xc0
003f6012   0080	.word 0x80
003f6013   0041	.word 0x41
003f6014   0000	.word 0
003f6015   00c1	.word 0xc1
003f6016   0081	.word 0x81
003f6017   0040	.word 0x40
003f6018   0000	.word 0
003f6019   00c1	.word 0xc1
003f601a   0081	.word 0x81
003f601b   0040	.word 0x40
003f601c   0001	.word 0x1
003f601d   00c0	.word 0xc0
003f601e   0080	.word 0x80
003f601f   0041	.word 0x41
003f6020   0001	.word 0x1
003f6021   00c0	.word 0xc0
003f6022   0080	.word 0x80
003f6023   0041	.word 0x41
003f6024   0000	.word 0
003f6025   00c1	.word 0xc1
003f6026   0081	.word 0x81
003f6027   0040	.word 0x40
003f6028   0000	.word 0
003f6029   00c1	.word 0xc1
003f602a   0081	.word 0x81
003f602b   0040	.word 0x40
003f602c   0001	.word 0x1
003f602d   00c0	.word 0xc0
003f602e   0080	.word 0x80
003f602f   0041	.word 0x41
003f6030   0000	.word 0
003f6031   00c1	.word 0xc1
003f6032   0081	.word 0x81
003f6033   0040	.word 0x40
003f6034   0001	.word 0x1
003f6035   00c0	.word 0xc0
003f6036   0080	.word 0x80
003f6037   0041	.word 0x41
003f6038   0001	.word 0x1
003f6039   00c0	.word 0xc0
003f603a   0080	.word 0x80
003f603b   0041	.word 0x41
003f603c   0000	.word 0
003f603d   00c1	.word 0xc1
003f603e   0081	.word 0x81
003f603f   0040	.word 0x40
003f6040   0001	.word 0x1
003f6041   00c0	.word 0xc0
003f6042   0080	.word 0x80
003f6043   0041	.word 0x41
003f6044   0000	.word 0
003f6045   00c1	.word 0xc1
003f6046   0081	.word 0x81
003f6047   0040	.word 0x40
003f6048   0000	.word 0
003f6049   00c1	.word 0xc1
003f604a   0081	.word 0x81
003f604b   0040	.word 0x40
003f604c   0001	.word 0x1
003f604d   00c0	.word 0xc0
003f604e   0080	.word 0x80
003f604f   0041	.word 0x41
003f6050   0000	.word 0
003f6051   00c1	.word 0xc1
003f6052   0081	.word 0x81
003f6053   0040	.word 0x40
003f6054   0001	.word 0x1
003f6055   00c0	.word 0xc0
003f6056   0080	.word 0x80
003f6057   0041	.word 0x41
003f6058   0001	.word 0x1
003f6059   00c0	.word 0xc0
003f605a   0080	.word 0x80
003f605b   0041	.word 0x41
003f605c   0000	.word 0
003f605d   00c1	.word 0xc1
003f605e   0081	.word 0x81
003f605f   0040	.word 0x40
003f6060   0000	.word 0
003f6061   00c1	.word 0xc1
003f6062   0081	.word 0x81
003f6063   0040	.word 0x40
003f6064   0001	.word 0x1
003f6065   00c0	.word 0xc0
003f6066   0080	.word 0x80
003f6067   0041	.word 0x41
003f6068   0001	.word 0x1
003f6069   00c0	.word 0xc0
003f606a   0080	.word 0x80
003f606b   0041	.word 0x41
003f606c   0000	.word 0
003f606d   00c1	.word 0xc1
003f606e   0081	.word 0x81
003f606f   0040	.word 0x40
003f6070   0001	.word 0x1
003f6071   00c0	.word 0xc0
003f6072   0080	.word 0x80
003f6073   0041	.word 0x41
003f6074   0000	.word 0
003f6075   00c1	.word 0xc1
003f6076   0081	.word 0x81
003f6077   0040	.word 0x40
003f6078   0000	.word 0
003f6079   00c1	.word 0xc1
003f607a   0081	.word 0x81
003f607b   0040	.word 0x40
003f607c   0001	.word 0x1
003f607d   00c0	.word 0xc0
003f607e   0080	.word 0x80
003f607f   0041	.word 0x41
003f6080   0001	.word 0x1
003f6081   00c0	.word 0xc0
003f6082   0080	.word 0x80
003f6083   0041	.word 0x41
003f6084   0000	.word 0
003f6085   00c1	.word 0xc1
003f6086   0081	.word 0x81
003f6087   0040	.word 0x40
003f6088   0000	.word 0
003f6089   00c1	.word 0xc1
003f608a   0081	.word 0x81
003f608b   0040	.word 0x40
003f608c   0001	.word 0x1
003f608d   00c0	.word 0xc0
003f608e   0080	.word 0x80
003f608f   0041	.word 0x41
003f6090   0000	.word 0
003f6091   00c1	.word 0xc1
003f6092   0081	.word 0x81
003f6093   0040	.word 0x40
003f6094   0001	.word 0x1
003f6095   00c0	.word 0xc0
003f6096   0080	.word 0x80
003f6097   0041	.word 0x41
003f6098   0001	.word 0x1
003f6099   00c0	.word 0xc0
003f609a   0080	.word 0x80
003f609b   0041	.word 0x41
003f609c   0000	.word 0
003f609d   00c1	.word 0xc1
003f609e   0081	.word 0x81
003f609f   0040	.word 0x40
003f60a0   0000	.word 0
003f60a1   00c1	.word 0xc1
003f60a2   0081	.word 0x81
003f60a3   0040	.word 0x40
003f60a4   0001	.word 0x1
003f60a5   00c0	.word 0xc0
003f60a6   0080	.word 0x80
003f60a7   0041	.word 0x41
003f60a8   0001	.word 0x1
003f60a9   00c0	.word 0xc0
003f60aa   0080	.word 0x80
003f60ab   0041	.word 0x41
003f60ac   0000	.word 0
003f60ad   00c1	.word 0xc1
003f60ae   0081	.word 0x81
003f60af   0040	.word 0x40
003f60b0   0001	.word 0x1
003f60b1   00c0	.word 0xc0
003f60b2   0080	.word 0x80
003f60b3   0041	.word 0x41
003f60b4   0000	.word 0
003f60b5   00c1	.word 0xc1
003f60b6   0081	.word 0x81
003f60b7   0040	.word 0x40
003f60b8   0000	.word 0
003f60b9   00c1	.word 0xc1
003f60ba   0081	.word 0x81
003f60bb   0040	.word 0x40
003f60bc   0001	.word 0x1
003f60bd   00c0	.word 0xc0
003f60be   0080	.word 0x80
003f60bf   0041	.word 0x41
003f60c0   0000	.word 0
003f60c1   00c1	.word 0xc1
003f60c2   0081	.word 0x81
003f60c3   0040	.word 0x40
003f60c4   0001	.word 0x1
003f60c5   00c0	.word 0xc0
003f60c6   0080	.word 0x80
003f60c7   0041	.word 0x41
003f60c8   0001	.word 0x1
003f60c9   00c0	.word 0xc0
003f60ca   0080	.word 0x80
003f60cb   0041	.word 0x41
003f60cc   0000	.word 0
003f60cd   00c1	.word 0xc1
003f60ce   0081	.word 0x81
003f60cf   0040	.word 0x40
003f60d0   0001	.word 0x1
003f60d1   00c0	.word 0xc0
003f60d2   0080	.word 0x80
003f60d3   0041	.word 0x41
003f60d4   0000	.word 0
003f60d5   00c1	.word 0xc1
003f60d6   0081	.word 0x81
003f60d7   0040	.word 0x40
003f60d8   0000	.word 0
003f60d9   00c1	.word 0xc1
003f60da   0081	.word 0x81
003f60db   0040	.word 0x40
003f60dc   0001	.word 0x1
003f60dd   00c0	.word 0xc0
003f60de   0080	.word 0x80
003f60df   0041	.word 0x41
003f60e0   0001	.word 0x1
003f60e1   00c0	.word 0xc0
003f60e2   0080	.word 0x80
003f60e3   0041	.word 0x41
003f60e4   0000	.word 0
003f60e5   00c1	.word 0xc1
003f60e6   0081	.word 0x81
003f60e7   0040	.word 0x40
003f60e8   0000	.word 0
003f60e9   00c1	.word 0xc1
003f60ea   0081	.word 0x81
003f60eb   0040	.word 0x40
003f60ec   0001	.word 0x1
003f60ed   00c0	.word 0xc0
003f60ee   0080	.word 0x80
003f60ef   0041	.word 0x41
003f60f0   0000	.word 0
003f60f1   00c1	.word 0xc1
003f60f2   0081	.word 0x81
003f60f3   0040	.word 0x40
003f60f4   0001	.word 0x1
003f60f5   00c0	.word 0xc0
003f60f6   0080	.word 0x80
003f60f7   0041	.word 0x41
003f60f8   0001	.word 0x1
003f60f9   00c0	.word 0xc0
003f60fa   0080	.word 0x80
003f60fb   0041	.word 0x41
003f60fc   0000	.word 0
003f60fd   00c1	.word 0xc1
003f60fe   0081	.word 0x81
003f60ff   0040	.word 0x40
003f6100   0000	.word 0
003f6101   00c0	.word 0xc0
003f6102   00c1	.word 0xc1
003f6103   0001	.word 0x1
003f6104   00c3	.word 0xc3
003f6105   0003	.word 0x3
003f6106   0002	.word 0x2
003f6107   00c2	.word 0xc2
003f6108   00c6	.word 0xc6
003f6109   0006	.word 0x6
003f610a   0007	.word 0x7
003f610b   00c7	.word 0xc7
003f610c   0005	.word 0x5
003f610d   00c5	.word 0xc5
003f610e   00c4	.word 0xc4
003f610f   0004	.word 0x4
003f6110   00cc	.word 0xcc
003f6111   000c	.word 0xc
003f6112   000d	.word 0xd
003f6113   00cd	.word 0xcd
003f6114   000f	.word 0xf
003f6115   00cf	.word 0xcf
003f6116   00ce	.word 0xce
003f6117   000e	.word 0xe
003f6118   000a	.word 0xa
003f6119   00ca	.word 0xca
003f611a   00cb	.word 0xcb
003f611b   000b	.word 0xb
003f611c   00c9	.word 0xc9
003f611d   0009	.word 0x9
003f611e   0008	.word 0x8
003f611f   00c8	.word 0xc8
003f6120   00d8	.word 0xd8
003f6121   0018	.word 0x18
003f6122   0019	.word 0x19
003f6123   00d9	.word 0xd9
003f6124   001b	.word 0x1b
003f6125   00db	.word 0xdb
003f6126   00da	.word 0xda
003f6127   001a	.word 0x1a
003f6128   001e	.word 0x1e
003f6129   00de	.word 0xde
003f612a   00df	.word 0xdf
003f612b   001f	.word 0x1f
003f612c   00dd	.word 0xdd
003f612d   001d	.word 0x1d
003f612e   001c	.word 0x1c
003f612f   00dc	.word 0xdc
003f6130   0014	.word 0x14
003f6131   00d4	.word 0xd4
003f6132   00d5	.word 0xd5
003f6133   0015	.word 0x15
003f6134   00d7	.word 0xd7
003f6135   0017	.word 0x17
003f6136   0016	.word 0x16
003f6137   00d6	.word 0xd6
003f6138   00d2	.word 0xd2
003f6139   0012	.word 0x12
003f613a   0013	.word 0x13
003f613b   00d3	.word 0xd3
003f613c   0011	.word 0x11
003f613d   00d1	.word 0xd1
003f613e   00d0	.word 0xd0
003f613f   0010	.word 0x10
003f6140   00f0	.word 0xf0
003f6141   0030	.word 0x30
003f6142   0031	.word 0x31
003f6143   00f1	.word 0xf1
003f6144   0033	.word 0x33
003f6145   00f3	.word 0xf3
003f6146   00f2	.word 0xf2
003f6147   0032	.word 0x32
003f6148   0036	.word 0x36
003f6149   00f6	.word 0xf6
003f614a   00f7	.word 0xf7
003f614b   0037	.word 0x37
003f614c   00f5	.word 0xf5
003f614d   0035	.word 0x35
003f614e   0034	.word 0x34
003f614f   00f4	.word 0xf4
003f6150   003c	.word 0x3c
003f6151   00fc	.word 0xfc
003f6152   00fd	.word 0xfd
003f6153   003d	.word 0x3d
003f6154   00ff	.word 0xff
003f6155   003f	.word 0x3f
003f6156   003e	.word 0x3e
003f6157   00fe	.word 0xfe
003f6158   00fa	.word 0xfa
003f6159   003a	.word 0x3a
003f615a   003b	.word 0x3b
003f615b   00fb	.word 0xfb
003f615c   0039	.word 0x39
003f615d   00f9	.word 0xf9
003f615e   00f8	.word 0xf8
003f615f   0038	.word 0x38
003f6160   0028	.word 0x28
003f6161   00e8	.word 0xe8
003f6162   00e9	.word 0xe9
003f6163   0029	.word 0x29
003f6164   00eb	.word 0xeb
003f6165   002b	.word 0x2b
003f6166   002a	.word 0x2a
003f6167   00ea	.word 0xea
003f6168   00ee	.word 0xee
003f6169   002e	.word 0x2e
003f616a   002f	.word 0x2f
003f616b   00ef	.word 0xef
003f616c   002d	.word 0x2d
003f616d   00ed	.word 0xed
003f616e   00ec	.word 0xec
003f616f   002c	.word 0x2c
003f6170   00e4	.word 0xe4
003f6171   0024	.word 0x24
003f6172   0025	.word 0x25
003f6173   00e5	.word 0xe5
003f6174   0027	.word 0x27
003f6175   00e7	.word 0xe7
003f6176   00e6	.word 0xe6
003f6177   0026	.word 0x26
003f6178   0022	.word 0x22
003f6179   00e2	.word 0xe2
003f617a   00e3	.word 0xe3
003f617b   0023	.word 0x23
003f617c   00e1	.word 0xe1
003f617d   0021	.word 0x21
003f617e   0020	.word 0x20
003f617f   00e0	.word 0xe0
003f6180   00a0	.word 0xa0
003f6181   0060	.word 0x60
003f6182   0061	.word 0x61
003f6183   00a1	.word 0xa1
003f6184   0063	.word 0x63
003f6185   00a3	.word 0xa3
003f6186   00a2	.word 0xa2
003f6187   0062	.word 0x62
003f6188   0066	.word 0x66
003f6189   00a6	.word 0xa6
003f618a   00a7	.word 0xa7
003f618b   0067	.word 0x67
003f618c   00a5	.word 0xa5
003f618d   0065	.word 0x65
003f618e   0064	.word 0x64
003f618f   00a4	.word 0xa4
003f6190   006c	.word 0x6c
003f6191   00ac	.word 0xac
003f6192   00ad	.word 0xad
003f6193   006d	.word 0x6d
003f6194   00af	.word 0xaf
003f6195   006f	.word 0x6f
003f6196   006e	.word 0x6e
003f6197   00ae	.word 0xae
003f6198   00aa	.word 0xaa
003f6199   006a	.word 0x6a
003f619a   006b	.word 0x6b
003f619b   00ab	.word 0xab
003f619c   0069	.word 0x69
003f619d   00a9	.word 0xa9
003f619e   00a8	.word 0xa8
003f619f   0068	.word 0x68
003f61a0   0078	.word 0x78
003f61a1   00b8	.word 0xb8
003f61a2   00b9	.word 0xb9
003f61a3   0079	.word 0x79
003f61a4   00bb	.word 0xbb
003f61a5   007b	.word 0x7b
003f61a6   007a	.word 0x7a
003f61a7   00ba	.word 0xba
003f61a8   00be	.word 0xbe
003f61a9   007e	.word 0x7e
003f61aa   007f	.word 0x7f
003f61ab   00bf	.word 0xbf
003f61ac   007d	.word 0x7d
003f61ad   00bd	.word 0xbd
003f61ae   00bc	.word 0xbc
003f61af   007c	.word 0x7c
003f61b0   00b4	.word 0xb4
003f61b1   0074	.word 0x74
003f61b2   0075	.word 0x75
003f61b3   00b5	.word 0xb5
003f61b4   0077	.word 0x77
003f61b5   00b7	.word 0xb7
003f61b6   00b6	.word 0xb6
003f61b7   0076	.word 0x76
003f61b8   0072	.word 0x72
003f61b9   00b2	.word 0xb2
003f61ba   00b3	.word 0xb3
003f61bb   0073	.word 0x73
003f61bc   00b1	.word 0xb1
003f61bd   0071	.word 0x71
003f61be   0070	.word 0x70
003f61bf   00b0	.word 0xb0
003f61c0   0050	.word 0x50
003f61c1   0090	.word 0x90
003f61c2   0091	.word 0x91
003f61c3   0051	.word 0x51
003f61c4   0093	.word 0x93
003f61c5   0053	.word 0x53
003f61c6   0052	.word 0x52
003f61c7   0092	.word 0x92
003f61c8   0096	.word 0x96
003f61c9   0056	.word 0x56
003f61ca   0057	.word 0x57
003f61cb   0097	.word 0x97
003f61cc   0055	.word 0x55
003f61cd   0095	.word 0x95
003f61ce   0094	.word 0x94
003f61cf   0054	.word 0x54
003f61d0   009c	.word 0x9c
003f61d1   005c	.word 0x5c
003f61d2   005d	.word 0x5d
003f61d3   009d	.word 0x9d
003f61d4   005f	.word 0x5f
003f61d5   009f	.word 0x9f
003f61d6   009e	.word 0x9e
003f61d7   005e	.word 0x5e
003f61d8   005a	.word 0x5a
003f61d9   009a	.word 0x9a
003f61da   009b	.word 0x9b
003f61db   005b	.word 0x5b
003f61dc   0099	.word 0x99
003f61dd   0059	.word 0x59
003f61de   0058	.word 0x58
003f61df   0098	.word 0x98
003f61e0   0088	.word 0x88
003f61e1   0048	.word 0x48
003f61e2   0049	.word 0x49
003f61e3   0089	.word 0x89
003f61e4   004b	.word 0x4b
003f61e5   008b	.word 0x8b
003f61e6   008a	.word 0x8a
003f61e7   004a	.word 0x4a
003f61e8   004e	.word 0x4e
003f61e9   008e	.word 0x8e
003f61ea   008f	.word 0x8f
003f61eb   004f	.word 0x4f
003f61ec   008d	.word 0x8d
003f61ed   004d	.word 0x4d
003f61ee   004c	.word 0x4c
003f61ef   008c	.word 0x8c
003f61f0   0044	.word 0x44
003f61f1   0084	.word 0x84
003f61f2   0085	.word 0x85
003f61f3   0045	.word 0x45
003f61f4   0087	.word 0x87
003f61f5   0047	.word 0x47
003f61f6   0046	.word 0x46
003f61f7   0086	.word 0x86
003f61f8   0082	.word 0x82
003f61f9   0042	.word 0x42
003f61fa   0043	.word 0x43
003f61fb   0083	.word 0x83
003f61fc   0041	.word 0x41
003f61fd   0081	.word 0x81
003f61fe   0080	.word 0x80
003f61ff   0040	.word 0x40
003f6200   0000	.word 0
003f6201   0002	.word 0x2
003f6202   d850	.word 0xd850
003f6203   4323	.word 0x4323
003f6204   b483	.word 0xb483
003f6205   42e7	.word 0x42e7
003f6206   6602	.word 0x6602
003f6207   3e9d	.word 0x3e9d
003f6208   6602	.word 0x6602
003f6209   3e9d	.word 0x3e9d
003f620a   5048	.word 0x5048
003f620b   4048	.word 0x4048
003f620c   ccc8	.word 0xccc8
003f620d   3e4c	.word 0x3e4c
003f620e   cccd	.word 0xcccd
003f620f   3d4c	.word 0x3d4c
003f6210   0000	.word 0
003f6211   0000	.word 0
003f6212   cccd	.word 0xcccd
003f6213   3e4c	.word 0x3e4c
003f6214   0000	.word 0
003f6215   40a0	.word 0x40a0
003f6216   0000	.word 0
003f6217   0002	.word 0x2
003f6218   72af	.word 0x72af
003f6219   4180	.word 0x4180
003f621a   c528	.word 0xc528
003f621b   4102	.word 0x4102
003f621c   01ed	.word 0x1ed
003f621d   3cd3	.word 0x3cd3
003f621e   01ed	.word 0x1ed
003f621f   3cd3	.word 0x3cd3
003f6220   5048	.word 0x5048
003f6221   4048	.word 0x4048
003f6222   f3e4	.word 0xf3e4
003f6223   3f81	.word 0x3f81
003f6224   999a	.word 0x999a
003f6225   3e99	.word 0x3e99
003f6226   0000	.word 0
003f6227   0000	.word 0
003f6228   999a	.word 0x999a
003f6229   3f99	.word 0x3f99
003f622a   0000	.word 0
003f622b   40a0	.word 0x40a0
003f622c   0000	.word 0
003f622d   0001	.word 0x1
003f622e   8242	.word 0x8242
003f622f   3fba	.word 0x3fba
003f6230   9864	.word 0x9864
003f6231   4004	.word 0x4004
003f6232   77d0	.word 0x77d0
003f6233   3cc9	.word 0x3cc9
003f6234   77d0	.word 0x77d0
003f6235   3cc9	.word 0x3cc9
003f6236   5048	.word 0x5048
003f6237   4048	.word 0x4048
003f6238   1f2d	.word 0x1f2d
003f6239   402b	.word 0x402b
003f623a   0000	.word 0
003f623b   3f80	.word 0x3f80
003f623c   0000	.word 0
003f623d   0000	.word 0
003f623e   0000	.word 0
003f623f   40a0	.word 0x40a0
003f6240   0000	.word 0
003f6241   40a0	.word 0x40a0
003f6242   0000	.word 0
003f6243   0002	.word 0x2
003f6244   d850	.word 0xd850
003f6245   4323	.word 0x4323
003f6246   b483	.word 0xb483
003f6247   42e7	.word 0x42e7
003f6248   6602	.word 0x6602
003f6249   3e9d	.word 0x3e9d
003f624a   6602	.word 0x6602
003f624b   3e9d	.word 0x3e9d
003f624c   5048	.word 0x5048
003f624d   4048	.word 0x4048
003f624e   ccc8	.word 0xccc8
003f624f   3e4c	.word 0x3e4c
003f6250   cccd	.word 0xcccd
003f6251   3d4c	.word 0x3d4c
003f6252   0000	.word 0
003f6253   0000	.word 0
003f6254   cccd	.word 0xcccd
003f6255   3e4c	.word 0x3e4c
003f6256   0000	.word 0
003f6257   40a0	.word 0x40a0
003f6258   0000	.word 0
003f6259   0002	.word 0x2
003f625a   b0a4	.word 0xb0a4
003f625b   437f	.word 0x437f
003f625c   0b96	.word 0xb96
003f625d   4399	.word 0x4399
003f625e   93b5	.word 0x93b5
003f625f   3ee3	.word 0x3ee3
003f6260   93b5	.word 0x93b5
003f6261   3ee3	.word 0x3ee3
003f6262   5048	.word 0x5048
003f6263   4048	.word 0x4048
003f6264   cdc3	.word 0xcdc3
003f6265   3dfe	.word 0x3dfe
003f6266   cccd	.word 0xcccd
003f6267   3d4c	.word 0x3d4c
003f6268   0000	.word 0
003f6269   0000	.word 0
003f626a   cccd	.word 0xcccd
003f626b   3e4c	.word 0x3e4c
003f626c   0000	.word 0
003f626d   40a0	.word 0x40a0
003f626e   0000	.word 0
003f626f   0002	.word 0x2
003f6270   ac8a	.word 0xac8a
003f6271   4208	.word 0x4208
003f6272   ef27	.word 0xef27
003f6273   4189	.word 0x4189
003f6274   85fe	.word 0x85fe
003f6275   3d49	.word 0x3d49
003f6276   85fe	.word 0x85fe
003f6277   3d49	.word 0x3d49
003f6278   5048	.word 0x5048
003f6279   4048	.word 0x4048
003f627a   ed24	.word 0xed24
003f627b   3f45	.word 0x3f45
003f627c   cccd	.word 0xcccd
003f627d   3e4c	.word 0x3e4c
003f627e   0000	.word 0
003f627f   0000	.word 0
003f6280   3333	.word 0x3333
003f6281   3f93	.word 0x3f93
003f6282   0000	.word 0
003f6283   40a0	.word 0x40a0
003f6284   0000	.word 0
003f6285   0002	.word 0x2
003f6286   ac8a	.word 0xac8a
003f6287   4208	.word 0x4208
003f6288   ef27	.word 0xef27
003f6289   4189	.word 0x4189
003f628a   85fe	.word 0x85fe
003f628b   3d49	.word 0x3d49
003f628c   85fe	.word 0x85fe
003f628d   3d49	.word 0x3d49
003f628e   5048	.word 0x5048
003f628f   4048	.word 0x4048
003f6290   ed24	.word 0xed24
003f6291   3f45	.word 0x3f45
003f6292   cccd	.word 0xcccd
003f6293   3e4c	.word 0x3e4c
003f6294   0000	.word 0
003f6295   0000	.word 0
003f6296   3333	.word 0x3333
003f6297   3f93	.word 0x3f93
003f6298   0000	.word 0
003f6299   40a0	.word 0x40a0
003f629a   0000	.word 0
003f629b   0002	.word 0x2
003f629c   ac8a	.word 0xac8a
003f629d   4208	.word 0x4208
003f629e   ef27	.word 0xef27
003f629f   4189	.word 0x4189
003f62a0   85fe	.word 0x85fe
003f62a1   3d49	.word 0x3d49
003f62a2   85fe	.word 0x85fe
003f62a3   3d49	.word 0x3d49
003f62a4   5048	.word 0x5048
003f62a5   4048	.word 0x4048
003f62a6   ed24	.word 0xed24
003f62a7   3f45	.word 0x3f45
003f62a8   cccd	.word 0xcccd
003f62a9   3e4c	.word 0x3e4c
003f62aa   0000	.word 0
003f62ab   0000	.word 0
003f62ac   3333	.word 0x3333
003f62ad   3f93	.word 0x3f93
003f62ae   0000	.word 0
003f62af   40a0	.word 0x40a0
003f62b0   0000	.word 0
003f62b1   0000	.word 0
003f62b2   0000	.word 0
003f62b3   0011	.word 0x11
003f62b4   2fdb	.word 0x2fdb
003f62b5   003f	.word 0x3f
003f62b6   0000	.word 0
003f62b7   0000	.word 0
003f62b8   0001	.word 0x1
003f62b9   000f	.word 0xf
003f62ba   2fe4	.word 0x2fe4
003f62bb   003f	.word 0x3f
003f62bc   8f5c	.word 0x8f5c
003f62bd   bfd2	.word 0xbfd2
003f62be   0000	.word 0
003f62bf   000a	.word 0xa
003f62c0   3359	.word 0x3359
003f62c1   003f	.word 0x3f
003f62c2   0000	.word 0
003f62c3   bfc0	.word 0xbfc0
003f62c4   012c	.word 0x12c
003f62c5   0012	.word 0x12
003f62c6   2fdb	.word 0x2fdb
003f62c7   003f	.word 0x3f
003f62c8   cccd	.word 0xcccd
003f62c9   3e4c	.word 0x3e4c
003f62ca   0014	.word 0x14
003f62cb   000f	.word 0xf
003f62cc   2fe4	.word 0x2fe4
003f62cd   003f	.word 0x3f
003f62ce   0000	.word 0
003f62cf   bf00	.word 0xbf00
003f62d0   012c	.word 0x12c
003f62d1   0012	.word 0x12
003f62d2   2fdb	.word 0x2fdb
003f62d3   003f	.word 0x3f
003f62d4   0000	.word 0
003f62d5   bfc0	.word 0xbfc0
003f62d6   012c	.word 0x12c
003f62d7   0012	.word 0x12
003f62d8   2fdb	.word 0x2fdb
003f62d9   003f	.word 0x3f
003f62da   0000	.word 0
003f62db   bfc0	.word 0xbfc0
003f62dc   012c	.word 0x12c
003f62dd   0012	.word 0x12
003f62de   2fdb	.word 0x2fdb
003f62df   003f	.word 0x3f
003f62e0   8f5c	.word 0x8f5c
003f62e1   bfd2	.word 0xbfd2
003f62e2   0000	.word 0
003f62e3   0009	.word 0x9
003f62e4   3319	.word 0x3319
003f62e5   003f	.word 0x3f
003f62e6   0000	.word 0
003f62e7   bf00	.word 0xbf00
003f62e8   0014	.word 0x14
003f62e9   000f	.word 0xf
003f62ea   2fe4	.word 0x2fe4
003f62eb   003f	.word 0x3f
003f62ec   8f5c	.word 0x8f5c
003f62ed   bfd2	.word 0xbfd2
003f62ee   0032	.word 0x32
003f62ef   000f	.word 0xf
003f62f0   2fe4	.word 0x2fe4
003f62f1   003f	.word 0x3f
003f62f2   0000	.word 0
003f62f3   3f00	.word 0x3f00
003f62f4   001e	.word 0x1e
003f62f5   000f	.word 0xf
003f62f6   2fe4	.word 0x2fe4
003f62f7   003f	.word 0x3f
003f62f8   0000	.word 0
003f62f9   3f00	.word 0x3f00
003f62fa   0096	.word 0x96
003f62fb   000f	.word 0xf
003f62fc   2fe4	.word 0x2fe4
003f62fd   003f	.word 0x3f
003f62fe   8f5c	.word 0x8f5c
003f62ff   3fd2	.word 0x3fd2
003f6300   001e	.word 0x1e
003f6301   000f	.word 0xf
003f6302   2fe4	.word 0x2fe4
003f6303   003f	.word 0x3f
003f6304   0000	.word 0
003f6305   3f00	.word 0x3f00
003f6306   0000	.word 0
003f6307   000b	.word 0xb
003f6308   3359	.word 0x3359
003f6309   003f	.word 0x3f
003f630a   0000	.word 0
003f630b   3f00	.word 0x3f00
003f630c   000a	.word 0xa
003f630d   000f	.word 0xf
003f630e   2fe4	.word 0x2fe4
003f630f   003f	.word 0x3f
003f6310   0000	.word 0
003f6311   3f00	.word 0x3f00
003f6312   0064	.word 0x64
003f6313   000f	.word 0xf
003f6314   2fe4	.word 0x2fe4
003f6315   003f	.word 0x3f
003f6316   0000	.word 0
003f6317   0000	.word 0
003f6318   0014	.word 0x14
003f6319   000f	.word 0xf
003f631a   2fe4	.word 0x2fe4
003f631b   003f	.word 0x3f
003f631c   0000	.word 0
003f631d   0000	.word 0
003f631e   0000	.word 0
003f631f   0000	.word 0
003f6320   0000	.word 0
003f6321   0000	.word 0
003f6322   0000	.word 0
003f6323   0000	.word 0
003f6324   0000	.word 0
003f6325   0000	.word 0
003f6326   0000	.word 0
003f6327   0000	.word 0
003f6328   0000	.word 0
003f6329   0000	.word 0
003f632a   0000	.word 0
003f632b   0000	.word 0
003f632c   0000	.word 0
003f632d   0000	.word 0
003f632e   0000	.word 0
003f632f   0000	.word 0
003f6330   0000	.word 0
003f6331   0000	.word 0
003f6332   0000	.word 0
003f6333   0000	.word 0
003f6334   0000	.word 0
003f6335   0000	.word 0
003f6336   0000	.word 0
003f6337   0000	.word 0
003f6338   0000	.word 0
003f6339   0000	.word 0
003f633a   0000	.word 0
003f633b   0000	.word 0
003f633c   0000	.word 0
003f633d   0000	.word 0
003f633e   0000	.word 0
003f633f   0000	.word 0
003f6340   0000	.word 0
003f6341   0000	.word 0
003f6342   0000	.word 0
003f6343   0000	.word 0
003f6344   0000	.word 0
003f6345   0000	.word 0
003f6346   0000	.word 0
003f6347   0000	.word 0
003f6348   0000	.word 0
003f6349   0000	.word 0
003f634a   0000	.word 0
003f634b   0000	.word 0
003f634c   0000	.word 0
003f634d   0000	.word 0
003f634e   0000	.word 0
003f634f   0000	.word 0
003f6350   0000	.word 0
003f6351   0000	.word 0
003f6352   0000	.word 0
003f6353   0000	.word 0
003f6354   0000	.word 0
003f6355   0000	.word 0
003f6356   0000	.word 0
003f6357   0000	.word 0
003f6358   0000	.word 0
003f6359   0000	.word 0
003f635a   0000	.word 0
003f635b   0000	.word 0
003f635c   0000	.word 0
003f635d   0000	.word 0
003f635e   0000	.word 0
003f635f   0000	.word 0
003f6360   0000	.word 0
003f6361   0000	.word 0
003f6362   0000	.word 0
003f6363   0000	.word 0
003f6364   0000	.word 0
003f6365   0000	.word 0
003f6366   0000	.word 0
003f6367   0000	.word 0
003f6368   0000	.word 0
003f6369   0000	.word 0
003f636a   0000	.word 0
003f636b   0000	.word 0
003f636c   0000	.word 0
003f636d   0000	.word 0
003f636e   0000	.word 0
003f636f   41d0	.word 0x41d0
003f6370   0000	.word 0
003f6371   0000	.word 0
003f6372   0000	.word 0
003f6373   4170	.word 0x4170
003f6374   0000	.word 0
003f6375   0000	.word 0
003f6376   0000	.word 0
003f6377   41c0	.word 0x41c0
003f6378   0000	.word 0
003f6379   4120	.word 0x4120
003f637a   0000	.word 0
003f637b   43e1	.word 0x43e1
003f637c   1eb8	.word 0x1eb8
003f637d   419f	.word 0x419f
003f637e   cccd	.word 0xcccd
003f637f   43cc	.word 0x43cc
003f6380   0000	.word 0
003f6381   4120	.word 0x4120
003f6382   0000	.word 0
003f6383   43e1	.word 0x43e1
003f6384   1eb8	.word 0x1eb8
003f6385   419f	.word 0x419f
003f6386   cccd	.word 0xcccd
003f6387   43cc	.word 0x43cc
003f6388   0000	.word 0
003f6389   41c8	.word 0x41c8
003f638a   0000	.word 0
003f638b   43e1	.word 0x43e1
003f638c   e666	.word 0xe666
003f638d   4246	.word 0x4246
003f638e   cccd	.word 0xcccd
003f638f   43cc	.word 0x43cc
003f6390   0000	.word 0
003f6391   4120	.word 0x4120
003f6392   0000	.word 0
003f6393   43e1	.word 0x43e1
003f6394   1eb8	.word 0x1eb8
003f6395   419f	.word 0x419f
003f6396   cccd	.word 0xcccd
003f6397   43cc	.word 0x43cc
003f6398   0000	.word 0
003f6399   4000	.word 0x4000
003f639a   0000	.word 0
003f639b   43e1	.word 0x43e1
003f639c   70a4	.word 0x70a4
003f639d   407d	.word 0x407d
003f639e   cccd	.word 0xcccd
003f639f   43cc	.word 0x43cc
003f63a0   0000	.word 0
003f63a1   4120	.word 0x4120
003f63a2   0000	.word 0
003f63a3   43e1	.word 0x43e1
003f63a4   1eb8	.word 0x1eb8
003f63a5   419f	.word 0x419f
003f63a6   cccd	.word 0xcccd
003f63a7   43cc	.word 0x43cc
003f63a8   0000	.word 0
003f63a9   4120	.word 0x4120
003f63aa   0000	.word 0
003f63ab   43e1	.word 0x43e1
003f63ac   1eb8	.word 0x1eb8
003f63ad   419f	.word 0x419f
003f63ae   cccd	.word 0xcccd
003f63af   43cc	.word 0x43cc
003f63b0   0000	.word 0
003f63b1   4120	.word 0x4120
003f63b2   0000	.word 0
003f63b3   43e1	.word 0x43e1
003f63b4   1eb8	.word 0x1eb8
003f63b5   419f	.word 0x419f
003f63b6   cccd	.word 0xcccd
003f63b7   43cc	.word 0x43cc
003f63b8   0000	.word 0
003f63b9   0000	.word 0
003f63ba   0000	.word 0
003f63bb   0000	.word 0
003f63bc   0000	.word 0
003f63bd   0000	.word 0
003f63be   0000	.word 0
003f63bf   0000	.word 0
003f63c0   0000	.word 0
003f63c1   0000	.word 0
003f63c2   0000	.word 0
003f63c3   0000	.word 0
003f63c4   0000	.word 0
003f63c5   0000	.word 0
003f63c6   0000	.word 0
003f63c7   0000	.word 0
003f63c8   0000	.word 0
003f63c9   0000	.word 0
003f63ca   0000	.word 0
003f63cb   0000	.word 0
003f63cc   0000	.word 0
003f63cd   0000	.word 0
003f63ce   0000	.word 0
003f63cf   0000	.word 0
003f63d0   0000	.word 0
003f63d1   0000	.word 0
003f63d2   0000	.word 0
003f63d3   4170	.word 0x4170
003f63d4   5417	.word 0x5417
003f63d5   3f7c	.word 0x3f7c
003f63d6   0cd9	.word 0xcd9
003f63d7   3f7c	.word 0x3f7c
003f63d8   7a20	.word 0x7a20
003f63d9   3f7b	.word 0x3f7b
003f63da   4e1a	.word 0x4e1a
003f63db   3eb2	.word 0x3eb2
003f63dc   663a	.word 0x663a
003f63dd   3eb2	.word 0x3eb2
003f63de   6ea2	.word 0x6ea2
003f63df   3eb2	.word 0x3eb2
003f63e0   0000	.word 0
003f63e1   0000	.word 0
003f63e2   0000	.word 0
003f63e3   41d0	.word 0x41d0
003f63e4   0000	.word 0
003f63e5   0000	.word 0
003f63e6   0000	.word 0
003f63e7   4170	.word 0x4170
003f63e8   0000	.word 0
003f63e9   0000	.word 0
003f63ea   0000	.word 0
003f63eb   4170	.word 0x4170
003f63ec   0000	.word 0
003f63ed   0000	.word 0
003f63ee   0000	.word 0
003f63ef   4170	.word 0x4170
003f63f0   0000	.word 0
003f63f1   0000	.word 0
003f63f2   0000	.word 0
003f63f3   4170	.word 0x4170
003f63f4   0000	.word 0
