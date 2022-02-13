set pagination off
set logging file output.txt
set logging on

set disassembly-flavor intel
disassemble _start

break _start
run

step
step
step
step

printf "\n[----- dump registers -----]\n\n"

info registers

printf "\n[----- variables -----]\n\n"

info variables

printf "\n[----- values -----]\n\n"

printf "var1: %d\nvar2: %d\nvar3: %d\nvar4: %d\n", (int) var1, (int) var2, (int) var3, (int) var4

printf "bssVar1: %d\nbssVar2: %d\n", (int) bssVar1, (int) bssVar2
printf ""

set logging off
quit
