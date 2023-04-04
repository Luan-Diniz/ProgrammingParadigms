menorInt :: [Int] -> Int
menorInt [] = 0
menorInt [x] = x
menorInt (a:b) = if a < caudaMenor then a else caudaMenor
    where caudaMenor = menorInt b


main = print (menorInt [4,5,6,734,2,32]) --Should print 2
    