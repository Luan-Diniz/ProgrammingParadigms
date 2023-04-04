type Nome = String
type Disciplina = String
type Notas = (Float, Float, Float)
type Aluno = (Nome, Disciplina, Notas)

aluno :: Int -> Aluno
aluno 1 = ("Tom", "OOP", (4,5,6))
aluno 2 = ("Jerry", "Discrete Math", (8,9,5))
aluno 3 = ("Ratinho", "Linear Algebra", (10,9,10))
aluno 4 = ("Raul Gil", "Parallel Programming", (7,6,6))

getName :: Aluno -> String
getName (nome, _, _) = nome 

pegaNotas :: Aluno -> (Float, Float, Float)
pegaNotas (_, _, notas) = notas

alunoMedia :: Int -> Float
alunoMedia n = calculaMedia (pegaNotas(aluno n))
    where calculaMedia (a,b,c) = (a+b+c)/3
    
mediaTurma :: Int -> Float  
mediaTurma 4 = (alunoMedia 4)
mediaTurma 1 = ((alunoMedia 1) + (mediaTurma (1+1)))/4
mediaTurma n = (alunoMedia n) + (mediaTurma (n+1))

main = do
    print (getName (aluno 4))
    print (alunoMedia 4)
    print (mediaTurma 1)
