append [] []=[]
append [] ys = ys
append xs [] = xs
append (x:xs) (y:ys) = x : append xs (y:ys)
--append (x:xs) ys = x : append xs ys