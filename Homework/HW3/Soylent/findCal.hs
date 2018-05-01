main :: IO ()
main = putStrLn . showResult . doTheWork . parseInput =<< getContents

parseInput :: String -> [Double]
parseInput = map read . tail . words

doTheWork :: [Double] -> [Double]
doTheWork = map findCal
    where
        findCal :: Double -> Double
        findCal x = (x/400)

showResult :: [Double] -> String
showResult =  show