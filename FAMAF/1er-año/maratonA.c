#include <stdio.h>
#include <assert.h>

int multiplica_pares(int tam, int a[]){
int i,res;
res = 1;
i = 0;

while ( i < tam ) {

if ( a[i] % 2 == 0) {

res = a[i] * res;}

i = i + 1;

}


return res;

}


int main (void) {
 
#define tam 4

assert( tam > 0);
int a[tam];
int e,i,m;

i = 0;

while ( i < tam) {

printf ( "Ingresar un elemento :\n");
scanf ("%d",&e);

a[i] = e;

i = i + 1;

}

m = multiplica_pares ( tam , a);

printf ( "El resultado es : %d\n", m );

return 0;

}
/*
lara21@DESKTOP-BPVQ6BL:~$ ./maratonA
Ingresar un elemento :
23
Ingresar un elemento :
34
Ingresar un elemento :
45
Ingresar un elemento :
6
El resultado es : 204

*/
