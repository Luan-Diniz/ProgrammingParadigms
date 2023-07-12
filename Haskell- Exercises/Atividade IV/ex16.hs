mdc :: Int -> Int -> Int
mdc x y =
    if (x == 0) then
        y
    else
        mdc (mod y x) x
    

mmc :: Int -> Int -> Int
mmc x y = div (x * y) (mdc x y)                                                               


divisible :: Int -> Int -> Bool  
--Se a eh divisivel por b, entao mmc(a,b) = a
--Vai retornar se x eh divisivel por y
divisible x y =
    if (mmc x y) == x then
        True
    else
        False

main = do
    num1String <- getLine
    num2String <- getLine
    let num1 = (read num1String :: Int)
    let num2 = (read num2String :: Int)

    print(divisible num1 num2)
