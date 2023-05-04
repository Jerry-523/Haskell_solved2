import GHC.Parser.Lexer (xset)
import GHC.Builtin.PrimOps (PrimOp(VecReadOffAddrOp))
--4.1
type Aluno = (Int, String, Float)
type Aprovacao = (Int, String, String)

--4.2
aprovacao :: [Aluno] -> [Aprovacao]
aprovacao [] = []
aprovacao ((i, a, n):xs)
    | n >= 10 = [(i, a, "Aprovado")] ++ aprovacao xs
    | otherwise = aprovacao xs

--4.3
data Meses = Janeiro | Fevereiro | Marco | Abril | Maio | Julho | Agosto | Setembro | Outubro | Novembro | Dezembro
    deriving(Eq, Ord, Show)

data Estacoes = Outono | Inverno | Primavera | Verao
    deriving(Eq, Ord, Show)

--4.4
estacao :: Meses -> Estacoes
estacao meses 
    | meses <= Fevereiro = Inverno
    | meses <= Maio = Primavera
    | meses <= Agosto = Verao
    | meses <= Novembro = Outono
    | otherwise = Inverno




