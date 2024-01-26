module Main (main) where

import System.IO(stdout, hFlush)

saveinfile :: IO()
saveinfile = do
             putStrLn "Escreva um texto para ser armazenado no arquivo-texto:\n\n"
             hFlush stdout
             textaodozap <- getLine
             writeFile "arq.txt" textaodozap
             putStrLn "Texto salvo com sucesso!\n"
             main

readfromfile :: IO ()
readfromfile = do
               textaodozap <- readFile "arq.txt"
               putStrLn "\n\n"
               putStrLn textaodozap
               putStrLn "\n\n"
               main

menu :: IO()
menu = do
       putStrLn "MENU PRINCIPAL\n"
       putStrLn "1. Recordar frase."
       putStrLn "2. Relembrar frase."
       putStrLn "3. Evacuar."
       hFlush stdout
       input <- getLine
       if (input == "1")
        then saveinfile
        else if (input == "2")
              then readfromfile
              else if (input == "3")
                    then return()
                    else main



main :: IO()
main = do menu