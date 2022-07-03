#include <stdio.h>

int main(void)
{

#ifdef _DEBUG
    printf("HELLO, DEBUG!"\n);
#endif
#ifndef _DEBUG
        printf("Hello, World!\n");
#endif
    return 0;
}