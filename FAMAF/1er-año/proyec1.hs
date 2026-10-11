{-# LANGUAGE NPlusKPatterns #-}

-- ejercicio 1)

esCero :: Int -> Bool
esCero c | ( c == 0 ) = True
         | ( c /= 0 ) = False

esPositivo :: Int -> Bool
esPositivo m | ( m > 0 ) = True
             | ( m <= 0 ) = False

esVocal :: Char -> Bool
esVocal k | ( k == 'a') = True
          | ( k == 'e') = True
          | ( k == 'i') = True
          | ( k == 'o' ) = True
          | ( k == 'u') = True
          | otherwise = False 

valorAb :: Int -> Int
valorAb y | ( y >= 0 ) = y
          | ( y < 0 ) = -y 


-- ejercicio 2)

paratodo :: [Bool] -> Bool
paratodo [] = True
paratodo (x:xs) = ( x == True ) && ( paratodo xs )


sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs 

productoria :: [Int] -> Int 
productoria [] = 1
productoria (x:xs) = x * productoria xs 

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * ( factorial ( n -1) )

promedio :: [Int] -> Int
promedio [] = 0 
promedio (x:xs) =  div (sumatoria (x:xs) )   (length ( x : xs )) 


-- ejercicio 3)

pertenece :: Int -> [Int] -> Bool
pertenece n [] = False
pertenece n ( x:xs) = ( n == x ) || ( pertenece n xs ) 

-- ejercicio 4) 

paratodo':: [a]-> (a-> Bool)-> Bool
paratodo' [] r = True
paratodo' (x:xs) r = (r x) &&  paratodo' xs r

existe':: [a]-> (a-> Bool)-> Bool
existe' [] m = False
existe' (x:xs) m = (m x) || existe' xs m 

sumatoria' :: [a]-> (a-> Int)-> Int
sumatoria' [] w = 0
sumatoria' (x:xs) w = ( w x ) + sumatoria' xs w 

produc:: [a]-> (a-> Int)-> Int
produc [] t = 1
produc (x:xs) t = (t x) * produc xs t   

-- ejercicio 5)
paratodo'' :: [Bool] -> Bool
paratodo''(x:xs) = paratodo'(x:xs) id 

-- ejercicio 6)

esPar :: Int -> Bool
esPar x | (mod x 2 == 0) = True
        | otherwise      = False  

todosPares :: [Int] -> Bool
todosPares (x:xs) = paratodo' (x:xs) esPar 

multiploDe :: Int -> Int -> Bool
multiploDe z x = mod x z == 0 

hayMultiplo :: Int-> [Int] -> Bool
hayMultiplo z (x:xs) = existe' (x:xs) (multiploDe z)  

sumaCuadrados :: Int -> Int
sumaCuadrados n = sumatoria' [0..(n-1)]  cuadrado 

cuadrado :: Int -> Int
cuadrado z = z^2

existeDivisor :: Int -> [Int] -> Bool
existeDivisor n (l:ls) = existe'(l:ls) (divisorDe n)  

divisorDe :: Int -> Int -> Bool
divisorDe n w = (mod n w == 0 )

esPrimo :: Int -> Bool
esPrimo s = not ( existeDivisor s [2..(s-1)] )

factorial' :: Int -> Int
factorial' n = produc [2..n] id

-- [Haskell] >> productoria ( filter esPrimo [5,8,7,9]) 35
-- [Haskell] >> productoria (filter esPrimo [3,7,5,11]) 1155

-- ejercicio 8)

por2 :: [Int] -> [Int]
por2 [] = []
por2 (x:xs) = (x*2) : (por2 xs)

-- [Haskell] >> por2 [2,6,7] [4,12,14]
-- [Haskell] >> map (*2) [2,6,7] [4,12,14]

-- ejercicio 9)

losPrimos :: [Int] -> [Int]
losPrimos [] = []
losPrimos (x:xs) | (esPrimo x == True) = x: losPrimos xs 
                 | otherwise           = losPrimos xs 

-- [Haskell] >> losPrimos [3,7,9,4] [3,7]
--[Haskell] >> filter esPrimo [3,7,9,4] [3,7]

-- ejercicio 10)

primIgualesA :: Eq a => a -> [a] -> [a] 
primIgualesA n [] = []
primIgualesA n (x:xs) | (n == x ) = x : (primIgualesA n xs)
                      | (n /= x ) = []

igualA :: Eq a => a -> a -> Bool   
igualA c v = ( c == v )    

-- [Haskell] >> takeWhile (igualA 'a') "aaada"  "aaa"    

-- ejercicio 11)

primIguales :: Eq a => [a] -> [a]
primIguales [] = []
primIguales [x] = [x]
primIguales (x:y:xs) | ( x == y ) = x: (primIguales (y:xs))
                     | ( x /= y ) = [x] 

primIguales' :: Eq a => [a] -> [a]
primIguales' [] = []
primIguales' (x:xs) = primIgualesA x (x:xs)

-- ejercicio 13)

distanciaEdicion :: String -> String -> Int
distanciaEdicion [] ys = length ys 
distanciaEdicion (x:xs) (y:ys) | (x==y) = (distanciaEdicion xs ys)
                               | (x/=y) = 1 + (distanciaEdicion xs ys)

-- ejercicio 14) 

primerosQuecumplen :: [a] -> ( a -> Bool) -> [a]
primerosQuecumplen [] n = []
primerosQuecumplen (x:xs) n | ( ( n x ) == True) = x : (primerosQuecumplen xs n ) 
                            | ( ( n x ) /= True ) = (primerosQuecumplen xs n ) 

-- ejercicio 12)

cuantGen ::  (b -> b -> b ) -> b -> [a] -> (a -> b) -> b
cuantGen  (op)  (z) [] t  = z
cuantGen  (op)  (z) (x:xs) t = (t x) `op` (cuantGen op z xs t) 

-- [Haskell] >> :r Ok, one module loaded.
-- [Haskell] >> cuantGen (+) 0 [2,3,4,-2] valorAb 11
-- [Haskell] >> cuantGen (&&) True "aabiou" esVocal False
-- [Haskell] >> cuantGen (||) False "aabiou" esVocal True
-- [Haskell] >> cuantGen (*) 1 [2,3,4,6,-4] valorAb 576


iga :: Ord a => a -> [a] -> Bool
iga v [] = True
iga v (x:xs) = (x == v) && (iga v xs)


fac :: Int -> Int
fac 0 = 1
fac (n+1) = (n+1) * ( fac n )