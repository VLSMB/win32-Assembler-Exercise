	.386
	.model flat,stdcall
	option casemap:none
include windows.inc
include user32.inc
includelib user32.lib
include kernel32.inc
includelib kernel32.lib
  .const
TITLE db 'MessageBox',0
TEXT db 'Hello World!',0
  .code
start:
  push 0
  lea eax,TEXT
  push eax
  lea eax,TITLE
  push eax
  push 0
  call MessageBoxA
  push 0
  call ExitProcess
end start
