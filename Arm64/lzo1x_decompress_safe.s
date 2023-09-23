.text
.align 8
.globl lzo1x_decompress_safe

 lzo1x_decompress_safe:
 sub	sp, sp, #0x70
 stp	x29, x30, [sp, #16]
 add	x29, sp, #0x10
 stp	x28, x27, [sp, #32]
 stp	x26, x25, [sp, #48]
 stp	x24, x23, [sp, #64]
 stp	x22, x21, [sp, #80]
 stp	x20, x19, [sp, #96]
 mov	x20, x2
 mov	x23, x2
 cmp	x1, #0x3
 b.cs  lzo1x_decompress_safe+0x5c  // b.hs, b.nlast
 sub	x8, x23, x20
 mov	w0, #0xfffffffc            	// #-4
 str	x8, [x3]
 ldp	x20, x19, [sp, #96]
 ldp	x22, x21, [sp, #80]
 ldp	x24, x23, [sp, #64]
 ldp	x26, x25, [sp, #48]
 ldp	x28, x27, [sp, #32]
 ldp	x29, x30, [sp, #16]
 add	sp, sp, #0x70
 ret
 mov	x21, x1
 ldr	x8, [x3]
 cmp	x1, #0x5
 b.cc   lzo1x_decompress_safe+0x84  // b.lo, b.ul, b.last
 ldrb	w9, [x0]
 cmp	w9, #0x11
 b.ne   lzo1x_decompress_safe+0x94  // b.any
 ldrb	w19, [x0, #1]
 add	x28, x0, #0x2
 b	 lzo1x_decompress_safe+0x8c
 mov	w19, wzr
 mov	x28, x0
 ldrb	w9, [x28]
 b	   lzo1x_decompress_safe+0x9c
 mov	w19, wzr
 mov	x28, x0
 add	x26, x0, x21
 add	x27, x20, x8
 cmp	w9, #0x12
 b.cc	lzo1x_decompress_safe+0xc4  // b.lo, b.ul, b.last
 add	x28, x28, #0x1
 sub	w10, w9, #0x11
 mov	x23, x20
 cmp	w10, #0x4
 b.cs	lzo1x_decompress_safe+0x2dc  // b.hs, b.nlast
 b	lzo1x_decompress_safe+0x3f4
 mov	x10, xzr
 mov	x23, x20
 b	lzo1x_decompress_safe+0xd8
 add	x23, x23, x8
 add	x28, x28, x8
 mov	x9, x28
 ldrb	w8, [x9], #1
 cmp	w8, #0xf
 b.hi	lzo1x_decompress_safe+0x128  // b.pmore
 cmp	x10, #0x4
 b.eq	lzo1x_decompress_safe+0x194  // b.none
 cbnz	x10, lzo1x_decompress_safe+0x1b0
 cbnz	w8, lzo1x_decompress_safe+0x2d4
 mov	x9, xzr
 mov	x8, #0xfffffffffffffff1    	// #-15
 add	x10, x28, x9
 ldrb	w10, [x10, #1]
 cbnz	x10, lzo1x_decompress_safe+0x2b8
 add	x9, x9, #0x1
 sub	x8, x8, #0xff
 add	x10, x28, x9
 add	x10, x10, #0x1
 cmp	x10, x26
 b.ne	lzo1x_decompress_safe+0x100  // b.any
 b	lzo1x_decompress_safe+0x30
 cmp	w8, #0x40
 b.cc	lzo1x_decompress_safe+0x158  // b.lo, b.ul, b.last
 ldrb	w9, [x28, #1]
 ubfx	x10, x8, #2, #3
 mov	x11, #0xffffffffffffffff    	// #-1
 sub	x10, x23, x10
 add	x28, x28, #0x2
 eor	x9, x11, x9, lsl #3
 lsr	x11, x8, #5
 add	x12, x9, x10
 add	x11, x11, #0x1
 b	lzo1x_decompress_safe+0x3b0
 cmp	w8, #0x20
 b.cc	lzo1x_decompress_safe+0x1f8  // b.lo, b.ul, b.last
 ands	x10, x8, #0x1f
 b.ne	lzo1x_decompress_safe+0x398  // b.any
 mov	x8, #0xffffffffffffffe1    	// #-31
 add	x11, x28, x10
 ldrb	w11, [x11, #1]
 cbnz	x11, lzo1x_decompress_safe+0x364
 add	x10, x10, #0x1
 sub	x8, x8, #0xff
 add	x11, x28, x10
 add	x11, x11, #0x1
 cmp	x11, x26
 b.ne	lzo1x_decompress_safe+0x16c  // b.any
 b	lzo1x_decompress_safe+0x30
 ldrb	w9, [x28, #1]
 sub	x10, x23, x8, lsr #2
 add	x28, x28, #0x2
 mov	w11, #0x3                   	// #3
 sub	x9, x10, x9, lsl #2
 sub	x12, x9, #0x801
 b	lzo1x_decompress_safe+0x3b0
 ldrb	w9, [x28, #1]
 mov	x10, #0xffffffffffffffff    	// #-1
 sub	x11, x23, x8, lsr #2
 eor	x9, x10, x9, lsl #2
 add	x9, x9, x11
 cmp	x9, x20
 b.cc	lzo1x_decompress_safe+0x43c  // b.lo, b.ul, b.last
 sub	x10, x27, x23
 cmp	x10, #0x2
 b.cc	lzo1x_decompress_safe+0x430  // b.lo, b.ul, b.last
 ldrb	w10, [x9]
 add	x28, x28, #0x2
 strb	w10, [x23]
 and	x10, x8, #0x3
 ldrb	w9, [x9, #1]
 strb	w9, [x23, #1]
 add	x23, x23, #0x2
 b	lzo1x_decompress_safe+0x3f4
 sub	x10, x26, x9
 cmp	x10, #0x2
 b.cc	lzo1x_decompress_safe+0x30  // b.lo, b.ul, b.last
 ldrh	w25, [x9]
 mvn	w11, w25
 tst	x11, #0xfffc
 b.ne	lzo1x_decompress_safe+0x224  // b.any
 and	x11, x8, #0xf8
 cmp	x11, #0x18
 ccmp	w19, #0x0, #0x4, eq  // eq = none
 b.ne  lzo1x_decompress_safe+0x310  // b.any
 ands	x10, x8, #0x7
 b.ne	lzo1x_decompress_safe+0x28c  // b.any
 and	w10, w25, #0xff
 mov	x11, x9
 cbnz	w10,lzo1x_decompress_safe+0x250
 add	x11, x28, #0x2
 cmp	x11, x26
 b.eq	lzo1x_decompress_safe+0x30  // b.none
 ldrb	w10, [x11], #1
 cbz	w10, lzo1x_decompress_safe+0x23c
 sub	x11, x11, #0x1
 sub	x9, x11, x9
 mov	x12, #0x101010101010101     	// #72340172838076673
 movk	x12, #0xff
 cmp	x9, x12
 b.hi	lzo1x_decompress_safe+0x470  // b.pmore
 add	x12, x11, #0x1
 sub	x13, x26, x12
 cmp	x13, #0x2
 b.cc	lzo1x_decompress_safe+0x30  // b.lo, b.ul, b.last
 lsl	x13, x9, #8
 ldrh	w25, [x12]
 sub	x9, x13, x9
 mov	x28, x11
 add	x9, x9, w10, uxtw
 add	x10, x9, #0x7
 lsl	w8, w8, #11
 add	x11, x10, #0x2
 and	x8, x8, #0x4000
 add	x28, x28, #0x3
 sub	x8, x23, x8
 sub	x8, x8, x25, lsr #2
 cmp	x8, x23
 b.eq	lzo1x_decompress_safe+0x448  // b.none
 sub	x12, x8, #0x4, lsl #12
 mov	x8, x25
 b	lzo1x_decompress_safe+0x3b0
 mov	x11, #0x101010101010101     	// #72340172838076673
 movk	x11, #0xff
 cmp	x9, x11
 b.hi	lzo1x_decompress_safe+0x470  // b.pmore
 add	x9, x28, x9
 sub	x8, x10, x8
 add	x9, x9, #0x2
 add	x10, x8, #0x3
 mov	x28, x9
 sub	x8, x27, x23
 cmp	x8, x10
 b.cc	lzo1x_decompress_safe+0x430  // b.lo, b.ul, b.last
 sub	x8, x26, x28
 add	x9, x10, #0x3
 cmp	x8, x9
 b.cc	lzo1x_decompress_safe+0x30  // b.lo, b.ul, b.last
 ldrb	w8, [x28], #1
 subs	x10, x10, #0x1
 strb	w8, [x23], #1
 b.ne	lzo1x_decompress_safe+0x2f8  // b.any
 mov	w10, #0x4                   	// #4
 b	lzo1x_decompress_safe+0xd8
 cmp	x10, #0x3
 b.cc	lzo1x_decompress_safe+0x30  // b.lo, b.ul, b.last
 ldrb	w9, [x28, #3]
 and	x8, x8, #0x7
 bfi	x8, x9, #3, #8
 add	x24, x8, #0x4
 sub	x8, x27, x23
 cmp	x8, x24
 b.cc	lzo1x_decompress_safe+0x430  // b.lo, b.ul, b.last
 str	x0, [sp, #8]
 mov	x0, x23
 mov	w1, wzr
 mov	x2, x24
 mov	x22, x3
 bl	 memset
 ldr	x0, [sp, #8]
 mov	x3, x22
 add	x23, x23, x24
 and	x10, x25, #0x3
 add	x28, x28, #0x4
 b	lzo1x_decompress_safe+0x3f4
 mov	x12, #0x101010101010101     	// #72340172838076673
 movk	x12, #0xff
 cmp	x10, x12
 b.hi	lzo1x_decompress_safe+0x470  // b.pmore
 add	x12, x21, x0
 sub	x9, x12, x9
 mvn	x12, x10
 add	x9, x12, x9
 cmp	x9, #0x2
 b.cc	lzo1x_decompress_safe+0x30  // b.lo, b.ul, b.last
 add	x9, x28, x10
 sub	x10, x11, x8
 add	x9, x9, #0x2
 ldrh	w8, [x9], #2
 mov	x12, #0xffffffffffffffff    	// #-1
 add	x11, x10, #0x2
 mov	x28, x9
 eor	x10, x12, x8, lsr #2
 add	x12, x10, x23
 cmp	x12, x20
 b.cc	lzo1x_decompress_safe+0x43c  // b.lo, b.ul, b.last
 sub	x9, x27, x23
 cmp	x9, x11
 b.cc	lzo1x_decompress_safe+0x430  // b.lo, b.ul, b.last
 ldrb	w9, [x12]
 and	x10, x8, #0x3
 add	x8, x23, x11
 strb	w9, [x23]
 ldrb	w9, [x12, #1]
 strb	w9, [x23, #1]
 add	x23, x23, #0x2
 add	x9, x12, #0x2
 ldrb	w11, [x9], #1
 strb	w11, [x23], #1
 cmp	x23, x8
 b.cc	lzo1x_decompress_safe+0x3e4  // b.lo, b.ul, b.last
 sub	x8, x26, x28
 add	x9, x10, #0x3
 cmp	x8, x9
 b.cc	lzo1x_decompress_safe+0x30  // b.lo, b.ul, b.last
 sub	x8, x27, x23
 cmp	x8, x10
 b.cc	lzo1x_decompress_safe+0x430  // b.lo, b.ul, b.last
 cbz	x10,lzo1x_decompress_safe+0xd8
 mov	x8, xzr
 ldrb	w9, [x28, x8]
 strb	w9, [x23, x8]
 add	x8, x8, #0x1
 cmp	x10, x8
 b.ne	lzo1x_decompress_safe+0x418  // b.any
 b	 lzo1x_decompress_safe+0xd0
 sub	x8, x23, x20
 mov	w0, #0xfffffffb            	// #-5
 b	 lzo1x_decompress_safe+0x38
 sub	x8, x23, x20
 mov	w0, #0xfffffffa            	// #-6
 b	lzo1x_decompress_safe+0x38
 sub	x8, x23, x20
 cmp	x11, #0x3
 str	x8, [x3]
 b.ne	lzo1x_decompress_safe+0x470  // b.any
 cmp	x28, x26
 b.eq	lzo1x_decompress_safe+0x478  // b.none
 mov	w8, #0xfffffffc            	// #-4
 mov	w9, #0xfffffff8            	// #-8
 csel	w0, w9, w8, cc  // cc = lo, ul, last
 b	lzo1x_decompress_safe+0x3c
 mov	w0, #0xffffffff            	// #-1
 b	lzo1x_decompress_safe+0x3c
 mov	w0, wzr
 b	lzo1x_decompress_safe+0x3c