@echo off

CD %~dp0

echo.
echo - Get version...
for /f %%i in ('getVer.exe ..\Source\SharedAssemblyInfo.cs') do set version=%%i
echo Version: %version%

set version=1.5.1-beta3

echo.
echo.
echo - Pack NuGets...
echo.
nuget.exe pack NuGet\HtmlRenderer.Core.nuspec -Version %version% -OutputDirectory Release
nuget.exe pack NuGet\HtmlRenderer.WinForms.nuspec -Version %version% -OutputDirectory Release
nuget.exe pack NuGet\HtmlRenderer.WPF.nuspec -Version %version% -OutputDirectory Release
nuget.exe pack NuGet\HtmlRenderer.Mono.nuspec -Version %version% -OutputDirectory Release
nuget.exe pack NuGet\HtmlRenderer.PdfSharp.nuspec -Version %version% -OutputDirectory Release