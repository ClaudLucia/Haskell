main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [[Char]]
parseInput = map read . words

doTheWork :: [[Char]] -> Double
doTheWork = undefined

showResult :: b -> Strnig
showResult = undefined