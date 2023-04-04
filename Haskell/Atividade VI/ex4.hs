data Arvore = Null | No Int Arvore Arvore

minhaArvore :: Arvore
minhaArvore = No 52 (No 32 (No 12 Null Null) (No 35 Null Null)) (No 56 (No 55 Null Null) (No 64 Null Null))

somaElementos :: Arvore -> Int
somaElementos Null = 0
somaElementos (No n esq dir) = n + (somaElementos esq) + (somaElementos dir)

buscaElemento :: Arvore -> Int -> Bool
buscaElemento Null _ = False
buscaElemento (No n esq dir) x 
    | (n == x) = True                           
    | otherwise = (buscaElemento esq x) || (buscaElemento dir x)

limiteSup :: Int
limiteSup = 1000 --Define um limite superior para o maior número

minimo :: Int -> Int -> Int
minimo x y | (x < y) = x
           | otherwise = y

minimoElemento :: Arvore -> Int
minimoElemento Null = limiteSup 
minimoElemento (No n esq dir) = 
    minimo n (minimo (minimoElemento esq) (minimoElemento dir))


ocorrenciasElemento :: Arvore -> Int -> Int
ocorrenciasElemento Null _ = 0
ocorrenciasElemento (No num esq dir) n =
    if num == n then
        1 + (ocorrenciasElemento esq n) + (ocorrenciasElemento dir n)
    else
        (ocorrenciasElemento esq n) + (ocorrenciasElemento dir n)

maioresQueElemento :: Arvore -> Int -> Int
maioresQueElemento Null _ = 0
maioresQueElemento (No num esq dir) n =
    if (num > n) then
        1 + (maioresQueElemento esq n) + (maioresQueElemento dir n)
    else
        (maioresQueElemento esq n) + (maioresQueElemento dir n)

quantidade :: Arvore -> Int
quantidade Null = 0
quantidade (No num esq dir) = 1 + (quantidade esq) + (quantidade dir)

mediaElementos :: Arvore -> Float
mediaElementos arvore = (fromIntegral (somaElementos arvore)) / (fromIntegral (quantidade arvore))

elementos :: Arvore -> [Int]
elementos Null = []
elementos (No num esq dir) = [num] ++ (elementos esq) ++ (elementos dir)

main = do 
    {-    putStrLn (show (somaElementos minhaArvore))
        putStrLn (show (buscaElemento minhaArvore 30))
        putStrLn (show (buscaElemento minhaArvore 55))
        putStrLn (show (minimoElemento minhaArvore)) -}
    --print (ocorrenciasElemento minhaArvore 35)
    --print (maioresQueElemento minhaArvore 35)
    --print (quantidade minhaArvore)
    --print (mediaElementos minhaArvore)
    print (elementos minhaArvore)