data Forma = Circulo Float | Retangulo Float Float | Triangulo Float Float

area :: Forma -> Float
area (Circulo r) = pi * r * r
area (Retangulo b a) = b * a
area (Triangulo b a) = ((b*a)/2)

trianglin :: Float -> Float -> Forma
trianglin b a =  (Triangulo b a)

main = do
    print (area (trianglin 4 3))
    print (area (Triangulo 4 3))
