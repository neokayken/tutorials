#include <stdio.h>
#include <wchar.h>
#include <locale.h>
 
int main(void) 
{ 
 
    setlocale(LC_ALL,""); 
 
    wprintf(L"한글입니다\n");
 
    wchar_t myArr[] = L"가각 테스트";
  
    wprintf(L"%S\n",myArr);
    wprintf(L"[%x]\n",myArr[0]);
    wprintf(L"[%x]\n",myArr[1]);
 
    return 0; 
}
