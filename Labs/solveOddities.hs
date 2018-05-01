main :: IO ()
main = putStrLn . showResult . doTheWork . parseInput =<< getContents

parseInput :: String -> [Int]
parseInput = map read . tail . words

doTheWork :: [Int] -> [String]
doTheWork = map showParity
  where
    showParity :: Int -> String
    showParity x = show x ++ " is " ++ if even x then "even" else "odd"

showResult :: [String] -> String
showResult = unlines