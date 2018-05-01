findSum :: [Double] -> Double
findSum [] = 0
findSum (x:xs) = x + findSum xs