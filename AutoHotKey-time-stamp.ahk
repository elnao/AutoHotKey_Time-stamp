SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

RegRead, LocalTimeZone, HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation, TimeZoneKeyName

TZDisplay =

if LocalTimeZone contains central
{
    TZDisplay =
}
else if LocalTimeZone contains eastern
{
	TZDisplay = E
}	
else if LocalTimeZone contains mountain
{
	TZDisplay = M
}	
else if LocalTimeZone contains pacific
{	
	TZDisplay = P
}
else if LocalTimeZone contains alaska
{
    TZDisplay = AK
}
else
{
    TZDisplay = TILT
}

; Handles Central Timezone
if LocalTimeZone not contains central
{	
	MsgBox Computer is not in Central Timezone. %TZDisplay% will be appended to "CC" timestamp
    ::cc::
    FormatTime, Time,, MM/dd/yyyy hh:mm tt %TZDisplay% ;Special Time Format
    SendInput, %Time%
    Return
	
	::ccc::
    FormatTime, Time,, MM/dd/yyyy hh:mm:ss tt %TZDisplay% ;Special Time Format with seconds
    SendInput, %Time%
    Return
}
else 
{
    ::cc::
    FormatTime, Time,, MM/dd/yyyy hh:mm tt ;Special Time Format
    SendInput, %Time%
    Return
	
	::ccc::
    FormatTime, Time,, MM/dd/yyyy hh:mm:ss tt ;Special Time Format with seconds
    SendInput, %Time%
    Return
}
::tt::
FormatTime, Time,, yyyyMMddTHHmmss ;24-Hour String with T Separator
SendInput, %Time%
Return

::ttt::
FormatTime, Time,, yyyy-MM-dd hh:mm:ss tt ;12-Hour
SendInput, %Time%
Return

::zz::
FormatTime, vNowUTC, % A_NowUTC, yyyyMMddTHHmmssZ ;UTC Compact Date-Time String with T and Z Separators
SendInput, % vNowUTC
Return

::zzz::
FormatTime, vNowUTC, % A_NowUTC, yyyy-MM-ddTHH:mm:ssZ ;UTC Date-Time String with T and Z Separators
SendInput, % vNowUTC
Return




