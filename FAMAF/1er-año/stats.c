#include <stdio.h>
#include <assert.h>
typedef struct {
float maximo;
float minimo;
float promedio;
} datos_t;


void pedir_arreglo(int tam , float a[]) {
int i;
float res;
i = 0 , res = 0;

while ( i < tam) {

printf ("El elemento en posición %d es:\n", i);
scanf ("%f", &res);

a[i] = res;
i = i + 1;
}

return;

}


datos_t stats(int tam, float a[]) {
int i;
i = 1;
datos_t sol;
assert( tam > 0 );


sol.minimo = a[0];
sol.maximo = a[0];
sol.promedio = a[0];


while ( i < tam ) {

if ( a[i] <  sol.minimo ){

sol.minimo = a[i]; }


if ( a[i] > sol.maximo ){

sol.maximo = a[i]; }
 

sol.promedio = a[i]+ sol.promedio/ tam;

i = i +1;


}


return sol;

}


int main (void) {
#define tam 5
float arreglo [tam];
datos_t d;

pedir_arreglo (tam , arreglo);

d = stats ( tam , arreglo );


printf ("El máximo es: %f\n", d.maximo);
printf ("El minimo es: %f\n", d.minimo);
printf ("El promedio es: %f\n", d.promedio);



return 0;






}
