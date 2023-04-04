apagarEnquanto :: (t -> Bool) -> [t] -> [t]
apagarEnquanto _ [] = []
apagarEnquanto func [x] = if (func x) then [x] else []
apagarEnquanto func (a:b) = 
    if (func a) then 
        [a] ++ (apagarEnquanto func b)
    else
        []

main = do
    print (apagarEnquanto even [2,4,6,7,8,9]) --Should return [2,4,6]
    print (apagarEnquanto even [2])
    --All the next prints should return []
    print (apagarEnquanto even [3,2,4,6,7,8,9]) 
    print (apagarEnquanto odd [2,4,6,8]) 
    print (apagarEnquanto even []) 
    print (apagarEnquanto even [9])