50.

yc1	db
x9e	db
	lda x9e
	sta yc1
konec77	hlt

51.

konst7e db 41
	lda konst7e
	mov b, a
konecb1 hlt

52.

vzor668 db
	lda vzor668
	mov l, e, d, c, b, a
konec09	hlt

53.

udaj31	db
	lda udaj31
	mov h, a
	inr h
konec53 hlt

54.

udaj3c	db
mda	db 1
	lda mda
	mov b, a
	lda udaj3c
	add b
	sta udaj3c
konec22	hlt

55.

sumae1	db
scitfb	db
scit88	db
	lda scitfb
	mov b, a
	lda scit88
	mov c, a
	lda sumae1
	add b
	add c
	sta sumae1
konec24	hlt

56.

cislo7b	db
	lda cislo7b
	cma a
	mov c, a
	
konec70	hlt

57.

cisloe1	db
	lda cisloe1
	cma cisloe1
	inr a
	sta cisloe1
konec7b	hlt

58.

cislo45	db
	mvi b, 0
	lda cislo45
	add b
konecd4	hlt

59.

cislodd	db	0c5h
cislo	db	e0h
	lda	cislo
	mov	b, a
	lda	cislodd
	add	b
konec4a HLT

60.

cislode	db	0e6h
cislo	db	ch
	lda	cislo
	mov	b, a
	lda	cislode
	add	b
konec58 HLT

61.

abc	db	1	
cba	db	11 	
	lda	abc
	mov	b, a
	lda	cba
	add	b
konecab	hlt

62.

xbf6	db
y0c6	db
	lda xbf6
	mov b, a
	lda y0c6
	cmp b
	jnz konec34
	inr e
konec34	hlt

63.

x436	db
y375	db
	lda	x436
	mov	b, a
	lda	y375
	cmp	b
	jz	koneca4
	inr	e
koneca4	HLT

64.

xbaf	db
y78e	db
	lda	xbaf
	mov	b, a
	lda	y78e
	add	b
	jnc 	konecc7
ovrflw5 HLT
konecc7	HLT

65.

y070	db
x351	db
	lda	y070
	mov	b, a
	lda	x351
	cmp	b
	jm 	yes	
	mvi	c, 2 	
	jmp	konecc5	
yes	mvi	c, 1
konecc5 HLT

66.

y070	db
x351	db
	lda	y070
	mov	b, a
	lda	x351
	cmp	b
	jm 	yes	
	mvi	c, 2 	
	jmp	konecc5	
yes	mvi	c, 1
konecc5 HLT

67.

xb0e	db
yf73	db
	lda xb0e
	mov b, a
	lda yf73
	cmp b
	jm konec74
	mov a, c
	cma
	mov c, a
konec74	HLT

68.

x291	db
ye2a	db
	lda x291
	mov c, a
	lda ye2a
	cmp c
	jp konec06
	lda e
	cma
	inr	e
konec06	HLT

69.

x1d4	db
yc38	db
pridat	db	71
	lda	pridat
	mov	b, a
	lda	yc38
	mov	c, a
	lda	x1d4
	cmp	c
	jm	konecbd
; alebo:
	mov 	a, l
	ADD	b
	mov	l, a
konecbd	HLT

70.

	adv of
x00b	db
yd40	db
	lda	x00b
	mov	b, a
	lda	yd40
	cmp	b
	jnb	ne46
ano46	HLT
ne46	HLT

71.

	adv of
x00b	db
yd40	db
	lda	x00b
	mov	b, a
	lda	yd40
	cmp	b
	jnb	ne46
ano46	HLT
ne46	HLT

72.

	adv of
yd30	db
x41e	db
	lda	yd30
	mov	b, a
	lda	x41e
	cmp	b
	jg	var1
var2	mvi	l,2
	jmp	ne34
var1	mvi	l,1
	jmp	ano34
ano34	HLT
ne34	HLT

73.

	LXI	H, 44201
	MOV	M, D
	LXI	H, 4849
	MOV	B, M
konec12	HLT

74.

xlow29	db 	
xhigh29	db
ylow29	db
yhigh29	db
zlow29	db
zhigh29 db
	lda	xlow29
	mov	b, a
	lda	xhigh29
	mov	c, a
	lda	ylow29
	mov	d, a
	lda	yhigh29
	mov	e, a
	lda	zlow29
	mov	h, a
	lda	zhigh29
	mov	l, a
	lda	xlow29
	add	d
	sta	zlow29
	lda	xhigh29
	adc	e
	sta	zhigh29
