#! /bin/sed -Ef

s	\\<\)	\x80	g
s	\\x-	\x81	g
s	\\.V	\x82	g
s	\\v/	\x83	g
s	\\\.S	\x84	g
s	\\GS	\x85	g
s	\\\|>	\x86	g
s	\\pi	\x87	g
s	\\.d	\x88	g
s	\\<=	\x89	g
s	\\>=	\x8a	g
s	\\=/	\x8b	g
s	\\Ga	\x8c	g
s	\\->	\x8d	g

s	\\<-	\x8e	g
s	\\\|v	\x8f	g
s	\\\|\^	\x90	g
s	\\Gg	\x91	g
s	\\Gd	\x92	g
s	\\Ge	\x93	g
s	\\Gn	\x94	g
s	\\Gh	\x95	g
s	\\Gl	\x96	g
s	\\Gr	\x97	g
s	\\Gs	\x98	g
s	\\Gt	\x99	g
s	\\Gw	\x9a	g
s	\\GD	\x9b	g

s	\\PI	\x9c	g
s	\\GW	\x9d	g
s	\\\[\]	\x9e	g
s	\\oo	\x9f	g
s	\\<<	\xab	g
s	\\\^o	\xb0	g
s	\\Gm	\xb5	g
s	\\>>	\xbb	g
s	\\.x	\xd7	g
s	\\0/	\xd8	g
s	\\Gb	\xdf	g
s	\\:-	\xf7	g

