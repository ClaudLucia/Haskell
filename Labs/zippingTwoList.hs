--1 Zipping two lists
--i.e. zippit [1,2,3]
--[(1,'a'),(2,'b'),(3,'c')]

zipList :: [a] -> [b] -> [(a,b)]
zipList [] [] = []
zipList (x:xs)(y:ys) = (x,y): zipList xs ys


----------------------------------------
zippit :: [a] -> [b] -> [(a,b)]

zippit xs [] = []
zippit [] ys = []
zippit(x:xs)(y:ys) = (x,y): zippit xs ys
