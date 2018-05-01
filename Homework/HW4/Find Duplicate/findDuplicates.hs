main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> String
parseInput = map read . words

doTheWork :: String -> String
doTheWork [] = []
doTheWork (x:xs) = if x `elem` xs then "no" else "yes"

--show "no" if x `elem` xs else "yes"

showResult :: String -> String
showResult = show