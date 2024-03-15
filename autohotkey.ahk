;#include AHKHID.ahk

vk1D & 4::MouseClick,Left ;無変換 + 4 = 左クリック
vk1D & 5::MouseClick,Right ;無変換 + 5 = 右クリック
vk1D & vkBA::Send,{F2}	;無変換 + セミコロン(;) = F2（名前の変更）
vk1D & ]::Send,{F3}	;無変換 + ドット(.) = F3（検索用）
vk1D & D::Send,{Delete} ;無変換 + d = delete
vk1D & B::Send,{Backspace} ;無変換 + b = backspace
vk1D & E::Send,{Enter} ;無変換 + e = Enter

; キーワード移動
^+H::Send,{Ctrl down}{Left}{Ctrl up}
^+J::Send,{Ctrl down}{Down}{Ctrl up}
^+K::Send,{Ctrl down}{Up}{Ctrl up}
^+L::Send,{Ctrl down}{Right}{Ctrl up}


;移動系 ctrl + hjkl   LAlt + jk
^H::Send,{Left} 
^J::Send,{Down}
^K::Send,{Up}
^L::Send,{Right}
vk1D & J::Send,{PgDn}
vk1D & K::Send,{PgUp}
;#If WinActive("ahk_class CabinetWClass")
vk1D & L::Send,{Alt down}{Right}{Alt up}
vk1D & H::Send,{Alt down}{Left}{Alt up}
;#IfWinActive


;twitter
;AppsKey::Run,"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://tweetdeck.twitter.com"

;suspend
NumLock::suspend


;terminalでctrl + v　貼り付け
#IfWinActive ahk_class ConsoleWindowClass
^V::
  Send !{space}
  Send ep
  Return
#IfWinActive


;explorer 指定する方法
;#If WinActive("ahk_class CabinetWClass")
;vk1D & L::Send,{Alt down}{Right}{Alt up}
;vk1D & H::Send,{Alt down}{Left}{Alt up}
;#IfWinActive


#IfWinActive ahk_exe Discord.exe
Alt & J::Send,{Alt down}{Down}{Alt up}
Alt & K::Send,{Alt down}{Up}{Alt up}
Tab & J::Send,{Alt down}{Shift down}{Down}{Shift up}{Alt up}
Tab & K::Send,{Alt down}{Shift down}{Up}{Shift up}{Alt up}
#IfWinActive

;強制終了
LWin & Q::Send,{Alt down}{F4}{Alt up}

;win + hjkl
LWin & h::Send,{LWin down}{Left}{LWin up}
LWin & j::Send,{LWin down}{Down}{LWin up}
LWin & k::Send,{LWin down}{Up}{LWin up}
LWin & l::Send,{LWin down}{Right}{LWin up}
