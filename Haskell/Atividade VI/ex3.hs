data Ponto = Ponto2D (Float ,Float) | Ponto3D (Float ,Float ,Float)


calculaDistancia :: Ponto -> Ponto -> Float
calculaDistancia (Ponto2D (x1,y1))  (Ponto2D (x2, y2)) = ((x1 - x2)**2 + (y1 - y2)**2)**0.5
calculaDistancia (Ponto3D (x1,y1,z1))  (Ponto3D (x2, y2, z2)) = ((x1 - x2)**2 + (y1 - y2)**2 + (z1 - z2)**2)**0.5


main = do
    
    print (calculaDistancia (Ponto2D (3, 4)) (Ponto2D (6 ,7)))
    print (calculaDistancia (Ponto3D(3,4,8)) (Ponto3D(6,7,9)))
