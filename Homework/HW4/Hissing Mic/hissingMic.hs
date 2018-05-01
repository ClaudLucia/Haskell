main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> String
parseInput = undefined

doTheWork :: String -> String
doTheWork [] = []
doTheWork (c:cs) = if cs == "ss" then "hiss" else "no hiss"

--show "hiss" if cs `elem` "ss" else "no hiss"

showResult :: String -> String
showResult = undefined