module Main (main) where

favg3 :: Float -> Float -> Float -> Float
favg3 g1 g2 g3 = (g1 + g2 + g3) / 3

main :: IO()
main = do
       putStr "Nota 1: "
       g1 <- getLine
       putStr "Nota 2: "
       g2 <- getLine
       putStr "Nota 3: "
       g3 <- getLine
       let total = favg3 (read g1 :: Float) (read g2 :: Float) (read g3 :: Float)
       if total < 3
        then putStrLn "REPROVADO, BOBÃO!"
        else if total < 7
              then putStrLn "Tem que fazer sub!"
              else putStrLn "Passou! Pode sair daqui!"