koneccf	hlt

75.

kolikc3	db
odin	db	1
nol	db	0
sto4	db	104
	lda	odin
	mov  	b, a
	mov	e, a
	lda	nol
	mov	d, a
	lda	kolikc3
jmphere	cmp	b
	jm 	konecee

	dcr	a
	sta	kolikc3
	lda	sto4
	mov	m,a
	dad	d
	lda	kolikc3
	jmp 	jmphere
konecee	HLT

76.

	LXI	SP, 15272
	PUSH	H
	PUSH	D
	POP	H
	POP	D
konec89	HLT

77.

wd62	db
xfc4	db
yd4b	db
z6fb	db
	lda	wd62
	mov	b, a
	lda	xfc4
	call	odecti6
	lda	yd4b
	call	odecti6
	lda	z6fb
	call	odecti6
konecc9	HLT
odecti6:CMA
	inr	a
	add	b
	mov	b, a
	RET

78.

cpu 8086
segment	code
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno

	mov dx,mesg
	mov ah,9
	int 21h
	hlt

segment	data
mesg	db 'Testuji segment','$'

segment	stack
	resb 6
dno:	db ?

79.

cpu 8086
segment	code
..start  mov AX,data
  	mov DS,AX
	mov AX,61546
	mov word[slovoe1],AX
	mov BX,slovoe1
	mov [BX+2],byte 163
	mov CX, word[slovoe1]
	mov byte[bajt14], CH
	hlt

segment	data
bajt14	db 0o
slovoe1	dd 61546h

80.

cpu 8086
segment	code
	resb 256
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno
	mov bx,code
	mov cs,bx
	mov bx,blabla
	mov es,bx
	
	mov al,[bytec0]
	mov bp,119
	mov ds:bp,al
	mov es:bp,al
	mov cs:bp,al
	mov ss:bp,al

	mov al,[bytedf]
	mov bp,[word85]
	mov ds:bp,al
	mov es:bp,al
	mov cs:bp,al
	mov ss:bp,al
	hlt
	
segment	data
	resb 256
bytec0	db ?
bytedf	db 12h
word85	dw 2356h

segment	stack
	resb 256
dno:	db ?

segment	blabla
	resb 256

81.

cpu 8086
segment tab
	resb 1024
segment	code
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno
	mov bx,code
	mov cs,bx
	mov bx,tab
	mov es,bx
	
	mov bx,div1e
	mov es:[2],cs
	mov es:[0],bx
	
	xor ax,ax
	div al
	xor ax,ax
	div al
	xor ax,ax
	div al
	
konec29 hlt
	
div1e	mov dx,mesg
	mov ah,9
	int 21h
	pop ax
	add ax,2
	push ax
	iret
	
segment	data
mesg	db 'Division by zero',0Dh,0Ah,'$'

segment	stack
	resb 1024
dno:	db ?

82.

cpu 8086
segment	code
	resb 256
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno
	mov bx,code
	
	xor dx,dx
	xor ax,ax
	
	mov cs,bx
	mov bx, prvkyed
	mov cx,[delkad6]
	
cikl	add ax,[bx]
	inc bx
	loop cikl
	mov dl,al
	hlt
	
segment	data

delkad6	db 5
prvkyed	db 1
	db 0
	db 0
	db 0

	db 55555 dup(0)

segment	stack
	resb 16
dno:	db ?

83.

cpu 8086
segment	code
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno
	mov bx,code
	xor dx,dx
	xor ax,ax
	
	mov cs,bx
	mov bx,prvkyed
	mov cx,[delkad6]
	
cikl	mov al,[bx]
	cbw
	add dx,ax
	inc bx
	loop cikl
	hlt
	
segment	data
delkad6	dw 5
prvkyed db 1
	db 0
	db 0
	db 0
	db 1500 dup(1)

segment	stack
	resb 16
dno:	db ?

84.

cpu 8086
segment	code
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno
	mov bx,code
	xor dx,dx
	xor ax,ax
	
	mov cs,bx
	mov bx,prvkyed
	mov cx,[delkad6]
	
cikl	mov ax,[bx]
	add dx,ax
	inc bx
	inc bx
	loop cikl
	hlt
	
