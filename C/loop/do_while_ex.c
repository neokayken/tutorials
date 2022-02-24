#include <stdio.h>

int main(void) 
{
    int sum = 0;
    int number = 0;
    
    printf("숫자를 입력하면 더합니다(종료는 q)");
    
    while(scanf("%d", &number)){
        sum += number;
        printf("sun : %d\n", sum);
        printf("숫자를 입력하면 더합니다(종료는 q)");
    }

    printf("\nclosed...\n");

    return 0; 
}
