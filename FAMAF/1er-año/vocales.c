#include <stdio.h> 
#include <assert.h>
#include <stdbool.h>
/* NOTA: Definir una funcion que pida un caracter analoga a pedir_entero() pero para el
tipo char.
NOTA: Recordar usar %c en vez de %d en el uso de scanf() y printf() para obtener /
mostrar caracteres al usuario. */

char pedir_letra () {

char letra;

printf ("Ingrese una letra:\n");
scanf ("%c", &letra);

return letra;
}

bool es_vocal(char letra) {

if  ( letra == 'a' ||letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u' ) {

return true;

}


else {

return false; }

}

int main () {
char n;

n = pedir_letra ();

if ( es_vocal (n)) {

printf ("Es cierto que la letra asignada es vocal: %c\n",n);

} else {

printf ("No es cierto que la letra asignada es vocal: %c\n",n);

} 

return 0;
} 

