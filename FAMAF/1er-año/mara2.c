#include <stdio.h>
#include <assert.h>

int suma_val_posiciones_pares(int tam, int a[]){
int i,res;
res = 0;
i = 0;

while ( i < tam ) {

if ( a[i] % 2 == 0) {

res = a[i] + res;}

i = i + 1;

}


return res;

}

int main (void) {

#define tam 4

assert(tam > 0);

int a[tam];
int i, y, e;

i = 0;

while ( i < tam) {

printf ( "Ingresar un elemento :\n");
scanf ("%d",&e);

a[i] = e;

i = i + 1;

}




y = suma_val_posiciones_pares ( tam , a);

printf ("La suma de los elementos pares es --> %d \n", y);

return 0;
}

/*

lara21@DESKTOP-BPVQ6BL:~$ ./mara2
Ingresar un elemento :
23
Ingresar un elemento :
45
Ingresar un elemento :
34
Ingresar un elemento :
6
La suma de los elementos pares es --> 40

*/
