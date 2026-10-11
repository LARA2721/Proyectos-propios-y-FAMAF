data Color = Rojo | Amarillo | Azul | Verde
   deriving (Show, Eq)
data Forma = Triangulo | Cuadrado | Rombo | Circulo
   deriving (Show, Eq)
type Figura = (Forma, Color, Int)

tam :: Figura -> Int
tam (f,c,t) = t 

rojo :: Figura -> Bool
rojo (f,c,t) = c == Rojo

amarillo :: Figura -> Bool
amarillo (f,c,t) = c == Amarillo

azul :: Figura -> Bool
azul (f,c,t) = c == Azul

verde :: Figura -> Bool
verde (f,c,t) = c == Verde

cuadrado :: Figura -> Bool
cuadrado (f,c,t) = f == Cuadrado

rombo :: Figura -> Bool
rombo (f,c,t) = f == Rombo

circulo :: Figura -> Bool
circulo (f,c,t) = f == Circulo

triangulo :: Figura -> Bool
triangulo (f,c,t) = f == Triangulo 


propB :: [Figura] -> Bool
propB [] = True
propB (x :xs) =  ( (tam x) < 5) && propB xs  

propC :: [Figura] -> Bool
propC [] = True
propC (x:xs) = (not (triangulo x) || rojo x ) && propC xs  

propD :: [Figura] -> Bool
propD [] = False
propD (x:xs) =  ((cuadrado x) &&  (verde x)) || propD xs   

propE :: [Figura] -> Bool
propE [] = True
propE (x:xs) =  ( not ( circulo x) || (azul x && tam x < 10 ) )  && propE xs 

propF :: [Figura] -> Bool
propF [] = True
propF (x:xs) = ( not (triangulo x ) || not ( azul x ) ) &&  ( propF xs ) 

propG :: [Figura] -> Bool
propG [] = True
propG (x:xs) = ( not (circulo x ) || ( not ( amarillo x ) &&  not ( verde x ) ) ) &&  ( propG xs )

propH :: [Figura] -> Bool
propH [] = False
propH (x:xs) = ( cuadrado x && ( tam x < 5) ) ||  ( propH xs)

cuaRa :: [Figura] -> Bool
cuaRa [] = True
cuaRa (x:xs) = (( cuadrado x ) && ( rojo x || azul x) ) && (cuaRa xs)

propI :: [Figura] -> Bool
propI [] = False
propI (x:y:xs) =  ( ( not ( circulo x && rojo x ) ) || ( cuadrado y &&  rojo y ) ) || (propI xs)

tam10 :: [Figura] -> Bool
tam10 [] = False
tam10 (x:xs) = (tam x > 10 ) || (tam10 xs)

hayC :: [Figura] -> Bool
hayC [] = False 
hayC (x:xs) = cuadrado x || ( hayC xs) 

hayC10 :: [Figura] -> Bool
hayC10 [] = False
hayC10 (x:xs) = ((cuadrado x) && (tam x > 10)) || (hayC10 xs) 

hayCA:: [Figura] -> Bool
hayCA [] = False 
hayCA (x:y:xs) = ( not ( cuadrado x && azul x && circulo y ) || (tam x > tam y ) ) || ( hayCA xs)

cirA :: [Figura] -> Bool
cirA [] = True
cirA (x:xs)=  (not (circulo x ) ||  not ( azul x) )   && ( cirA xs)


conE :: [[Int]] -> Bool
conE [] = True
conE (xs:xss) = ( length xs /= 0 ) && (conE xss)

todosT :: [Bool] -> Bool
todosT [] = True
todosT (x:xs) = (x == True) && (todosT xs) 
