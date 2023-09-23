.text
.align 8
.globl lzo1x_1_compress

lzogeneric1x_1_compress:
 sub	sp, sp, #0x100
 stp	x29, x30, [sp, #240]
 add	x29, sp, #0xf0
 sub	x8, x29, #0x58
 str	x8, [sp, #8]
 str	x0, [x8, #80]
 str	x1, [x8, #72]
 str	x2, [x8, #64]
 str	x3, [x8, #56]
 str	x4, [x8, #48]
 sturb	w5, [x29, #-41]
 ldr	x9, [x8, #80]
 str	x9, [x8, #32]
 ldr	x9, [x8, #64]
 str	x9, [x8, #24]
 ldr	x9, [x8, #72]
 str	x9, [x8, #8]
 str	xzr, [x8]
 mov	w8, #0xfe                  	// #254
 sturb	w8, [x29, #-89]
 ldurb	w8, [x29, #-41]
 subs	w8, w8, #0x0
 b.le	lzogeneric1x_1_compress+0x98
 b	lzogeneric1x_1_compress+0x60
 ldr	x11, [sp, #8]
 ldr	x9, [x11, #24]
 add	x8, x9, #0x1
 str	x8, [x11, #24]
 mov	w8, #0x11                  	// #17
 strb	w8, [x9]
 ldurb	w8, [x29, #-41]
 ldr	x9, [x11, #24]
 add	x10, x9, #0x1
 str	x10, [x11, #24]
 strb	w8, [x9]
 mov	w8, #0xbffe                	// #49150
 stur	w8, [x29, #-96]
 b	lzogeneric1x_1_compress+0xa4
 mov	w8, #0xbfff                	// #49151
 stur	w8, [x29, #-96]
 b	lzogeneric1x_1_compress+0xa4
 ldr	x9, [sp, #8]
 ldr	x8, [x9, #24]
 str	x8, [x9, #16]
 b	lzogeneric1x_1_compress+0xb4
 ldr	x8, [sp, #8]
 ldr	x8, [x8, #8]
 subs	x8, x8, #0x14
 b.ls	lzogeneric1x_1_compress+0x1cc // b.plast
 b	lzogeneric1x_1_compress+0xc8
 ldr	x8, [sp, #8]
 ldr	x8, [x8, #8]
 ldur	w9, [x29, #-96]
 add	w9, w9, #0x1
 subs	x8, x8, x9
 b.hi	lzogeneric1x_1_compress+0xf4  // b.pmore
 b	lzogeneric1x_1_compress+0xe4
 ldr	x8, [sp, #8]
 ldr	x8, [x8, #8]
 str	x8, [sp]
 b	lzogeneric1x_1_compress+0x104
 ldur	w8, [x29, #-96]
 add	w8, w8, #0x1
 str	x8, [sp]
 b	lzogeneric1x_1_compress+0x104
 ldr	x9, [sp, #8]
 ldr	x8, [sp]
 stur	x8, [x29, #-104]
 ldr	x8, [x9, #32]
 ldur	x10, [x29, #-104]
 add	x8, x8, x10
 stur	x8, [x29, #-112]
 ldur	x8, [x29, #-112]
 ldr	x9, [x9]
 ldur	x10, [x29, #-104]
 add	x9, x9, x10
 add	x8, x8, x9, lsr #5
 ldur	x9, [x29, #-112]
 subs	x8, x8, x9
 b.hi	lzogeneric1x_1_compress+0x148  // b.pmore
 b	lzogeneric1x_1_compress+0x144
 b	lzogeneric1x_1_compress+0x1cc
 b	lzogeneric1x_1_compress+0x14c
 b	lzogeneric1x_1_compress+0x150
 ldr	x8, [sp, #8]
 ldr	x0, [x8, #48]
 mov	w1, wzr
 mov	x2, #0x4000                	// #16384
 bl	 memset
 ldr	x8, [sp, #8]
 ldr	x0, [x8, #32]
 ldur	x1, [x29, #-104]
 ldr	x2, [x8, #24]
 ldr	x3, [x8, #56]
 ldr	x4, [x8]
 ldr	x5, [x8, #48]
 ldurb	w7, [x29, #-41]
 sub	x6, x29, #0x59
 bl	lzo1x_1_do_compress
 ldr	x9, [sp, #8]
 str	x0, [x9]
 ldur	x10, [x29, #-104]
 ldr	x8, [x9, #32]
 add	x8, x8, x10
 str	x8, [x9, #32]
 ldr	x8, [x9, #56]
 ldr	x10, [x8]
 ldr	x8, [x9, #24]
 add	x8, x8, x10
 str	x8, [x9, #24]
 ldur	x10, [x29, #-104]
 ldr	x8, [x9, #8]
 subs	x8, x8, x10
 str	x8, [x9, #8]
 b	lzogeneric1x_1_compress+0xb4
 ldr	x8, [sp, #8]
 ldr	x10, [x8, #8]
 ldr	x9, [x8]
 add	x9, x9, x10
 str	x9, [x8]
 ldr	x8, [x8]
 subs	x8, x8, #0x0
 b.ls   lzogeneric1x_1_compress+0x4e4  // b.plast
 b	lzogeneric1x_1_compress+0x1f0
 ldr	x9, [sp, #8]
 ldr	x8, [x9, #80]
 ldr	x10, [x9, #72]
 add	x8, x8, x10
 ldr	x10, [x9]
 subs	x8, x8, x10
 str	x8, [sp, #120]
 ldr	x8, [x9, #24]
 ldr	x9, [x9, #16]
 subs	x8, x8, x9
 b.ne	lzogeneric1x_1_compress+0x254  // b.any
 b	lzogeneric1x_1_compress+0x220
 ldr	x8, [sp, #8]
 ldr	x8, [x8]
 subs	x8, x8, #0xee
 b.hi	lzogeneric1x_1_compress+0x254  // b.pmore
 b	lzogeneric1x_1_compress+0x234
 ldr	x11, [sp, #8]
 ldr	x8, [x11]
 add	x8, x8, #0x11
 ldr	x9, [x11, #24]
 add	x10, x9, #0x1
 str	x10, [x11, #24]
 strb	w8, [x9]
 b	lzogeneric1x_1_compress+0x33c
 ldr	x8, [sp, #8]
 ldr	x8, [x8]
 subs	x8, x8, #0x3
 b.hi	lzogeneric1x_1_compress+0x28c  // b.pmore
 b	lzogeneric1x_1_compress+0x268
 ldr	x8, [sp, #8]
 ldr	x10, [x8]
 ldr	x8, [x8, #24]
 ldursb	x9, [x29, #-89]
 add	x9, x8, x9
 ldrb	w8, [x9]
 orr	x8, x8, x10
 strb	w8, [x9]
 b	lzogeneric1x_1_compress+0x338
 ldr	x8, [sp, #8]
 ldr	x8, [x8]
 subs	x8, x8, #0x12
 b.hi	lzogeneric1x_1_compress+0x2c0  // b.pmore
 b	lzogeneric1x_1_compress+0x2a0
 ldr	x11, [sp, #8]
 ldr	x8, [x11]
 subs	x8, x8, #0x3
 ldr	x9, [x11, #24]
 add	x10, x9, #0x1
 str	x10, [x11, #24]
 strb	w8, [x9]
 b	lzogeneric1x_1_compress+0x334
 ldr	x10, [sp, #8]
 ldr	x8, [x10]
 subs	x8, x8, #0x12
 str	x8, [sp, #112]
 ldr	x8, [x10, #24]
 add	x9, x8, #0x1
 str	x9, [x10, #24]
 strb	wzr, [x8]
 b	lzogeneric1x_1_compress+0x2e4
 ldr	x8, [sp, #112]
 subs	x8, x8, #0xff
 b.ls	lzogeneric1x_1_compress+0x318  // b.plast
 b	lzogeneric1x_1_compress+0x2f4
 ldr	x10, [sp, #8]
 ldr	x8, [sp, #112]
 subs	x8, x8, #0xff
 str	x8, [sp, #112]
 ldr	x8, [x10, #24]
 add	x9, x8, #0x1
 str	x9, [x10, #24]
 strb	wzr, [x8]
 b	lzogeneric1x_1_compress+0x2e4
 ldr	x11, [sp, #8]
 ldr	x8, [sp, #112]
 ldr	x9, [x11, #24]
 add	x10, x9, #0x1
 str	x10, [x11, #24]
 strb	w8, [x9]
 b	lzogeneric1x_1_compress+0x334
 b	lzogeneric1x_1_compress+0x338
 b	lzogeneric1x_1_compress+0x33c
 ldr	x8, [sp, #8]
 ldr	x8, [x8]
 subs	x8, x8, #0x10
 b.cc	lzogeneric1x_1_compress+0x480  // b.lo, b.ul, b.last
 b	lzogeneric1x_1_compress+0x350
 b	lzogeneric1x_1_compress+0x354
 b	lzogeneric1x_1_compress+0x358
 ldr	x8, [sp, #8]
 ldr	x8, [x8, #24]
 str	x8, [sp, #104]
 ldr	x8, [sp, #120]
 str	x8, [sp, #96]
 ldr	x8, [sp, #96]
 ldr	w8, [x8]
 str	w8, [sp, #92]
 ldr	w8, [sp, #92]
 ldr	x9, [sp, #104]
 str	w8, [x9]
 b	lzogeneric1x_1_compress+0x388
 b	lzogeneric1x_1_compress+0x38c
 ldr	x8, [sp, #8]
 ldr	x8, [x8, #24]
 add	x8, x8, #0x4
 str	x8, [sp, #80]
 ldr	x8, [sp, #120]
 add	x8, x8, #0x4
 str	x8, [sp, #72]
 ldr	x8, [sp, #72]
 ldr	w8, [x8]
 str	w8, [sp, #68]
 ldr	w8, [sp, #68]
 ldr	x9, [sp, #80]
 str	w8, [x9]
 b	lzogeneric1x_1_compress+0x3c4
 b	lzogeneric1x_1_compress+0x3c8
 ldr	x8, [sp, #8]
 ldr	x8, [x8, #24]
 add	x8, x8, #0x8
 str	x8, [sp, #56]
 ldr	x8, [sp, #120]
 add	x8, x8, #0x8
 str	x8, [sp, #48]
 ldr	x8, [sp, #48]
 ldr	w8, [x8]
 str	w8, [sp, #44]
 ldr	w8, [sp, #44]
 ldr	x9, [sp, #56]
 str	w8, [x9]
 b	lzogeneric1x_1_compress+0x400
 b	lzogeneric1x_1_compress+0x404
 ldr	x8, [sp, #8]
 ldr	x8, [x8, #24]
 add	x8, x8, #0xc
 str	x8, [sp, #32]
 ldr	x8, [sp, #120]
 add	x8, x8, #0xc
 str	x8, [sp, #24]
 ldr	x8, [sp, #24]
 ldr	w8, [x8]
 str	w8, [sp, #20]
 ldr	w8, [sp, #20]
 ldr	x9, [sp, #32]
 str	w8, [x9]
 b	lzogeneric1x_1_compress+0x43c
 ldr	x9, [sp, #8]
 ldr	x8, [x9, #24]
 add	x8, x8, #0x10
 str	x8, [x9, #24]
 ldr	x8, [sp, #120]
 add	x8, x8, #0x10
 str	x8, [sp, #120]
 ldr	x8, [x9]
 subs	x8, x8, #0x10
 str	x8, [x9]
 b	lzogeneric1x_1_compress+0x468
 ldr	x8, [sp, #8]
 ldr	x8, [x8]
 subs	x8, x8, #0x10
 b.cs	lzogeneric1x_1_compress+0x354  // b.hs, b.nlast
 b	lzogeneric1x_1_compress+0x47c
 b	lzogeneric1x_1_compress+0x480
 ldr	x8, [sp, #8]
 ldr	x8, [x8]
 subs	x8, x8, #0x0
 b.ls	lzogeneric1x_1_compress+0x4e0  // b.plast
 b	lzogeneric1x_1_compress+0x494
 b	lzogeneric1x_1_compress+0x498
 ldr	x11, [sp, #8]
 ldr	x8, [sp, #120]
 add	x9, x8, #0x1
 str	x9, [sp, #120]
 ldrb	w8, [x8]
 ldr	x9, [x11, #24]
 add	x10, x9, #0x1
 str	x10, [x11, #24]
 strb	w8, [x9]
 b	lzogeneric1x_1_compress+0x4c0
 ldr	x9, [sp, #8]
 ldr	x8, [x9]
 subs	x8, x8, #0x1
 str	x8, [x9]
 subs	x8, x8, #0x0
 b.hi	lzogeneric1x_1_compress+0x498 // b.pmore
 b	lzogeneric1x_1_compress+0x4dc
 b	lzogeneric1x_1_compress+0x4e0
 b	lzogeneric1x_1_compress+0x4e4
 ldr	x9, [sp, #8]
 ldr	x10, [x9, #24]
 add	x8, x10, #0x1
 str	x8, [x9, #24]
 mov	w8, #0x11                  	// #17
 strb	w8, [x10]
 ldr	x8, [x9, #24]
 add	x10, x8, #0x1
 str	x10, [x9, #24]
 strb	wzr, [x8]
 ldr	x8, [x9, #24]
 add	x10, x8, #0x1
 str	x10, [x9, #24]
 strb	wzr, [x8]
 ldr	x8, [x9, #24]
 ldr	x10, [x9, #64]
 subs	x8, x8, x10
 ldr	x9, [x9, #56]
 str	x8, [x9]
 mov	w0, wzr
 ldp	x29, x30, [sp, #240]
 add	sp, sp, #0x100
 ret
lzo1x_1_do_compress:
 sub	sp, sp, #0x1d0
 stp	x29, x30, [sp, #432]
 str	x28, [sp, #448]
 add	x29, sp, #0x1b0
 add	x8, sp, #0xb0
 str	x8, [sp, #32]
 str	x0, [x8, #248]
 str	x1, [x8, #240]
 str	x2, [x8, #232]
 str	x3, [x8, #224]
 str	x4, [x8, #216]
 str	x5, [x8, #208]
 str	x6, [x8, #200]
 sturb	w7, [x29, #-57]
 ldr	x9, [x8, #248]
 ldr	x10, [x8, #240]
 add	x9, x9, x10
 str	x9, [x8, #168]
 ldr	x9, [x8, #248]
 ldr	x10, [x8, #240]
 add	x9, x9, x10
 subs	x9, x9, #0x14
 str	x9, [x8, #160]
 ldr	x9, [x8, #208]
 str	x9, [x8, #144]
 ldr	x9, [x8, #232]
 str	x9, [x8, #176]
 ldr	x9, [x8, #248]
 str	x9, [x8, #184]
 ldr	x9, [x8, #184]
 str	x9, [x8, #152]
 ldr	x8, [x8, #216]
 subs	x8, x8, #0x4
 b.cs	lzo1x_1_do_compress+0xa4  // b.hs, b.nlast
 b	lzo1x_1_do_compress+0x8c
 ldr	x8, [sp, #32]
 ldr	x9, [x8, #216]
 mov	x8, #0x4                   	// #4
 subs	x8, x8, x9
 str	x8, [sp, #24]
 b	lzo1x_1_do_compress+0xb0
 mov	x8, xzr
 str	x8, [sp, #24]
 b	lzo1x_1_do_compress+0xb0
 ldr	x9, [sp, #32]
 ldr	x10, [sp, #24]
 ldr	x8, [x9, #184]
 add	x8, x8, x10
 str	x8, [x9, #184]
 b	lzo1x_1_do_compress+0xc8
 ldr	x8, [sp, #32]
 str	xzr, [x8, #136]
 stur	wzr, [x29, #-152]
 b	lzo1x_1_do_compress+0xd8
 ldr	x9, [sp, #32]
 ldr	x8, [x9, #184]
 ldr	x10, [x9, #152]
 subs	x8, x8, x10
 asr	x8, x8, #5
 add	x10, x8, #0x1
 ldr	x8, [x9, #184]
 add	x8, x8, x10
 str	x8, [x9, #184]
 b	lzo1x_1_do_compress+0x100
 ldr	x9, [sp, #32]
 ldr	x8, [x9, #184]
 ldr	x9, [x9, #160]
 subs	x8, x8, x9
 b.cc	lzo1x_1_do_compress+0x11c  // b.lo, b.ul, b.last
 b	lzo1x_1_do_compress+0x118
 b	lzo1x_1_do_compress+0xde4
 ldr	x8, [sp, #32]
 ldr	x0, [x8, #184]
 bl	get_unaligned_le32
 stur	w0, [x29, #-148]
 ldur	w8, [x29, #-148]
 cbnz	w8, lzo1x_1_do_compress+0x348
 b	lzo1x_1_do_compress+0x138
 ldurb	w8, [x29, #-57]
 cbz	w8, lzo1x_1_do_compress+0x348
 b	lzo1x_1_do_compress+0x144
 ldr	x9, [sp, #32]
 ldr	x8, [x9, #184]
 add	x8, x8, #0x4
 str	x8, [x9, #96]
 ldr	x8, [x9, #160]
 ldr	x9, [x9, #184]
 add	x9, x9, #0x804
 subs	x8, x8, x9
 b.cs	lzo1x_1_do_compress+0x17c  // b.hs, b.nlast
 b	lzo1x_1_do_compress+0x16c
 ldr	x8, [sp, #32]
 ldr	x8, [x8, #160]
 str	x8, [sp, #16]
 b	lzo1x_1_do_compress+0x190
 ldr	x8, [sp, #32]
 ldr	x8, [x8, #184]
 add	x8, x8, #0x804
 str	x8, [sp, #16]
 b	lzo1x_1_do_compress+0x190
 ldr	x9, [sp, #32]
 ldr	x8, [sp, #16]
 str	x8, [x9, #88]
 b	lzo1x_1_do_compress+0x1a0
 ldr	x8, [sp, #32]
 ldr	x9, [x8, #96]
 ldr	x8, [x8, #96]
 add	x8, x8, #0x3
 and	x10, x8, #0xfffffffffffffffc
 mov	w8, #0x0                   	// #0
 subs	x9, x9, x10
 str	w8, [sp, #12]
 b.cs	lzo1x_1_do_compress+0x204  // b.hs, b.nlast
 b	lzo1x_1_do_compress+0x1c8
 ldr	x8, [sp, #32]
 ldr	x9, [x8, #96]
 ldr	x10, [x8, #88]
 mov	w8, #0x0                   	// #0
 subs	x9, x9, x10
 str	w8, [sp, #12]
 b.cs lzo1x_1_do_compress+0x204  // b.hs, b.nlast
 b	lzo1x_1_do_compress+0x1e8
 ldr	x8, [sp, #32]
 ldr	x8, [x8, #96]
 ldrb	w8, [x8]
 subs	w8, w8, #0x0
 cset	w8, eq  // eq = none
 str	w8, [sp, #12]
 b	 lzo1x_1_do_compress+0x204
 ldr	w8, [sp, #12]
 tbz	w8, #0,  lzo1x_1_do_compress+0x224
 b	lzo1x_1_do_compress+0x210
 ldr	x9, [sp, #32]
 ldr	x8, [x9, #96]
 add	x8, x8, #0x1
 str	x8, [x9, #96]
 b	lzo1x_1_do_compress+0x1a0
 ldr	x8, [sp, #32]
 ldr	x8, [x8, #96]
 and	x8, x8, #0x3
 cbnz	x8, lzo1x_1_do_compress+0x2b4
 b	lzo1x_1_do_compress+0x238
 b	lzo1x_1_do_compress+0x23c
 ldr	x9, [sp, #32]
 ldr	x8, [x9, #96]
 add	x8, x8, #0x4
 ldr	x9, [x9, #88]
 subs	x8, x8, x9
 b.hi	 lzo1x_1_do_compress+0x2b0  // b.pmore
 b	 lzo1x_1_do_compress+0x258
 ldr	x8, [sp, #32]
 ldr	x8, [x8, #96]
 ldr	w8, [x8]
 stur	w8, [x29, #-148]
 ldur	w8, [x29, #-148]
 cbz	w8, lzo1x_1_do_compress+0x298
 b	 lzo1x_1_do_compress+0x274
 ldr	x9, [sp, #32]
 ldur	w8, [x29, #-148]
 rbit	w8, w8
 clz	w8, w8
 asr	w10, w8, #3
 ldr	x8, [x9, #96]
 add	x8, x8, w10, sxtw
 str	x8, [x9, #96]
 b	 lzo1x_1_do_compress+0x2b0
 b	 lzo1x_1_do_compress+0x29c
 ldr	x9, [sp, #32]
 ldr	x8, [x9, #96]
 add	x8, x8, #0x4
 str	x8, [x9, #96]
 b	 lzo1x_1_do_compress+0x23c
 b	 lzo1x_1_do_compress+0x2b4
 b	 lzo1x_1_do_compress+0x2b8
 ldr	x8, [sp, #32]
 ldr	x9, [x8, #96]
 ldr	x10, [x8, #88]
 mov	w8, #0x0                   	// #0
 subs	x9, x9, x10
 str	w8, [sp, #8]
 b.cs   lzo1x_1_do_compress+0x2f4  // b.hs, b.nlast
 b	lzo1x_1_do_compress+0x2d8
 ldr	x8, [sp, #32]
 ldr	x8, [x8, #96]
 ldrb	w8, [x8]
 subs	w8, w8, #0x0
 cset	w8, eq  // eq = none
 str	w8, [sp, #8]
 b      lzo1x_1_do_compress+0x2f4
 ldr	w8, [sp, #8]
 tbz	w8, #0, lzo1x_1_do_compress+0x314
 b	 lzo1x_1_do_compress+0x300
 ldr	x9, [sp, #32]
 ldr	x8, [x9, #96]
 add	x8, x8, #0x1
 str	x8, [x9, #96]
 b	lzo1x_1_do_compress+0x2b8
 ldr	x9, [sp, #32]
 ldr	x8, [x9, #96]
 ldr	x9, [x9, #184]
 subs	x8, x8, x9
 stur	w8, [x29, #-152]
 ldur	w8, [x29, #-152]
 subs	w8, w8, #0x803
 b.ls	 lzo1x_1_do_compress+0x344  // b.plast
 b	 lzo1x_1_do_compress+0x338
 mov	w8, #0x803                 	// #2051
 stur	w8, [x29, #-152]
 b	lzo1x_1_do_compress+0x344
 b	lzo1x_1_do_compress+0x3c0
 ldr	x8, [sp, #32]
 ldur	w9, [x29, #-148]
 mov	w10, #0x429d                	// #17053
 movk	w10, #0x1824, lsl #16
 mul	w9, w9, w10
 lsr	w9, w9, #19
 and	w9, w9, #0x1fff
 str	x9, [x8, #128]
 ldr	x9, [x8, #248]
 ldr	x10, [x8, #144]
 ldr	x11, [x8, #128]
 ldrh	w10, [x10, x11, lsl #1]
 add	x9, x9, w10, sxtw
 str	x9, [x8, #136]
 ldr	x9, [x8, #184]
 ldr	x10, [x8, #248]
 subs	x9, x9, x10
 ldr	x10, [x8, #144]
 ldr	x11, [x8, #128]
 strh	w9, [x10, x11, lsl #1]
 ldur	w9, [x29, #-148]
 str	w9, [sp, #4]
 ldr	x0, [x8, #136]
 bl	 get_unaligned_le32
 ldr	w8, [sp, #4]
 subs	w8, w8, w0
 b.eq	lzo1x_1_do_compress+0x3bc  // b.none
 b	lzo1x_1_do_compress+0x3b8
 b	lzo1x_1_do_compress+0xd8
 b	lzo1x_1_do_compress+0x3c0
 ldr	x8, [sp, #32]
 ldr	x10, [x8, #216]
 ldr	x9, [x8, #152]
 subs	x9, x9, x10
 str	x9, [x8, #152]
 str	xzr, [x8, #216]
 ldr	x9, [x8, #184]
 ldr	x10, [x8, #152]
 subs	x9, x9, x10
 str	x9, [x8, #128]
 ldr	x8, [x8, #128]
 cbz	x8,  lzo1x_1_do_compress+0x7e8
 b	 lzo1x_1_do_compress+0x3f4
 ldr	x8, [sp, #32]
 ldr	x8, [x8, #128]
 subs	x8, x8, #0x3
 b.hi	 lzo1x_1_do_compress+0x478  // b.pmore
 b	lzo1x_1_do_compress+0x408
 ldr	x9, [sp, #32]
 ldr	x10, [x9, #128]
 ldr	x8, [x9, #176]
 ldr	x9, [x9, #200]
 ldrsb	x9, [x9]
 add	x9, x8, x9
 ldrb	w8, [x9]
 orr	x8, x8, x10
 strb	w8, [x9]
 b	lzo1x_1_do_compress+0x430
 ldr	x9, [sp, #32]
 ldr	x8, [x9, #176]
 str	x8, [x9, #80]
 ldr	x8, [x9, #152]
 str	x8, [x9, #72]
 ldr	x8, [x9, #72]
 ldr	w8, [x8]
 stur	w8, [x29, #-188]
 ldur	w8, [x29, #-188]
 ldr	x9, [x9, #80]
 str	w8, [x9]
 b	 lzo1x_1_do_compress+0x460
 ldr	x9, [sp, #32]
 ldr	x10, [x9, #128]
 ldr	x8, [x9, #176]
 add	x8, x8, x10
 str	x8, [x9, #176]
 b	 lzo1x_1_do_compress+0x7e4
 ldr	x8, [sp, #32]
 ldr	x8, [x8, #128]
 subs	x8, x8, #0x10
 b.hi	 lzo1x_1_do_compress+0x5a8  // b.pmore
 b	 lzo1x_1_do_compress+0x48c
 ldr	x11, [sp, #32]
 ldr	x8, [x11, #128]
 subs	x8, x8, #0x3
 ldr	x9, [x11, #176]
 add	x10, x9, #0x1
 str	x10, [x11, #176]
 strb	w8, [x9]
 b	 lzo1x_1_do_compress+0x4ac
 ldr	x9, [sp, #32]
 ldr	x8, [x9, #176]
 str	x8, [x9, #56]
 ldr	x8, [x9, #152]
 str	x8, [x9, #48]
 ldr	x8, [x9, #48]
 ldr	w8, [x8]
 stur	w8, [x29, #-212]
 ldur	w8, [x29, #-212]
 ldr	x9, [x9, #56]
 str	w8, [x9]
 b	 lzo1x_1_do_compress+0x4dc
 b	 lzo1x_1_do_compress+0x4e0
 ldr	x9, [sp, #32]
 ldr	x8, [x9, #176]
 add	x8, x8, #0x4
 str	x8, [x9, #32]
 ldr	x8, [x9, #152]
 add	x8, x8, #0x4
 str	x8, [x9, #24]
 ldr	x8, [x9, #24]
 ldr	w8, [x8]
 str	w8, [sp, #196]
 ldr	w8, [sp, #196]
 ldr	x9, [x9, #32]
 str	w8, [x9]
 b	 lzo1x_1_do_compress+0x518
 b	lzo1x_1_do_compress+0x51c
 ldr	x9, [sp, #32]
 ldr	x8, [x9, #176]
 add	x8, x8, #0x8
 str	x8, [x9, #8]
 ldr	x8, [x9, #152]
 add	x8, x8, #0x8
 str	x8, [x9]
 ldr	x8, [x9]
 ldr	w8, [x8]
 str	w8, [sp, #172]
 ldr	w8, [sp, #172]
 ldr	x9, [x9, #8]
 str	w8, [x9]
 b	lzo1x_1_do_compress+0x554
 b	 lzo1x_1_do_compress+0x558
 ldr	x8, [sp, #32]
 ldr	x9, [x8, #176]
 add	x9, x9, #0xc
 str	x9, [sp, #160]
 ldr	x8, [x8, #152]
 add	x8, x8, #0xc
 str	x8, [sp, #152]
 ldr	x8, [sp, #152]
 ldr	w8, [x8]
 str	w8, [sp, #148]
 ldr	w8, [sp, #148]
 ldr	x9, [sp, #160]
 str	w8, [x9]
 b	lzo1x_1_do_compress+0x590
 ldr	x9, [sp, #32]
 ldr	x10, [x9, #128]
 ldr	x8, [x9, #176]
 add	x8, x8, x10
 str	x8, [x9, #176]
 b	lzo1x_1_do_compress+0x7e0
 ldr	x8, [sp, #32]
 ldr	x8, [x8, #128]
 subs	x8, x8, #0x12
 b.hi	 lzo1x_1_do_compress+0x5dc  // b.pmore
 b	 lzo1x_1_do_compress+0x5bc
 ldr	x11, [sp, #32]
 ldr	x8, [x11, #128]
 subs	x8, x8, #0x3
 ldr	x9, [x11, #176]
 add	x10, x9, #0x1
 str	x10, [x11, #176]
 strb	w8, [x9]
 b       lzo1x_1_do_compress+0x650
 ldr	x10, [sp, #32]
 ldr	x8, [x10, #128]
 subs	x8, x8, #0x12
 str	x8, [sp, #136]
 ldr	x8, [x10, #176]
 add	x9, x8, #0x1
 str	x9, [x10, #176]
 strb	wzr, [x8]
 b	 lzo1x_1_do_compress+0x600
 ldr	x8, [sp, #136]
 subs	x8, x8, #0xff
 b.ls	 lzo1x_1_do_compress+0x634  // b.plast
 b	 lzo1x_1_do_compress+0x610
 ldr	x10, [sp, #32]
 ldr	x8, [sp, #136]
 subs	x8, x8, #0xff
 str	x8, [sp, #136]
 ldr	x8, [x10, #176]
 add	x9, x8, #0x1
 str	x9, [x10, #176]
 strb	wzr, [x8]
 b	 lzo1x_1_do_compress+0x600
 ldr	x11, [sp, #32]
 ldr	x8, [sp, #136]
 ldr	x9, [x11, #176]
 add	x10, x9, #0x1
 str	x10, [x11, #176]
 strb	w8, [x9]
 b	 lzo1x_1_do_compress+0x650
 b	 lzo1x_1_do_compress+0x654
 b	 lzo1x_1_do_compress+0x658
 ldr	x8, [sp, #32]
 ldr	x9, [x8, #176]
 str	x9, [sp, #128]
 ldr	x8, [x8, #152]
 str	x8, [sp, #120]
 ldr	x8, [sp, #120]
 ldr	w8, [x8]
 str	w8, [sp, #116]
 ldr	w8, [sp, #116]
 ldr	x9, [sp, #128]
 str	w8, [x9]
 b	 lzo1x_1_do_compress+0x688
 b	 lzo1x_1_do_compress+0x68c
 ldr	x8, [sp, #32]
 ldr	x9, [x8, #176]
 add	x9, x9, #0x4
 str	x9, [sp, #104]
 ldr	x8, [x8, #152]
 add	x8, x8, #0x4
 str	x8, [sp, #96]
 ldr	x8, [sp, #96]
 ldr	w8, [x8]
 str	w8, [sp, #92]
 ldr	w8, [sp, #92]
 ldr	x9, [sp, #104]
 str	w8, [x9]
 b	 lzo1x_1_do_compress+0x6c4
 b	lzo1x_1_do_compress+0x6c8
 ldr	x8, [sp, #32]
 ldr	x9, [x8, #176]
 add	x9, x9, #0x8
 str	x9, [sp, #80]
 ldr	x8, [x8, #152]
 add	x8, x8, #0x8
 str	x8, [sp, #72]
 ldr	x8, [sp, #72]
 ldr	w8, [x8]
 str	w8, [sp, #68]
 ldr	w8, [sp, #68]
 ldr	x9, [sp, #80]
 str	w8, [x9]
 b	 lzo1x_1_do_compress+0x700
 b	 lzo1x_1_do_compress+0x704
 ldr	x8, [sp, #32]
 ldr	x9, [x8, #176]
 add	x9, x9, #0xc
 str	x9, [sp, #56]
 ldr	x8, [x8, #152]
 add	x8, x8, #0xc
 str	x8, [sp, #48]
 ldr	x8, [sp, #48]
 ldr	w8, [x8]
 str	w8, [sp, #44]
 ldr	w8, [sp, #44]
 ldr	x9, [sp, #56]
 str	w8, [x9]
 b	 lzo1x_1_do_compress+0x73c
 ldr	x9, [sp, #32]
 ldr	x8, [x9, #176]
 add	x8, x8, #0x10
 str	x8, [x9, #176]
 ldr	x8, [x9, #152]
 add	x8, x8, #0x10
 str	x8, [x9, #152]
 ldr	x8, [x9, #128]
 subs	x8, x8, #0x10
 str	x8, [x9, #128]
 b	 lzo1x_1_do_compress+0x768
 ldr	x8, [sp, #32]
 ldr	x8, [x8, #128]
 subs	x8, x8, #0x10
 b.cs	 lzo1x_1_do_compress+0x654  // b.hs, b.nlast
 b	 lzo1x_1_do_compress+0x77c
 ldr	x8, [sp, #32]
 ldr	x8, [x8, #128]
 subs	x8, x8, #0x0
 b.ls	 lzo1x_1_do_compress+0x7dc  // b.plast
 b	 lzo1x_1_do_compress+0x790
 b	 lzo1x_1_do_compress+0x794
 ldr	x11, [sp, #32]
 ldr	x8, [x11, #152]
 add	x9, x8, #0x1
 str	x9, [x11, #152]
 ldrb	w8, [x8]
 ldr	x9, [x11, #176]
 add	x10, x9, #0x1
 str	x10, [x11, #176]
 strb	w8, [x9]
 b	 lzo1x_1_do_compress+0x7bc
 ldr	x9, [sp, #32]
 ldr	x8, [x9, #128]
 subs	x8, x8, #0x1
 str	x8, [x9, #128]
 subs	x8, x8, #0x0
 b.hi	 lzo1x_1_do_compress+0x794  // b.pmore
 b	 lzo1x_1_do_compress+0x7d8
 b	 lzo1x_1_do_compress+0x7dc
 b	 lzo1x_1_do_compress+0x7e0
 b	 lzo1x_1_do_compress+0x7e4
 b	 lzo1x_1_do_compress+0x7e8
 ldur	w8, [x29, #-152]
 cbz	w8,  lzo1x_1_do_compress+0x860
 b	 lzo1x_1_do_compress+0x7f4
 ldr	x8, [sp, #32]
 ldur	w9, [x29, #-152]
 mov	w10, w9
 ldr	x9, [x8, #184]
 add	x9, x9, x10
 str	x9, [x8, #184]
 ldur	w9, [x29, #-152]
 subs	w9, w9, #0x4
 stur	w9, [x29, #-152]
 ldur	w10, [x29, #-152]
 mov	w9, #0xfc18                	// #64536
 movk	w9, #0xff, lsl #16
 orr	w9, w9, w10, lsl #21
 ldur	w10, [x29, #-152]
 and	w10, w10, #0x7
 orr	w0, w9, w10
 ldr	x1, [x8, #176]
 bl	 put_unaligned_le32
 ldr	x8, [sp, #32]
 ldr	x9, [x8, #176]
 add	x9, x9, #0x4
 str	x9, [x8, #176]
 stur	wzr, [x29, #-152]
 ldr	x9, [x8, #200]
 mov	w8, #0xfd                  	// #253
 strb	w8, [x9]
 b	 lzo1x_1_do_compress+0xdd4
 ldr	x10, [sp, #32]
 mov	x8, #0x4                   	// #4
 str	x8, [x10, #120]
 ldr	x8, [x10, #184]
 ldr	x9, [x10, #120]
 ldrb	w8, [x8, x9]
 ldr	x9, [x10, #136]
 ldr	x10, [x10, #120]
 ldrb	w9, [x9, x10]
 subs	w8, w8, w9
 b.ne	 lzo1x_1_do_compress+0xa7c  // b.any
 b	 lzo1x_1_do_compress+0x890
 b	 lzo1x_1_do_compress+0x894
 ldr	x10, [sp, #32]
 ldr	x8, [x10, #120]
 add	x8, x8, #0x1
 str	x8, [x10, #120]
 ldr	x8, [x10, #184]
 ldr	x9, [x10, #120]
 ldrb	w8, [x8, x9]
 ldr	x9, [x10, #136]
 ldr	x10, [x10, #120]
 ldrb	w9, [x9, x10]
 subs	w8, w8, w9
 b.eq	 lzo1x_1_do_compress+0x8cc  // b.none
 b	 lzo1x_1_do_compress+0x8c8
 b	 lzo1x_1_do_compress+0xa78
 ldr	x10, [sp, #32]
 ldr	x8, [x10, #120]
 add	x8, x8, #0x1
 str	x8, [x10, #120]
 ldr	x8, [x10, #184]
 ldr	x9, [x10, #120]
 ldrb	w8, [x8, x9]
 ldr	x9, [x10, #136]
 ldr	x10, [x10, #120]
 ldrb	w9, [x9, x10]
 subs	w8, w8, w9
 b.eq	 lzo1x_1_do_compress+0x904  // b.none
 b	 lzo1x_1_do_compress+0x900
 b	 lzo1x_1_do_compress+0xa78
 ldr	x10, [sp, #32]
 ldr	x8, [x10, #120]
 add	x8, x8, #0x1
 str	x8, [x10, #120]
 ldr	x8, [x10, #184]
 ldr	x9, [x10, #120]
 ldrb	w8, [x8, x9]
 ldr	x9, [x10, #136]
 ldr	x10, [x10, #120]
 ldrb	w9, [x9, x10]
 subs	w8, w8, w9
 b.eq	 lzo1x_1_do_compress+0x93c  // b.none
 b	 lzo1x_1_do_compress+0x938
 b	 lzo1x_1_do_compress+0xa78
 ldr	x10, [sp, #32]
 ldr	x8, [x10, #120]
 add	x8, x8, #0x1
 str	x8, [x10, #120]
 ldr	x8, [x10, #184]
 ldr	x9, [x10, #120]
 ldrb	w8, [x8, x9]
 ldr	x9, [x10, #136]
 ldr	x10, [x10, #120]
 ldrb	w9, [x9, x10]
 subs	w8, w8, w9
 b.eq	 lzo1x_1_do_compress+0x974  // b.none
 b	 lzo1x_1_do_compress+0x970
 b	 lzo1x_1_do_compress+0xa78
 ldr	x10, [sp, #32]
 ldr	x8, [x10, #120]
 add	x8, x8, #0x1
 str	x8, [x10, #120]
 ldr	x8, [x10, #184]
 ldr	x9, [x10, #120]
 ldrb	w8, [x8, x9]
 ldr	x9, [x10, #136]
 ldr	x10, [x10, #120]
 ldrb	w9, [x9, x10]
 subs	w8, w8, w9
 b.eq	 lzo1x_1_do_compress+0x9ac  // b.none
 b	 lzo1x_1_do_compress+0x9a8
 b	 lzo1x_1_do_compress+0xa78
 ldr	x10, [sp, #32]
 ldr	x8, [x10, #120]
 add	x8, x8, #0x1
 str	x8, [x10, #120]
 ldr	x8, [x10, #184]
 ldr	x9, [x10, #120]
 ldrb	w8, [x8, x9]
 ldr	x9, [x10, #136]
 ldr	x10, [x10, #120]
 ldrb	w9, [x9, x10]
 subs	w8, w8, w9
 b.eq	 lzo1x_1_do_compress+0x9e4  // b.none
 b	 lzo1x_1_do_compress+0x9e0
 b	 lzo1x_1_do_compress+0xa78
 ldr	x10, [sp, #32]
 ldr	x8, [x10, #120]
 add	x8, x8, #0x1
 str	x8, [x10, #120]
 ldr	x8, [x10, #184]
 ldr	x9, [x10, #120]
 ldrb	w8, [x8, x9]
 ldr	x9, [x10, #136]
 ldr	x10, [x10, #120]
 ldrb	w9, [x9, x10]
 subs	w8, w8, w9
 b.eq	 lzo1x_1_do_compress+0xa1c  // b.none
 b	 lzo1x_1_do_compress+0xa18
 b	 lzo1x_1_do_compress+0xa78
 ldr	x9, [sp, #32]
 ldr	x8, [x9, #120]
 add	x8, x8, #0x1
 str	x8, [x9, #120]
 ldr	x8, [x9, #184]
 ldr	x10, [x9, #120]
 add	x8, x8, x10
 ldr	x9, [x9, #160]
 subs	x8, x8, x9
 b.cc	 lzo1x_1_do_compress+0xa4c  // b.lo, b.ul, b.last
 b	 lzo1x_1_do_compress+0xa48
 b	 lzo1x_1_do_compress+0xa80
 b	 lzo1x_1_do_compress+0xa50
 ldr	x10, [sp, #32]
 ldr	x8, [x10, #184]
 ldr	x9, [x10, #120]
 ldrb	w8, [x8, x9]
 ldr	x9, [x10, #136]
 ldr	x10, [x10, #120]
 ldrb	w9, [x9, x10]
 subs	w8, w8, w9
 b.eq	 lzo1x_1_do_compress+0x894  // b.none
 b	 lzo1x_1_do_compress+0xa78
 b	 lzo1x_1_do_compress+0xa7c
 b	 lzo1x_1_do_compress+0xa80
 ldr	x8, [sp, #32]
 ldr	x9, [x8, #184]
 ldr	x10, [x8, #136]
 subs	x9, x9, x10
 str	x9, [x8, #112]
 ldr	x10, [x8, #120]
 ldr	x9, [x8, #184]
 add	x9, x9, x10
 str	x9, [x8, #184]
 ldr	x8, [x8, #120]
 subs	x8, x8, #0x8
 b.hi	 lzo1x_1_do_compress+0xb1c  // b.pmore
 b	 lzo1x_1_do_compress+0xab4
 ldr	x8, [sp, #32]
 ldr	x8, [x8, #112]
 subs	x8, x8, #0x800
 b.hi	 lzo1x_1_do_compress+0xb1c  // b.pmore
 b	 lzo1x_1_do_compress+0xac8
 ldr	x11, [sp, #32]
 ldr	x8, [x11, #112]
 subs	x8, x8, #0x1
 str	x8, [x11, #112]
 ldr	x8, [x11, #120]
 subs	x9, x8, #0x1
 ldr	x8, [x11, #112]
 and	x8, x8, #0x7
 lsl	x8, x8, #2
 orr	x8, x8, x9, lsl #5
 ldr	x9, [x11, #176]
 add	x10, x9, #0x1
 str	x10, [x11, #176]
 strb	w8, [x9]
 ldr	x8, [x11, #112]
 lsr	x8, x8, #3
 ldr	x9, [x11, #176]
 add	x10, x9, #0x1
 str	x10, [x11, #176]
 strb	w8, [x9]
 b	 lzo1x_1_do_compress+0xdc0
 ldr	x8, [sp, #32]
 ldr	x8, [x8, #112]
 subs	x8, x8, #0x4, lsl #12
 b.hi	 lzo1x_1_do_compress+0xc2c  // b.pmore
 b	 lzo1x_1_do_compress+0xb30
 ldr	x8, [sp, #32]
 ldr	x9, [x8, #112]
 subs	x9, x9, #0x1
 str	x9, [x8, #112]
 ldr	x8, [x8, #120]
 subs	x8, x8, #0x21
 b.hi	 lzo1x_1_do_compress+0xb78  // b.pmore
 b	 lzo1x_1_do_compress+0xb50
 ldr	x11, [sp, #32]
 ldr	x8, [x11, #120]
 subs	x9, x8, #0x2
 mov	x8, #0x20                  	// #32
 orr	x8, x8, x9
 ldr	x9, [x11, #176]
 add	x10, x9, #0x1
 str	x10, [x11, #176]
 strb	w8, [x9]
 b	 lzo1x_1_do_compress+0xbf4
 ldr	x10, [sp, #32]
 ldr	x8, [x10, #120]
 subs	x8, x8, #0x21
 str	x8, [x10, #120]
 ldr	x9, [x10, #176]
 add	x8, x9, #0x1
 str	x8, [x10, #176]
 mov	w8, #0x20                  	// #32
 strb	w8, [x9]
 b	 lzo1x_1_do_compress+0xba0
 ldr	x8, [sp, #32]
 ldr	x8, [x8, #120]
 subs	x8, x8, #0xff
 b.ls	 lzo1x_1_do_compress+0xbd8  // b.plast
 b	 lzo1x_1_do_compress+0xbb4
 ldr	x10, [sp, #32]
 ldr	x8, [x10, #120]
 subs	x8, x8, #0xff
 str	x8, [x10, #120]
 ldr	x8, [x10, #176]
 add	x9, x8, #0x1
 str	x9, [x10, #176]
 strb	wzr, [x8]
 b	lzo1x_1_do_compress+0xba0
 ldr	x11, [sp, #32]
 ldr	x8, [x11, #120]
 ldr	x9, [x11, #176]
 add	x10, x9, #0x1
 str	x10, [x11, #176]
 strb	w8, [x9]
 b	lzo1x_1_do_compress+0xbf4
 ldr	x11, [sp, #32]
 ldr	x8, [x11, #112]
 lsl	x8, x8, #2
 ldr	x9, [x11, #176]
 add	x10, x9, #0x1
 str	x10, [x11, #176]
 strb	w8, [x9]
 ldr	x8, [x11, #112]
 lsr	x8, x8, #6
 ldr	x9, [x11, #176]
 add	x10, x9, #0x1
 str	x10, [x11, #176]
 strb	w8, [x9]
 b	lzo1x_1_do_compress+0xdbc
 ldr	x8, [sp, #32]
 ldr	x9, [x8, #112]
 subs	x9, x9, #0x4, lsl #12
 str	x9, [x8, #112]
 ldr	x8, [x8, #120]
 subs	x8, x8, #0x9
 b.hi	lzo1x_1_do_compress+0xc84  // b.pmore
 b	lzo1x_1_do_compress+0xc4c
 ldr	x11, [sp, #32]
 ldr	x8, [x11, #112]
 lsr	x8, x8, #11
 and	x9, x8, #0x8
 mov	x8, #0x10                  	// #16
 orr	x8, x8, x9
 ldr	x9, [x11, #120]
 subs	x9, x9, #0x2
 orr	x8, x8, x9
 ldr	x9, [x11, #176]
 add	x10, x9, #0x1
 str	x10, [x11, #176]
 strb	w8, [x9]
 b	lzo1x_1_do_compress+0xd84
 ldr	x8, [sp, #32]
 ldr	x8, [x8, #112]
 mov	x9, #0x403f                	// #16447
 and	x8, x8, x9
 subs	x8, x8, x9
 b.ne	lzo1x_1_do_compress+0xcf8  // b.any
 b	lzo1x_1_do_compress+0xca0
 ldr	x8, [sp, #32]
 ldr	x8, [x8, #120]
 subs	x8, x8, #0x105
 b.cc	 lzo1x_1_do_compress+0xcf8  // b.lo, b.ul, b.last
 b	 lzo1x_1_do_compress+0xcb4
 ldr	x8, [sp, #32]
 ldr	x8, [x8, #120]
 subs	x8, x8, #0x108
 b.hi	 lzo1x_1_do_compress+0xcf8  // b.pmore
 b	 lzo1x_1_do_compress+0xcc8
 ldurb	w8, [x29, #-57]
 cbz	w8,  lzo1x_1_do_compress+0xcf8
 b	 lzo1x_1_do_compress+0xcd4
 ldr	x9, [sp, #32]
 ldr	x10, [x9, #120]
 mov	x8, #0x104                 	// #260
 subs	x11, x10, #0x104
 ldr	x10, [x9, #184]
 subs	x10, x10, x11
 str	x10, [x9, #184]
 str	x8, [x9, #120]
 b	 lzo1x_1_do_compress+0xcf8
 ldr	x11, [sp, #32]
 ldr	x8, [x11, #120]
 subs	x8, x8, #0x9
 str	x8, [x11, #120]
 ldr	x8, [x11, #112]
 lsr	x8, x8, #11
 and	x9, x8, #0x8
 mov	x8, #0x10                  	// #16
 orr	x8, x8, x9
 ldr	x9, [x11, #176]
 add	x10, x9, #0x1
 str	x10, [x11, #176]
 strb	w8, [x9]
 b	lzo1x_1_do_compress+0xd30
 ldr	x8, [sp, #32]
 ldr	x8, [x8, #120]
 subs	x8, x8, #0xff
 b.ls	lzo1x_1_do_compress+0xd68  // b.plast
 b	lzo1x_1_do_compress+0xd44
 ldr	x10, [sp, #32]
 ldr	x8, [x10, #120]
 subs	x8, x8, #0xff
 str	x8, [x10, #120]
 ldr	x8, [x10, #176]
 add	x9, x8, #0x1
 str	x9, [x10, #176]
 strb	wzr, [x8]
 b	 lzo1x_1_do_compress+0xd30
 ldr	x11, [sp, #32]
 ldr	x8, [x11, #120]
 ldr	x9, [x11, #176]
 add	x10, x9, #0x1
 str	x10, [x11, #176]
 strb	w8, [x9]
 b	lzo1x_1_do_compress+0xd84
 ldr	x11, [sp, #32]
 ldr	x8, [x11, #112]
 lsl	x8, x8, #2
 ldr	x9, [x11, #176]
 add	x10, x9, #0x1
 str	x10, [x11, #176]
 strb	w8, [x9]
 ldr	x8, [x11, #112]
 lsr	x8, x8, #6
 ldr	x9, [x11, #176]
 add	x10, x9, #0x1
 str	x10, [x11, #176]
 strb	w8, [x9]
 b	 lzo1x_1_do_compress+0xdbc
 b	 lzo1x_1_do_compress+0xdc0
 ldr	x8, [sp, #32]
 ldr	x9, [x8, #200]
 mov	w8, #0xfe                  	// #254
 strb	w8, [x9]
 b	 lzo1x_1_do_compress+0xdd4
 ldr	x9, [sp, #32]
 ldr	x8, [x9, #184]
 str	x8, [x9, #152]
 b	 lzo1x_1_do_compress+0x100
 ldr	x10, [sp, #32]
 ldr	x8, [x10, #176]
 ldr	x9, [x10, #232]
 subs	x8, x8, x9
 ldr	x9, [x10, #224]
 str	x8, [x9]
 ldr	x8, [x10, #168]
 ldr	x9, [x10, #152]
 ldr	x10, [x10, #216]
 subs	x9, x9, x10
 subs	x0, x8, x9
 ldr	x28, [sp, #448]
 ldp	x29, x30, [sp, #432]
 add	sp, sp, #0x1d0
 ret
lzo1x_1_compress:
 sub	sp, sp, #0x40
 stp	x29, x30, [sp, #48]
 add	x29, sp, #0x30
 stur	x0, [x29, #-8]
 stur	x1, [x29, #-16]
 str	x2, [sp, #24]
 str	x3, [sp, #16]
 str	x4, [sp, #8]
 ldur	x0, [x29, #-8]
 ldur	x1, [x29, #-16]
 ldr	x2, [sp, #24]
 ldr	x3, [sp, #16]
 ldr	x4, [sp, #8]
 mov	w5, wzr
 bl	 lzogeneric1x_1_compress
 ldp	x29, x30, [sp, #48]
 add	sp, sp, #0x40
 ret
lzorle1x_1_compress:
 sub	sp, sp, #0x40
 stp	x29, x30, [sp, #48]
 add	x29, sp, #0x30
 stur	x0, [x29, #-8]
 stur	x1, [x29, #-16]
 str	x2, [sp, #24]
 str	x3, [sp, #16]
 str	x4, [sp, #8]
 ldur	x0, [x29, #-8]
 ldur	x1, [x29, #-16]
 ldr	x2, [sp, #24]
 ldr	x3, [sp, #16]
 ldr	x4, [sp, #8]
 mov	w5, #0x1                   	// #1
 bl	lzogeneric1x_1_compress
 ldp	x29, x30, [sp, #48]
 add	sp, sp, #0x40
 ret
get_unaligned_le32:
 sub	sp, sp, #0x20
 str	x0, [sp, #24]
 ldr	x8, [sp, #24]
 str	x8, [sp, #16]
 ldr	x8, [sp, #16]
 ldr	w8, [x8]
 str	w8, [sp, #12]
 ldr	w0, [sp, #12]
 add	sp, sp, #0x20
 ret
put_unaligned_le32:
 sub	sp, sp, #0x20
 str	w0, [sp, #28]
 str	x1, [sp, #16]
 b	 put_unaligned_le32+0x10
 ldr	x8, [sp, #16]
 str	x8, [sp, #8]
 ldr	w8, [sp, #28]
 ldr	x9, [sp, #8]
 str	w8, [x9]
 b	 put_unaligned_le32+0x28
 add	sp, sp, #0x20
 ret