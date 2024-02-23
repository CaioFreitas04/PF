ultimo :: [a] -> a
ultimo (a:[]) = a
ultimo (h:t) = ultimo t


ultimo1 :: [a] -> a
ultimo1 (h:t)
   | length (h:t) == 1 = h
   | otherwise = ultimo1 t


ultimo2 :: [a] -> a
ultimo2 (h:t) = head (reverse (h:t))



type Aluno = (Integer, [Char], Double)
type Curso = [Aluno]

--função que retorna nota;
returnGrade :: (Integer, String, Double) -> Double
returnGrade (a, b, c) = c

--função que retorna nome;
returnName :: (Integer, String, Double) -> String
returnName (a, b, c) = b

maiorNota :: Curso -> [Char]
maiorNota (h:[]) = returnName h
maiorNota (h:t)   
  | returnGrade h > returnGrade (head t) = maiorNota (h:(tail t))
  | otherwise = maiorNota t

insereAluno :: Aluno->Curso->Curso
insereAluno a [] = [a]
insereAluno a b
  | elem a b = b
  | otherwise = (a:b)