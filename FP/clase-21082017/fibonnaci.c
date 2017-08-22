#include <stdio.h>

int main(){
    int sem1=0;
    int sem2=1;
    int total=0;
    int n= 10;

    while(n>1){
        total = sem1 + sem2;
        sem1 = sem2;
        sem2 = total;
        n = n - 1;
        printf("%d\n", total);

    }
}