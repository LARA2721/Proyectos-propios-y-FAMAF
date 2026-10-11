#include <stdio.h>
#include <stdbool.h>
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
void intercambiar(int tam, int a[], int i, int j) {
int aux;
 
while ( i < tam - 1 ) {

aux = a[i];

a[i] = a[j];
a[j] = aux;

printf (" a%d -->%d , a%d --> %d\n", i , a[i], j , a[j]);

i = j + 1;
j = i + 1;

 

}

return;

}


int main () {

#define tam  4

int a[tam];
int i , j;
i = 0;
j = i + 1;

pedir_arreglo ( tam , a);
intercambiar(tam, a, i, j);





return 0;

}
