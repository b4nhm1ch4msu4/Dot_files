#Requires AutoHotkey v2.0
#SingleInstance Force

Komorebic(cmd) {
    RunWait(format("komorebic.exe {}", cmd), , "Hide")
}

#q::Komorebic("close")
#m::Komorebic("minimize")

; Monitor move
^Right::Komorebic("cycle-send-to-monitor next")
^Left::Komorebic("cycle-send-to-monitor previous")

; Focus windows
#Left::Komorebic("focus left")
#Down::Komorebic("focus down")
#Up::Komorebic("focus up")
#Right::Komorebic("focus right")

!+[::Komorebic("cycle-focus previous")
!+]::Komorebic("cycle-focus next")

; Move windows
#+Left::Komorebic("move left")
#+Down::Komorebic("move down")
#+Up::Komorebic("move up")
#+Right::Komorebic("move right")

; Stack windows
#s::Komorebic("stack-all")
#+s::Komorebic("unstack-all")
#n::Komorebic("cycle-stack next")
#p::Komorebic("cycle-stack previous")

; Manipulate windows
#t::Komorebic("toggle-float")
#f::Komorebic("toggle-maximize")

; Layouts
#x::Komorebic("flip-layout horizontal")
#y::Komorebic("flip-layout vertical")
#+Space::Komorebic("cycle-layout next")

; Workspaces
#1::Komorebic("focus-workspace 0")
#2::Komorebic("focus-workspace 1")
#3::Komorebic("focus-workspace 2")
#4::Komorebic("focus-workspace 3")
#5::Komorebic("focus-workspace 4")
#6::Komorebic("focus-workspace 5")
#7::Komorebic("focus-workspace 6")
#8::Komorebic("focus-workspace 7")
#9::Komorebic("focus-workspace 8")
#0::Komorebic("focus-workspace 9")

; Move windows across workspaces
#+0::Komorebic("move-to-workspace 9")
#+1::Komorebic("move-to-workspace 0")
#+2::Komorebic("move-to-workspace 1")
#+3::Komorebic("move-to-workspace 2")
#+4::Komorebic("move-to-workspace 3")
#+5::Komorebic("move-to-workspace 4")
#+6::Komorebic("move-to-workspace 5")
#+7::Komorebic("move-to-workspace 6")
#+8::Komorebic("move-to-workspace 7")
#+9::Komorebic("move-to-workspace 8")


;# Custom app hotkeys
#Enter::{
Run "E:\Programs\PowerShell\7\pwsh.exe"
}
