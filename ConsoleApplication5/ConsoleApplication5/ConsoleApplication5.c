#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main()
{
    int x = 1234;
    char p = &x;
    printf("%u", p);
    return 0;

}

