/*
Este programa convierte un número binario a decimal
Se utiliza un WHILE para guardar 8 elementos
*/

#include <stdio.h>

int main(){
    int binario[8] = {0,0,0,0,0,0,0,0};
    int n, r, i = 0;

    printf("\n Programa que utilizar un WHILE para convertir un numero en decimal a binario\n");    
    printf("Introduce el número a convertir a binario: ");
    scanf("%d", &n);

   while(n>1){
       r = n % 2;
       n = n / 2;
       binario[i] = r;
       i++;
   }

    binario[i] = n;
    for(i=7;i>=0;i--){
        printf("%d ", binario[i]);
    }

    return 0;
}