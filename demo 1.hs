module Demo where



import Data.List 



-- Opdracht 1A

--factorial::Integer->Integer
--factorial 0 = 1
--factorial x = x * factorial (x-1)
factorial :: Integer -> Integer  
factorial n = product [1..n] 

-- Opdracht 1B

--factorialg n
--   |n<=1 = 1
--   |n>1 =  n * (factorialg (n-1))

factorialb::Integer->Integer
factorialb x
    | x > 1 = x * factorialb (x - 1)
    | otherwise = 1

-- Opdracht 2A

--nulpuntena :: Double -> Double-> Double-> [Double]
--nulpuntena a b c = [x1,x2]
--      where
--          x1 = ((-b) + sqrt((b^2)  - ( 4 * a * c))) / (2 * a)
--          x2 = ((-b) - sqrt((b^2)  - ( 4 * a * c))) / (2 * a)

nulpuntena :: Double -> Double-> Double-> [Double]
nulpuntena a b c = [(-b -sqrt(b^2 - (4*a*c))) / (2*a), (-b +sqrt(b^2 - (4*a*c))) / (2*a)]
         

--nulpuntenc :: Double -> Double -> Double -> (Double, Double)
--nulpuntenc a b c = (x, y)
--	where
--			x = e + sqrt d / (2 * a)
--			y = e - sqrt d / (2 * a)
--			d = b * b - 4 * a * c
--			e = - b / (2 * a)

-- Opdracht 2B

nulpuntenb::Double->Double->Double->[Double]
nulpuntenb a b c = [x1, x2] where
    x1 = (-b -sqrt(b^2 - (4*a*c))) / (2*a)
    x2 = (-b +sqrt(b^2 - (4*a*c))) / (2*a)



-- Opdracht 2C

rollDicea::[(Integer,Integer,Integer)]
rollDicea = [(x,y,z) | x<-[1..6],y<-[1..6],z<-[1..6], (x+y+z) `mod` 5 == 0]


-- Opdracht 2D

rollDiceb::Integer->[(Integer,Integer,Integer)]
rollDiceb n = [(x,y,z) | x<-[1..6],y<-[1..6],z<-[1..6], (x+y+z) `mod` n == 0]

