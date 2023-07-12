menorInt :: [Int] -> Int
menorInt [] = 0
menorInt [x] = x
menorInt (a:b) = if a < caudaMenor then a else caudaMenor
    where caudaMenor = menorInt b

maiorInt :: [Int] -> Int
maiorInt [] = 0
maiorInt [x] = x
maiorInt (a:b) = if a > caudaMaior then a else caudaMaior
    where caudaMaior = maiorInt b


main = do
    print ((maiorInt [4,5,6,734,2,32]) - (menorInt [4,5,6,734,2,32])) --Should print 732
    