areaTriangulo :: Float -> Float -> Float
areaTriangulo b h = ((b*h)/2)


main = do
    baseString <- getLine
    alturaString <- getLine
    let base = (read baseString :: Float)
    let altura = (read alturaString :: Float)
    
    print (areaTriangulo base altura)
