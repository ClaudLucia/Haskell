append :: [a] -> [a] -> [a]
append "" = ""
append =  do s1 <- ["1","2"]
 s2 <- ["3","4"]
let s3 = s1 ++ head (s2)
print (s3)