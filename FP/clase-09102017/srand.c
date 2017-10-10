/*
Programa que genera 100 numeros aleatorios
Utiliza el tiempo del CPU para generar una semilla aleatoria
*/


#include <stdio.h>  /* para poder usar printf */
#include <stdlib.h> /* para poder usar srand */
#include <time.h>   /* para usar la función time() */

int main(){
    int i;

    srand(time(NULL)); // Genero mi semilla basada el la hora actual

    /* Vamos a generar 100 numeros aleatorios */
    for(i=0;i<100;i++)
        printf("%d\n", rand()%10);  /* quiero numeros entre cero y 10 */

    return 0;
}