filtrar :: (t -> Bool) -> [t] -> [t]
filtrar func [] = []
filtrar func lista = [(x) | x <- lista, func x]


main = do
    print (filtrar odd [1,2,3,4,5,6,7,8,9])