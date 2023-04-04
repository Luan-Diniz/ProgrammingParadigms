mdc :: Int -> Int -> Int
mdc x y =
    if (x == 0) then
        y
    else
        mdc (mod y x) x
    

mmc :: Int -> Int -> Int
mmc x y = div (x * y) (mdc x y)                                                               


coprimos :: Int -> Int -> String
coprimos x y = 
    if (mdc x y) == 1 then
        "Coprimos"
    
    else
        "Nao sao coprimos"

main = do
    aString <- getLine
    bString <- getLine

    let a = (read aString :: Int)
    let b = (read bString :: Int)

    print(coprimos a b)
