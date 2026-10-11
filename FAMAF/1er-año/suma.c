#include <stdio.h>
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
int sumatoria(int tam, int a[]){
int i,res;
i = 0;
res = 0;

pedir_arreglo (tam , a);

while ( i < tam) {

res =  res + a[i];
i = i + 1;

}
printf ("Lara :) el resultado es: %d\n",res); 
return 0;

}

int main () {

#define tam 5
int a[tam];

sumatoria ( tam , a);

return 0;
}
