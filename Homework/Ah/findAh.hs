main :: IO ()
main = putStrLn . showResult . doTheWork . parseInput =<< getContents

parseInput :: String -> [Char]
parseInput = (map read) . words

doTheWork :: [Char] -> [String]
doTheWork (x:xs) = if length (x) < length(xs)t hen show "go" else show "no"

showResult :: [String] -> String
showResult = unlines