segment	data
delkad6	dw 5h
prvkyed db 1h
	db 2500 dup(1)

segment	stack
	resb 16
dno:	db ?

85.

cpu 8086
segment	code
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno
	mov bx,code
	
	mov ax,[dwrd1d6]
	add ax,[dwrd2d6]
	mov [dsumd6],ax
	mov ax,[dwrd1d6+2]
	adc ax,[dwrd2d6+2]
	mov [dsumd6+2],ax
	
	hlt
	
segment	data
dwrd1d6	dd 1
dwrd2d6 dd 1
dsumd6	dd 1

segment	stack
	resb 16
dno:	db ?

86.

cpu 8086
segment	code
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno
	mov bx,code
	
	mov ax,[wrd14c]
	cwd
	mov si, dx
	mov di,ax
	add ax,[wrd24c]
	cwd
	mov ax,di
	mov [dsum4c],ax
	adc dx,si
	mov [dsum4c+2],ax
	hlt
	
segment	data
wrd14c	dw 1
wrd24c  dw 1
dsum4c	dd 1

segment	stack
	resb 16
dno:	db ?

87.

cpu 8086
segment	code
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno
	mov bx,code
	xor dx,dx
	xor ax,ax
	mov cs,bx
	mov bx,prvkyed
	mov cx,[delkad6]
	xor di,di
	xor si,si
	
repeat	mov ax,[bx]
	cwd
	add di,ax
	adc si,dx
	mov ax,[bx]
	add bx,2
	loop repeat
	mov dx,si
	mov ax,di
	hlt
	
segment	data
delkad6	dw 1
prvkyed dw 1
	dw 1500 dup(1)

segment	stack
dno:	db ?

88.

cpu 8086
segment	code
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno
	mov bx,code
	xor dx,dx
	xor ax,ax
	mov cs,bx
	mov bx,prvkyed
	mov cx,[delkad6]
	xor di,di
	xor si,si
	
cikl	add di,[bx]
	inc bx
	inc bx
	adc si,[bx]
	inc bx
	inc bx
	loop cikl
	mov dx,si
	mov ax,di
	hlt
	
segment	data
delkad6	dw 1
prvkyed dd 1
	dd 1500 dup(1)

segment	stack

dno:	db ?

89.

cpu 8086
segment	code
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno
	
	mov al,[bnum77]
	call hex22
	mov [mesg+1], al
	mov al,[bnum77]
	
	mov cl,4
	shr al,cl
	call hex22
	mov [mesg],al
	
	mov dx,mesg
	mov ah,9
	int 21h
	hlt
	
hex22	and al,00001111b
	cmp al,10
	jns bigger
	add al,48
	ret
	
bigger	add al,87
	ret
	
segment	data
bnum77	db 1
mesg	db 'xy', 0Dh,0Ah,'$'

segment	stack
	resb 16
dno:	db ?

90.

cpu 8086

segment flag
	resb 2000

segment	code
..start	mov 	bx, data
	mov 	ds, bx
	mov 	bx, stack
	mov 	ss, bx
	mov 	sp, dno
	mov 	bx, code
	
	mov	cs, bx
	mov 	bx, flag
	mov 	es, bx
	mov 	bx, into84
	
	mov 	es:[18], cs
	mov 	es:[16], bx
	xor 	bx,bx
	
	mov 	si, data1a9
	mov 	di, data2a9
	mov 	cx, [delka65]
	
cikl	mov 	ax, [si]
	mov	dx, [di]
	add	al, dl
	
	into
	inc	bx
	inc	si
	inc	di
	loop	cikl
	
	hlt

into84	mov	al, bl
	call	hexde
	mov	[mesg+12], al
	mov	al, bl

	shr	al, 1
	shr	al, 1
	shr	al, 1
	shr	al, 1

	call	hexde
	mov	[mesg+11], al
	mov	al, bh
	
	call	hexde
	mov	[mesg+10], al
	mov	al, bh

	shr	al, 1
	shr	al, 1
	shr	al, 1
	shr	al, 1
	
	call	hexde
	mov	[mesg+9], al
	
	mov 	dx, mesg
	mov 	ah, 9
	int	21h
	
	iret
	
hexde	and	al, 00001111b
	cmp	al,10
	jns	bigger	
	add	al, 48
	ret

bigger	add	al, 55
	ret
	

segment	data
mesg	db 	'overflow     ', 0Dh, 0Ah, '$'
delka65	dw	5

