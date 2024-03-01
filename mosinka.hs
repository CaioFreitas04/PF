data Forma = Circulo Float | Retangulo Float Float | Triangulo Float Float

redondo :: Forma -> Bool
redondo (Circulo _) = True
redondo _ = False


area_forma :: Forma -> Float
area_forma (Circulo r) = pi * r^2
area_forma (Retangulo x y) = x * y
area_forma (Triangulo b h) = (b * h) / 2

--Circulo :: Float -> Forma
--Retangulo :: Float -> Float -> Forma

dobro :: Num a => a -> a
dobro x = x*2

aprovado :: (Ord a, Num a) => a -> Bool
aprovado nota = nota >= 6

myLog :: Floating a => a -> a -> a
myLog x b = log x / log b

{-
	a) [[a]]
	b) Num a => [[a]]
	c) (Fractional a, Fractional b, Fractional c) => (a, b, c)
	d) (Num a, Fractional b) => [(a, b)]
	e) (Foldable t, Num a) => ([[Char]], t a -> a, [Char])
	f) Foldable t => [t Int -> Int]
-}

type Cartesiano = (Float, Float)

data Cartesian = P(Double, Double)
  deriving (Show, Eq, Read)

sumcoords :: Cartesiano -> Cartesiano -> Cartesiano
sumcoords (x, y) (x1, y1) = ((x + x1),(y + y1))

sumcoords1 :: Cartesian -> Cartesian -> Cartesian
sumcoords1 (P(x, y)) (P(x1, y1)) = (P((x+x1), (y+y1)))