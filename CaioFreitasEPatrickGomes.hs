import System.Random
import System.IO(stdout, hSetBuffering, BufferMode(NoBuffering))


rannum :: IO Int
rannum = do
         numAleatorio <- randomRIO (1,100) :: IO Int
         return numAleatorio

--mecânica de adivinhação de números;
guessNum :: Int->Int->IO Bool
guessNum targ guess | targ < guess = do {putStrLn "\t\tadivinhou maior!"; return False}
                    | targ > guess = do {putStrLn "\t\tadivinhou menor!"; return False}
                    | otherwise =    do {putStrLn "\t\tacertou!"; return True}

--função para escrita no arquivo;
writeHS :: Int->Int->IO()
writeHS atts currhs | atts < currhs = do {putStrLn "\t\tUm novo recorde! :D"; writeFile "highscore.txt" (show atts)}
                    | otherwise = do {putStrLn "\t\tMais sorte na próxima!"; writeFile "highscore.txt" (show currhs)}

--menu;
menu :: IO()
menu = do
       putStrLn "\t\t\t\t--ADIVINHAÇÃO DE APEIROMORFO--"
       putStrLn "\t\t1. Jogar."
       putStrLn "\t\t2. Recorde."
       putStrLn "\t\t3. Sair."
       putStr "\t\t>> "
       input <- getLine
       let inParsed = read input :: Int
       parseMenu inParsed

parseMenu :: Int -> IO()
parseMenu input | input == 1 = do {
                                   targ <- rannum;
                                   result <- mainloop targ 1;
                                   if result then menu
                                   else putStrLn "Saindo..."
                                   }
                | input == 2 = do {
                                   fileOut <- readFile "highscore.txt";
                                   putStr "\t\tSeu recorde atual é de ";
                                   putStr fileOut; putStrLn " tentativas!";
                                   menu
                                   }
                | otherwise  = do putStrLn "\t\tSaindo..."

--loop de jogo;
mainloop :: Int->Int->IO Bool
mainloop targ curr = do
                     putStrLn "\t\tEstou pensando em um número. Será que conseguirá adivinhá-lo? >:3"
                     putStr "\tTENTATIVAS: "
                     print curr
                     putStrLn "\n"
                     putStr ">> "
                     input <- getLine
                     let guess = read input :: Int
                     b <- guessNum targ guess
                     fileIn <- readFile "highscore.txt"
                     let hiscore = read fileIn :: Int
                     pgOut b targ curr hiscore

--output pós-jogo;
pgOut :: Bool -> Int -> Int -> Int -> IO Bool
pgOut b targ curr hiscore | b == True = do {
                            writeHS curr hiscore;
                            putStr "Você acertou em ";
                            print curr;
                            putStrLn " tentativas!";
                            putStrLn "\t\tParabéns! Gostaria de jogar de novo?";
                            input <- getChar;
                            if input == 's' then return True else return False
                            }
                          | otherwise = do mainloop targ (curr+1)

--main;
main :: IO()
main = do
       hSetBuffering stdout NoBuffering
       menu
       putStrLn "\t\tObrigado por jogar!"
