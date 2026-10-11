{-# LANGUAGE NPlusKPatterns #-}

{-
Ejercicio 1) del
a) hasta el d)  
-}

data Carrera = Fisica | Computacion | Matematica | Astronomia   deriving Eq

titulo :: Carrera -> String                                       
titulo Fisica = "Licenciatura en Fisica"
titulo Matematica = "Licenciatura en Matematica"
titulo Computacion = "Licenciatura en Ciencias de la Computacion"
titulo Astronomia = "Licenciatura en Astronomia"

data NotaBasica = Do | Re | Mi | Fa | Sol | La | Si  deriving (  Show ,Ord, Eq, Bounded )             
-- ejercicio 2 

cifradoAmericano :: NotaBasica -> Char                            
cifradoAmericano Do = 'C'
cifradoAmericano Re = 'D'
cifradoAmericano Mi = 'E'
cifradoAmericano Fa = 'F'
cifradoAmericano Sol = 'G'
cifradoAmericano La = 'A'
cifradoAmericano Si = 'B'

{- [Haskell] >> cifradoAmericano Mi
'E'
[Haskell] >> titulo Computacion
"Licenciatura en Ciencias de la Computacion"
-}

{-
Ejercicio 3) del
a) hasta el c)  
-}

minimoElemento :: Ord a => [a] -> a 
minimoElemento [x] = x
minimoElemento (x:xs) = x  `min` (minimoElemento xs)

minimoElemento' :: (Bounded a, Ord a ) => [a] -> a 
minimoElemento' [] = maxBound
minimoElemento' (x:xs) = x  `min` ( minimoElemento' xs ) 

-- [Haskell] >> minimoElemento  [Fa, La, Sol, Re, Fa] Re  c)


{-
Ejercicio 4) del
a) hasta el c)  
-}

-- Sinónimos de tipo

type Altura = Int
type NumCamiseta = Int

-- Tipos algebráicos sin parámetros (aka enumerados)

data Zona = Arco | Defensa | Mediocampo | Delantera  deriving ( Eq,Show) 
data TipoReves = DosManos | UnaMano                  deriving Show
data Modalidad = Carretera | Pista | Monte | BMX     deriving Show
data PiernaHabil = Izquierda | Derecha               deriving Show


-- Sinónimo
type ManoHabil = PiernaHabil


-- Deportista es un tipo algebraico con constructores paramétricos
data Deportista = Ajedrecista        -- Constructor sin argumentos
                 |Ciclista Modalidad -- Constructor con un argumento
                 |Velocista Altura   -- Constructor con un argumento
                 |Tenista TipoReves ManoHabil Altura --  Constructor con tres argumentos
                 |Futbolista Zona NumCamiseta PiernaHabil Altura -- Constructor con cuatro argumentos   
 deriving Show 

contar_velocistas :: [Deportista] -> Int
contar_velocistas [ ] = 0 
contar_velocistas ((Velocista n ):xs) = 1 + contar_velocistas xs
contar_velocistas ( _: xs ) = contar_velocistas xs  

 
contar_futbolistas :: [Deportista] -> Zona -> Int
contar_futbolistas [] z = 0 
contar_futbolistas  ((Futbolista  Arco    n   p  a ) :xs)  Arco  = 1 + ( contar_futbolistas xs Arco) 
contar_futbolistas  ((Futbolista  Defensa    n   p  a ) :xs)  Defensa  = 1 + ( contar_futbolistas xs Defensa) 
contar_futbolistas  ((Futbolista  Mediocampo    n   p  a ) :xs)  Mediocampo  = 1 + ( contar_futbolistas xs Mediocampo) 
contar_futbolistas  ((Futbolista  Delantera    n   p  a ) :xs)  Delantera  = 1 + ( contar_futbolistas xs Delantera ) 

contar_futbolistas ( _ :xs ) z = ( contar_futbolistas xs z ) --- según el ejercicio no debemos usar igualdad utilizamos macheó de patrones 


esFutbolista :: Deportista -> Bool
esFutbolista (Futbolista n p r s ) = True 
esFutbolista _ = False 

-- [Haskell] >> contar_futbolistas ( filter esFutbolista [Futbolista Defensa 5 Derecha 6, Ajedrecista, Futbolista Defensa 7Izquierda 9] ) Defensa  2


esfutbolista :: Zona -> Deportista -> Bool
esfutbolista z' ( Futbolista z n l m ) = (z' == z )
esfutbolista z' _  = False 

contarFutbolistas :: [Deportista] -> Zona -> Int 
contarFutbolistas xs z' =  length ( filter (esfutbolista z') xs ) 

-- [Haskell] >> contarFutbolistas [Futbolista Mediocampo 6 Izquierda 4 , Ajedrecista, Ciclista Carretera ] Arco 0

{-
Ejercicio 5) del
a) hasta el f)  
-}

-- a)

sonidoNatural :: NotaBasica -> Int 
sonidoNatural Do = 0
sonidoNatural Re = 2
sonidoNatural Mi = 4
sonidoNatural Fa = 5
sonidoNatural Sol = 7
sonidoNatural La = 9
sonidoNatural Si = 11


