minimo :: Double -> Double -> Double -> Double
minimo a b c
    | a < b && a < c = a
    | b < c = b
    | otherwise = c

carta :: Char -> String
carta c
    | c >= 'a' && c <= 'z' = "Lower case"
    | c >= 'A' && c <= 'Z' = "Upper case"
    | otherwise = "Não é notação ASCII"

precoRestaurante :: Int -> String -> Double
precoRestaurante pessoas semana
    | semana == "domingo" && pessoas == 1 || semana == "sabado" && pessoas == 1 = 100.00 + (100 * 0.20)
    | semana == "domingo" && pessoas == 2 || semana == "sabado" && pessoas == 2 = 125.00 + (125 * 0.20)
    | semana == "domingo" && pessoas == 3 || semana == "sabado" && pessoas == 3 = 150.00 + (150 * 0.20)
    | semana == "domingo" && pessoas == 4 || semana == "sabado" && pessoas == 4 = 165.00 + (165 * 0.20)
    | semana == "domingo" && pessoas == 5 || semana == "sabado" && pessoas == 5 = 175.00 + (175 * 0.20)
    | semana == "domingo" && pessoas == 6 || semana == "sabado" && pessoas == 6 = 180.00 + (180 * 0.20)
    | semana == "domingo" && pessoas == 7 || semana == "sabado" && pessoas == 7 = 185.00 + (185 * 0.20)
    | semana /= "domingo" && semana /= "sabado" && pessoas == 1 = 100.00
    | semana /= "domingo" && semana /= "sabado" && pessoas == 2 = 125.00
    | semana /= "domingo" && semana /= "sabado" && pessoas == 3 = 150.00
    | semana /= "domingo" && semana /= "sabado" && pessoas == 4 = 165.00
    | semana /= "domingo" && semana /= "sabado" && pessoas == 5 = 175.00
    | semana /= "domingo" && semana /= "sabado" && pessoas == 6 = 180.00
    | semana /= "domingo" && semana /= "sabado" && pessoas == 7 = 185.00
    | otherwise = 404

analisaIMC :: Double -> Double -> String
analisaIMC peso altura
    | imc < 16 = "Magreza Grau III"
    | imc < 16.9 = "Magreza Grau II"
    | imc < 18.4 = "Magreza Grau I"
    | imc < 24.9 = "Adequado"
    | imc < 29.9 = "Pré-Obeso"
    | imc < 34.9 = "Obesidade Grau I"
    | imc < 39.9 = "Obesidade Grau II"
    | otherwise = "Obesidade Grau III"
    where
        imc = peso / (altura * altura)