#include <stdio.h>
#include <assert.h>

int main () {
int e;

printf ("Ingresar un x, please:\n");
scanf ("%d", &e);

if (e >= 0){
}
else {

e = (-e);

}

printf ("Valor absoluto: %d\n", e);


return 0;
}
