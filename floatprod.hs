module Main (main) where

fprod3 :: Float->Float->Float->Float
fprod3 x y z = x * y * z

main :: IO()
main = do
       putStrLn "Insira seu primeiro número."
       x <- getLine
       putStrLn "Insira seu segundo número."
       y <- getLine
       putStrLn "Insira seu terceiro número."
       z <- getLine
       let prod = fprod3(read x :: Float) (read y :: Float) (read z :: Float)
       putStr "O produto dos três números é "
       print prod