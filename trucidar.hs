import Data.Char


--1)
primeiros :: [(a, b)] -> [a]
primeiros list = map fst list

maiusculas :: String -> String
maiusculas string = map toUpper string

dobros :: (Num a) => [a] -> [a]
dobros list = map (*2) list



--2)
pares :: [Int] -> [Int]
pares list = filter even list

alfa :: String -> String
alfa string = filter isAlpha string

rm_char :: String -> Char -> String
rm_char string char = filter (/=char) string



--3)
produto :: Num a => [a] -> a
produto list = foldr (*) 1 list

e_logico :: [Bool] -> Bool
e_logico list = foldr (&&) True list

concatena :: [String] -> String
concatena stringlist = foldr (++) "" stringlist