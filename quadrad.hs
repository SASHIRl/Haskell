data Ponto42 = Ponto42 Double Double
    deriving (Eq, Show)

data Quadrado1 = Quadrado1 Ponto42 Ponto42
    deriving (Eq, Show)

area2 :: Quadrado1 -> Double
area2 (Quadrado1 p111 p222) = lado1 * lado1
    where
        lado1 = distancia1 p111 p222

distancia1 :: Ponto42 -> Ponto42 -> Double
distancia1 (Ponto42 xa ya) (Ponto42 xb yb) = sqrt((xa-xb)**2 + (ya-yb)**2)

p111 :: Ponto42
p111 = Ponto42 0 0
p222 :: Ponto42
p222 = Ponto42 3 0

quad1 :: Quadrado1
quad1 = Quadrado1 p111 p222
areaQuad2 :: Double
areaQuad2 = area2 quad1