primo :: Int -> Bool
primo n = primoRec n (n-1)
    where 
        primoRec n m
            | (m == 1) = True
            | ((mod n m) ==) 0 = False
            | otherwise = primoRec n (m - 1)


main = do
    print (primo 12) --Should print false
    print (primo 31) --Should print true
