busca :: [Int] -> Int -> Bool
busca [] n = False
busca (a : b) n = 
    if a == n then True else busca b n
    

main = do 
    -- Should print "True\nFalse"
    print (busca [1,2,3,4,5,6,7,8,9] 8)
    print (busca [1,2,3,4,5,666,7,8,9] 6)