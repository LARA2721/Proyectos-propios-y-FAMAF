mayorQue10 :: [Int] -> [Int]
mayorQue10 [] = []
mayorQue10 (x:xs) 
     | ( x > 10 ) = x : mayorQue10 xs
     | ( x < 10 ) = mayorQue10 xs

soloPares :: [Int] -> [Int] 
soloPares [] = []
soloPares (x:xs) 
    | (( mod x 2 ) == 0 )  = x : soloPares xs
    | (( mod x 2 ) /= 0 ) = soloPares xs 

mayorQue :: Int -> [Int] -> [Int]
mayorQue n [] = []
mayorQue n (x:xs) 
     | ( x >= n ) = x: mayorQue n xs 
     | ( x < n ) = mayorQue n xs 

lainicialN :: [String ] -> [String] 
lainicialN [] = []
lainicialN (x:xs) 
    | ( (x !! 0 ) == 'N') = x : (lainicialN xs )
    | ( (x !!0 )/= 'N') = lainicialN xs 

sumar1 :: [Int] -> [Int]
sumar1 [] = []
sumar1 (x:xs) = (x+1) : (sumar1 xs)

duplica :: [Int] -> [Int]
duplica [] = []
duplica (x: xs) = (2*x) : (duplica xs)

multi :: Int -> [Int] -> [Int]
multi p [] = []
multi p (x:xs) = (p*x) : ( multi p xs) 


alCuadrado :: [Int] -> [Int]
alCuadrado [] = []
alCuadrado (x:xs) = (x^2) : (alCuadrado xs) 

todosMenores10 :: [Int] -> Bool
todosMenores10 [] = True
todosMenores10 (x:xs) = (x < 10 ) && todosMenores10 xs 

hay0 :: [Int] -> Bool
hay0 [] = False
hay0 (x:xs) = (x == 0 ) || ( hay0 xs) 

sumar :: [Int] -> Int
sumar [] = 0
sumar (x:xs) = x + ( sumar xs ) 

siempreL :: [String] -> Bool
siempreL [] = True
siempreL (x:xs) = ( ( x !! 0 ) == 'L' ) &&  ( siempreL xs)

repartir :: [String] -> [String] -> [(String,String)]
repartir [] ys = []
repartir (x:xs) (y:ys) = (x,y) : ( repartir xs ys )

apellidos :: [(String,String,Int)] -> [String]
apellidos [] = []
apellidos ((x,y,z):xs) = y : (apellidos xs)

length2 :: [a] -> Int 
length2 [ ] = 0
length2 (x:xs) = 1 + (length xs)

cont :: [a] -> [a] -> [a] 
cont  [ ] ys = ys
cont (x:xs) ( y : ys) =  x:y : ( cont xs ys) 

sumaPares :: [(Int,Int)] -> Int
sumaPares [ ] = 0 
sumaPares ( (x,y):xs) = (x+y) + ( sumaPares  xs )

todos0y1 :: [Int] -> Bool
todos0y1 [ ] = True
todos0y1 (x: xs ) = ( ( x == 0 ) ||  ( x == 1)) &&  ( todos0y1 xs )
   
quitar0s :: [Int] -> [Int] 
quitar0s [ ] = [ ]
quitar0s (x:xs) 
    | ( x /= 0 ) =  x: quitar0s xs
    | otherwise = quitar0s xs 

maxim :: [Int] -> Int
maxim (x:[])= x
maxim (x:y:xs)
  | ( x >= y ) = (maxim (x:xs))
  | ( x < y ) = (maxim (y:xs))  

ultimo :: [a] -> a 
ultimo [x] = x
ultimo (x:xs) = ultimo xs
 

repetir :: Int -> Int -> [Int] 
repetir 0 k = []
repetir n k =  k  : ( repetir ( n - 1) k)   

rev :: [a] -> [a]
rev [ ] = [ ]
rev (x:xs) =  (rev xs) ++ [x]

unir :: [ [a] ] -> [ a ]
unir [ ] = [ ] 
unir ( xs : xss ) = xs ++ ( unir xss)

tomar2 :: Int -> [a] -> [a]
tomar2 0 xs = []
tomar2 n [ ] = [ ] 
tomar2  n (x:xs) = x : ( tomar2 (n-1) xs)

tirar2 :: Int -> [a] -> [a] 
tirar2 0 xs = xs 
tirar2 n [ ] = [ ] 
tirar2 n ( x : xs ) = tirar2 (n-1) xs 

indice :: [a] -> Int -> a
indice (x:xs) 0 = x
indice (x:xs) n = indice xs (n - 1) 
 
listasIguales :: Eq a => [a] -> [a] -> Bool
listasIguales [ ] [ ] = True
listasIguales  [ ]  ys =  False
listasIguales (x:xs) (y: ys) = ( x == y) && (listasIguales xs ys ) 

incPrim :: [(Int, Int)] -> [(Int,Int)]
incPrim [ ] = [ ]
incPrim ( ( x, y ): xs) = ( ( x + 1 ), y ) :  ( incPrim xs)  

