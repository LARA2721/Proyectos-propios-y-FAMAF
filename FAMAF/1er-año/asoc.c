#include <stdio.h>
#include <stdbool.h>

typedef char clave_t;
typedef int valor_t;

typedef struct{
clave_t clave;
valor_t valor;
} asoc;

bool asoc_existe(int tam, asoc a[], clave_t c) {
int i;
i = 0;

while ( i < tam ) {

if ( a[i].clave == c) {

printf ("La clave está repetida\n");

return true;

}

i = i + 1;

}

printf ("La clave no está repetida\n");
return false;

}

void pedir_arreglo ( int tam , asoc a[] ){
 int i;
 char g;
  int m;


i = 0;

while ( i < tam ) {

printf ("Ingresar la clave para la  posición %d :\n", i );
scanf ( "%s", &g);

a[i].clave = g;

printf ("Ingresar un valor para la  posición %d :\n", i );
scanf ( "%d", &m);

a[i].valor = m;


i = i + 1;

}


return;

}


int main (void) {

#define log 3
asoc a[log];
clave_t d;


pedir_arreglo ( log , a );

printf ("Ingresar una clave:\n");
scanf ("%s", &d);

 asoc_existe( log , a , d);

return 0;

}

/*
lara21@DESKTOP-BPVQ6BL:~$  ./asoc
Ingresar la clave para la  posición 0 :
w
Ingresar un valor para la  posición 0 :
2
Ingresar la clave para la  posición 1 :
r
Ingresar un valor para la  posición 1 :
4
Ingresar la clave para la  posición 2 :
y
Ingresar un valor para la  posición 2 :
5
Ingresar una clave:
x
La clave no está repetida
*/


