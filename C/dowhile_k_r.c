#include <stdio.h>
#include <string.h>

void reverse(char s[]);
void itoa(int n, char s[]);

int main(void) 
{
    // char name[] = "Mark";
    // printf("%s\n", name);
    // reverse(name);
    // printf("%s\n", name);

    char strConverted[20];
    int number;

    printf("Enter an integer to convert to string :\n");
    scanf("%d", &number);

    itoa(number, strConverted);
    printf("itoa : %s\n", strConverted);
    
    return 0; 
}

void reverse(char s[])
{
    int c, i, j;

    for (i = 0, j =strlen(s)-1; i < j; i++, j--)
    {
        c = s[i];
        s[i] = s[j];
        s[j] = c;
    }
    
}
void itoa(int n, char s[])
{
    int i, sign;

    if((sign=n)<0)
        n = -n;

    i = 0;
    do{
        s[i++] = n % 10 + '0';
    }while ((n/=10)>0);

    if(sign < 0)
        s[i++] = '-';
    s[i] = '\0';
    reverse(s);
}
