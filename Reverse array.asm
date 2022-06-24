include irvine32.inc
.data 
myarray dword 10,20,30,40
msg byte 'after reversing array is:',0
.code
main proc
mov ecx,lengthof myarray
mov esi,offset myarray
tostack:
mov eax,[esi]
push eax
add esi,type myarray
loop tostack
mov edx,offset msg
call writestring
mov ecx,lengthof myarray
fromstack:
pop eax
call writedec
mov al,' '
call writechar
loop fromstack
call crlf
exit
main endp
end main