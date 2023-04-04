euclidesalgorithm :: Int -> Int -> Int
euclidesalgorithm x y =
    if (x == 0) then
        y
    else
        euclidesalgorithm (mod y x) x
    
mdc :: Int -> Int -> Int -> Int
mdc x y z = (euclidesalgorithm z (euclidesalgorithm x y))


main = do
    aString <- getLine
    bString <- getLine
    cString <- getLine

    let a = (read aString :: Int)
    let b = (read bString :: Int)
    let c = (read bString :: Int)

 
    print(mdc a b c)
