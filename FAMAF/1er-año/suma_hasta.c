#include <stdio.h>

int suma_hasta(int n) {
int i,res;
i = 0;
res = 0;

while (i < n){

res =  n + res;
i = i + 1;
}
return res;

}

int main () {
int n, res;

res = 0;

printf ("Ingresa un número:\n");
scanf ("%d", &n);

if ( n < 0) {

printf ("error\n");

}

else {
 
res =  suma_hasta(n);
}
printf ( "respuesta: %d\n", res);
return 0;
}
