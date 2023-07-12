ocorrencias :: [Int] -> Int -> Int
ocorrencias [] n = 0
ocorrencias (a : b) n = if a == n 
    then  
        1 + ocorrencias b n
    else
        ocorrencias b n



main = do
    --Should print "5\n3\n0"
    print (ocorrencias [1,2,3,3,3,3,3,4,4,4] 3)
    print (ocorrencias [1,2,3,3,3,3,3,4,4,4] 4)
    print (ocorrencias [1,2,3,3,3,3,3,4,4,4] 5)
