#include <stdio.h>
#include <wchar.h>
#include <locale.h>
 
int main(void) 
{ 
    setlocale(LC_ALL,""); 
 
    wchar_t myArr[20];
    wprintf(L"이름을 입력하시오.\n");
 
    wscanf(L"%s", myArr);
    wprintf(L"입력하신 이름은 \"%s\" 입니다\n", myArr);
 
    return 0; 
}
