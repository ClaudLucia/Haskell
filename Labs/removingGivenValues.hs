--Write a function that removes all instances of a given value from a list
--Tip: What class(es) might be useful when searching for the value to be deleted

--removeAll :: String -> String
--removeAll [] = []
--data value = value Int
--- instance eq value where (value )

removeAll :: Eq a => a -> [a] -> [a]
removeAll x [] = []
removeAll x (y:ys) = if x == y then removeAll x ys 
 else y : removeAll x ys