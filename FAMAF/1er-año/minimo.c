#include <stdio.h>
#include <assert.h>

int main () {
int x , y , res;

res = 0;

printf ("Ingresa los valores x  :\n");
scanf ("%d", &x);
printf ("Ingresa los valores y :\n");
scanf ("%d", &y);


if ( x <= y) {

res = x;
printf ("El valor minimo es: %d\n", res);
}

else { 

res = y; 
printf ("El valor minimo es: %d\n", res);
}

assert((res == x || res == y ) && (res <= x  &&  res <= y));
return 0;

}





