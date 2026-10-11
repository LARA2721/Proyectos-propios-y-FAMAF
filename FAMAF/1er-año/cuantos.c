#include <stdio.h>

typedef struct  {

int menores;
int mayores;
int iguales;

} comp_t;


comp_t cuantos(int tam, int a[], int elem){
comp_t cuan;
cuan.menores = 0;
cuan.mayores = 0;
cuan.iguales = 0;

int i;
i = 0;

while ( i < tam ) {

if ( a[i] < elem ){

cuan.menores = cuan.menores + 1;

}


if ( a[i] > elem ) {

cuan.mayores = cuan.mayores + 1;

}


if ( a[i] == elem ) {

cuan.iguales = cuan.iguales + 1;

}



i = i + 1;


}


return cuan;


}


int main (void) {

#define tam 5

int arreglo [tam] = {12,6,4,3,2};
int ele;

ele = 2; 

comp_t res;

res = cuantos ( tam , arreglo , ele);

printf ( "Menores:%d\n", res.menores);
printf ( "Mayores:%d\n", res.mayores);
printf ("Iguales :%d\n", res.iguales);


 
return 0;

}
