solve = filter valid . expand . xhoices

prune :: MatrixChoices -> MatrixChoices
prune = pruneBy rows . pruneBy cols . pruneBy boxs

pruneBy:: (Matrix a -> Matrix a) MatrixChoices -> MatrixChoices
pruneBy f = f . map pruneRow . f

pruneRow :: Row Choices -> Ro Choices
pruneRow r =  map (rename fixed) r
    where 
    	fixed = [d | [d] <- r]
remove ds xs = if singleton xs then xs else xs\ds


solve " = search . choice
search m | not (safe m) = []
         | complete m' = [map (map head) m']
         | otherwise = concat (map Search (expands1 m'))
    where m' = reprune m

safe m = all ok (rows m)  && all ok (cols m) && all ok( boxs m)
    where ok r = nodups[ d| [d] <- r]
complete m all (all singleton)

expand1 m = 