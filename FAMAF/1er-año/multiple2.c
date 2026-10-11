#include <stdio.h>
int main () {

/*
{Pre: x = X, y = Y, z = Z}
x, y, z := y, y + x + z, y + x
{Post: x = Y, y = Y + X + Z, z = Y + X}
*/
int x , z , y , xaux, yaux;

printf ("Ingresa un número x :\n");
scanf ("%d", &x);
printf ("Ingresa un número z :\n");
scanf ("%d", &z);
printf ("Ingresa un número y :\n");
scanf ("%d", &y);

xaux = x;
yaux = y;
x = y; 
y = y + xaux + z;
z = yaux + xaux;

printf ("resultado: x -> %d , z -> %d , y -> %d\n", x , z , y);


return 0;
}
