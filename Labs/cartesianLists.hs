--cartesian of two lists
--cartesian [1,2,3] "abc"
--[(1,'a'),(1,'b'),(1,'c'),(2,'a'),(2,'b'),(2,'c'),(3,'a'),(3,'b'),(3,'c')]

--cartesian = [(x,y) | x <- [1,2,3], y <- "abc"]

n = [1,2,3]
a = ["a","b","c"]

cartesian = [(x,y) | x <- n, y <- a]

------------------------------------------------------------

cp xs ys = concatMap (flip map ys) (map (,) xs)
makePairs x ys = (map (,) xs) <$> ys
--Review this 
------------------------------------------------------------

cp xss
 = [x:[y,z] | x <- xs, y <- ys, z <- zs]  =  [x,y,z] | x <- xs, y <- ys, z <- zs]

[x,y,z] == x:[y,z]
--Review this