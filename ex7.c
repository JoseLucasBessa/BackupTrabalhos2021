#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    char str[1000], ch;
    int count = 0;

    printf("Coloque os parentesis: ");
    fgets(str, sizeof(str), stdin);


    for (int i = 0; str[i] != '\0'; ++i)
    {
        if ('(' == str[i])
            ++count;
        if (')' == str[i])
            --count;
    }

    printf("\n %d\n", count);
    return 0;
}