-- b) 

data Alteracion =  Bemol |  Natural | Sostenido  

-- c)

data NotaMusical =  Nota_Musical (NotaBasica)  (Alteracion) 
   

-- d) 

sonidoCromatico :: NotaMusical -> Int 
sonidoCromatico (Nota_Musical n  s ) =  case  s  of 
                                          (Sostenido)   ->   1 +  (sonidoNatural n ) 
                                          (Bemol)       ->   (sonidoNatural n )  -  1 
                                          (Natural)     ->  (sonidoNatural n)
                                        

-- e) 
instance Eq NotaMusical where
  n1 == n2 =  (sonidoCromatico n1)  == (sonidoCromatico n2 )
-- [Haskell] >> (sonidoCromatico ( Nota_Musical Re Bemol ))  ==  (sonidoCromatico ( Nota_Musical Do Sostenido)) True


-- f)
instance Ord NotaMusical  where 
   n1 <= n2 =  ( (sonidoCromatico n1) Prelude.<= (sonidoCromatico n2)) 
-- [Haskell] >> (sonidoCromatico (Nota_Musical  Re Sostenido)) <= (sonidoCromatico( Nota_Musical Mi Natural) True

{-
Ejercicio 6)  
-}

primElemento :: [a] -> Maybe a
primElemento [] = Nothing 
primElemento (x:xs) = Just x 

{-
Ejercicio 7)  
-}


data Cola = VaciaC | Encolada Deportista Cola    
  deriving Show 

-- a) 1

atender :: Cola -> Maybe Cola
atender VaciaC =  Nothing 
atender ( Encolada m (Encolada d c) ) =  Just ( Encolada d  c ) 

-- [Haskell] >>  atender (Encolada Ajedrecista (Encolada (Ciclista Monte) VaciaC)) Just (Encolada (Ciclista Monte) VaciaC)
--- 2
encolar :: Deportista -> Cola -> Cola 
encolar d VaciaC = Encolada d VaciaC
encolar d (Encolada m f)  = Encolada  m  ( encolar d f )  

-- encolar (Ciclista Pista) (Encolada Ajedrecista (Encolada (Ciclista Monte) VaciaC)) Encolada Ajedrecista (Encolada (Ciclista Monte) (Encolada (Ciclista -- Pista ) VaciaC))

-- 3
busca :: Cola -> Zona -> Maybe Deportista
busca VaciaC z = Nothing 
busca ( Encolada n p ) z =   case (esfutbolista z  n)  of
                                 True  ->   Just ( n )
                                 False ->  ( busca p z )  

--- busca (Encolada (Ajedrecista)(Encolada (Ciclista Monte)(Encolada (Futbolista Defensa 5 Derecha 180) (Encolada (Futbolista Delantera 9 Izquierda -- 175) -- VaciaC)))) Defensa Just (Futbolista Defensa 5 Derecha 180)


{-
Ejercicio 8)  
-}


data ListaAsoc a b =  Vacia | Nodo a b (ListaAsoc a b)
  deriving (Show) 

type Diccionario = ListaAsoc String String 
type Padron = ListaAsoc Int String

-- a 

type GuiaTelef = ListaAsoc  (String, String)  Int  

-- b1 

la_long :: (ListaAsoc a b) -> Int 
la_long Vacia = 0 
la_long (Nodo n s (p) )  =   1 +  ( la_long (p) )  

--- no se especificó si la clave contaba como dato 

-- b2

la_concat :: ( ListaAsoc a b ) -> (ListaAsoc a b) -> (ListaAsoc a b)
la_concat   Vacia  l2 = l2
la_concat (Nodo s w (p) ) l2  =   Nodo s  w  ( la_concat  (p) l2 )

--- [Haskell] >>  la_concat (Nodo 180 "Lara" (Vacia)) (Nodo 165 "Dalma"(Vacia)) Nodo 180 "Lara" (Nodo 165 "Dalma" Vacia)


--- b3

la_agregar :: Eq a =>  ( ListaAsoc a b ) -> a -> b -> (ListaAsoc a b ) 
la_agregar   l1  n  m   =   Nodo n  m  (l1) 

--- b4 

la_pares :: ( ListaAsoc a b) -> [(a,b)]
la_pares Vacia = []
la_pares (Nodo l m  l1) =  ( l , m )  :  ( la_pares l1 )

-- [Haskell] >>  la_pares  (Nodo 180 "Mati"(Vacia)) [(180,"Mati")]

-- b5

la_busca :: Eq a => ( ListaAsoc a b ) ->  a -> Maybe b
la_busca (Vacia) _  =  Nothing 
la_busca  (Nodo c d  (l1))  w  =  case ( c == w)  of 
                                    True  ->  Just (d)
                                    False ->  ( la_busca l1 w)
 
-- b6 

la_borrar :: Eq a =>  a -> ( ListaAsoc a b ) -> ( ListaAsoc a b )
la_borrar n  Vacia = Vacia
la_borrar n (Nodo k g l3) =  case ( k == n ) of
                               True ->   l3 
                               False ->  (Nodo k g ( la_borrar  n  l3) )


