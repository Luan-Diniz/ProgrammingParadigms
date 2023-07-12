
calcular :: String -> Float -> Float -> Float
calcular operador x y 
    | operador == "+" = x + y
    | operador == "-" = x - y
    | operador == "*" = x * y
    | operador == "/" = x / y
    | otherwise = 0.0/0.0   --Returns a NaN




main = do
    operador <- getLine
    xStr <- getLine
    yStr <- getLine

    let x = (read xStr :: Float)
    let y = (read yStr :: Float)

    print (calcular operador x y)
