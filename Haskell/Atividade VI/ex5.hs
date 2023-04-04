{-
    Type: não gera um tipo novo de fato, ele serve como um sinônimo de algum tipo.
    Data: cria um novo tipo de dados que pode ter vários construtores
    NewType: cria um novo tipo de dados que pode ter um construtor.
        -newtype é mais eficiente que o data, embora seja menos flexível.
        -diferentemente do type, ele não é um sinônimo para um tipo de dados já existe.
            -newtype cria, de fato, um novo tipo de dados

-}

newtype Numero = Numero Float

calculaAreaQuadrado :: Numero -> Float
calculaAreaQuadrado (Numero n) =  (n ** 2)

main = do
    let usandoTipoNovo = Numero 7.0
    let tentandoUsarFloat = 7.0

    print (calculaAreaQuadrado usandoTipoNovo)
    --print (calculaAreaQuadrado tentandoUsarFloat) --Dá erro pois não é do tipo float