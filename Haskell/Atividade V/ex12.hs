apagar :: Int -> [t] -> [t]
apagar _ [] = []
apagar 0 lista = lista
apagar 1 (a:b) = b
apagar n (a:b) = apagar (n-1) b


main = do
    --Some tests
    print (apagar 0 [1,2,3,4,5]) 
    print (apagar 3 [1,2,3,4,5]) 
    print (apagar 6 [1,2,3,4,5]) 