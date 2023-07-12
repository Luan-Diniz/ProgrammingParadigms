mdc :: Int -> Int -> Int
mdc x y =
    if (x == 0) then
        y
    else
        mdc (mod y x) x
    

mmc :: Int -> Int -> Int
mmc x y = div (x * y) (mdc x y)                                                               



main = do
    aString <- getLine
    bString <- getLine

    let a = (read aString :: Int)
    let b = (read bString :: Int)

    print(mmc a b)
    
