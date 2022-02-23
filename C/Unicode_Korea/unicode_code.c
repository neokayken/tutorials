#include <stdio.h>
#include <wchar.h>
#include <locale.h>
 
int main(void) 
{ 
 
    setlocale(LC_ALL,""); 
 
    wchar_t myArr[20];
    wprintf(L"이름을 입력하시오.\n");
 
    wscanf(L"%S", myArr);
 
    wprintf(L"입력하신 이름은 \"%S\" 입니다\n", myArr);
 
    for (int i = 0; i < 20; i++)
    {
        if(myArr[i] == 0) break;
        // 유니코드로 출력
        wprintf(L"[%C : %x] ", myArr[i], myArr[i]);
    }
    wprintf(L"\ndone!\n");
 
    return 0; 
}
