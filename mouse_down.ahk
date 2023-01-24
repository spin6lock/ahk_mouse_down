#SingleInstance Force
#IfWinActive ahk_class PotPlayer64
XButton1::
Send {z}
;loop 10 {
;	Send {x}
;}
return
XButton2::
loop 10 {
    Send {c}
}

#IfWinActive
XButton1::PgDn
XButton2::PgUp
