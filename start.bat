echo 转换当前目录下音频格式
Setlocal Enabledelayedexpansion
set "str= "
for /f "delims=" %%i in ('dir /b "."') do (
set "var=%%i" & ren "%%i" "!var:%str%=!")

for %%f in (*.ncm) do (
 echo %%f
 ncmdump.exe %%f
)
