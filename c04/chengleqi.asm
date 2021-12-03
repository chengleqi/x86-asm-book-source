mov ax, 0xb800
mov ds, ax
mov byte [0x00], 'c'
mov byte [0x02], 'l'
mov byte [0x04], 'q'

;死循环
jmp $

;times 指令循环次数 需要执行的指令
;$代表当前指令的地址
;$$代表段首地址
times 510 - ($ - $$) db 0
;主引导扇区的最后两个字节
db 0x55, 0xaa