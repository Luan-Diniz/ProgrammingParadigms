media :: Float -> Float -> Float -> String
media x y z = 
    if ((x + y + z)/3) >= 6.0 then
        "Aprovado"
    else
        "Reprovado"

main = do
    nota1String <- getLine
    nota2String <- getLine
    nota3String <- getLine 
    let nota1 = (read nota1String :: Float)
    let nota2 = (read nota2String :: Float)
    let nota3 = (read nota3String :: Float)
    
    
    print (media nota1 nota2 nota3)
