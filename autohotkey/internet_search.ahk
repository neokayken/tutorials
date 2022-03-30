SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Reload시 팝업창이 안나오게함
#SingleInstance, Force

; AHK GUI
; sub-commands : add, show, submit
; object : edit, button
; basic gui script
; vSearchKeyword -> %SearchKeyword% it is a variable

; GoogleSearch meaning execute subroutine GoogleSearch

; vVariable: %Variable% 변수로 사용한다
; gLabel: Label이라는 subroutine (함수같은 것)
; Label -> 텍스트의 그 Label이 아니라 서브루틴을 의미

; font 설정 안하면 default
Gui, Font, s11 cF9F1D6, 맑은 고딕

Gui, Add, Text, x20 y20 , 웹에서 검색
Gui, Add, Edit, r2 y+15 w280 cBlack vSearchKeyword, 비트코인
Gui, Add, Button, x20 y+20 Default gGoogleSearch, 구글
Gui, Add, Button, x+10 Default gYoutubeSearch, 유튜브
Gui, Add, Button, x+10 Default gNaverSearch, 네이버
Gui, Add, Button, x+10 Default gSearchAll, 모두 검색

; +AlwaysOnTop -> 최상단
; -AlwaysOnTop -> 가려짐
Gui, +AlwaysOnTop
; hex color
Gui, Color, 2170E4


; w200 -> width 200px h200 -> height 200px
; x300 y300 -> 좌표를 의미 스크린 좌측 상단에서 x가 300px, y가 300px
Gui, Show, x800 y700 w330 h200, GUI 검색창

; 트레이 아이콘에 추가하기
Menu, Tray, Add, 인터넷 검색하기, SearchShow
return


; <-- ahk basic control HotKey -->

; 메모장
^n::run, notepad

; reload script
^r::Reload

; edit script
^e::Edit

; exit out
^q::ExitApp


; <-- Gui Instance Control -->

; tp show GUI
; Ctrl + Shift + s
; GuiClose를 사용하지 않을 경우
; ^+s::Gui, Show

; remove Gui from memory
; Ctrl + Shift + d
^+d::Gui, Destroy

SearchShow:
Gui, Show
return

; sub routine for google, youtube, naver etc.
; Nohide - after submit Gui stays
GoogleSearch:
 Gui, Submit, Nohide
 Run, https://www.google.com/search?q=%SearchKeyword%
 return

YoutubeSearch:
 Gui, Submit, Nohide
 Run, https://www.youtube.com/results?search_query=%SearchKeyword%
 return
 
NaverSearch:
 Gui, Submit, Nohide
 Run, https://search.naver.com/search.naver?query=%SearchKeyword%
 return
 
SearchAll:
 gosub, GoogleSearch
 gosub, YoutubeSearch
 gosub, NaverSearch
 return

; 서브루틴에 단축키 지정이 가능하다
^+a::
 gosub, SearchAll
 return

; 종료버튼 x 를 클릭시 실행
GuiClose:
 ExitApp
 return
