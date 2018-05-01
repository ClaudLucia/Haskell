
--what should the return type be?
--timeloop :: Integer -> ?
timeloop k n = do --We have variables k and n
    putStrLn (show k ++ "Abracadabra")
    if k < n
        then timeloop (k+1)
        else return ()

main = do
    n <- readLn   --read the int N from the keyboard
        --here I need to loop n times, except that I have no loops!
