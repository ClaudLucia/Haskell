main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [[Double]]
parseInput = map (map read) . map words . lines

doTheWork :: [[Double]] -> [Double]
doTheWork = map findSum
    where 
        findSum :: [Double] -> Double
        findSum (x:xs) = x + findSum xs

showResult :: [Double] -> String
showResult = map compareNum g e
    where 
        compareNum :: Double -> Double -> String
        compareNum x y | x > y = "Gunnar"
                       | x < y = "Emma"
                       | y == x = "Tie"