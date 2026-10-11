mitupla :: Int-> Int -> Bool
mitupla x y = ((2*x)+ y) == ((2*y) + 1)

f :: Int -> Int
f x = 5*x 

duplica :: Int -> Int
duplica w = w + w

por2 :: Int -> Int
por2 y = 2*y

mul:: Int -> Int -> Int
mul t u = t*u

prom :: Int -> Int -> Int
prom e i =  div (e + i) 2

entre0y9 :: Int -> Bool
entre0y9 x |  x > 0 && x < 9   = True
           |  otherwise        = False 

rangoPrecio :: Int -> String 
rangoPrecio w |  w < 0                           = "esto no puede ser"
              |  w < 2000                        = "muy barato"
              |  w > 5000                        = "demasiado caro"
              |  w > 2000 &&  w< 5000            = "hay que verlo bien"
             

absoluto :: Int -> Int 
absoluto p | p >0         = p
           | p < 0       = -p 

esMultiplo2 :: Int -> Bool
esMultiplo2 c | ( mod c 2  == 0)     = True
              | otherwise            = False 

esMultiploDe :: Int -> Int -> Bool
esMultiploDe x y | ( mod y x == 0 )     = True
                 | otherwise            = False

esBisiesto :: Int -> Bool 
esBisiesto x | ((mod x 400 == 0) || ( mod x 4 == 0)) && ( mod x 1000 /= 0)      = True
             | otherwise                                                        = False

disp :: Int -> Int -> Int -> Int
disp x y z =  (max x (max y z)) -  (min x (min y z))


celFah :: Float -> Float 
celFah x = (x* 1.8) + 32

fahCel :: Float -> Float
fahCel x = ( x - 32)/ 1.8

haceF :: Float -> Bool 
haceF x | (( x - 32 ) / 1.8 )  < 8      = True
        | otherwise                     = False 



mayor3 :: (Int,Int,Int) ->  (Bool,Bool,Bool)
mayor3 (x,y,z) =   ( x>3, y>3, z>3)

segundo3 :: (Int,Int,Int) -> Int
segundo3 (x,y,z) = y 

ordena :: (Int,Int)  -> (Int,Int)
ordena (x,y) | y>=x      = (x,y)
             | y< x         = (y,x)  

ranPreP :: Int -> (Int,Int) -> String
ranPreP x (y,z) | x<0                     = "esto no puede ser"
                | x < y                   = "muy barato"
                | x > z                   = "demasiado caro"
                | x >y && x < z           = "hay que verlo bien"

todosIguales :: (Int,Int,Int) -> Bool
todosIguales (x,m,n) | (x == m) && (m == n)       = True
                     | otherwise         = False 
 







