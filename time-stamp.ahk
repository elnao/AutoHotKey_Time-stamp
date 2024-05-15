#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

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

::cc::
FormatTime, Time,, yyyyMMddTHHmmss, America/Chicago ;Central Time - 24-Hour String with T Separator
SendInput, %Time%
Return

::ccc::
FormatTime, Time,, yyyy-MM-dd hh:mm:ss tt, America/Chicago ;Central Time - 12-Hour
SendInput, %Time%
Return



