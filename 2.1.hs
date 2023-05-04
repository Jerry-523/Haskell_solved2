invert :: [a] -> [a] 
invert [] = []
invert (x:xs) = (invert xs ++ [x])