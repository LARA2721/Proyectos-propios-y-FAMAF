#include <stdio.h>
#include <stdbool.h>
#include <limits.h>

typedef struct {
    int altura;          // Altura en centímetros
    int nacimiento;      // Año de nacimiento
    int titulos;         // Cantidad de torneos ganados
    bool usa_izquierda;  // True si es zurdo / zurda
} tenista;

int elmasjoven  ( tenista a[] , int tam ) {
int i;
i = 0;
int m;
int k;

m = INT_MIN;

while ( i < tam ) {

if ( a[i].nacimiento > m ) {

m = a[i]. nacimiento;

k = i; }


i = i + 1;
 
}

return k;

}


int main (void){
int g;
tenista x,y,z;

x.altura = 176;
x.nacimiento = 2010; 
x.titulos = 2;
x.usa_izquierda = false;

y.altura = 171;
y.nacimiento = 2014;
y.titulos = 1;
y.usa_izquierda = false;

z.altura = 182;
z.nacimiento = 2018;
z.titulos = 0;
z.usa_izquierda = true;

#define tam 3
tenista a[tam];

a[0] = x;
a[1] = y;
a[2] = z;

g = elmasjoven ( a , tam);

printf ( "Altura: %d\n", a[g].altura);
printf ( "Año de nacimiento: %d\n", a[g].nacimiento);
printf ( "Titulos: %d\n", a[g].titulos);

if ( a[g].usa_izquierda == true ) {

printf ("Tenista zurdo\n");   }

else {

printf ("Tenista zurdo\n");

}


return 0;
}

/*

lara21@DESKTOP-BPVQ6BL:~$ ./tenista
Altura:182
Año de nacimiento:2018
Titulos:0
Tenista zurdo

*/
