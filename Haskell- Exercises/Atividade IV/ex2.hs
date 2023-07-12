main = do
    numString <- getLine
    let num = (read numString :: Int)
    
    print  (abs (num))
