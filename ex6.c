#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>



int normal(int media, int desviopadrao);



int main()
{
    int user_media; int user_desviopadrao; int user_normal;
    printf("Digite o valor da média: ");
    scanf("%d", &user_media);
    printf("Digite o valor do desvio padrão: ");
    scanf("%d", &user_desviopadrao);

    user_normal = normal(user_media, user_desviopadrao);
    printf("Deu: %d \n", user_normal);

    return 0;

}

int normal(int media, int desviopadrao)
{
    srand(time(NULL));
    double u1;
    double u2;
    int resultado;

    u1 = ((double) rand() / (RAND_MAX));
    u2 = ((double) rand() / (RAND_MAX));

    resultado = media + desviopadrao * (sqrt(-2 * log(u1)) * cos(6.28318530718 * u2));

    return resultado;

}

