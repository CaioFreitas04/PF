--import System.Random
import System.IO(stdout, hSetBuffering, BufferMode(NoBuffering))


{-rannum :: IO()
rannum = do
         numAleatorio <- randomRIO (1,100) :: IO Int
         print numAleatorio-}

--mecânica de adivinhação de números;
guessNum :: Int->Int->IO Bool
guessNum targ guess | targ < guess = do {putStrLn "adivinhou maior!"; return False}
                    | targ > guess = do {putStrLn "adivinhou menor!"; return False}
                    | otherwise =    do {putStrLn "acertou!"; return True}

--função para escrita no arquivo;
writeHS :: Int->Int->IO()
writeHS atts currhs | atts < currhs = do {writeFile "highscore.txt" (show atts); putStrLn "Um novo recorde! :D"}
                    | otherwise = do {writeFile "highscore.txt" (show currhs); putStrLn "Mais sorte na próxima!"}

--loop de jogo;
mainloop :: Int->Int->IO Bool
mainloop targ curr = do
                     {-código de geração de números
                     .
                     .
                     .
                     TODO-}
                     putStrLn "Estou pensando em um número. Será que conseguirá adivinhá-lo? >:3"
                     putStr ">> "
                     input <- getLine
                     let guess = read input :: Int
                     if guessNum targ guess
                        then { --inserir a parte de leitura de arquivo;
						      putStrLn "Parabéns! Gostaria de jogar de novo?";
                              input <- getChar;
                              if input == 's' then









                    mainloop targ (curr+1)

--main :: IO()
{-main = do
         hSetBuffering stdout NoBuffering




























-}