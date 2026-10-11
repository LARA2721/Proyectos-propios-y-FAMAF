#include <stdio.h>
#include <assert.h>

void pedir_arreglo(int tam , int a[]) {
int i, res;
i = 0 , res = 0;

while ( i < tam) {

printf ("El elemento en posición %d es:\n", i);
scanf ("%d", &res);

a[i] = res;
i = i + 1;
}

return;

}

void imprimir_arreglo(int tam , int a[]) {
int i, elem;
i= 0;

pedir_arreglo (tam, a);

elem = 0;

while ( i < tam ) {

elem = a[i];
printf ( "El elemento en posición %d es: %d\n", i , elem);

i = i + 1; 
}

return;
}

int  main () {
#define tam  4
int a [4];
imprimir_arreglo ( tam , a);
return 0;

}

