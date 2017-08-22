#include <stdio.h>

int main(){
    int total=1;
    int n=5;

    while(n>1){
        total = total * n;
        n = n - 1;
    }

    printf("%d\n", total);

    return 0;

}