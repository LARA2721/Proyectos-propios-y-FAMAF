#include <stdio.h>

typedef struct {
int cociente;
int resto;
} div_t;

div_t division(int x, int y){

div_t div;

div.cociente = x / y;
div.resto = x % y;

return div;

}

int main () {
div_t res;
int x ,t;

printf ( "Ingresar un valor para el dividendo:\n");
scanf ("%d",&x);
printf ( "Ingresar un valor para el divisor:\n");
scanf ("%d",&t);

if ( t == 0 ) {

printf ("Error, ingresa otro divisor\n");

}

else {

res = division ( x , t );

printf ( "Cociente:%d\n", res.cociente);
printf ( "Resto:%d\n", res.resto);
}

return 0;
}
