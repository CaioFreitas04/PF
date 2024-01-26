module Main (main) where

palindromo :: String -> Bool
palindromo x | x == (reverse x) = True
             | otherwise = False


main :: IO()
main = do
       putStrLn "Digite um texto."
       string <- getLine
       if (palindromo string)
        then putStrLn "É um palíndromo!"
        else putStrLn "Não é um palíndromo!"