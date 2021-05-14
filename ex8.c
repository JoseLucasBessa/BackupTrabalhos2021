#include <stdio.h>
#include <stdlib.h>

int main() 
{
    int numero, contador, primo = 0;
    printf("Enter a positive integer: ");
    scanf("%d", &numero);

    for (contador = 2; contador <= numero / 2; ++contador) 
    {
        if (numero % contador == 0) {
            primo = 1;
            break;
        }
    }

    if (numero == 1) 
    {
        printf("Nem primo nem composto");
    }
    else 
    {
        if (primo == 0)
            printf("O numero eh primo. ");
        else
            printf("O numero nao eh primo. ");
    }

    return 0;
}
