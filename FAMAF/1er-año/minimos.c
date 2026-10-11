#include <stdio.h>
#include <limits.h>

void pedir_arreglo (int tam , int a[]) {
int i,r;
i = 0;
r = 0;

while ( i < tam ) {

printf ("Ingresar un elemento para la posición %d : \n", i);
scanf( " %d", &r);

a[i] = r;
i = i + 1;


}


return;
}

int minimo_pares(int tam, int a[]) {
int m,i;
m = INT_MAX;
i = 0;

while (i < tam ){

if ( (a[i] % 2 == 0) &&  a[i] < m ) {

m = a[i];  }

i = i + 1;

}

return m;

}



int minimo_impares(int tam, int a[]){
int m,i;
m = INT_MAX;
i = 0;

while (i < tam ){

if ( (a[i] % 2 != 0) &&  a[i] < m ) {

m = a[i];  }

i = i + 1;


}

return m;

}


int main (void) {
int h,g;

#define tam 4
int a[tam];
 

pedir_arreglo (tam , a);

h = minimo_impares ( tam , a );
g = minimo_pares ( tam , a );

printf ("El minimo par = %d\n", g);
printf ("El minimo impar = %d\n", h); 
return 0;

}


/*

lara21@DESKTOP-BPVQ6BL:~$ ./minimos
Ingresar un elemento para la posición 0 :
3
Ingresar un elemento para la posición 1 :
1
Ingresar un elemento para la posición 2 :
0
Ingresar un elemento para la posición 3 :
4
El minimo par = 0
El minimo impar = 1
lara21@DESKTOP-BPVQ6BL:~$ ./minimos
Ingresar un elemento para la posición 0 :
6
Ingresar un elemento para la posición 1 :
12
Ingresar un elemento para la posición 2 :
23
Ingresar un elemento para la posición 3 :
85
El minimo par = 6
El minimo impar = 23

*/
