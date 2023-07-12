inverte :: [t] -> [t]
inverte [] = []
inverte [x] = [x]
inverte (a:b) = (inverte(b) ++ [a])


main = print (inverte [1,2,3,4,5,6,7,8,9,10,11])