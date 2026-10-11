#include <stdio.h>
#include <stdbool.h>

bool pedir_booleano(char* name){
int c;

printf ("Ingresar 0 (false) o 1 (true) si %s :\n", name);

scanf ("%d", &c);

return c;

} 
void imprimir_booleano(bool x , char* name) {


if ( x == 1){
printf ("es verdadero que %s\n", name);
} else { 
 
printf ("es falso que %s\n", name);
}

return;
}

int main (void) {
char* w;
int s;
w = "mi nombre es Laura";
s = pedir_booleano (w);
imprimir_booleano (s,w);

return 0; }
