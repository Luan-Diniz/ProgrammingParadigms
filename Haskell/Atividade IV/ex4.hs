exclusivo :: Bool -> Bool -> Bool
exclusivo False False = False
exclusivo False True = True
exclusivo True False = True
exclusivo True True = False

main = do
    arg1String <- getLine
    arg2String <- getLine
    let arg1 = (read arg1String :: Bool)
    let arg2 = (read arg2String :: Bool)
    
    print (exclusivo arg1 arg2)
