calculaAreaTriang b h = (b * h) / 2


calculaAreaRetangulo b h = (b * h)


calculaAreaCirc r = (pi * r * r)


calculaAreaTrapezio b2 b h = ((b2 + b) * h) / 2

--5. Função para calcular a média aritmética entre 3 números

mediaAritimetica a b c = (a + b + c) / 3

--6. Função para calcular o dobro de um número

dobrar :: Integer -> Integer
dobrar a = 2 * a

--7. Função para quadruplicar um número, usando a função definida na questão 6

quadruplicar :: Integer -> Integer
quadruplicar a = (dobrar a) * 2