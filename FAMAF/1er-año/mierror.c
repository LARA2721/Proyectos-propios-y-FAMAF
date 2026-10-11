#include <stdio.h>

typedef struct {
    int codigo;
    float costoMensual;
    float descuento; 
    int usuarios;

} ia_t;


int cantSuscripciones ( ia_t ia , float dinero ) {
int cant;
cant = 0;

while ( ia.costoMensual <= dinero ) {

cant = cant + 1;
dinero =  dinero -  ia.descuento;

} 


return cant;

}
int main (void) {

int j;

ia_t chatbot;

chatbot.codigo = 301;
chatbot.costoMensual = 42000;
chatbot.descuento = 3500;
chatbot.usuarios = 5;

float presupuesto;

printf ("Ingresar un presupuesto:\n");
scanf ("%f", &presupuesto);

j = cantSuscripciones ( chatbot , presupuesto);

printf ("La cantidad de suscripciones permitida es : %d\n", j );
  
return 0;

}
/*

lara21@DESKTOP-BPVQ6BL:~$ ./mierror
Ingresar un presupuesto:
120000
La cantidad de suscripciones permitida es : 23
lara21@DESKTOP-BPVQ6BL:~$ ./mierror
Ingresar un presupuesto:
50000
La cantidad de suscripciones permitida es : 3
lara21@DESKTOP-BPVQ6BL:~$ ./mierror
Ingresar un presupuesto:
42000
La cantidad de suscripciones permitida es : 1
*/
