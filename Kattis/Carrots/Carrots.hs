main = do
  xs<-getLine
  let n=read (head (words xs))
  ys<-mapM (const getLine) [1..n]
  putStrLn (concat (drop 1 (words xs)))