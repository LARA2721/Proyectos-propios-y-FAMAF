--Práctico 0 

-- Laboratorio 1 

esCero :: Int -> Bool
esCero x | ( x== 0 ) = True
         | ( x /= 0 ) = False

esPositivo :: Int -> Bool
esPositivo (m) | ( m > 0 ) = True
               | ( m <= 0 ) = False

esVocal :: Char -> Bool 
esVocal k  =  (  ( k == 'a' ) || ( k == 'e') || ( k == 'o' ) || ( k == 'i') || ( k == 'u' )  )     


valorAbsoluto :: Int -> Int
valorAbsoluto u | ( u >= 0 ) = u
                | ( u < 0 ) = (-u)


{- [Haskell] >> esCero 9
False
[Haskell] >> esCero 0
True
[Haskell] >> esPositivo 1297
True
[Haskell] >> esPositivo (-234)
False
[Haskell] >> esVocal 'r'
False
[Haskell] >> esVocal 'i'
True
[Haskell] >> valorAbsoluto 56
56
[Haskell] >> valorAbsoluto (-45)
45 -}

-- Laboratorio 2 

todosPositivos :: [Int] -> Bool
todosPositivos [] = True
todosPositivos (x:xs) = ( x > 0 ) && todosPositivos xs 

hayPares :: [Int] -> Bool
hayPares [] = False
hayPares (x:xs) = ( ( mod x 2 ) == 0 ) || hayPares xs

paratodo :: [Bool] -> Bool
paratodo [] = True
paratodo (x:xs) = (x == True ) && paratodo xs 

existe :: [Bool] -> Bool
existe [] = False
existe (x:xs) = (x == True ) || existe xs 

{- [Haskell] >> paratodo [True,False,True]
False
[Haskell] >> paratodo [True,True]
True
[Haskell] >> hayPares [1,5,-4]
True
[Haskell] >> todosPositivos [1,5,-4]
False
[Haskell] >> todosPositivos [2,4,1]
True
[Haskell] >> existe [False,True,False]
True -}






 