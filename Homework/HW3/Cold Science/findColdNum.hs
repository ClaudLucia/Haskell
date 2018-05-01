main :: IO ()
main = putStrLn . showResult . doTheWork . parseInput =<< getContents

parseInput :: String -> [Integer]
parseInput = (map read) . tail . words

doTheWork :: [Integer] -> Int
doTheWork [] = 0
doTheWork xs = length [x | x <- xs, x < 0]

showResult :: Int -> String
showResult = show