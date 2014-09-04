echo off
REM put tokens on their own line | REM remove tabs | remove all blanklines
for /f %%a in ('dir /b *.txt') do sed -e "s/\[[^][]*\]/\n&\n/g" %%~na.txt | sed -r "s/\t//g" | sed -e "s/^ *//; s/ *$//; /^$/d; s/\r//; /^\s*$/d" > %%~na.out
REM cleanup
erase *.txt
ren *.out *.txt
echo on
