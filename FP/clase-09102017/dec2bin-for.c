/*
Este programa convierte un número binario a decimal
Se utiliza un FOR para guardar 8 elementos
*/

#include <stdio.h>

int main(){
    int binario[8] = {0,0,0,0,0,0,0,0};
    int n, r, i;

    printf("\n Programa que utilizar un FOR para convertir un numero en decimal a binario\n");
    printf("Introduce el número a convertir a binario: ");
    scanf("%d", &n);

    for(i=0; i<8; i++){
        r = n % 2;
        if(n > 1){
            binario[i] = r;
        }
        else{
            break;   //Con esta instrucción terminamos el for de forma abrupta
        }
        n = n / 2;
    }

    binario[i] = n;
    for(i=7;i>=0;i--){
        printf("%d ", binario[i]);
    }

    return 0;
}