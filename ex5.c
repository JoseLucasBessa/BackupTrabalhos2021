#include <stdio.h>


int main()
{
    double x;
    double y;
    double media;

    printf("Insira o primeiro numero para tirar a média: \n");
    scanf("%lf", &x);
    printf("Segundo numero:\n ");
    scanf("%lf", &y);

    media = (x + y) / 2 ;

    printf("\nA média é: %lf\n", media);

    return 0;

}
