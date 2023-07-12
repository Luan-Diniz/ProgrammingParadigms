primeiros :: Int -> [t] -> [t]
primeiros _ [] = []
primeiros 0 _ = []
primeiros 1 (a:b) = [a]
primeiros n (a:b) = [a] ++ (primeiros (n-1) b)


main = do
    --Some tests.
    print (primeiros 0 [1,2,3,4,5,6,7,8,9])
    print (primeiros 1 [1,2,3,4,5,6,7,8,9])
    print (primeiros 4 [1,2,3,4,5,6,7,8,9])
    print (primeiros 7 [1,2,3,4,5,6,7,8,9])
    print (primeiros 111 [1,2,3,4,5,6,7,8,9])