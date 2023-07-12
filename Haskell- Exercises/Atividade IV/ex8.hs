bhaskara :: Float -> Float -> Float -> (Float, Float, String)
bhaskara a b c =
    if (b**2 - 4*a*c >= 0) then
        ( ((-b + (b**2 - 4*a*c)**(0.5))/2*a), ((-b - (b**2 - 4*a*c)**(0.5))/2*a), ("Real Values"))
    
    else
        (0,0,"Imaginary Values ERROR")
    
    

main = do
    aString <- getLine
    bString <- getLine
    cString <- getLine
    let a = (read aString :: Float)
    let b = (read bString :: Float)
    let c = (read cString :: Float)
    
    print (bhaskara a b c)
