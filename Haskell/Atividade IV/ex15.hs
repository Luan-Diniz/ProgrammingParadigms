mdc :: Int -> Int -> Int
mdc x y =
    if (x == 0) then
        y
    else
        mdc (mod y x) x
    

mmc :: Int -> Int -> Int
mmc x y = div (x * y) (mdc x y)                                                               


coprimos :: Int -> Int -> Bool
coprimos x y = 
    if (mdc x y) == 1 then
        True
    
    else
        False

totienteEuler :: Int -> Int -> Int
totienteEuler 1 _= 1
totienteEuler n ref=
    if (coprimos n ref) == True then
        (1 + (totienteEuler (n - 1) ref))
    else
        (totienteEuler (n - 1) ref)
        

main = do
    numString <- getLine
    let num = (read numString :: Int) 

    print(totienteEuler num num)
