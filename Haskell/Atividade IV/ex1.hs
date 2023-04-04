exponenciacao :: Float -> Float -> Float
exponenciacao x y = x ** y

main = do
    num1String <- getLine
    num2String <- getLine
    let num1 = (read num1String::Float)
    let num2 = (read num2String::Float)
    
    print (exponenciacao num1 num2)
