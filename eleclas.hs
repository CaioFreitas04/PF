module Main (main) where

main :: IO()
main = do
       putStr "Insira sua idade: "
       idade <- getLine
       let age = read idade :: Int
       if age < 16
        then putStrLn "Não-eleitor."
        else if age >= 18 && age < 65
              then putStrLn "Eleitor obrigatório!"
              else putStrLn "Eleitor facultativo!"