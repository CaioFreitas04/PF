--begin definition: Aluno;
type Id = Int
type Nome = String
type SNome = String
type Idade = Int

data Aluno = Aluno Id Nome SNome Idade
    deriving(Show, Eq)
--end Aluno;

--getters de Aluno;
getId :: Aluno -> Id
getId (Aluno id _ _ _) = id

getNome :: Aluno -> Nome
getNome (Aluno _ nome _ _) = nome

getSNome :: Aluno -> SNome
getSNome (Aluno _ _ snome _) = snome

getIdade :: Aluno -> Idade
getIdade (Aluno _ _ _ idade) = idade
--end getters;

--funções
initialiseDB :: [Aluno]
initialiseDB = []

addAluno :: Aluno -> [Aluno] -> [Aluno]
addAluno (Aluno id nome snome idade) lista_a = ((Aluno id nome snome idade) : lista_a)

selectAluno :: [Aluno] -> Id -> [Aluno]
selectAluno lista_a id = filter (\x -> id == getId x) lista_a

--TODO: UPDATE ALUNO E MAIN <3
{-
updateAluno :: [Aluno] -> Aluno -> [Aluno]
updateAluno lista_a aluno | null (selectAluno (lista_a (getId aluno))) = [aluno]
                          | otherwise = -}
