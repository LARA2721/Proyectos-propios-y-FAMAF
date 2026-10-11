#include <stdio.h>

int prim_iguales(int tam, int a[]){
int i,h,j;
i = 0;
h = 0;
while ( i < tam ) {

if ( a[i] == a[i + 1] || a[ i - 1 ] == a[i] ) {
j = i;

printf ( "El elemento es posición %d -->  %d\n", j , a[j] );

h = h + 1;  }

i = i + 1;
}


return h;

}


int main (void) {
#define log 4
int w[log];
int e,n,k;
e = 0;

while ( e < log ) {

printf ( "Elemento para posición %d -->\n" , e);
scanf ( "%d", &n);

w[e] = n;
e = e + 1;
}

k =  prim_iguales(log, w);

printf ("El tramo de elementos iguales es ... %d\n", k );


return 0;

}
/*

lara21@DESKTOP-BPVQ6BL:~$ ./prim_iguales
Elemento para posición 0 -->
5
Elemento para posición 1 -->
5
Elemento para posición 2 -->
5
Elemento para posición 3 -->
6
El tramo de elementos iguales es ... 3

lara21@DESKTOP-BPVQ6BL:~$ ./prim_iguales
Elemento para posición 0 -->
4
Elemento para posición 1 -->
3
Elemento para posición 2 -->
3
Elemento para posición 3 -->
6
El elemento es posición 1 -->  3
El elemento es posición 2 -->  3
El tramo de elementos iguales es ... 2


*/
