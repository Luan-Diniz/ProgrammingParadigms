triangle:: Float -> Float -> Float -> String
triangle x y z = 
    if (((abs (y - z)) < x && x < (y + z)) && ((abs (x - z)) < y && y < (x + z)) && ((abs (y - x)) < z && z < (y + x))) then
        "Existe"
    else
        "Nao existe"

main = do
    lado1String <- getLine
    lado2String <- getLine
    lado3String <- getLine 
    let lado1 = (read lado1String :: Float)
    let lado2 = (read lado2String :: Float)
    let lado3 = (read lado3String :: Float)
    
    
    print (triangle lado1 lado2 lado3)