data1a9	db	-127
	db	-127
	db	-1
	db	1
	db	100
	db	10000 dup(0)

data2a9	db	128
	db	128
	db	1
	db	1
	db	50
	db	10000 dup(0)

segment	stack
	resb 16
dno:	db ?

91.

cpu 8086
segment	code
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno


	mov ax,[min68]
	mov bx,[max68]
	mov dx,[hod68]
	
	cmp bx,dx
	jng ano
	cmp ax,dx
	jnl ano
	
ne	mov dx,mesgn
	mov ah,9
	int 21h
	hlt
	
ano	mov dx,mesgy
	mov ah,9
	int 21h
	hlt

segment	data
hod68	dw 2
min68	dw 1
max68	dw 3
mesgy	db 'ano', 0Dh,0Ah,'$'
mesgn	db 'ne', 0Dh,0Ah,'$'

segment	stack
	resb 16
dno:	db ?

92.

cpu 8086
segment	code
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno

	push word[scit118]
	push word[scit218]
	call sum8b
	hlt

sum8b	mov bp,sp
	mov ax,[bp+4]
	add ax,[bp+2]
	ret 4

segment	data
scit118	dw 0
scit218	dw 0

segment	stack
	resb 16
dno:	db ?

93.

cpu 8086
segment	code
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno

	push word[scit118]
	push word[scit218]
	call sum8b
	hlt

sum8b	mov bp,sp
	mov ax,[bp+4]
	add ax,[bp+2]
	ret 4

segment	data
scit118	dw 0
scit218	dw 0

segment	stack
	resb 16
dno:	db ?

94.

cpu 8086
segment	code
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno

	mov si,1
	mov di,6
	mov cx,15
	mov bp,3020
	mov bx,scit1ab
	push bx
	mov bx,scit2ab
	push bx
	call sum03
	hlt

sum03	push bp
	push si
	push di
	mov bp,sp
	mov di,[bp+8]
	mov si,[bp+10]
	mov ax,[ds:si]
	add ax,[ds:di]
	mov dx,[ds:si+2]
	adc dx,[ds:di+2]
	pop si
	pop di
	pop bp
	ret 8

segment	data
scit1ab	dd 1
scit2ab	dd 1

segment	stack
	resb 16
dno:	db ?

95.

cpu 8086
segment	code
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno

	mov bx,0xef04
	mov [mimo41+2], bx
	mov es,bx
	
	mov bx,0xe793
	mov [mimo41],bx
	mov es:[bx+2],word doma37
	
	mov al,0xFF
	mov ah,0x2E
	mov es:[bx], word ax
	
	mov bx,konec
	mov [doma37],bx
	
	mov [doma37+2], cs
	
	jmp far [mimo41]
	
konec	hlt

segment	data
mimo41	dd 0
doma37	dd 0

segment	stack
	resb 16
dno:	db ?

96.

cpu 8086
segment	code
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno

	xor si,si
	xor di,di
	
	mov cx,[input31]
	mov bx,2
	
	cmp cx, bx
	
	mov ax,1
	mov bx,1
	js konec
cikl	mul bx
	inc bx
	loop cikl
	
konec	hlt

segment	data
input31	dw 2


segment	stack
	resb 16
dno:	db ?

97.

cpu 8086
segment	code
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno

	mov ah,1
	int 21h
	
cikl	mov dl, 96
	mov bl, 123
	cmp dl,al
	jnb dal
	cmp al,bl
	jnb dal
	
	sub al,32
	
dal	mov ah,2
	mov dl,al
	int 21h
	mov ah,1
	int 21h
	jnz cikl
	
	hlt

segment	data


segment	stack
	resb 16
dno:	db ?

98.

cpu 8086
segment	code
..start	mov bx,data
	mov ds,bx
	mov bx,stack
	mov ss,bx
	mov sp,dno

	mov ah,0x0a
	mov dx, readed
	int 21h
	mov al,[readed+1]
	mov [rslt69], al
	
	
cikl	mov al, [readed+1]
	mov dl, [rslt69]
	cmp dl,al
	jb dal
	mov [rslt69], al
	
dal	mov ah,0x0a
	mov dx,readed
	int 21h
	jnz cikl
	
	hlt

segment	data
rslt69	db ?
readed	db 255, ?
	resb 255


segment	stack
	resb 16
dno:	db ?
