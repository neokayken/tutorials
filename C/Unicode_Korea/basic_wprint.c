#include <stdio.h>
#include <wchar.h>
 
int main(void) 
{ 
    wchar_t korArray[] = L"가나다라마바사아";
 
    for (int i = 0; i < 8; i++)
    {
        wprintf(L"[%x], ",korArray[i]);
    }
    wprintf(L"Done!\n");
 
    return 0; 
}
