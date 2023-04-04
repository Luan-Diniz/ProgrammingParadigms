euclidesalgorithm :: Int -> Int -> Int
euclidesalgorithm x y =
    if (x == 0) then
        y
    else
        euclidesalgorithm (mod y x) x
    
    
main = do
    aString <- getLine
    bString <- getLine

    let a = (read aString :: Int)
    let b = (read bString :: Int)

 
    print(euclidesalgorithm a b)
