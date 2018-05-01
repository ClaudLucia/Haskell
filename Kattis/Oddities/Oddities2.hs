import Data.Char
main = do
  n<-readLn
  as<-mapM (const getLine) [1..n]
  mapM_ putStrLn (sol as)

sol::[String]->[String]
sol []=[]
sol (x:[])=(parity (read x):[])
sol (x:xs)=(parity (read x):[])++(sol xs)

parity::Int->String
parity x|mod x 2==0=(show x)++" is even"
        |otherwise =(show x)++" is odd"

--tochar::Int->Char
--tochar x=chr (x+(ord '0'))

-----------------------------------------------------------------------------

main = do
 line <- getLine
 let n = read line ::Int
 let loop k acc | k n = return $ reverse acc
 loop k acc = do
   a <- getLine
   let vals = (map read . words) line :: Int
   if vals = vals `mod` 2==0
    then vals ++ " is even"
	else vals ++ " is odd"
	
----------------------------------------------------------------------------
	
a<-getLine
  let n=0
  if n = n < a
   then 
     xs <- (map read . words) <$> getLine
	  if xs = xs `mod` 2==0
	   then "xs is even"
	   else "xs is odd"
	   
	   
	   
	   findOdd :: Int -> [String]

-----------------------------------------------------------------------
num::[String] -> [String]
num []=[]
num (x:[])=(parity (read x):[])
 
parity x|mod x 2==0=(show x)++" is even"
         |otherwise =(show x)++" is odd"