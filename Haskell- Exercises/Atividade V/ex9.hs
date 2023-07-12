mapear :: (t -> y) -> [t] -> [y]
mapear func [] = []
mapear func lista = [(func x) | x <- lista]


main = do
    print (mapear abs [1,2,-3,4,-5,6,7,-8,-9])