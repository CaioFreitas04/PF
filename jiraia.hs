dufat :: Int -> Int
dufat x | x <= 0 = 1
        | x > 0 = x * dufat(x-2)


quoc :: Int -> Int -> Int
quoc x y | x < y = 0
         | x >= y = 1 + quoc (x-y) y


rema :: Int -> Int -> Int
rema x y | x < y = x
         | x >= y = rema (x-y) y

expo :: Int -> Int -> Int
expo x e | e == 0 = 1 
         | e > 0 = x * (expo x (e-1))


t :: Bool
t = True
f :: Bool
f = False

nand1 :: Bool -> Bool -> Bool
nand1 a b = if (a == f || b == f) then True else False

nand2 :: Bool -> Bool -> Bool
nand2 a b | a == f = True 
          | b == f = True
          | otherwise = False

nand3 :: Bool -> Bool -> Bool
nand3 False _ = True
nand3 _ False = True
nand3 _ _ = False