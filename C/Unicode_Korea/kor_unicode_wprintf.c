#include <stdio.h>
#include <wchar.h>
#include <locale.h>
 
int main(void) 
{ 
    setlocale(LC_ALL,""); 
 
    wprintf(L"[----- 한글 유니코드 문자 출력 -----]\n\n");
 
    wchar_t korUnicode = 0xac00;
    wchar_t lastKor = korUnicode + 300;
 
    for (int i = korUnicode; i < lastKor; i++)
    {
        wprintf(L"%C, ",i);
        if ((i-11)%20 == 0) wprintf(L"\n");
    }
    wprintf(L"\nDone!\n");
 
 
    return 0; 
}
