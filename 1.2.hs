import GHC.Parser.Lexer (xset)



paresMenor :: Integral t => t -> [t] -> [t]
paresMenor n [] = []
paresMenor n (x:xs) 
                    | even x == True && x < n = [x] ++ paresMenor n xs
                    | otherwise = paresMenor n xs






