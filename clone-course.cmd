cd /d %~dp0
for /F "tokens=*" %%A in (repos.txt) do (git clone https://github.com/kontur-courses/%%A ..\%%A)
