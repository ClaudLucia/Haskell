main :: IO ()
main = putStrLn . showResult . doTheWork . parseInput =<< getContents

parseInput :: String -> [Int]
parseInput = map read

doTheWork :: [Int] -> [String]
doTheWork = map timeLoop
 where
  timeLoop :: Int -> String
  timeLoop x n = (show x ++ " Abracadabra")
  if x > 0
  then timeLoop (x+1) n
  else return

showResult :: [String] -> String
showResult = undefined