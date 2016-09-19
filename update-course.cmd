cd /d %~dp0
set varDir=%~dp0
cd ..
for /f "tokens=*" %%A in ('dir /b /a:d "."') do (cd "%varDir%..\%%A" & git stash & git pull & git stash pop)
cd "%varDir%"