mejorNota :: [ ( String, Int , Int , Int ) ] -> [ ( String , Int ) ] 
mejorNota [ ] = [ ] 
mejorNota ( ( x,y,z,w) : xs) 
      | ( y  >= z ) && ( y >= w )    = ( x , y ) : mejorNota xs 
      |  ( z >= y ) &&  ( z >= w)    =  ( x , z) : mejorNota xs 
      | ( w >= y ) && ( w >= z )     = ( x, w ) : mejorNota xs 

expandir :: [Char]  -> [Char]
expandir [x] = [x]
expandir [ ] = [ ] 
expandir ( x : xs ) =  ( [x] ++ " ") ++  ( expandir xs)    

-- Definiciones de Tipos de Datos (Type Synonyms) para claridad

-- Unidades básicas
type Vendedor  = String
type Producto  = String
type Precio    = Int
type Fecha     = (Int, Int, Int) -- (Día, Mes, Año)
type Venta     = (Fecha, Vendedor, [Producto])

-- LISTAS DE DATOS

-- Lista de vendedores (String)
vendedores :: [Vendedor]
vendedores = ["Martin", "Diego", "Claudio", "José"]

-- Lista de ventas ([Venta])
ventas :: [Venta]
ventas = [
    ((1,2,2006), "Martin", ["Monitor GPRS 3000", "Motherboard ASUS 1500"]),
    ((1,2,2006), "Diego", ["Monitor ASC 543", "Motherboard Pindorcho"]),
    ((10,2,2006), "Martin", ["Monitor ASC 543", "Motherboard ASUS 1200"]),
    ((12,2,2006), "Diego", ["Monitor GPRS 3000", "Motherboard ASUS 1200"]),
    ((4,3,2006), "Diego", ["Monitor GPRS 3000", "Motherboard ASUS 1500"])
    ]

-- Lista de precios (Producto, Precio)
precios :: [(Producto, Precio)]
precios = [
    ("Monitor GPRS 3000", 200),
    ("Motherboard ASUS 1500", 120),
    ("Monitor ASC 543", 250),
    ("Motherboard ASUS 1200", 100),
    ("Motherboard Pindorcho", 30)
    ]


precioMaquina :: [Producto] -> Int
precioMaquina [ ] = 0 
precioMaquina (x:xs)  =   enconV  x  precios    +  precioMaquina xs 


enconV :: Producto -> [ (Producto,Precio)]  -> Int 
enconV n [ ] = 0 
enconV n ( (x,y): xs) 
   |  ( n == x )  = y 
   |   otherwise  =  enconV n xs  


esMayor :: Int -> [Int] -> [Bool] 
esMayor n [] = [] 
esMayor n (x:xs)
   | ( x > n ) = True : ( esMayor n xs)
   | otherwise = False : ( esMayor n xs)  

largo :: [[a]] -> [([a], Int)]
largo ( [] : [] ) = [ ( [] , 0 ) ] 
largo (xs:xss) = (xs, (length xs))  : largo xss 
    
sucesorTupla :: (Int,Int,Int) -> (Int,Int,Int)
sucesorTupla (x,y,z) = ( (x+1), (y+1) , (z+1) ) 

longitudMayorA :: Int -> [[Int]] -> [[Int]]
longitudMayorA n [] = []
longitudMayorA n ( xs:xss) 
     | ( ( length xs ) > n ) = xs : (longitudMayorA n xss)
     |  otherwise            = (longitudMayorA  n xss) 

libertadores2026 :: [(String,Int)] -> [(String,String)]
libertadores2026 [] = []
libertadores2026 ((xx,y):xs)
     | ( y > 30 ) = ( xx, "Clasificado"): (libertadores2026 xs)
     | otherwise  = ( xx, "No"):(libertadores2026 xs)  

ordena :: [Int] -> [Int]
ordena [] = []
ordena (x:y:xs) 
   | ( x <= y ) = x: (ordena xs) 
   | ( y <= x ) = y: (ordena xs)

cantidadLetras :: [[Char]] -> [(String,Int)]
cantidadLetras []= []
cantidadLetras (xs:xss) = ( xs , length xs) : cantidadLetras xss  
 

esMultiplo :: (Int,Int) -> Bool
esMultiplo (x,y) 
     | mod y x == 0 = True
     | mod y x /= 0 = False      

dividir :: [(Int,Int)] -> [(Int,Int)]
dividir [] = []
dividir ( (x,y) : xs ) =  ( (div x y ) , ( mod x y ) ) :  ( dividir xs ) 

hacerA :: [Char] -> [Char]
hacerA [] = []
hacerA ( x : xs ) 
  |  (x == 'e') = 'a' : ( hacerA xs)
  |  (x == 'i') = 'a' : ( hacerA xs )
  |  (x == 'o') = 'a' : ( hacerA xs)
  |  (x == 'u') = 'a' : ( hacerA xs )
  | otherwise = x : hacerA xs  

palabraMaca :: [Char] -> Bool
palabraMaca [ ] = True
palabraMaca (x : xs )  
       | ( hacerA xs ) == xs = True &&  (palabraMaca xs)
       | ( hacerA xs ) /= xs = False && (palabraMaca xs)  

suce3 :: (Int,Int,Int) -> (Int,Int,Int)
suce3 ( x,y,z) = ( (x+1), (y+1) , (z+1) ) 