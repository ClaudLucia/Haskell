foldr :: (a -> b -> b) -> b -> [a] -> b

     (a->a->a)  a    [a]           a
foldr (+)       0    [1,2,3,4,5] = 15

foldr1
foldl
foldl1
foldl' -> strict foldl


class foldable (t:: * -> *) where
	fold :: Monoid m => t m -> m
	foldMap :: Monoid m => (a->m) -> t a -> m
    foldr :: (a -> b -> b) -> a -> t a -> b


    toList :: t a -> [a]
    null :: t a -> Bool
    length :: t a -> Int



min
foldr min maxBound [5,9,3,1,-2,7]


maxBound - max possible val for this type of Int



elem:: Eq t => t -> [t] -> Bool

elem y = foldr ((||z).(==y)) False xs

null xs = foldr       g            True xs
	           (\x z -> z && False)


foldr :: (a -> b -> b) -> a -> t a -> b
fold :: Monoid m => t m -> m
foldMap :: Monoid m => (a->m) -> t a -> m

sum :: (Foldable t, Num a) => t a -> a
product :: (Foldable t, Num a) => t a -> a
elem :: (Foldable t, Eq a) => t a -> a
toList :: Foldable t => t a -> [a]

