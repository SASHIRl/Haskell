data Ponto = Ponto Double Double
    deriving (Eq, Show)

data Triangulo = Triangulo Ponto Ponto Ponto
    deriving (Eq, Show)

area :: Triangulo -> Double
area (Triangulo p1 p2 p3) = base * altura / 2.0
    where
        base = distancia p1 p2
        altura = distancia p1 p3

-- Calcular Semiperimetro
    -- s = (a+b+c)/2

-- Utilizar a fórmular de Heron

    -- Não consegui descobrir como calcular a determinante pela fórmula
        -- A = sqrt(s(s - a)(s - b)(s - c))

distancia :: Ponto -> Ponto -> Double
distancia (Ponto xa ya) (Ponto xb yb) = sqrt((xa-xb)**2 + (ya-yb)**2)

p1 :: Ponto
p1 = Ponto (-4) 2
p2 :: Ponto
p2 = Ponto 2 3
p3 :: Ponto
p3 = Ponto (-2) (-2)
tri :: Triangulo
tri = Triangulo p1 p2 p3
areaTri :: Double
areaTri = area tri