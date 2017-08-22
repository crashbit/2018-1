#include <stdio.h>

int main(){
    int elmasgrande=0;
    int num;
    int n = 3;

    while(n>0){
        scanf("%d", &num);
        if(num > elmasgrande){
            elmasgrande = num;
        }

        n = n - 1;
    }

    printf("El mas grande es %d ", elmasgrande);

    return 0;
}