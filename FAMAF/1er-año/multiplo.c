#include <stdio.h>
#include <stdbool.h>
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




bool todos_pares(int tam, int a[]) {

int i;

i = 0;

while (i < tam ) {

if ( a[i] % 2 != 0) {

return false;  }

i = i + 1; }

return true; 

}


bool existe_multiplo(int m, int tam, int a[]) {
int i;
i = 0;

while ( i < tam ) {

if ( a [i] % m  == 0) {

return true;
}

i = i + 1;

}


return false;

}

int main () { 

#define tam 4 
int a[tam];
int x;
int m;


pedir_arreglo ( tam , a);

printf ( "Podrías seleccionar la función deseada todos_pares (1) o existe_multiplo (2):\n");
scanf ("%d", &x);

assert( x == 1 || x == 2);

if  ( x == 1) {


if (todos_pares ( tam , a )) {


printf ("Lara todos tus valores son pares\n");


} 

else {

printf ("Lara existe uno de tus valores que no es par\n");

}
return 0; }


else  {

printf ("Seleccione un divisor que desee:\n");
scanf ("%d",&m);

if (existe_multiplo (m , tam ,  a) ) {

printf ("Lara hay un elemento que es multiplo de %d\n", m);

}  

else { 

printf ("Lara no hay un elemento que es multiplo de %d\n", m); 
 
 
}

return 0;

}


return 0;

}

