--another way to do twostones

twostones :: Integer -> String
twostones n = if n `mod` 2 == 0 then "Bob" else "Alice" --ternary operator

main :: IO ()
main = do
   n <- readLn
   putStrLn (twostones n)

