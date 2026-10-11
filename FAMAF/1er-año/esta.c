#include <stdio.h>
#include <stdbool.h>

bool esta_en_arreglo(int tam, int a[], int v){
int i;
i = 0;
while ( i < tam) {


if ( a[i] == v ) {

return true;}


i = i + 1;}

return false;
}

int esta_en_posicion(int tam, int a[], int v) {
int i,k;
 
i = 0;

while ( i < tam ) {

if ( a[i] == v) {

k = i; }

i = i + 1;
}

return k;

}

int main (void) {

#define tam  6
int arr[tam] = {2,12,3,15,78,67};
int z,d;

z = 15;

if (  esta_en_arreglo( tam, arr , z ) ) {

d = esta_en_posicion( tam, arr, z);

printf ( "%d está en posición %d\n", z , d);

}

else {
}


return 0;

}

/*
lara21@DESKTOP-BPVQ6BL:~$ gcc -Wall -Wextra -std=c99 esta.c -o esta
lara21@DESKTOP-BPVQ6BL:~$  ./esta
78 está en posición 4
lara21@DESKTOP-BPVQ6BL:~$ nano esta.c
lara21@DESKTOP-BPVQ6BL:~$  gcc -Wall -Wextra -std=c99 esta.c -o esta
lara21@DESKTOP-BPVQ6BL:~$  ./esta
15 está en posición 3

*/

