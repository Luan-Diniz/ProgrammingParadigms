main = do
    aString <- getLine
    bString <- getLine
    cString <- getLine

    let a=  (read aString :: Float)
    let b = (read bString :: Float)
    let c = (read cString :: Float)

    
    print (max (max a b) c)
