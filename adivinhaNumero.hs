-- Para utilizar da library System.Random foi necessário instalar o 'stack'.
-- Utilizar o comando ' stack upgrade ' e ' stack update ' pelo Powershell.
-- Utilizar o comando ' stack install random ' para instalar a biblioteca.
-- Comando: ' stack init --omit-packages ' (Para iniciar o projeto sem alguns pacotes).
-- Para testar as bibliotecas podemos utilizar os seguintes comandos no Powershell.
-- ' stack ghci ' ; ' import System.Random ' ; ' :t randomRIO '.
-- Após esses procedimentos consegui executar a biblioteca.   

import System.Random -- Importa a biblioteca https://hackage.haskell.org/package/random-1.2.1/docs/System-Random.html

main = do -- 'do' permite combinar diversas computações executadas em sequência. 
    num <- randomRIO (1::Int, 1000)
    numero num
numero num = do
    putStr "Digite um número entre 1 ~~ 1000: \n\n"
    n <- getLine -- 'getLine' função de entrada de dados que retorna um IO (String).
    -- O número digitado pelo usuário fica gravado na variável 'n'.
    if(read n) < num -- Lê o valor da variável 'n' e compara com o 'num'.
        then do
            putStrLn "O número secreto é maior!"
            numero num
        else if (read n) > num -- Lê o valor da variável 'n' e compara com o 'num'.
            then do
                putStrLn "O número secreto é menor!"
                numero num
            else do -- Se o número não for maior e menor, então o usuário acertou.
                putStrLn "Parabéns! você adivinhou o número secreto!\n"
                putStrLn "Se quiser jogar novamente digite '1', caso contrário digite '0'"
                o <- getLine
                if(read o) == 1
                    then do
                        main -- Chama o 'main' para retornar ao jogo.
                        else do
                            putStrLn "Obrigado por jogar!"