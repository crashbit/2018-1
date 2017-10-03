/* El siguiente programa lee 5 datos del usuario y los presenta en pantalla*/

#include <stdio.h>

int main(){
    int arreglo[5];
    int i;  /* esta variable será nuestro contador */

    /* rutina para leer del teclado */
    for(i=0;i<5;i++){
        printf("Introduce el número: %d", i+1);  /* a cada valor de i le sumamos 1 */
        scanf("%d", &arreglo[i]);    /* lo que leemos del teclado lo colocamos en la posición i */
    }

    /* rutina para presentar los datos en pantalla*/
    for(i=0; i<5; i++){
        printf("%d \n", arreglo[i]);  /*presentamos el valor del arreglo en la posición i */
    }


    return 0;

}