main :: IO ()
main = putStrLn . showResult . doTheWork . parseInput =<< getContents

parseInput :: String -> [Double]
parseInput = (map read) . tail . words

doTheWork :: [Double] -> Double
doTheWork = map findMean 
    where
         findMean :: [Double] -> Double
         findMean (x:xs) = ((x * findMean xs) / (length xs + 1))

showResult :: Double -> String
showResult = show