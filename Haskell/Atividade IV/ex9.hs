distance :: Float -> Float -> Float -> Float -> Float -> Float -> Float
distance x1 y1 z1 x2 y2 z2 =  (((x1-x2)**2 + (y1-y2)**2 + (z1-z2)**2) ** 0.5)
    
    
main = do
    x1String <- getLine
    y1String <- getLine
    z1String <- getLine
    x2String <- getLine
    y2String <- getLine
    z2String <- getLine
    let x1 = (read x1String :: Float)
    let y1 = (read y1String :: Float)
    let z1 = (read z1String :: Float)
    let x2 = (read x2String :: Float)
    let y2 = (read y2String :: Float)
    let z2 = (read z2String :: Float)
    
    print (distance x1 y1 z1 x2 y2 z2)
