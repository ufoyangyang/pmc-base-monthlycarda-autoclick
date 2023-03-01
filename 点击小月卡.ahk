; This script was created using Pulover's Macro Creator
; www.macrocreator.com

#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Off
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines 0
#Persistent


Numpad7::
Macro1:
Loop
{
    WinActivate, 原神 ahk_class UnityWndClass
    Sleep, 333
    Sleep, 15
    Loop, 10
    {
        CoordMode, Pixel, Window
        ImageSearch, FoundX, FoundY, 0, 0, 2560, 1440, C:\Program Files\MacroCreator\Screenshots\Screen_20230228223504.png
        Sleep, 20
    }
    If (ErrorLevel = 0)
    {
        Loop, 10
        {
            CoordMode, Pixel, Window
            ImageSearch, FoundX, FoundY, 0, 0, 2560, 1440, C:\Program Files\MacroCreator\Screenshots\Screen_20230228223504.png
            CenterImgSrchCoords("C:\Program Files\MacroCreator\Screenshots\Screen_20230228223504.png", FoundX, FoundY)
            If ErrorLevel = 0
            	Click, %FoundX%, %FoundY% Left, 1
            Sleep, 20
        }
        Click, Left, 5
        Sleep, 10
    }
}
Return


Numpad8::ExitApp

Numpad9::Pause

CenterImgSrchCoords(File, ByRef CoordX, ByRef CoordY)
{
	static LoadedPic
	LastEL := ErrorLevel

	Gui, Pict:Add, Pic, vLoadedPic, % RegExReplace(File, "^(\*\w+\s)+")
	GuiControlGet, LoadedPic, Pict:Pos
	Gui, Pict:Destroy
	CoordX += LoadedPicW // 2
	CoordY += LoadedPicH // 2
	ErrorLevel := LastEL
}
