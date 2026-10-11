/*
{Pre: x = X, y = Y}
x, y := x + 1, x + y
{Post: x = X + 1, y = X + Y}
*/

#include <stdio.h>
int main () { 
int x , y , xaux;

printf("Ingresa un número:\n");
scanf ("%d", &x);
printf("Ingresa un número:\n");
scanf ("%d", &y);

xaux = x;
x = x + 1; 
y = xaux + y;

printf ("resultado: x -> %d, y -> %d\n", x , y); 

return 0;
}
