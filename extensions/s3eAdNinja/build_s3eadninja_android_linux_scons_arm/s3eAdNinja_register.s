	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"s3eAdNinja_register.cpp"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.align	2
.LC0:
	.ascii	"ADNINJA_VERBOSE\000"
	.align	2
.LC1:
	.ascii	"calling s3eAdNinja func on main thread: s3eAdNinjaS"
	.ascii	"tart\000"
	.section	.text._ZL20s3eAdNinjaStart_wrapPKc,"ax",%progbits
	.align	2
	.type	_ZL20s3eAdNinjaStart_wrapPKc, %function
_ZL20s3eAdNinjaStart_wrapPKc:
.LFB15:
	.file 1 "C:\\marmalade\\6.0\\extensions\\s3eadninja\\source\\generic\\s3eAdNinja_register.cpp"
	.loc 1 28 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI0:
	sub	sp, sp, #8
.LCFI1:
	.loc 1 30 0
	ldr	r4, .L4
.LPIC3:
	add	r4, pc, r4
	.loc 1 28 0
	str	r0, [sp, #4]
	.loc 1 29 0
	ldr	r3, .L4+4
.LPIC0:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L2
	ldr	r3, .L4+8
.LPIC1:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L4+12
.LPIC2:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L2:
	.loc 1 30 0
	ldr	r3, .L4+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #1
	ldr	r2, [sp, #4]
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 31 0
	mov	r0, r3
	add	sp, sp, #8
	ldmfd	sp!, {r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+8)
	.word	.LC0-(.LPIC0+8)
	.word	.LC0-(.LPIC1+8)
	.word	.LC1-(.LPIC2+8)
	.word	s3eAdNinjaStart(GOT)
.LFE15:
	.size	_ZL20s3eAdNinjaStart_wrapPKc, .-_ZL20s3eAdNinjaStart_wrapPKc
	.section	.rodata
	.align	2
.LC2:
	.ascii	"calling s3eAdNinja func on main thread: s3eAdNinjaR"
	.ascii	"equestFreshAd\000"
	.section	.text._ZL29s3eAdNinjaRequestFreshAd_wrapv,"ax",%progbits
	.align	2
	.type	_ZL29s3eAdNinjaRequestFreshAd_wrapv, %function
_ZL29s3eAdNinjaRequestFreshAd_wrapv:
.LFB16:
	.loc 1 34 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI2:
	.loc 1 36 0
	ldr	r4, .L9
.LPIC7:
	add	r4, pc, r4
	.loc 1 35 0
	ldr	r3, .L9+4
.LPIC4:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L7
	ldr	r3, .L9+8
.LPIC5:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L9+12
.LPIC6:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L7:
	.loc 1 36 0
	ldr	r3, .L9+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 37 0
	mov	r0, r3
	ldmfd	sp!, {r4, lr}
	bx	lr
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+8)
	.word	.LC0-(.LPIC4+8)
	.word	.LC0-(.LPIC5+8)
	.word	.LC2-(.LPIC6+8)
	.word	s3eAdNinjaRequestFreshAd(GOT)
.LFE16:
	.size	_ZL29s3eAdNinjaRequestFreshAd_wrapv, .-_ZL29s3eAdNinjaRequestFreshAd_wrapv
	.section	.rodata
	.align	2
.LC3:
	.ascii	"calling s3eAdNinja func on main thread: s3eAdNinjaS"
	.ascii	"how\000"
	.section	.text._ZL19s3eAdNinjaShow_wrapv,"ax",%progbits
	.align	2
	.type	_ZL19s3eAdNinjaShow_wrapv, %function
_ZL19s3eAdNinjaShow_wrapv:
.LFB17:
	.loc 1 40 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI3:
	.loc 1 42 0
	ldr	r4, .L14
.LPIC11:
	add	r4, pc, r4
	.loc 1 41 0
	ldr	r3, .L14+4
.LPIC8:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L12
	ldr	r3, .L14+8
.LPIC9:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L14+12
.LPIC10:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L12:
	.loc 1 42 0
	ldr	r3, .L14+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 43 0
	mov	r0, r3
	ldmfd	sp!, {r4, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+8)
	.word	.LC0-(.LPIC8+8)
	.word	.LC0-(.LPIC9+8)
	.word	.LC3-(.LPIC10+8)
	.word	s3eAdNinjaShow(GOT)
.LFE17:
	.size	_ZL19s3eAdNinjaShow_wrapv, .-_ZL19s3eAdNinjaShow_wrapv
	.section	.rodata
	.align	2
.LC4:
	.ascii	"calling s3eAdNinja func on main thread: s3eAdNinjaH"
	.ascii	"ide\000"
	.section	.text._ZL19s3eAdNinjaHide_wrapv,"ax",%progbits
	.align	2
	.type	_ZL19s3eAdNinjaHide_wrapv, %function
_ZL19s3eAdNinjaHide_wrapv:
.LFB18:
	.loc 1 46 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI4:
	.loc 1 48 0
	ldr	r4, .L19
.LPIC15:
	add	r4, pc, r4
	.loc 1 47 0
	ldr	r3, .L19+4
.LPIC12:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L17
	ldr	r3, .L19+8
.LPIC13:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L19+12
.LPIC14:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L17:
	.loc 1 48 0
	ldr	r3, .L19+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 49 0
	mov	r0, r3
	ldmfd	sp!, {r4, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC15+8)
	.word	.LC0-(.LPIC12+8)
	.word	.LC0-(.LPIC13+8)
	.word	.LC4-(.LPIC14+8)
	.word	s3eAdNinjaHide(GOT)
.LFE18:
	.size	_ZL19s3eAdNinjaHide_wrapv, .-_ZL19s3eAdNinjaHide_wrapv
	.section	.text.s3eAdNinjaRegister,"ax",%progbits
	.align	2
	.global	s3eAdNinjaRegister
	.hidden	s3eAdNinjaRegister
	.type	s3eAdNinjaRegister, %function
s3eAdNinjaRegister:
.LFB19:
	.loc 1 59 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI5:
	sub	sp, sp, #28
.LCFI6:
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	.loc 1 60 0
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #12]
	str	r2, [sp, #0]
	mov	r2, #0
	str	r2, [sp, #4]
	ldr	r0, .L23
	mov	r1, #4
	mov	r2, r3
	ldr	r3, [sp, #16]
	bl	s3eEdkCallbacksRegister(PLT)
	mov	r3, r0
	.loc 1 61 0
	mov	r0, r3
	add	sp, sp, #28
	ldr	lr, [sp], #4
	bx	lr
.L24:
	.align	2
.L23:
	.word	-1924697531
.LFE19:
	.size	s3eAdNinjaRegister, .-s3eAdNinjaRegister
	.section	.text.s3eAdNinjaUnRegister,"ax",%progbits
	.align	2
	.global	s3eAdNinjaUnRegister
	.hidden	s3eAdNinjaUnRegister
	.type	s3eAdNinjaUnRegister, %function
s3eAdNinjaUnRegister:
.LFB20:
	.loc 1 64 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI7:
	sub	sp, sp, #20
.LCFI8:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	.loc 1 65 0
	ldr	r3, [sp, #12]
	mov	r2, #0
	str	r2, [sp, #0]
	ldr	r0, .L27
	mov	r1, #4
	mov	r2, r3
	ldr	r3, [sp, #8]
	bl	s3eEdkCallbacksUnRegister(PLT)
	mov	r3, r0
	.loc 1 66 0
	mov	r0, r3
	add	sp, sp, #20
	ldr	lr, [sp], #4
	bx	lr
.L28:
	.align	2
.L27:
	.word	-1924697531
.LFE20:
	.size	s3eAdNinjaUnRegister, .-s3eAdNinjaUnRegister
	.section	.rodata
	.align	2
.LC5:
	.ascii	"s3eAdNinja\000"
	.section	.text._Z21s3eAdNinjaRegisterExtv,"ax",%progbits
	.align	2
	.global	_Z21s3eAdNinjaRegisterExtv
	.hidden	_Z21s3eAdNinjaRegisterExtv
	.type	_Z21s3eAdNinjaRegisterExtv, %function
_Z21s3eAdNinjaRegisterExtv:
.LFB21:
	.loc 1 69 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI9:
	sub	sp, sp, #68
.LCFI10:
.LBB2:
	.loc 1 87 0
	ldr	r2, .L31
.LPIC22:
	add	r2, pc, r2
	.loc 1 72 0
	ldr	r3, .L31+4
.LPIC16:
	add	r3, pc, r3
	str	r3, [sp, #40]
	.loc 1 73 0
	ldr	r3, .L31+8
.LPIC17:
	add	r3, pc, r3
	str	r3, [sp, #44]
	.loc 1 74 0
	ldr	r3, .L31+12
.LPIC18:
	add	r3, pc, r3
	str	r3, [sp, #48]
	.loc 1 75 0
	ldr	r3, .L31+16
.LPIC19:
	add	r3, pc, r3
	str	r3, [sp, #52]
	.loc 1 76 0
	ldr	r3, .L31+20
.LPIC20:
	add	r3, pc, r3
	str	r3, [sp, #56]
	.loc 1 77 0
	ldr	r3, .L31+24
.LPIC21:
	add	r3, pc, r3
	str	r3, [sp, #60]
	.loc 1 82 0
	add	r3, sp, #16
	mov	r1, #0
	str	r1, [r3, #0]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3, #0]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3, #0]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3, #0]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3, #0]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3, #0]
	add	r3, r3, #4
	.loc 1 87 0
	add	r1, sp, #40
	add	ip, sp, #16
	ldr	r3, .L31+28
	ldr	r3, [r2, r3]
	str	r3, [sp, #0]
	ldr	r3, .L31+32
	ldr	r3, [r2, r3]
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp, #8]
	ldr	r3, .L31+36
.LPIC23:
	add	r3, pc, r3
	mov	r0, r3
	mov	r2, #24
	mov	r3, ip
	bl	s3eEdkRegister(PLT)
.LBE2:
	.loc 1 88 0
	add	sp, sp, #68
	ldr	lr, [sp], #4
	bx	lr
.L32:
	.align	2
.L31:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+8)
	.word	s3eAdNinjaRegister-(.LPIC16+8)
	.word	s3eAdNinjaUnRegister-(.LPIC17+8)
	.word	_ZL20s3eAdNinjaStart_wrapPKc-(.LPIC18+8)
	.word	_ZL29s3eAdNinjaRequestFreshAd_wrapv-(.LPIC19+8)
	.word	_ZL19s3eAdNinjaShow_wrapv-(.LPIC20+8)
	.word	_ZL19s3eAdNinjaHide_wrapv-(.LPIC21+8)
	.word	_Z14s3eAdNinjaInitv(GOT)
	.word	_Z19s3eAdNinjaTerminatev(GOT)
	.word	.LC5-(.LPIC23+8)
.LFE21:
	.size	_Z21s3eAdNinjaRegisterExtv, .-_Z21s3eAdNinjaRegisterExtv
	.section	.text.RegisterExt,"ax",%progbits
	.align	2
	.global	RegisterExt
	.type	RegisterExt, %function
RegisterExt:
.LFB22:
	.loc 1 107 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI11:
	.loc 1 108 0
	bl	_Z21s3eAdNinjaRegisterExtv(PLT)
	.loc 1 109 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.LFE22:
	.size	RegisterExt, .-RegisterExt
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.byte	0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0x0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI4-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI5-.LFB19
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x20
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI7-.LFB20
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI9-.LFB21
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x48
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI11-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE14:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB15
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI1
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LFB16
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB17
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI3
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB18
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LFE18
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB19
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI6
	.4byte	.LFE19
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB20
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI8
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB21
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI10
	.4byte	.LFE21
	.2byte	0x3
	.byte	0x7d
	.sleb128 72
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB22
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI11
	.4byte	.LFE22
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
	.file 2 "../../../s3e/h/s3eTypes.h"
	.file 3 "../h/s3eAdNinja.h"
	.section	.debug_info
	.4byte	0x26c
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x4
	.4byte	.LASF33
	.4byte	.LASF34
	.4byte	0x0
	.4byte	0x0
	.4byte	.Ldebug_ranges0+0x0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x86
	.4byte	0x4c
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2
	.byte	0xe2
	.4byte	0x8c
	.uleb128 0x6
	.4byte	.LASF8
	.sleb128 0
	.uleb128 0x6
	.4byte	.LASF9
	.sleb128 1
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0xe6
	.4byte	0x73
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x2
	.2byte	0x100
	.4byte	0xa3
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x9
	.4byte	0x68
	.4byte	0xbd
	.uleb128 0xa
	.4byte	0xbd
	.uleb128 0xa
	.4byte	0xbd
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF14
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd6
	.uleb128 0xd
	.4byte	0xc9
	.uleb128 0xe
	.4byte	0xbd
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.4byte	0x10b
	.uleb128 0x6
	.4byte	.LASF16
	.sleb128 0
	.uleb128 0x6
	.4byte	.LASF17
	.sleb128 1
	.uleb128 0x6
	.4byte	.LASF18
	.sleb128 2
	.uleb128 0x6
	.4byte	.LASF19
	.sleb128 3
	.uleb128 0x6
	.4byte	.LASF20
	.sleb128 4
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0x1b
	.4byte	0x8c
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST0
	.4byte	0x135
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1b
	.4byte	0xd0
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.byte	0x21
	.4byte	0x8c
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0x27
	.4byte	0x8c
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST2
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2d
	.4byte	0x8c
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST3
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3a
	.4byte	0x8c
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST4
	.4byte	0x1c0
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0x3a
	.4byte	0xe0
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.ascii	"fn\000"
	.byte	0x1
	.byte	0x3a
	.4byte	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3a
	.4byte	0xbd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3f
	.4byte	0x8c
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LLST5
	.4byte	0x1f8
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0x3f
	.4byte	0xe0
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.ascii	"fn\000"
	.byte	0x1
	.byte	0x3f
	.4byte	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF29
	.byte	0x1
	.byte	0x44
	.4byte	.LASF36
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LLST6
	.4byte	0x23b
	.uleb128 0x15
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0x47
	.4byte	0x23b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.4byte	.LASF31
	.byte	0x1
	.byte	0x52
	.4byte	0x24b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.4byte	0xbd
	.4byte	0x24b
	.uleb128 0x18
	.4byte	0xc6
	.byte	0x5
	.byte	0x0
	.uleb128 0x17
	.4byte	0x4c
	.4byte	0x25b
	.uleb128 0x18
	.4byte	0xc6
	.byte	0x5
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF37
	.byte	0x1
	.byte	0x6a
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LLST7
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x68
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x270
	.4byte	0x17a
	.ascii	"s3eAdNinjaRegister\000"
	.4byte	0x1c0
	.ascii	"s3eAdNinjaUnRegister\000"
	.4byte	0x1f8
	.ascii	"s3eAdNinjaRegisterExt\000"
	.4byte	0x25b
	.ascii	"RegisterExt\000"
	.4byte	0x0
	.section	.debug_aranges,"",%progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF33:
	.ascii	"C:\\marmalade\\6.0\\extensions\\s3eadninja\\source\\"
	.ascii	"generic\\s3eAdNinja_register.cpp\000"
.LASF29:
	.ascii	"s3eAdNinjaRegisterExt\000"
.LASF23:
	.ascii	"s3eAdNinjaHide_wrap\000"
.LASF17:
	.ascii	"S3E_ADNINJA_CALLBACK_AD_FAIL\000"
.LASF16:
	.ascii	"S3E_ADNINJA_CALLBACK_AD_LOAD\000"
.LASF28:
	.ascii	"s3eAdNinjaUnRegister\000"
.LASF22:
	.ascii	"s3eAdNinjaShow_wrap\000"
.LASF24:
	.ascii	"appKey\000"
.LASF26:
	.ascii	"pData\000"
.LASF8:
	.ascii	"S3E_RESULT_SUCCESS\000"
.LASF0:
	.ascii	"unsigned char\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF10:
	.ascii	"int32\000"
.LASF36:
	.ascii	"_Z21s3eAdNinjaRegisterExtv\000"
.LASF21:
	.ascii	"s3eAdNinjaRequestFreshAd_wrap\000"
.LASF34:
	.ascii	"c:\\\\marmalade\\\\6.0\\\\extensions\\\\s3eadninja\\"
	.ascii	"\\build_s3eadninja_android_linux_scons_arm\000"
.LASF20:
	.ascii	"S3E_ADNINJA_CALLBACK_MAX\000"
.LASF15:
	.ascii	"s3eAdNinjaCallback\000"
.LASF19:
	.ascii	"S3E_ADNINJA_CALLBACK_FULLSCREEN_END\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF31:
	.ascii	"flags\000"
.LASF32:
	.ascii	"GNU C++ 4.4.3\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF25:
	.ascii	"cbid\000"
.LASF9:
	.ascii	"S3E_RESULT_ERROR\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF5:
	.ascii	"long long int\000"
.LASF14:
	.ascii	"char\000"
.LASF30:
	.ascii	"funcPtrs\000"
.LASF37:
	.ascii	"RegisterExt\000"
.LASF12:
	.ascii	"s3eCallback\000"
.LASF3:
	.ascii	"short int\000"
.LASF35:
	.ascii	"s3eAdNinjaStart_wrap\000"
.LASF13:
	.ascii	"long int\000"
.LASF1:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"s3eResult\000"
.LASF18:
	.ascii	"S3E_ADNINJA_CALLBACK_FULLSCREEN_BEGIN\000"
.LASF27:
	.ascii	"s3eAdNinjaRegister\000"
	.ident	"GCC: (GNU) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
