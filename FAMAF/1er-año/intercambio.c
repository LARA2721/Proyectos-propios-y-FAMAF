#include <stdio.h>
#include <assert.h>

int main (){
int x,y,z;
printf ("Ingresar x:\n");
scanf("%d",&x);
printf ("Ingresar y:\n");
scanf("%d",&y);

z = x;
x = y;
y = z;

printf ("Estado final: x --> %d , y --> %d\n", x ,y);

return 0;

}
