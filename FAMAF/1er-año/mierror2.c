#include <stdio.h>
#include <assert.h>
#define N 10
int min_pos_impar (int tam , int a[]) {
int m , i;

assert( tam > 1);

m = a[1];
i = 1;

while ( i < tam ) {

if ( m > a[i]) {

m = a[i]; 

}

i = i + 2;

}

return m;

}

int main (void)  {

int m;
int modelos [N] = {15,8,22,4,30,11,18,2,40,9};

m = min_pos_impar (N, modelos);

printf ("El mínimo de las posiciones impares del arreglo es %d\n", m);


return (0);

}
 
