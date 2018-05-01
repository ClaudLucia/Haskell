findCal:: [Double] -> [Double]
findCal (x:xs) = [x/400 |  x <- xs]