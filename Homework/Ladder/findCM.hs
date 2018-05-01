main :: IO()
main = putStrLn . showResult . doTheWork . parseInput =<< getContents

parseInput :: String -> [Integer]
parseInput = (map read) . words

doTheWork :: [Integer] -> Integer
doTheWork [] = 0
doTheWork [x,y]= ((y * 2) - x)

showResult :: Integer -> String
showResult = show