#SingleInstance Force

;链接：https://www.zhihu.com/question/41446565/answer/91110371
SwitchIME(dwLayout){
    HKL:=DllCall("LoadKeyboardLayout", Str, dwLayout, UInt, 1)
    ControlGetFocus,ctl,A
    SendMessage,0x50,0,HKL,%ctl%,A
}

#IfWinActive ahk_class PotPlayer64
XButton1::
SwitchIME(04090409)
Send {z}
;loop 10 {
;	Send {x}
;}
return
XButton2::
loop 10 {
    SwitchIME(04090409) ; 英语(美国) 美式键盘
    Send {c}
}


#IfWinActive ahk_exe Viewer.exe
XButton1::Left
XButton2::Right


#IfWinActive
XButton1::PgDn
XButton2::PgUp
