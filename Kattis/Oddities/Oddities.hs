import Data.Char

main :: IO ()
main = do
 n <- readLn
 ys <- mapM(const getLine) [1..n]
 mapM_ putStrLn (sol ys)

sol::[String]->[String]
sol []=[]
sol (x:[])=(parity (read x):[])
sol (x:xs)=(parity (read x):[])++(sol xs)
parity::Int->String
parity x|mod x 2==0=(show x)++" is even"
        |otherwise =(show x)++" is odd"
