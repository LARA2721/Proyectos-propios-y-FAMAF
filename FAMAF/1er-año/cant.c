#include <stdio.h>

typedef struct {
    int cant_v;          
    int cant_pares;      
    int cant_imp;        
} datos;

datos llenar_estructura(int tam, int a[], int v){
int i;
i = 0;
datos d;

d.cant_v = 0;
d.cant_pares = 0;
d.cant_imp = 0;

while ( i < tam ) {

if ( a[i] == v ) {

d.cant_v = d.cant_v + 1;
}

if ( a[i] % 2 == 0) {

d.cant_pares = d.cant_pares + 1;
}

else {
d.cant_imp = d.cant_imp + 1;
}


i = i + 1;
}

return d;

}

int main (void) {

#define tam 4
int a[tam];
int i,j,c;
i = 0;
datos k;

while ( i < tam ) {

printf ("Elemento en posición %d  --->  \n ", i );
scanf ( "%d", &j);

a[i] = j;

i = i + 1;
 
}

printf ("Ingresar un valor ... \n");
scanf("%d", &c);

k = llenar_estructura ( tam , a , c);

printf ("El %d se repite %d\n", c , k.cant_v);
printf ("La cantidad de  pares es %d\n", k.cant_pares);
printf ("La cantidad de impares es %d\n", k.cant_imp);


return 0;

}
/*

lara21@DESKTOP-BPVQ6BL:~$ ./cant
Elemento en posición 0  --->
 4
Elemento en posición 1  --->
 6
Elemento en posición 2  --->
 3
Elemento en posición 3  --->
 9
Ingresar un valor ...
3
El 3 se repite 1
La cantidad de  pares es 2
La cantidad de impares es 2
lara21@DESKTOP-BPVQ6BL:~$ ./cant
Elemento en posición 0  --->
 21
Elemento en posición 1  --->
 24
Elemento en posición 2  --->
 68
Elemento en posición 3  --->
 32
Ingresar un valor ...
55
El 55 se repite 0
La cantidad de  pares es 3
La cantidad de impares es 1
*/
