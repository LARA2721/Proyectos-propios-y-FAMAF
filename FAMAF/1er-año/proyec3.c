
#include <stdio.h>
#include <stdbool.h>
int main() {
  int x, i, res; 

//buscamos tomar valores de entrada

printf ("Ingresa algún número :\n" );
scanf ( "%d",&x);


/*while ( x != 0) { 

x = 0;
//x = x -1;   

printf ( " x -> %d\n ", x);
}
*/


printf ("Ingresa algún número :\n" );
scanf ( "%d",&i);

printf ("Ingresa algún valor de verdad :\n ");
scanf ("%d", &res );

//i = 0;

i = 2;
res = true;

while ( i < x && res)  {

res = res && (( x %  i) != 0);
i = i+1 ; 

printf ( "x -> %d, i -> %d, res -> %s'\n",x , i , res ? "true":"false");

}    

/* while ( x >= y) {

x = x-y;
i = i + 1;

printf ( "x -> %d , y -> %d , i -> %d\n ", x , y ,i);
}

*/

/*
if (x > y) {

m = x;

}

else  {

m = y;

}

printf ( " x -> %d , y -> %d , z -> %d , m -> %d\n", x , y , z , m );

if ( m < z ) {

}

else { 

m = z;

}


printf ( " x -> %d , y -> %d , z -> %d , m -> %d\n", x , y , z , m ); 

*/





 return 0;


}
