main :: IO()
main = putStrLn . showResult . doTheWork . parseInput =<< getContents

parseInput :: String -> [Integer]
parseInput = (map read) . words

doTheWork :: [Integer] -> Integer
doTheWork [x, y] = (((y - 1) * x) + 1)

showResult :: Integer -> String
showResult = show