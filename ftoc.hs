module Main (main) where

fahtocel :: Double->Double
fahtocel f = (f - 32) * (5/9)

main :: IO()
main = do
       putStr "Insira a temperatura em Fahrenheit: "
       fah <- getLine
       let cel = fahtocel (read fah :: Double)
       putStr "A temperatura em Celsius é: "
       print cel