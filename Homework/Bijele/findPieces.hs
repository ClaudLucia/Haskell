main :: IO()
main = putStrLn . showResult . doTheWork . parseInput =<< getContents

parseInput :: [Integer] -> [Integer]
parseInput = (map read) . words

doTheWork :: [Integer] -> [Integer]
doTheWork [k,q,r,b,n,p] = [1-k,1-q,2-r,2-b,2-n,8-p]

showResult :: [Integer] -> [Integer]
showResult = unlines . (map show)