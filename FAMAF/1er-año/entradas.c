#include <stdio.h>
#include <stdbool.h>

int pedir_entero (char *name ){
int x;

printf ("Ingresa tú %s:\n", name);
scanf ( "%d",&x);

return x; }

void imprimir_entero(int x, char *name) {

printf ("%s: %d\n", name ,x);

return; 
}

int  main () {
int m;
char * n;
n = "Edad";
m = pedir_entero(n);
imprimir_entero ( m , n);
   
return 0; 

}



