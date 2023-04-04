alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

getNome :: (Int, String, Float) -> String
getNome (a,b,c) = b

getPrimeiroAluno :: [(Int, String, Float)] -> (Int, String, Float)
getPrimeiroAluno (a:_) = a

--gerarPares :: [t] -> [u] -> [(t,u)]  
--gerarPares l1 l2 = [((a, b)) | a <- l1, b <- l2, a \= b]
gerarPares :: Eq t => [t] -> [t] -> [(t,t)]
gerarPares l1 l2 = [((a, b)) | a <- l1, b <- l2, a /= b]

getNota :: (Int, String, Float) -> Float
getNota (_,_,c) = c

verificaAprovacao :: (Int, String, Float) -> Bool
verificaAprovacao (_,_,nota) = nota >= 6

--Next 2 functions implemented using filter and map.
aprovados :: [(Int, String, Float)] -> [(Int, String, Float)]
aprovados lista = filter verificaAprovacao lista

nomeAprovados :: [(Int, String, Float)] -> [String]
nomeAprovados lista = map getNome (aprovados lista)


--Next 2 functions implemented using list comprehension. (And not using filter or map)
aprovados2 :: [(Int,String,Float)] -> [(Int,String,Float)]
aprovados2 lista = [x| x <- lista, (verificaAprovacao x)]

nomeAprovados2 :: [(Int, String, Float)] -> [String]
nomeAprovados2 lista = [getNome x | x <- lista]

main = do
    --print (nomeAprovados alunos)
    --print (nomeAprovados2 alunos)
    --print (gerarPares alunos alunos)
    print (gerarPares ["Damn", "Cidadela"] ["Damn", "Cidadela"])
