main :: IO ()
main = putStrLn . showResult . doTheWork . parseInput =<< getContents

parseInput :: Integer -> a
parseInput = undefined

doTheWork :: a -> b
doTheWork = undefined

showResult :: b -> Integer
showResult = undefined